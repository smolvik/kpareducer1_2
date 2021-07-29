#include "ethfunc.h"

uint16_t MyMAC[3]={0x3412,0x7856,0xBC9A};		//MAC-адрес контроллера

_Remote_Mac Remote_MAC;

volatile uint32_t fFrameRdy = 0;
volatile uint32_t fFrameErr = 0;

extern osThreadId thrPacketParserId;
extern osMutexId  readpackMutexId;
extern osMutexId  sendpackMutexId;

uint16_t Identification, SequenceNumber;

void RemoteMacInit(void)
{
	Remote_MAC.RmtMAC[0]=0;
	Remote_MAC.RmtMAC[1]=0;
	Remote_MAC.RmtMAC[2]=0;

	Remote_MAC.RmtIP[0]=0;
	Remote_MAC.RmtIP[1]=0;

	Remote_MAC.hasMAC=0;
}

/*-----------------------------------------------------
*------------------------------------------------------
*------------------------------------------------------
*--------------- Функции контроллра PHY ---------------
*------------------------------------------------------
*------------------------------------------------------
------------------------------------------------------*/
//*** Функция для конфигурирования PHY модуля через MDIO интерфейс ***
//Addr - адрес модуля PHY
//Mode - режим работы контроллера PHY
void PHYInit(uint8_t Addr, uint8_t Mode)
{
		uint32_t tmp;

		tmp = MDR_ETHERNET1->PHY_Control;
		tmp &= 0x0770;				//сбросили поля адреса PHY, режима работы по умолчанию, режим FiberOptic
		tmp |= (Addr<<11)|(Mode<<1)|/*(1<<7)|*/1;

		MDR_ETHERNET1->PHY_Control=tmp;
		while((MDR_ETHERNET1->PHY_Status&0x10)==0);	//ждем пока модуль в состоянии сброса
}

//*** Функция для записи регистров PHY модуля через MDIO интерфейс ***
//Addr	- адрес модуля PHY
//Num	- номер регистра, куда будем записывать данные
//Data	- данные для записи
void SetPHYReg(uint8_t Addr, uint8_t Num, uint16_t Data)
{
	uint32_t i;
	MDR_ETHERNET1->ETH_MDIO_DATA=Data;
	i=0xC000|((Addr&0x1F)<<8)|(Num&0x1F)|(0x01<<5);
	MDR_ETHERNET1->ETH_MDIO_CTRL=(uint16_t)i;
	while((MDR_ETHERNET1->ETH_MDIO_CTRL&0x8000)==0);
}

//*** Функция для чтения регистров PHY модуля через MDIO интерфейс ***
//Addr	- адрес модуля PHY
//Num	- номер регистра, который необходимо прочитать
//возвращает значение регистра по адресу Num в Addr модуле PHY.
uint16_t GetPHYReg(uint8_t Addr, uint8_t Num)
{
	uint32_t i;
	i=0xE000|((Addr&0x1F)<<8)|(0x1<<5)|(Num&0x1F);
	MDR_ETHERNET1->ETH_MDIO_CTRL=(uint16_t)i;
	while((MDR_ETHERNET1->ETH_MDIO_CTRL&0x8000)==0);
	return	MDR_ETHERNET1->ETH_MDIO_DATA;
}

/*-----------------------------------------------------
*------------------------------------------------------
*------------------------------------------------------
*--------------- Функции контроллра MAC ---------------
*------------------------------------------------------
*------------------------------------------------------
-----------------------------------------------------*/
//*** Функция для конфигурирования MAC модуля ***
void EthernetConfig(const struct STR_BSI_PARAM *par)
{
	PHYInit(0x1C,3);	//PHY address 0x1C, Mode 100BaseT_Full_Duplex

	if(par) {
		MyMAC[0] = par->mac[0];
		MyMAC[1] = par->mac[1];
		MyMAC[2] = par->mac[2];
	}

	MDR_ETHERNET1->ETH_MAC_T=MyMAC[0];
	MDR_ETHERNET1->ETH_MAC_M=MyMAC[1];
	MDR_ETHERNET1->ETH_MAC_H=MyMAC[2];

	MACReset();
	MDR_ETHERNET1->ETH_IMR=0x0007;	//разрешение прерываний при успешном приеме пакета
	
	NVIC_EnableIRQ(ETHERNET_IRQn);
	
	uint32_t rtc = MDR_BKP->RTC_CNT;
	Identification = (uint16_t)rtc;
	SequenceNumber = (uint16_t)rtc;
}

//*** Функция для конфигурирования MAC модуля с исходными значениями регистров ***
void MACReset()
{
	MDR_ETHERNET1->ETH_G_CFGh|=0x0003;	//RRST=1, XRST=1 сброс приемника и передатчика

	ClearMemory();

	MDR_ETHERNET1->ETH_Dilimiter=0x1000;	//4096 байт буфер передатчика, 4096 байт буфер приемника

	MDR_ETHERNET1->ETH_HASH0=0;
	MDR_ETHERNET1->ETH_HASH1=0;
	MDR_ETHERNET1->ETH_HASH2=0;
	MDR_ETHERNET1->ETH_HASH3=0x8000;

	MDR_ETHERNET1->ETH_IPG=0x0060;
	MDR_ETHERNET1->ETH_PSC=0x0050;
	MDR_ETHERNET1->ETH_BAG=0x0200;
	MDR_ETHERNET1->ETH_JitterWnd=0x0005;
	//MDR_ETHERNET1->R_CFG=0x8406;		//прием пакетов с совпадением MAC-адреса and broadcast
	MDR_ETHERNET1->ETH_R_CFG=0x8606;		//прием пакетов с совпадением MAC-адреса and broadcast
	MDR_ETHERNET1->ETH_X_CFG=0x81FA;

	MDR_ETHERNET1->ETH_G_CFGl=0x0080;	// линейный режим работы буферов
	MDR_ETHERNET1->ETH_G_CFGh=0x3003;	//

	MDR_ETHERNET1->ETH_IMR=0;
	MDR_ETHERNET1->ETH_IFR=0xFFFF;

	MDR_ETHERNET1->ETH_R_Head=0x0000;
	MDR_ETHERNET1->ETH_X_Tail=0x1000;

	MDR_ETHERNET1->ETH_G_CFGl &= 0xBFFF;	//RRST=0, XRST=0 штатный режим работы
	MDR_ETHERNET1->ETH_G_CFGh &= 0xFFFC;	//RRST=0, XRST=0 штатный режим работы
}

//*** Функция для очистки буферов приемника и передатчика MAC модуля ***
//Буфер приемника 4096 байт
//Буфер передатчика 4096 байт
void ClearMemory()
{
	uint32_t Temp;
	uint32_t *ptr;
	ptr=(uint32_t*)0x38000000;
	for(Temp=0;Temp<2048;Temp++)	*ptr++=0;
}

/*---------------------------------------------------------------------------------------------------
*--------------- Функции для работы с буферами приемника и передатчика контроллра MAC ---------------
---------------------------------------------------------------------------------------------------*/

//*** Функция для считывания пакета из буфера приемника ***
//*** *Frame - указтель на структуру пакета
uint32_t ReadPacket(_Rec_Frame* Frame)
{
	uint16_t space_start=0,space_end=0,tail,head;
	uint32_t *src, *dst;
	uint32_t size, i;
	uint16_t tmp[2];
	
	osMutexWait(readpackMutexId, osWaitForever);

		tail=MDR_ETHERNET1->ETH_R_Tail; // Указатель конца области действительных данных приемника
		head=MDR_ETHERNET1->ETH_R_Head; // Указатель начала области действительных данных приемника
		
		if(tail>head)
		{
			space_end=tail-head;
			space_start=0;
		}
		else
		{
			space_end=0x1000-head;
			space_start=tail;
		}

		src=(uint32_t*)(0x38000000+head);
		dst=(uint32_t*)(Frame->Data);

		*((uint32_t*)tmp)=*src++;	//прочитали кол-во байт в полученном пакете
		size=(tmp[0]+3)/4;			// сколько слов надо для хранения полученных байт
		space_end-=4;
		if((uint16_t)src>0xFFF)	src=(uint32_t*)0x38000000;

		if(tmp[0]<=space_end)
		{
			for(i=0;i<size;i++)
				*dst++ = *src++;
		}
		else
		{
			size=size-space_end/4;
			for(i=0; i<(space_end/4); i++)
				*dst++ = *src++;
			src=(uint32_t*)0x38000000;
			for(i=0; i<size; i++)
				*dst++ = *src++;
		}
		if((uint16_t)src>0xFFF)	src=(uint32_t*)0x38000000;

		MDR_ETHERNET1->ETH_R_Head=(uint16_t)src;
		MDR_ETHERNET1->ETH_STAT-=0x20;
	
		Remote_MAC.RmtMAC[0]=Frame->Data[3];
		Remote_MAC.RmtMAC[1]=Frame->Data[4];
		Remote_MAC.RmtMAC[2]=Frame->Data[5];
		Remote_MAC.hasMAC=1;
	
	osMutexRelease(readpackMutexId);
	return tmp[0];
}

//*** Функция для записи пакета в буфер передатчика ***
//*** *buffer - указтель на буфер данных
//*** size - кол-во отправляемых байт
int	SendPacket(void* buffer, int size)
{
	uint16_t i;
	uint32_t tmp, head, tail;
	uint32_t *src, *dst;
	uint16_t space[2];
	
	osMutexWait(sendpackMutexId, osWaitForever);

		head = MDR_ETHERNET1->ETH_X_Head;
		tail = MDR_ETHERNET1->ETH_X_Tail;

		//вычисляем кол-во свободного места в буфере передатчика
		if(head>tail)
		{
			space[0]=head-tail;
			space[1]=0;
		} else
		{
			space[0]=0x2000-tail;
			space[1]=head-0x1000;
		}
		//вычислили кол-во свободного места в буфере передатчика

		if(size>(space[0]+space[1]-8))	return 0;	//-8, так как 4 байта занимает поле длины данных и 4 байта занимает поле статуса пакета

		tmp=size;
		src=buffer;
		dst=(uint32_t*)(0x38000000+tail);

		*dst++ =tmp;
		space[0]-=4;
		if((uint16_t)dst>0x1FFC)	dst=(uint32_t*)0x38001000;

		tmp=(size+3)/4;

		if(size<=space[0])
		{
			for(i=0; i<tmp; i++)
				*dst++ = *src++;
		}
		else
		{
			tmp-=space[0]/4;
			for(i=0;i<(space[0]/4);i++)
				*dst++ = *src++;
			dst=(uint32_t*)0x38001000;
			for(i=0;i<tmp;i++)
				*dst++ = *src++;
		}
		if((uint16_t)dst>0x1FFC)	dst=(uint32_t*)0x38001000;
		tmp=0;
		*dst++ =tmp;
		if((uint16_t)dst>0x1FFC)	dst=(uint32_t*)0x38001000;

		MDR_ETHERNET1->ETH_X_Tail=(uint16_t)dst;
		
	osMutexRelease(sendpackMutexId);
	return	size;
}

void ETHERNET_Handler()
{
	uint16_t Status;

	Status = MDR_ETHERNET1->ETH_IFR;
	MDR_ETHERNET1->ETH_IFR=Status;

	if(Status & (1<<0))
	{
		fFrameRdy = 1;
		osSignalSet(thrPacketParserId, SIG_ETH_FRAMERDY_THRPACKPARSER);
	}

	if(Status & (1<<1))
	{
		fFrameErr = 1;
	}

	//xprintf("packet:%x\n", Status);
}
