#include "MDR1986VE1T.h"
#include <cmsis_os.h>
#include "signals.h"

#define MDB232RXBUFSZ 16
#define MDB232TXBUFSZ 16

extern unsigned short crc16(unsigned char *buf, int len);

extern osThreadId thrDUTProcceedId;

static uint8_t rx_buffer[MDB232RXBUFSZ];
static uint8_t tx_buffer[MDB232TXBUFSZ];
int mdb232_rxsize = 0;

void mdb232_init(void)
{
	// uart1
	// UART_CLK = 96MHz
	// rate = 19.2 k div = 96000/16/19.2 = 312.5
	MDR_UART1->IBRD = 312;
	MDR_UART1->FBRD = 32;

	MDR_UART1->IFLS &= ~(UART_IFLS_RXIFLSEL_Msk | UART_IFLS_TXIFLSEL_Msk);
	MDR_UART1->LCR_H |= UART_LCR_H_FEN;
	MDR_UART1->LCR_H |= 3 << UART_LCR_H_WLEN_Pos;					// word length is 8 bit
	MDR_UART1->CR |= (UART_CR_RXE | UART_CR_TXE | UART_CR_UARTEN); 	// enable uart
	
	MDR_UART1->IMSC |= (UART_IMSC_RTIM); // en irq from rx timeout
	NVIC_EnableIRQ(UART1_IRQn);
}	

static int mdb232_send(uint8_t *buf, int n)
{	
	int i;
	for(i=0; i<n; i++) {
		while( MDR_UART1->FR & UART_FR_TXFF );	//wait until Tx FIFO full
		MDR_UART1->DR = *buf++;
	}

	while( MDR_UART1->FR & UART_FR_BUSY );		//wait for tramsmit has comleted

	return n;
}

void mdb232_read_inputregs(uint8_t id, uint16_t ad , uint16_t qn)
{
	uint8_t *pb = tx_buffer;
	
	// make adu header
	*pb++ = id;
	// make pdu body
	*pb++ = 0x04;			// func - 4
	*pb++ = 0xff&(ad>>8);	// addr
	*pb++ = 0xff&ad;
	*pb++ = 0xff&(qn>>8);	// quant
	*pb++ = 0xff&qn;
	// make adu tail - calculate crc
	uint16_t crc = crc16(tx_buffer, 6);
	*pb++ = crc&0xff;		
	*pb++ = (crc >> 8)&0xff;
	
	mdb232_send(tx_buffer, 8);
}

void mdb232_readregs(uint8_t id, uint16_t ad , uint16_t qn)
{
	uint8_t *pb = tx_buffer;
	
	// make adu header
	*pb++ = id;
	// make pdu body
	*pb++ = 0x03;			// func - 3
	*pb++ = 0xff&(ad>>8);	// addr
	*pb++ = 0xff&ad;
	*pb++ = 0xff&(qn>>8);	// quant
	*pb++ = 0xff&qn;
	// make adu tail - calculate crc
	uint16_t crc = crc16(tx_buffer, 6);
	*pb++ = crc&0xff;		
	*pb++ = (crc >> 8)&0xff;
	
	mdb232_send(tx_buffer, 8);
}

uint32_t mdb232_get_crc()
{
	uint16_t crc;
	
	NVIC_DisableIRQ(UART1_IRQn);
	crc = crc16(rx_buffer, mdb232_rxsize);
	NVIC_EnableIRQ(UART1_IRQn);
	
	return crc;
}

int32_t mdb232_bikm_get_torque(int32_t *id)
{
	uint8_t *p = rx_buffer+3;
	*id = -1;
	
	NVIC_DisableIRQ(UART1_IRQn);
	if(mdb232_rxsize) {
		*id = rx_buffer[0];
		// in rx_buffer float with be order
		// need int(y*256.f+0.5)
		uint32_t t = (*p++)<<16;
		t |= (*p++)<<24;
		t |= (*p++)<<0;
		t |= (*p)<<8;
		NVIC_EnableIRQ(UART1_IRQn);
		
		int32_t ex = ((t>>23)&0xff)-127;
		uint32_t fr = (1<<23) | (t&0x7fffff);
		return (fr+(1<<(22-ex-8)))>>(23-ex-8);
	}
	NVIC_EnableIRQ(UART1_IRQn);
	return 0;
}

void UART1_Handler(void)
{
	int i;

	mdb232_rxsize = 0;
	if(MDR_UART1->MIS & UART_MIS_RTMIS)	{
		// rx timeout has occurred
		uint8_t *pb = rx_buffer;
		for(i=0; (i < MDB232RXBUFSZ) && ((MDR_UART1->FR & UART_FR_RXFE) == 0); i++) {
			*pb++ = MDR_UART1->DR; // empting the uart fifo
		}
	}
	mdb232_rxsize = i;
	osSignalSet(thrDUTProcceedId, SIG_DUT_MDB232_RDYDATA);
}
