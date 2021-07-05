#include "MDR1986VE1T.h"
#include "fsmdef.h"
#include "modbusdef.h"

extern void dut_set_speed(uint32_t);
extern void dut_start();
extern void dut_stop();
extern void dut_set_torque(uint32_t t);

//extern float dut_get_speed();
//extern float dut_get_torque();

//extern void dut_reset_rot();
//extern void dut_get_measure(struct STR_TEST_DATA *par);
//extern int dut_qwrite(uint8_t *buf, int n);

extern void mdb_get_testparam(struct STR_TEST_PARAM *par);

static uint32_t cycCnt = 0;
static uint32_t cycIdx = 0;
static struct STR_TEST_PARAM testParam;

static void fsm_idle(uint32_t arg);
static void fsm_starting(uint32_t arg);
static void fsm_work(uint32_t arg);
static void fsm_wait(uint32_t arg);

void (*fsmproc)(uint32_t) = fsm_idle;


uint32_t fsmdbg = 0;

uint32_t fsm_get_cyccnt()
{
	return cycCnt;
}

void fsm_idle(uint32_t arg)
{
	enum ENM_CMD cmd = arg&0xff;
	
	if(cmd == CMD_START) {
		mdb_get_testparam(&testParam);
		
		if(cycCnt = testParam.num_cyc) {
			fsmproc = fsm_work;
			cycIdx = 0;
			
			dut_start();
			dut_set_speed(testParam.in_speed);
			
			uint32_t tor = (20*testParam.max_out_torque*testParam.out_torque_tab[0] + (1<<10))>>11;
			dut_set_torque(tor);
			fsmdbg = tor;
		}
	}
}

void fsm_wait(uint32_t arg)
{
	enum ENM_CMD cmd = arg&0xff;
	uint32_t prm = 0x00ffffff & (arg>>8);

	if(cmd == CMD_UPDATE) {

		uint32_t rot = prm;
		uint32_t ref = 0;
		
		if(cycIdx >= 5) {
			ref = testParam.max_in_rot;
		} else {
			ref = (20*testParam.max_in_rot*testParam.in_rot_tab[cycIdx] + (1<<10))>>11;
		}	
		
		if(rot >= ref) {
			if(cycIdx++ == 5) {
				cycCnt = 0;
				cycIdx = 0;
				dut_set_speed(0);
				dut_set_torque(0);
				dut_stop();
				fsmproc = fsm_idle;
				return;
			}
		}
	}

	if(cmd == CMD_STOP) {
		cycCnt = 0;
		cycIdx = 0;
		dut_set_speed(0);
		dut_set_torque(0);
		dut_stop();
		fsmproc = fsm_idle;
		return;
	}
}

void fsm_work(uint32_t arg)
{
	enum ENM_CMD cmd = arg&0xff;
	uint32_t prm = 0x00ffffff & (arg>>8);
		
	if(cmd == CMD_UPDATE) {
		uint32_t rot = prm;
		uint32_t ref = 0;
		
		if(cycIdx >= 5) {
			ref = testParam.max_in_rot;
		} else {
			ref = (20*testParam.max_in_rot*testParam.in_rot_tab[cycIdx] + (1<<10))>>11;
		}
		
		if(rot == 0) {
			dut_start();
		}
		
		if(rot >= ref) {
			if(cycIdx++ == 5) {
				cycIdx = 0;
				cycCnt--;
				dut_stop();
			} else {
				if(cycIdx < 5) {
					uint32_t tor = (20*testParam.max_out_torque*testParam.out_torque_tab[cycIdx] + (1<<10))>>11;
					dut_set_torque(tor);
					fsmdbg = tor;
				}
			}
		}
		
		if(cycCnt == 0) {
			fsmproc = fsm_idle;
			dut_set_speed(0);
			dut_set_torque(0);
			dut_stop();
			return;
		}
	}

	if(cmd == CMD_STOP) {
		fsmproc = fsm_idle;
		dut_set_speed(0);
		dut_set_torque(0);
		dut_stop();
		cycCnt = 0;
		cycIdx = 0;
	}else if(cmd == CMD_PAUSE) {
		fsmproc = fsm_wait;
	}
}
