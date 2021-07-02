#include "MDR1986VE1T.h"
#include <cmsis_os.h>
#include "signals.h"
#include "owen485.h"

extern osThreadId thrDUTProcceedId;

static const unsigned short owen_crc16_tab[256] = {
0x0     ,0x8f57 ,0x91f9 ,0x1eae ,0xaca5 ,0x23f2 ,0x3d5c ,0xb20b ,0xd61d ,0x594a ,0x47e4 ,0xc8b3 ,0x7ab8 ,0xf5ef
,0xeb41 ,0x6416 ,0x236d ,0xac3a ,0xb294 ,0x3dc3 ,0x8fc8 ,0x9f   ,0x1e31 ,0x9166 ,0xf570 ,0x7a27 ,0x6489 ,0xebde
,0x59d5 ,0xd682 ,0xc82c ,0x477b ,0x46da ,0xc98d ,0xd723 ,0x5874 ,0xea7f ,0x6528 ,0x7b86 ,0xf4d1 ,0x90c7 ,0x1f90
,0x13e  ,0x8e69 ,0x3c62 ,0xb335 ,0xad9b ,0x22cc ,0x65b7 ,0xeae0 ,0xf44e ,0x7b19 ,0xc912 ,0x4645 ,0x58eb ,0xd7bc
,0xb3aa ,0x3cfd ,0x2253 ,0xad04 ,0x1f0f ,0x9058 ,0x8ef6 ,0x1a1  ,0x8db4 ,0x2e3  ,0x1c4d ,0x931a ,0x2111 ,0xae46
,0xb0e8 ,0x3fbf ,0x5ba9 ,0xd4fe ,0xca50 ,0x4507 ,0xf70c ,0x785b ,0x66f5 ,0xe9a2 ,0xaed9 ,0x218e ,0x3f20 ,0xb077
,0x27c  ,0x8d2b ,0x9385 ,0x1cd2 ,0x78c4 ,0xf793 ,0xe93d ,0x666a ,0xd461 ,0x5b36 ,0x4598 ,0xcacf ,0xcb6e ,0x4439
,0x5a97 ,0xd5c0 ,0x67cb ,0xe89c ,0xf632 ,0x7965 ,0x1d73 ,0x9224 ,0x8c8a ,0x3dd  ,0xb1d6 ,0x3e81 ,0x202f ,0xaf78
,0xe803 ,0x6754 ,0x79fa ,0xf6ad ,0x44a6 ,0xcbf1 ,0xd55f ,0x5a08 ,0x3e1e ,0xb149 ,0xafe7 ,0x20b0 ,0x92bb ,0x1dec
,0x342  ,0x8c15 ,0x943f ,0x1b68 ,0x5c6  ,0x8a91 ,0x389a ,0xb7cd ,0xa963 ,0x2634 ,0x4222 ,0xcd75 ,0xd3db ,0x5c8c
,0xee87 ,0x61d0 ,0x7f7e ,0xf029 ,0xb752 ,0x3805 ,0x26ab ,0xa9fc ,0x1bf7 ,0x94a0 ,0x8a0e ,0x559  ,0x614f ,0xee18
,0xf0b6 ,0x7fe1 ,0xcdea ,0x42bd ,0x5c13 ,0xd344 ,0xd2e5 ,0x5db2 ,0x431c ,0xcc4b ,0x7e40 ,0xf117 ,0xefb9 ,0x60ee
,0x4f8  ,0x8baf ,0x9501 ,0x1a56 ,0xa85d ,0x270a ,0x39a4 ,0xb6f3 ,0xf188 ,0x7edf ,0x6071 ,0xef26 ,0x5d2d ,0xd27a
,0xccd4 ,0x4383 ,0x2795 ,0xa8c2 ,0xb66c ,0x393b ,0x8b30 ,0x467  ,0x1ac9 ,0x959e ,0x198b ,0x96dc ,0x8872 ,0x725
,0xb52e ,0x3a79 ,0x24d7 ,0xab80 ,0xcf96 ,0x40c1 ,0x5e6f ,0xd138 ,0x6333 ,0xec64 ,0xf2ca ,0x7d9d ,0x3ae6 ,0xb5b1
,0xab1f ,0x2448 ,0x9643 ,0x1914 ,0x7ba  ,0x88ed ,0xecfb ,0x63ac ,0x7d02 ,0xf255 ,0x405e ,0xcf09 ,0xd1a7 ,0x5ef0
,0x5f51 ,0xd006 ,0xcea8 ,0x41ff ,0xf3f4 ,0x7ca3 ,0x620d ,0xed5a ,0x894c ,0x61b  ,0x18b5 ,0x97e2 ,0x25e9 ,0xaabe
,0xb410 ,0x3b47 ,0x7c3c ,0xf36b ,0xedc5 ,0x6292 ,0xd099 ,0x5fce ,0x4160 ,0xce37 ,0xaa21 ,0x2576 ,0x3bd8 ,0xb48f
,0x684  ,0x89d3 ,0x977d ,0x182a
};

uint8_t rx_buffer[OWENMAXASCIISIZE];
uint32_t rxsize=0;
uint32_t rxoffs=0;

void owen485_init(void)
{
	// uart 2
	// UART_CLK = 96MHz
	// rate = 57.6 k div = 96000/16/57.6 = 104.17
	MDR_UART2->IBRD = 104;											// 104
	MDR_UART2->FBRD = 11;											// round(0.17*2^6) = 11

	MDR_UART2->IFLS &= ~(UART_IFLS_RXIFLSEL_Msk | UART_IFLS_TXIFLSEL_Msk);
	MDR_UART2->IFLS |= (4 << UART_IFLS_RXIFLSEL_Pos);				// threshold for rxFIFO is 7/8
	MDR_UART2->LCR_H |= UART_LCR_H_FEN;								// enable FIFO
	MDR_UART2->LCR_H |= 3 << UART_LCR_H_WLEN_Pos;					// word length is 8 bit
	MDR_UART2->CR |= (UART_CR_RXE | UART_CR_TXE | UART_CR_UARTEN); 	// enable uart
	
	MDR_UART2->IMSC = UART_IMSC_RTIM | UART_IMSC_RXIM; // en irq from rx
	//MDR_UART2->IMSC = UART_IMSC_RXIM; // en irq from rx
	NVIC_EnableIRQ(UART2_IRQn);
}

void owen485_send(uint8_t *buf)
{	
	MDR_PORTD->RXTX |= 1 << 15; // tx on
	int i;
	while(*buf) {
		while( MDR_UART2->FR & UART_FR_TXFF );	//wait until Tx FIFO full
		MDR_UART2->DR = *buf++;
	}

	while( MDR_UART2->FR & UART_FR_BUSY );		//wait for transmit has comleted
	MDR_PORTD->RXTX &= ~(1 << 15); // tx off
}

int owen_unpack_ascii(uint8_t *ina, uint8_t *outb, int na)
{
	int i;
	
	ina++;
	int nb = na>>1;
	for(i=0; i < nb; i++) {

		if((*ina == 0) || (*ina == '\r') || (*ina == '\n')) break;
	
		uint8_t ht = (*ina++)-'G'; if(ht&0xf0) return 0;
		uint8_t lt = (*ina++)-'G'; if(lt&0xf0) return 0;
		*outb++ = (ht<<4) | lt;
	}

	return i;
}

void owen_pack_ascii(uint8_t *inb, uint8_t *asc, int nb)
{
	int i;
	*asc++ = '#';
	for(i=0; i < nb; i++) {
		uint8_t tmp = *inb++;
		*asc++ = ((tmp>>4)&0x0f)+'G';
		*asc++ = (tmp&0x0f)+'G';		
	}
	*asc++ = '\r';
	*asc++ = 0;
}

unsigned short owen_crc16_wtb(unsigned char* packet, int length)
{
	int i;
	unsigned short crc;

	crc = 0;
    for (i = 0; i < length; ++i)
    {
        crc = (crc << 8) ^ owen_crc16_tab[(crc >> 8) ^ packet[i]];
    }
   
	return crc;
}

int owen_mk_frame(uint8_t *frame, uint8_t adr, uint16_t hash)
{
	uint8_t *fr = frame;
	
	*fr++ = adr;
	*fr++ = 0x10;	// reguest
	*fr++ = (hash >> 8) & 0xff;
	*fr++ = hash & 0xff;
	
	uint16_t crc = owen_crc16_wtb(frame, 4);
	*fr++ = (crc >> 8) & 0xff;
	*fr++ = crc & 0xff;	
	return (int)(fr-frame);
}

void owen_si8_request(uint16_t hash)
{
	uint8_t frame[OWENMAXFRSIZE];
	uint8_t asciibuf[OWENMAXASCIISIZE];
	int ie = owen_mk_frame(frame, OWENSI8ADDR, hash);
	owen_pack_ascii(frame, asciibuf, ie);
	rxsize = 0;
	rxoffs = 0;
	owen485_send(asciibuf);
}

int owen485_get(uint32_t *data)
{
	uint8_t frame[OWENMAXFRSIZE];
	if(rxsize == 0) return 0;
	
	int nb = 0;
	if((nb=owen_unpack_ascii(rx_buffer+rxoffs, frame, rxsize))) {
		uint16_t crc = owen_crc16_wtb(frame, nb);
		if(crc == 0) {
			// crc is ok
			uint16_t hash = (frame[2]<<8) | frame[3];
			if(hash == OWENSI8CNTHASH) {
				// get counter
				uint32_t cnt = 0;
				uint8_t *pd = frame+7;
				const uint32_t wd[8] = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000};
				uint32_t *pwd = wd;
				int i;
				for(i=0; i < 4; i++) {
					uint8_t db = *pd--;
					cnt += (db&0x0f)*(*pwd++);
					cnt += ((db>>4)&0x0f)*(*pwd++);
				}
				*data = cnt;
				return 1;
			} else if(hash == OWENSI8SPDHASH) {
				// get speed
				uint32_t spd = 0;
				uint8_t *pd = frame+7;
				const uint32_t wd[8] = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000};
				uint32_t *pwd = wd;
				int i;
				for(i=0; i < 4; i++) {
					uint8_t db = *pd--;
					spd += (db&0x0f)*(*pwd++);
					spd += ((db>>4)&0x0f)*(*pwd++);
				}
				*data = spd;
				return 2;
			} else if(hash == OWENSI8TIMHASH) {
				// get timer
				int i;
				const uint32_t wd[8] = {10, 100, 1000, 10000, 60*1000, 60*10000, 60*60*1000, 60*60*10000};
				uint32_t *pwd = wd;
				uint32_t tms = 0;
				uint8_t *pd = frame+9;
				for(i=0; i < 4; i++) {
					uint8_t db = *pd--;
					tms += (db&0x0f)*(*pwd++);
					tms += ((db>>4)&0x0f)*(*pwd++);
				}
				*data = tms;
				return 3;
			}
		}
	}
	return 0;
}

/*
 * прерывание по таймауту приемника не срабатывает если буфер пуст
 * надо не опустошать весь буфер, а оставлять хотя бы
 * один байт там
 */

void UART2_Handler(void)
{
	int ownrdbg = 12; // bytes for each read from rx fifo
	
	if(MDR_UART2->MIS & UART_MIS_RTMIS)	{
		// rx timeout
		uint8_t *pb = rx_buffer+rxsize;
		 // empting the fifo
		for(; (rxsize < OWENMAXASCIISIZE) && ((MDR_UART2->FR & UART_FR_RXFE) == 0); rxsize++) {
			if('\r' == (*pb++ = MDR_UART2->DR)) {
				// end frame marker
				osSignalSet(thrDUTProcceedId, SIG_DUT_OWEN485_RDYDATA);
			}
		}

		return;
	}

	if(MDR_UART2->MIS & UART_MIS_RXMIS)	{
		// rx fifo is almost full
		uint8_t *pb = rx_buffer+rxsize;
		int i;
		int nmax = OWENMAXASCIISIZE-rxsize;
		if(nmax>ownrdbg) nmax = ownrdbg;
		for(i=0; i < nmax; i++) {
			if('#' == (*pb++ = MDR_UART2->DR)) rxoffs = rxsize+i;
		}
		rxsize += i;
	}


	/*
	if(MDR_UART2->MIS & UART_MIS_RXMIS)	{
		uint8_t ch = MDR_UART2->DR;
		if('\r' == ch) osSignalSet(thrDUTProcceedId, SIG_DUT_OWEN485_RDYDATA);
		if('#' == ch) rxoffs = rxsize;
		if(rxsize < OWENMAXASCIISIZE) rx_buffer[rxsize++] = ch;
	}
	*/
}
