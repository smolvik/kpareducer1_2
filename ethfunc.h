#ifndef __ETHFUNC_H
#define __ETHFUNC_H

#include "MDR1986VE1T.h"
#include <cmsis_os.h>
#include "signals.h"

typedef struct
{
        uint16_t Data[750];       //1500 байт
        uint16_t Counter;         //счетчик кол-ва байт данных в буфере Data
		uint16_t Status;
} _Rec_Frame;

typedef struct
{
	uint16_t RmtMAC[3];
	uint16_t RmtIP[2];
	uint16_t hasMAC;
} _Remote_Mac;

void SetPHYReg(uint8_t,uint8_t,uint16_t);
uint16_t GetPHYReg(uint8_t,uint8_t);
void PHYInit(uint8_t,uint8_t);
void EthernetConfig(void);
void MACReset(void);
void ClearMemory(void);
uint32_t ReadPacket(_Rec_Frame*);
int	SendPacket(void*, int);
void RemoteMacInit(void);

#endif	//__ETHFUNC_H

