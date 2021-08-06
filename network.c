#include "network.h"

uint16_t MyIPAddress[2]={0x000A,0x0100}; 			//(0:10, 1:0) IP-адрес клиента (наш IP-адрес): 10.0.0.1

extern uint16_t Identification, SequenceNumber;
extern _Remote_Mac Remote_MAC;

extern uint32_t fFrameRdy;
extern uint32_t fFrameErr;

extern void mdb_proc_adu(uint8_t *rx);

uint32_t ReplyICMPCounter=0;
_Rec_Frame Frame;

uint16_t remPort = 0;

void network_config(const struct STR_BSI_PARAM *par)
{
	if(par) {
		MyIPAddress[0] = par->ip[0];
		MyIPAddress[1] = par->ip[1];
	}
}

//*** Функция формирования ответа на ARP-запрос
void Answear_ARP(void)
{
	uint16_t Buf[22];
	
	// Ethernet header
  	Buf[0]=Frame.Data[3];         			//MAC-адрес источника
   	Buf[1]=Frame.Data[4];         			//MAC-адрес источника
   	Buf[2]=Frame.Data[5];         			//MAC-адрес источника
	Buf[3]=MDR_ETHERNET1->ETH_MAC_T;     	//наш MAC-адрес
	Buf[4]=MDR_ETHERNET1->ETH_MAC_M;     	//наш MAC-адрес
	Buf[5]=MDR_ETHERNET1->ETH_MAC_H;     	//наш MAC-адрес
	Buf[6]=Frame.Data[6];         			//type - ARP
	// ARP
	Buf[7]=Frame.Data[7];         			//Hardware type - Ethernet
	Buf[8]=Frame.Data[8];         			//Protocol type - IP
	Buf[9]=Frame.Data[9];         			//Hardware size - 6; Protocol size - 4
	Buf[10]=0x0200;              			//код ответа на запрос Who has...
	Buf[11]=MDR_ETHERNET1->ETH_MAC_T;    	//Sender MAC-address: 0A.1B.2C.3D.4E.5F
	Buf[12]=MDR_ETHERNET1->ETH_MAC_M;    	//Sender MAC-address: 0A.1B.2C.3D.4E.5F
	Buf[13]=MDR_ETHERNET1->ETH_MAC_H;    	//Sender MAC-address: 0A.1B.2C.3D.4E.5F
	Buf[14]=MyIPAddress[0]; 				//My_IP_Address[0];    //Sender IP-address: 192.168.1.87
	Buf[15]=MyIPAddress[1]; 				//My_IP_Address[1];    //Sender IP-address: 192.168.1.87
	Buf[16]=Frame.Data[3];        			//Target MAC-address
	Buf[17]=Frame.Data[4];        			//Target MAC-address
	Buf[18]=Frame.Data[5];        			//Target MAC-address
	Buf[19]=Frame.Data[14];       			//Target IP-address
  	Buf[20]=Frame.Data[15];       			//Target IP-address
	Buf[21]=0;

	SendPacket(Buf,42);
}

/*
Ether header: [0-6]
	Mac dest: [0-2]
	Mac src: [3-5]
	ether type:[6]
	IP header: [7-16]
		Version IHL DSCP ECN:[7]
		total length:[8]
		identification:[9]
		Flags FragmentOffset:[10]
		Time To Live Protocol:[11]
		Header Checksum:[12]
		IP addr src:[13-14]  
		IP addr dst:[15-16] 
		data:[17-] 

udp:
			 src port:[17]
			 dst port:[18]
			 length:[19]
			 checksum:[20]
			 data:[21-]
	
*/
//*** Функция для подсчета контрольной суммы пакета UDP-протокола
uint16_t CheckSum_UDP(uint16_t nd, uint16_t* Data)
{
	unsigned long i, cs=0;
	// src ip and dst ip
	for(i=13; i <=16; i++) {
		cs += ((Data[i]<<8)&0xff00)+((Data[i]>>8)&0xff);
	}
	// protocol
	cs += ((Data[11]>>8) & 0xff);
	// udp length
	cs += nd;
	// src port
	cs += ((Data[17]<<8)&0xff00)+((Data[17]>>8)&0xff);
	// dst port
	cs += ((Data[18]<<8)&0xff00)+((Data[18]>>8)&0xff);
	// length
	cs += nd;	
	// checksum
	cs += ((Data[20]<<8)&0xff00)+((Data[20]>>8)&0xff);
	
	uint8_t *pb = (uint8_t*)(Data+21);
	for(i=0; i<nd-8; i++) {
		//cs += ((Data[21+i]<<8)&0xff00)+((Data[21+i]>>8)&0xff);;
		if(i&1) cs += (uint32_t)(*pb++);
		else cs += (uint32_t)(*pb++)<<8;
	}
	
	while (cs>>16) cs = (cs >> 16) + (cs & 0xFFFF);
	return (uint16_t)(~cs);
}


//*** Функция для подсчета контрольной суммы пакета IP-протокола
uint16_t CheckSum_IP(uint16_t* Data)
{
        unsigned long a, cs=0;
        for(a=0; a<10; a++)
        {
                if(a == 5) continue;
                else cs = cs + Data[7+a];
        }
        cs = (cs >> 16) + (cs & 0xFFFF);
        return (uint16_t)(~cs);
}

//*** Функция для подсчета контрольной суммы пакета ICMP-протокола
//*** size - кол-во слов, по которому необходимо посчитать контрольную сумму
uint16_t CheckSum_ICMP(uint16_t size, uint16_t* Data)
{
        unsigned long a, cs=0;
        for(a=0;a<size;a++)
        {
                if(a==1) continue;
                else cs+=Data[a+17];
        }
        cs=(cs>>16)+(cs&0xFFFF);
        return (uint16_t)(~cs);
}

void Request_ICMP(void)
{
	uint16_t Buf[37];
	uint8_t tmp[2];
	uint32_t i,j;

//---- Eth2 ----
  	Buf[0]=Remote_MAC.RmtMAC[0];    //MAC-адрес destination
   	Buf[1]=Remote_MAC.RmtMAC[1];    //MAC-адрес destination
   	Buf[2]=Remote_MAC.RmtMAC[2];    //MAC-адрес destination
	Buf[3]=MDR_ETHERNET1->ETH_MAC_T;     	//наш MAC-адрес
	Buf[4]=MDR_ETHERNET1->ETH_MAC_M;     	//наш MAC-адрес
	Buf[5]=MDR_ETHERNET1->ETH_MAC_H;     	//наш MAC-адрес
	Buf[6]=0x0008;         			//type - IP
//---- IP ----
	Buf[7]=0x0045;         			//Version 4, length 20 bytes, Differentiated Services Field 0x00
	Buf[8]=0x3C00;         			//Total length 60 bytes
	Buf[9]=Identification; 			//Identification
	Buf[10]=0x0000;              	//Flag = 0x00, Fragment offset = 0x00
	Buf[11]=0x0180;			    	//Time To Live = 0x80, Protocol = 0x01 - ICMP
	Buf[12]=0x0000;    				//Checksum IP
	Buf[13]=MyIPAddress[0];    		//Source IP-address[0]
	Buf[14]=MyIPAddress[1]; 		//Source IP-address[1]
	Buf[15]=Remote_MAC.RmtIP[0];	//Destination IP-address[0]
	Buf[16]=Remote_MAC.RmtIP[1];   	//Destination IP-address[1]
	Buf[12]=CheckSum_IP(Buf);
//---- ICMP ----
	Buf[17]=0x0008;        			//Type 0x08 (Echo (ping) request), Code 0x00
	Buf[18]=0x0000;		        	//Checksum ICMP
	Buf[19]=0x0002;       			//Identifier
  	Buf[20]=SequenceNumber;       	//Sequence Number

	for(i=0,j=0;i<32;i+=2,j++)
	{
		tmp[0]=0x61+i;
		tmp[1]=0x62+i;

		Buf[j+21]=(tmp[1]<<8)|(tmp[0]);
	}
	Buf[18]=CheckSum_ICMP(20,Buf);
	SendPacket(Buf,74);

	
	tmp[0]=(Identification>>8);
	tmp[1]=Identification;
	if(++tmp[0]==0)	tmp[1]++;
	Identification=(tmp[0]<<8)|tmp[1];

	tmp[0]=(SequenceNumber>>8);
	tmp[1]=SequenceNumber;
	if(++tmp[0]==0)	tmp[1]++;
	SequenceNumber=(tmp[0]<<8)|tmp[1];
}

//*** Функция для формирования ответа на запрос ICMP
void Answear_ICMP(void)
{
    unsigned long a;
	static uint16_t buffer[288];	// 576 bytes
	uint16_t tmp;
	
	//Кол-во байт в ICMP-пакете
  	tmp=Frame.Counter-34-4;	//34 байта - заголовок Eth2 и IP пакетов, 4 байта - контрольная сумма Eth2 пакета.
	if((tmp&0x01)==1)	
	{
		tmp=(tmp+1)>>1;	//из кол-ва байт получили кол-во слов
		Frame.Data[tmp+16]=Frame.Data[tmp+16]&0x00FF;
	}
	else 				tmp=tmp>>1;		//из кол-ва байт получили кол-во слов
		
	//-------Ethernet 2 Protocol---------
    buffer[0]=Frame.Data[3];
    buffer[1]=Frame.Data[4];
    buffer[2]=Frame.Data[5];

	buffer[3]=MDR_ETHERNET1->ETH_MAC_T;
	buffer[4]=MDR_ETHERNET1->ETH_MAC_M;
	buffer[5]=MDR_ETHERNET1->ETH_MAC_H;

	buffer[6]=Frame.Data[6];
    //-------IP Protocol---------
    for(a=7;a<12;a++)
	{
	    buffer[a]= Frame.Data[a];
    }
    //---------------------------
    buffer[12]=CheckSum_IP(Frame.Data);
	buffer[13]=Frame.Data[15];//IP->DestinAddr[0];
	buffer[14]=Frame.Data[16];//IP->DestinAddr[1];
	buffer[15]=Frame.Data[13];//IP->SourceAddr[0];
	buffer[16]=Frame.Data[14];//IP->SourceAddr[1];
	//-------ICMP Protocol---------
	// make Echo reply
	buffer[17]=0x0000; 
	Frame.Data[17]=0x0000;
	//-----------------------------
	buffer[18]=CheckSum_ICMP(tmp,Frame.Data);
	for(a=19;a<((tmp-2)+19);a++)
	{
		buffer[a]=Frame.Data[a];
	}
	
	if(0==SendPacket(buffer,(tmp*2+34))) {
		//xprintf("err tx\n");
	}
}

void DestinationUnreachable_ICMP(void)
{
	uint16_t Buf[37];
	uint8_t tmp[2];
	uint32_t i,j;

//---- Eth2 ----
  	Buf[0]=Remote_MAC.RmtMAC[0];    //MAC-адрес destination
   	Buf[1]=Remote_MAC.RmtMAC[1];    //MAC-адрес destination
   	Buf[2]=Remote_MAC.RmtMAC[2];    //MAC-адрес destination
	Buf[3]=MDR_ETHERNET1->ETH_MAC_T;     	//наш MAC-адрес
	Buf[4]=MDR_ETHERNET1->ETH_MAC_M;     	//наш MAC-адрес
	Buf[5]=MDR_ETHERNET1->ETH_MAC_H;     	//наш MAC-адрес
	Buf[6]=0x0008;         			//type - IP
//---- IP ----
	Buf[7]=0x0045;         			//Version 4, length 20 bytes, Differentiated Services Field 0x00
	Buf[8]=0x3800;         			//Total length 56 bytes
	Buf[9]=Identification; 			//Identification
	Buf[10]=0x0000;              	//Flag = 0x00, Fragment offset = 0x00
	Buf[11]=0x0180;			    	//Time To Live = 0x80, Protocol = 0x01 - ICMP
	Buf[12]=0x0000;    				//Checksum IP
	Buf[13]=MyIPAddress[0];    		//Source IP-address[0]
	Buf[14]=MyIPAddress[1]; 		//Source IP-address[1]
	Buf[15]=Remote_MAC.RmtIP[0];	//Destination IP-address[0]
	Buf[16]=Remote_MAC.RmtIP[1];   	//Destination IP-address[1]
	Buf[12]=CheckSum_IP(Buf);
//---- ICMP ----
	// make Destination Unreachable
	Buf[17]=0x0303;        			//Type 0x03, Code 0x03
	Buf[18]=0x0000;		        	//Checksum ICMP
	Buf[19]=0x0000;
	Buf[20]=0x0000;
	// copy 20 bytes of ip header and 8 bytes data
	for(i=0; i < (10+4); i++) {
		Buf[i+21] = Frame.Data[i+7];
	}
	Buf[18]=CheckSum_ICMP(4+10+4, Buf);
	if(0==SendPacket(Buf, 2*21+28)) {
		//xprintf("err tx\n");
	}

	tmp[0]=(Identification>>8);
	tmp[1]=Identification;
	if(++tmp[0]==0)	tmp[1]++;
	Identification=(tmp[0]<<8)|tmp[1];
}

/*
	} else if(icmp_type == 3) {
		// make Destination Unreachable
		buffer[17]=0x0303;        			//Type 0x03, Code 0x03
		buffer[18]=0x0000;		        	//Checksum ICMP
		buffer[19]=0x0000;
		buffer[20]=0x0000;
		// copy 20 bytes of ip header and 8 bytes data
		int i;
		for(i=0; i < (10+4); i++) {
			buffer[i+21] = Frame.Data[i+7];
		}
		buffer[18]=CheckSum_ICMP(4+10+4, buffer);
		if(0==SendPacket(buffer, 2*21+28)) {
			//xprintf("err tx\n");
		}		
	}
 */

//void Send_UDP(uint8_t *s, int uln, uint16_t sport, uint16_t dport)
void Send_UDP(uint8_t *s, int uln)
{
	static uint16_t Buf[750];
	uint8_t tmp[2];
	uint32_t i,j;

//---- Eth2 ----
  	Buf[0]=Remote_MAC.RmtMAC[0];    //MAC-адрес источника
   	Buf[1]=Remote_MAC.RmtMAC[1];    //MAC-адрес источника
   	Buf[2]=Remote_MAC.RmtMAC[2];    //MAC-адрес источника
	Buf[3]=MDR_ETHERNET1->ETH_MAC_T;     	//наш MAC-адрес
	Buf[4]=MDR_ETHERNET1->ETH_MAC_M;     	//наш MAC-адрес
	Buf[5]=MDR_ETHERNET1->ETH_MAC_H;     	//наш MAC-адрес
	Buf[6]=0x0008;         			//type - IP
//---- IP ----
	Buf[7]=0x0045;         			//Version 4, length 20 bytes, Differentiated Services Field 0x00
	Buf[8]=0x3C00;         			//Total length
	Buf[9]=Identification; 			//Identification
	Buf[10]=0x0000;              	//Flag = 0x00, Fragment offset = 0x00
	Buf[11]=0x1180;			    	//Time To Live = 0x80, Protocol = 0x11 - UDP
	Buf[12]=0x0000;    				//Checksum IP
	Buf[13]=MyIPAddress[0];    		//Source IP-address[0]
	Buf[14]=MyIPAddress[1]; 		//Source IP-address[1]
	Buf[15]=Remote_MAC.RmtIP[0];	//Destination IP-address[1]
	Buf[16]=Remote_MAC.RmtIP[1];   	//Destination IP-address[0]
//---- UDP ----
	//Buf[17]=0x3412;        					//source port
	//Buf[18]=0x3412;		        			//destination port
	uint16_t sprt = UDPMODBUS_PORT;
	sprt = (sprt<<8) + ((sprt>>8)&0xff);
	uint16_t dprt = (remPort<<8) + ((remPort>>8)&0xff);
	Buf[17] = sprt;   				//source port
	Buf[18] = dprt;					//destination port
	
	Buf[19]=0x0c00;    				//datagramm length 12
  	Buf[20]=0x0000;       			//cs

  	// data
  	uint8_t *dst = (uint8_t*)(Buf+21);
  	/*
	for(i=0; (i < n) && *s; i++){
		*dst++ = *s++;
	}
	Buf[8] = (i+20+8)<<8;
	Buf[12]=CheckSum_IP(Buf);	
	Buf[19] = (i+8)<<8;
	SendPacket(Buf,i+20+14+8);
	*/
	if(uln > UDPDATASZ) uln = UDPDATASZ;
	for(i = 0; i < uln; i++){
		*dst++ = *s++;
	}
	uint16_t totl = uln+20+8;	// ip total length
	Buf[8] = ((totl<<8)&0xff00)+((totl>>8)&0xff);
	Buf[12]=CheckSum_IP(Buf);
	
	uint16_t udpl = uln+8; // udp frame length
	Buf[19] = ((udpl<<8)&0xff00)+((udpl>>8)&0xff);
	uint16_t cs = CheckSum_UDP(uln+8, Buf);
	Buf[20] = ((cs<<8)&0xff00)+((cs>>8)&0xff);
	SendPacket(Buf,uln+20+14+8);

	tmp[0]=(Identification>>8);
	tmp[1]=Identification;
	if(++tmp[0]==0)	tmp[1]++;
	Identification=(tmp[0]<<8)|tmp[1];
}

void PacketParser(void)
{
	switch(Frame.Data[6])  //определяем тип следующего протокола
    {
    	case 0x0008:       //протокол IP
    	
    		Remote_MAC.RmtIP[1]=Frame.Data[14];
			Remote_MAC.RmtIP[0]=Frame.Data[15];
			
			//xprintf("IP frame\n");
			
			if(Remote_MAC.hasMAC==0) break;//этого не должно быть!
        	if((Frame.Data[15]==MyIPAddress[0])&&(Frame.Data[16]==MyIPAddress[1]))  // сравниваем IP адреса в пакете с нашим
            {                                                                       //если они совпадают, то занимаемся разбором пакета дальше,                              
            	if(CheckSum_IP(Frame.Data)==Frame.Data[12])   //если контрольные суммы пакета и вычисленная совпадают, продолжаем
                {                                                           //иначе - отбрасываем пакет
                //--------------------ICMP-------------------
                	if((Frame.Data[11]&0xFF00)==0x0100)     //определили следующий протокол: ICMP
                    {
                    	if(Frame.Data[17]==0x0000)        //определили тип - Echo (ping) reply
						{
                        	ReplyICMPCounter++;
						}else if(Frame.Data[17]==0x0008)        //определили тип - Echo (ping) request
						{
							//PORTD->SETTX=1<<8;
                        	Answear_ICMP();       //отправили ответ на запрос Echo (ping) request
							//PORTD->CLRTX=1<<8;
						}
                    }else if((Frame.Data[11]&0xFF00)==0x1100)     // UDP
                    {
						/*
						 src port:[17]
						 dst port:[18]
						 length:[19]
						 checksum:[20]
						 data:[21...]
						 */
						 
						 remPort = ((Frame.Data[17]<<8)&0xff00)+((Frame.Data[17]>>8)&0xff);
						 uint16_t dstPort = ((Frame.Data[18]<<8)&0xff00)+((Frame.Data[18]>>8)&0xff);
						 
						 if(dstPort == UDPMODBUS_PORT) {
							mdb_proc_adu((uint8_t*)(Frame.Data+21));
						 } else {
							DestinationUnreachable_ICMP();
						 }
						 
						 /*
						 uint8_t ubuf[UDPSZ];
						 int i;
						 uint8_t *src = (uint8_t*)(Frame.Data+21);

 						 int uln = Frame.Data[19];
 						 uln = ((uln>>8)&0xff) | ((uln<<8)&0xff00);
 						 int udln = uln - 8;
 						 (udln > UDPSZ) && (udln = UDPSZ);
 						 
 						 uint16_t csudp = CheckSum_UDP(uln, Frame.Data);
 						 
						 for(i=0; i < udln; i++){
							 ubuf[i] = *src++;
						 }
						 Send_UDP(ubuf,udln,4660,remPort);
						 */

					}
                }
                //-------------------------------------------
            }
            break;

		case 0x0608:      //протокол ARP
		
			//xprintf("ARP frame\n");
		
			if(Frame.Data[10] == 0x0100) {
				//ARP-reply
				//break;	
				if((Frame.Data[19]==MyIPAddress[0])&&(Frame.Data[20]==MyIPAddress[1]))  //сравниваем IP адреса в пакете с нашим
					Answear_ARP();  // ответ на ARP-запрос
			}

			if(Frame.Data[10] == 0x0200) {
				/*
				Remote_MAC.RmtMAC[0]=Frame.Data[3];
				Remote_MAC.RmtMAC[1]=Frame.Data[4];
				Remote_MAC.RmtMAC[2]=Frame.Data[5];
				Remote_MAC.RmtIP[0]=Frame.Data[14];
				Remote_MAC.RmtIP[1]=Frame.Data[15];
				Remote_MAC.hasMAC=1;
				*/
				//ETHERNET->R_CFG=0x8404;		//прием пакетов с совпадением MAC-адреса
			}
            break;
	}
}

osMutexDef (readpackMutex);    	// Declare mutex
osMutexId  (readpackMutexId); 	// Mutex ID

osMutexDef (sendpackMutex);    	// Declare mutex
osMutexId  (sendpackMutexId); 	// Mutex ID

void threadPacketParser(void *arg)
{
	osEvent evt;
	
	readpackMutexId = osMutexCreate(osMutex(readpackMutex));
	sendpackMutexId = osMutexCreate(osMutex(sendpackMutex));	
	
	for(;;) {
		// wait signal from ethernet isr
		//evt = osSignalWait(0x01, osWaitForever);
		evt = osSignalWait(0, 500);
		
		if(evt.status == osEventSignal) {
			switch(evt.value.signals) {
				case SIG_ETH_FRAMERDY_THRPACKPARSER:
					// read packets from ethernet tx buffer and proceed them
					MDR_PORTD->RXTX^=1<<7;
					while(MDR_ETHERNET1->ETH_STAT & (0x7<<5)){
						Frame.Counter=ReadPacket(&Frame);
						PacketParser();
					}
					break;

			}
		}
		else if(evt.status == osEventTimeout) {
			// every 500 ms
	
			// Ethernet LEDS control
			if((MDR_ETHERNET1->PHY_Status&0x02)==0x00)
				MDR_PORTB->SETTX=1<<15;		// LINK
			else
				MDR_PORTB->CLRTX=1<<15;

			if((MDR_ETHERNET1->PHY_Status&0x08)==0x00)	
				MDR_PORTB->SETTX=1<<14;		//Full Duplex Mode
			else
				MDR_PORTB->CLRTX=1<<14;
				
			// check the button
			/*
			static uint32_t rstcnt = 0;
			if(0 == (MDR_PORTE->RXTX & (1 << 9))) {
				if(rstcnt++ == 6) {
					rstcnt = 0;
					
					par_default();
					par_save();
					
					MDR_PORTB->CLRTX=1<<14;
					MDR_PORTB->CLRTX=1<<15;
					
					NVIC_SystemReset();
				}
			}
			*/
		}
	}
}
