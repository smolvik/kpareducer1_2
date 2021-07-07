#include "MDR1986VE1T.h"
#include "fsmdef.h"
#include "modbusdef.h"

#define CYCSZ 5

extern void dut_set_speed(int32_t);
extern void dut_reset_off();
extern void dut_reset_on();
extern void dut_set_torque(int32_t t);

//extern float dut_get_speed();
//extern float dut_get_torque();

//extern void dut_reset_rot();
//extern void dut_get_measure(struct STR_TEST_DATA *par);
//extern int dut_qwrite(uint8_t *buf, int n);

extern void mdb_get_testparam(struct STR_TEST_PARAM *par);

static int ktorq = 0;
static int rot1 = 0;
static int rot2 = 0;
static int torq1 = 0;
static int torq2 = 0;

static int rot_tab[CYCSZ];
static int tor_tab[CYCSZ];
static int ktor_tab[CYCSZ];

static uint32_t cycCnt = 0;
static uint32_t cycIdx = 0;
static uint32_t cycSign = 0;
static struct STR_TEST_PARAM testParam;

static void fsm_idle(uint32_t arg);
static void fsm_work(uint32_t arg);
static void fsm_complete(uint32_t arg);
static void fsm_wait(uint32_t arg);
static void fsm_clean(uint32_t arg);

void (*fsmproc)(uint32_t) = fsm_idle;

uint32_t fsmdbg = 0;
static enum ENM_FSM_STATE fsmmode = ST_IDLE;

enum ENM_FSM_STATE fsm_get_mode()
{
	return fsmmode;
}

uint32_t fsm_get_cyccnt()
{
	return cycCnt;
}

void fsm_idle(uint32_t arg)
{
	int i;
	enum ENM_CMD cmd = arg&0xff;
	
	if(cmd == CMD_START) {
		mdb_get_testparam(&testParam);
		
		if(cycCnt = testParam.num_cyc) {
			fsmproc = fsm_work;
			fsmmode = ST_WORK;
			cycIdx = 0;
			cycSign = 0;
			
			for(i=0; i < CYCSZ; i++) {
				rot_tab[i] = (41*testParam.max_in_rot*testParam.in_rot_tab[i] + (1<<11))>>12;
				tor_tab[i] = (41*testParam.max_out_torque*testParam.out_torque_tab[i] + (1<<11))>>12;
			}
			
			for(i=0; i < CYCSZ-1; i++) {
				ktor_tab[i] = ((tor_tab[i+1]-tor_tab[i])<<2)/(rot_tab[i+1]-rot_tab[i]);
			}
			
			rot1 = rot_tab[0];
			rot2 = rot_tab[1];
			torq1 = tor_tab[0];
			torq2 = tor_tab[1];
			ktorq = ktor_tab[0];
			
			dut_reset_on();
			dut_set_speed(testParam.in_speed);			
			dut_set_torque(torq1);
		}
	}
}

void fsm_work(uint32_t arg)
{
	enum ENM_CMD cmd = arg&0xff;
	uint32_t prm = 0x00ffffff & (arg>>8);
		
	if(cmd == CMD_UPDATE) {
		uint32_t rot = prm;
		uint32_t ref = 0;
		
		dut_reset_off();
		
		if(rot >= rot2) {
			// get next interval
			if( (++cycIdx) < CYCSZ-1) {
				rot1 = rot_tab[cycIdx];
				rot2 = rot_tab[cycIdx+1];
				torq1 = tor_tab[cycIdx];
				torq2 = tor_tab[cycIdx+1];
				ktorq = ktor_tab[cycIdx];
			} else {
				// end of the cycle
				cycIdx = 0;
				dut_reset_on();
				
				if(cycSign++) {
					cycSign = 0;
					cycCnt--;
				
					if(cycCnt == 0) {
						// end of the test
						fsmproc = fsm_clean;
						fsmmode = ST_CLEAN;
						dut_set_speed(0);
						dut_set_torque(0);
						return;
					}
				}
				
				if(cycSign)
					dut_set_speed(-testParam.in_speed);
				else
					dut_set_speed(testParam.in_speed);
				
				rot1 = rot_tab[0];
				rot2 = rot_tab[1];
				torq1 = tor_tab[0];
				torq2 = tor_tab[1];
				ktorq = ktor_tab[0];
				
				return;
			}
		}

		int tqc = (torq1<<2) + ktorq*(rot-rot1);
		if(cycSign)
			dut_set_torque( -(tqc>>2) );
		else
			dut_set_torque( tqc>>2 );
	}

	if(cmd == CMD_STOP) {
		fsmproc = fsm_clean;
		fsmmode = ST_CLEAN;
		dut_set_speed(0);
		dut_set_torque(0);
		dut_reset_on();
		cycCnt = 0;
		cycIdx = 0;
	}else if(cmd == CMD_PAUSE) {
		fsmproc = fsm_complete;
		fsmmode = ST_COMPLETE;
	}
}

void fsm_clean(uint32_t arg)
{
	enum ENM_CMD cmd = arg&0xff;
	if(cmd == CMD_UPDATE) {
		fsmproc = fsm_idle;
		fsmmode = ST_IDLE;
		dut_reset_off();
	}
}

void fsm_complete(uint32_t arg)
{
	enum ENM_CMD cmd = arg&0xff;
	uint32_t prm = 0x00ffffff & (arg>>8);

	if(cmd == CMD_UPDATE) {
		uint32_t rot = prm;
		uint32_t ref = 0;
		
		dut_reset_off();
		
		if(rot >= rot2) {
			// get next interval
			if( (++cycIdx) < CYCSZ-1) {
				rot1 = rot_tab[cycIdx];
				rot2 = rot_tab[cycIdx+1];
				torq1 = tor_tab[cycIdx];
				torq2 = tor_tab[cycIdx+1];
				ktorq = ktor_tab[cycIdx];
			} else {
				// end of the half cycle
				cycIdx = 0;
				dut_reset_on();
				
				if(cycSign++) {
					// end of the whole cycle
					cycSign = 0;
					cycCnt--;
					
					dut_set_speed(0);
					dut_set_torque(0);
					
					if(cycCnt == 0) {
						// end of the test
						fsmproc = fsm_clean;
						fsmmode = ST_CLEAN;
					} else {
						fsmproc = fsm_wait;
						fsmmode = ST_WAIT;
					}
					
					return;
				}

				if(cycSign)
					dut_set_speed(-testParam.in_speed);
				else
					dut_set_speed(testParam.in_speed);
				
				rot1 = rot_tab[0];
				rot2 = rot_tab[1];
				torq1 = tor_tab[0];
				torq2 = tor_tab[1];
				ktorq = ktor_tab[0];

				return;
			}
		}

		int tqc = (torq1<<2) + ktorq*(rot-rot1);
		if(cycSign)
			dut_set_torque( -(tqc>>2) );
		else
			dut_set_torque( tqc>>2 );
	}

	if(cmd == CMD_STOP) {
		fsmproc = fsm_clean;
		fsmmode = ST_CLEAN;
		
		dut_set_speed(0);
		dut_set_torque(0);
		dut_reset_on();
		cycCnt = 0;
		cycIdx = 0;
	}
}

void fsm_wait(uint32_t arg)
{
	int i;
	enum ENM_CMD cmd = arg&0xff;
	
	if(cmd == CMD_START) {
		
		fsmproc = fsm_work;
		fsmmode = ST_WORK;
		cycIdx = 0;
		cycSign = 0;
					
		rot1 = rot_tab[0];
		rot2 = rot_tab[1];
		torq1 = tor_tab[0];
		torq2 = tor_tab[1];
		ktorq = ktor_tab[0];

		dut_set_speed(testParam.in_speed);
		dut_set_torque(torq1);
		dut_reset_on();
	}
	
	if(cmd == CMD_STOP) {
		fsmproc = fsm_clean;
		fsmmode = ST_CLEAN;

		dut_reset_on();
		cycCnt = 0;
		cycIdx = 0;
		cycSign = 0;
	}
}
