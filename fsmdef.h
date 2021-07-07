#ifndef FSMDEF_H
#define FSMDEF_H

enum ENM_CMD {
	CMD_NONE=0,
	CMD_START=1,
	CMD_PAUSE=2,
	CMD_STOP=3,
	CMD_UPDATE=4
};

enum ENM_FSM_STATE {
	ST_IDLE=0,
	ST_WORK,
	ST_COMPLETE,
	ST_WAIT,
	ST_CLEAN
};

#endif
