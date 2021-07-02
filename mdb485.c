#include "MDR1986VE1T.h"

#define MDB485RXBUFSZ 16
#define MDB485TXBUFSZ 16

extern unsigned short crc16(unsigned char *buf, int len);

static uint8_t rx_buffer[MDB485RXBUFSZ];
static uint8_t tx_buffer[MDB485TXBUFSZ];
int mdb485_rxsize = 0;

void mdb485_init(void)
{
	// uart 2
	// UART_CLK = 96MHz
	// rate = 115.2 k div = 96000/16/115.2 = 52.083
	MDR_UART2->IBRD = 52;											// 52
	MDR_UART2->FBRD = 5;											// round(0.083*2^6) = 5

	MDR_UART2->IFLS &= ~(UART_IFLS_RXIFLSEL_Msk | UART_IFLS_TXIFLSEL_Msk);
	//UART2->IFLS |= (2 << UART_IFLS_RXIFLSEL_OFFS) | (2 << UART_IFLS_TXIFLSEL_OFFS);  // threshold for FIFO is 1/2
	MDR_UART2->LCR_H |= UART_LCR_H_FEN;								// enable FIFO
	MDR_UART2->LCR_H |= 3 << UART_LCR_H_WLEN_Pos;					// word length is 8 bit
	MDR_UART2->CR |= (UART_CR_RXE | UART_CR_TXE | UART_CR_UARTEN); 	// enable uart
	
	MDR_UART2->IMSC |= (UART_IMSC_RTIM); // en irq from rx
	NVIC_EnableIRQ(UART2_IRQn);
}

int mdb485_send(uint8_t *buf, int n)
{	
	MDR_PORTD->RXTX |= 1 << 15; // tx on
	int i;
	for(i=0; i<n; i++) {
		while( MDR_UART2->FR & UART_FR_TXFF );	//wait until Tx FIFO full
		MDR_UART2->DR = *buf++;
	}

	while( MDR_UART2->FR & UART_FR_BUSY );		//wait for tramsmit has comleted
	MDR_PORTD->RXTX &= ~(1 << 15); // tx off

	return n;
}

void mdb485_putch(char ch)
{
	while( MDR_UART2->FR & UART_FR_TXFF );	//wait until Tx FIFO full
	MDR_UART2->DR = ch;
}

void mdb485_readregs(uint8_t id, uint16_t ad , uint16_t qn)
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
	
	mdb485_send(tx_buffer, 8);
}

void UART2_Handler(void)
{
	int i;

	mdb485_rxsize = 0;
	if(MDR_UART2->MIS & UART_MIS_RTMIS)	{
		uint8_t *pb = rx_buffer;
		for(i=0; (i < MDB485RXBUFSZ) && ((MDR_UART2->FR & UART_FR_RXFE) == 0); i++) {
			*pb++ = MDR_UART2->DR; // empting the fifo
		}
	}

	mdb485_rxsize = i;
}
