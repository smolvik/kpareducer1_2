#include "MDR1986VE1T.h"
#include <string.h>
#include "param.h"
#include "xprintf.h"
#include "system.h"
#include "network.h"
#include "fsmdef.h"
#include "modbusdef.h"
#include "owen485.h"

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

extern void owen485_init(void);
extern void owen_si8_request(uint16_t hash);
extern int owen485_get(uint32_t *data);

extern void mdb232_init(void);
extern int mdb_fifo_write(uint8_t *buf, int n);
extern int32_t mdb232_bikm_get_torque();

extern uint32_t fsm_get_cyccnt();

osMutexId mutexMdbRegId;
osMutexDef (MutexMdbReg);

int main()
{
	SystemInit();
	owen485_init();
	mdb232_init();
	
	RemoteMacInit();
	//par_read();	
	EthernetConfig();
	//network_config();
	
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

uint32_t ddsfreq = 0;	// rpm

void TIMER2_Handler(void)
{
	static uint32_t phase = 0;
	
	MDR_TIMER2->STATUS = 0;
	
	phase = 65535&(phase+ddsfreq);
	
	//MDR_PORTB->SETTX = 1<<11;
	
	if(phase>30000) MDR_PORTB->SETTX = 1<<12;
	else MDR_PORTB->CLRTX = 1<<12;
}

void dut_start()
{
	MDR_TIMER2->CNTRL |= TIMER_CNTRL_CNT_EN;
	MDR_PORTB->SETTX = 1<<11;
}

void dut_stop()
{
	MDR_TIMER2->CNTRL &= ~TIMER_CNTRL_CNT_EN;
	MDR_PORTB->CLRTX = 1<<11;
}

void dut_set_speed(int32_t spd)
{
	ddsfreq = spd>>8;
}

void dut_set_torque(uint32_t t)
{
	// set torque
}

extern uint32_t fsmdbg;

void threadDUTProceed(void *arg)
{
	struct STR_TEST_DATA tlm;
	osEvent evt;
	uint32_t owdata;
	int owkind;	
	uint32_t finm = 0;

	tlm.in_cnt_rot = 0;
	tlm.in_torque = 0;
	tlm.in_speed = 0; 
	tlm.out_cnt_rot = 0;
	tlm.out_torque = 0;
	tlm.out_speed = 0;	//(int)(24.3*256.f+0.5);
	tlm.cyc_cnt = 0;
	tlm.time_stamp = 0;

	while(1) {
		//osDelay(100);
		evt = osSignalWait(0, osWaitForever);
		if(evt.status == osEventSignal) {
			switch(evt.value.signals) {
				case SIG_DUT_UPDATE:
					if(finm>1) {
						tlm.in_torque = fsmdbg;
						tlm.cyc_cnt = fsm_get_cyccnt();
						mdb_fifo_write((uint8_t*)&tlm, sizeof tlm);
						tlm.time_stamp = 0;
						finm = 0;
					}
					
					finm = (1<<0);
					mdb232_read_inputregs(1, 0, 4);
					owen_si8_request(OWENSI8CNTHASH);
					break;
				case SIG_DUT_MDB232_RDYDATA:
					finm |= (1<<1);
					tlm.in_torque = mdb232_bikm_get_torque();

					break;
				case SIG_DUT_OWEN485_RDYDATA:
					owkind=owen485_get(&owdata);
					if(owkind==1) {
						// counter
						finm |= (1<<2);
						tlm.in_cnt_rot = owdata;
						owen_si8_request(OWENSI8TIMHASH);
						
						uint32_t cmd = (owdata<<8) | (uint32_t)CMD_UPDATE;
						osMessagePut(fsmCmdMsgQid, cmd, 0);

					} else if(owkind==2) {
						// speed
						finm |= (1<<3);
						tlm.in_speed = owdata*15360;	// rpm*256
					} else if(owkind==3) {
						// timer
						tlm.time_stamp = owdata;
					} else {
						// error
						owkind = 0;
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
