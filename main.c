#include "MDR1986VE1T.h"
#include <string.h>
#include <stdlib.h>
#include "param.h"
#include "xprintf.h"
#include "system.h"
#include "network.h"
#include "fsmdef.h"
#include "modbusdef.h"
#include "mdb232.h"
#include "mdb485.h"

#include <cmsis_os.h>

osThreadId thrPacketParserId, thrFSMProcceedId, thrDUTProcceedId;

void threadFSMProceed(void *arg);
void threadDUTProceed(void *arg);

const osThreadDef_t threadPacketParserDef = {(os_pthread)threadPacketParser, osPriorityAboveNormal, 1, 1024};
const osThreadDef_t threadFSMProceedDef = {(os_pthread)threadFSMProceed, osPriorityNormal, 1, 1024};
const osThreadDef_t threadDUTProceedDef = {(os_pthread)threadDUTProceed, osPriorityNormal, 1, 1024};

extern void (*fsmproc)(uint32_t);
extern uint16_t mdb_get_holding_register(int idx);

#define QUEUE_SZ 4
osMessageQId fsmCmdMsgQid;
uint32_t os_messageQ_q_message[4+QUEUE_SZ] = { 0 };
const osMessageQDef_t message_def = { QUEUE_SZ, os_messageQ_q_message };

extern void mdb485_init(void);
extern void mdb485_writeregs(uint8_t id, uint16_t ad ,uint16_t qn, uint16_t *regs);
extern void mdb485_read_inputregs(uint8_t id, uint16_t ad , uint16_t qn);
extern uint32_t mdb485_get_crc();
extern uint32_t mdb485_get_func();
extern uint32_t mdb485_si30_get_counter();

extern uint32_t mdb232_get_crc();
extern void mdb232_read_inputregs(uint8_t id, uint16_t ad , uint16_t qn);
extern void mdb232_init(void);
extern int mdb_fifo_write(uint8_t *buf, int n);
extern int32_t mdb232_bikm_get_torque(int32_t *id);

extern uint32_t fsm_get_cyccnt();
extern enum ENM_FSM_STATE fsm_get_mode();

osMutexId mutexMdbRegId;
osMutexDef (MutexMdbReg);

int32_t ddsfreq = 0;	// rpm
int32_t torqCurr = 0;

void dut_pwr_on()
{
	// set servo power on
	MDR_PORTB->CLRTX = (1<<0);
}

void servo_pwr_off()
{
	// set servo power off
	MDR_PORTB->SETTX = (1<<0);
}


void dut_on()
{
	// signal S-ON of servos 
	// low level is seros on
	MDR_PORTB->CLRTX = (1<<1)|(1<<5);
}

void dut_off()
{
	// signal S-ON of servos
	// high level is seros off
	MDR_PORTB->SETTX = (1<<1)|(1<<5);
}

void dut_reset_off()
{
	MDR_PORTB->CLRTX = 1<<11;
}

void dut_reset_on()
{
	MDR_PORTB->SETTX = 1<<11; 	// this front reset counter
}

void dut_set_speed(int32_t spd)
{
	ddsfreq = spd>>8;
	
	//int dac = (5593*spd)>>19;
	int dac = (5083*spd)>>19;
	
	if(spd >= 0) {
		MDR_PORTB->RXTX |= (0x1<<9);
	}
	else MDR_PORTB->RXTX &= ~(0x1<<9);
	MDR_DAC->DAC1_DATA = abs(dac);		// n*4096/1500
}

void dut_set_torque(int32_t t)
{
	// set torque
	torqCurr = t;
	
	//int dac = (3745*t)>>13;
	int dac = (6808*t)>>14;

	if(t >= 0) {
		MDR_PORTB->RXTX |= (0x1<<10);
	}
	else MDR_PORTB->RXTX &= ~(0x1<<10);
	MDR_DAC->DAC2_DATA = abs(dac);			// torque*4096/35
}

int main()
{
	SystemInit();
	mdb485_init();
	mdb232_init();
	
	RemoteMacInit();
	
	int cntdfl = 10000000;
	while( 0 == (MDR_PORTA->RXTX & (1<<3)) ) {
		// but rst dfl is pressed
		if(cntdfl-- == 0) {
			// rst dfl event
			par_save(&defBsiParam);
			break;
		}
	}

	struct STR_BSI_PARAM rp;
	par_read(&rp);
	if( 0 == crc16((uint8_t*)&rp, sizeof(struct STR_BSI_PARAM)) ) {
		// param is ok
		EthernetConfig(&rp);
		network_config(&rp);
	} else {
		EthernetConfig(&defBsiParam);
		network_config(&defBsiParam);
	}
	
	//EthernetConfig(0);
	//network_config(0);
	
	dut_pwr_on();

	dut_off();
	dut_reset_off();
	//dut_start();
	//dut_set_speed(2000<<8);
	
	mutexMdbRegId = osMutexCreate(osMutex (MutexMdbReg));
	
	//MDR_PORTD->RXTX |= 1 << 15; // tx on
	//xprintf("hello\n");
	//MDR_PORTD->RXTX &= ~(1 << 15); // tx off
	
	osKernelInitialize ();
	
	fsmCmdMsgQid = osMessageCreate(&message_def, 0);
	
	thrPacketParserId = osThreadCreate(&threadPacketParserDef, 0);
	thrFSMProcceedId = osThreadCreate(&threadFSMProceedDef, 0);
	thrDUTProcceedId = osThreadCreate(&threadDUTProceedDef, 0);
	
	osKernelStart();

	while(1) {};
}

void TIMER1_Handler(void)
{
	MDR_TIMER1->STATUS = 0;
	osSignalSet(thrDUTProcceedId, SIG_DUT_UPDATE);
}
/*
void EXT_INT1_Handler(void)
{
	static volatile int dbg = 0;
	NVIC_ClearPendingIRQ(EXT_INT1_IRQn);
	NVIC_DisableIRQ(EXT_INT1_IRQn);
	dbg ++;
}
*/

extern uint32_t fsmdbg;

void threadDUTProceed(void *arg)
{
	struct STR_TEST_DATA tlm;
	osEvent evt;
	uint32_t finm = 0;

	tlm.in_cnt_rot = 0;
	tlm.in_torque = 0;
	tlm.in_speed = 0; 
	tlm.out_cnt_rot = 0;
	tlm.out_torque = 0;
	tlm.out_speed = 0;	//(int)(24.3*256.f+0.5);
	tlm.cyc_cnt = 0;
	tlm.fsm_state = 0;

	while(1) {
		//osDelay(100);
		evt = osSignalWait(0, osWaitForever);
		if(evt.status == osEventSignal) {
			switch(evt.value.signals) {
				case SIG_DUT_UPDATE:
					if(finm>1) {
						tlm.in_speed = ddsfreq<<8;
						tlm.in_torque = torqCurr;
						tlm.cyc_cnt = fsm_get_cyccnt();
						tlm.fsm_state = (uint32_t)fsm_get_mode();
						mdb_fifo_write((uint8_t*)&tlm, sizeof tlm);
						finm = 0;
					}
					
					finm = (1<<0);
					//mdb232_read_inputregs(MDB232BIKM1ID, 0, 4);
					mdb485_read_inputregs(MDB485SI30ID, 0x0002, 2);
					break;
				case SIG_DUT_MDB232_RDYDATA:
					finm |= (1<<1);
					tlm.out_torque = 0;
					if(0 == mdb232_get_crc()) {
						int32_t id;
						tlm.out_torque = mdb232_bikm_get_torque(&id);
						id = 0;
					}

					break;
				case SIG_DUT_MDB485_RDYDATA:
					// counter is read
					finm |= (1<<2);
					if(0 == mdb485_get_crc()) {
						uint32_t func = mdb485_get_func();
						if(0x04 == func) {
							// we get counter value
							int cnt = (int)mdb485_si30_get_counter();
							tlm.in_cnt_rot = cnt;
							uint32_t cmd = (cnt<<8) | (uint32_t)CMD_UPDATE;
							osMessagePut(fsmCmdMsgQid, cmd, 0);
						}
						else if(0x10 == func) {
							// we get setpoint confirmation
							
						}
					}
					break;
			}
		}
	}
}

void threadFSMProceed(void *arg)
{
	osEvent evt;
	uint32_t cmd;
	int dbg;
	
	while(1) {
		// waiting for signals
		//evt = osMessageGet(modbusCmdMsgQid, 100);
		evt = osMessageGet(fsmCmdMsgQid, osWaitForever);
		if(evt.status == osEventMessage) {
			// we've got command
			cmd = evt.value.v;
			fsmproc(cmd);
		}
	}
}
