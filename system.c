#include "MDR1986VE1T.h"

#define CPU_PLL_MULT 12 // PLL_CLK 96 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 3	// freq < 100MHz

//--- Ports configuration ---
void PortConfig()
{
	// portA
	// PA3-input button reset to default settings
	MDR_PORTA->ANALOG |= (1<<3);
	MDR_PORTA->OE &= ~(1<<3);
	
	// port B
	// PB14 - ETH_YELLOW out PB15 - ETH_GREEN out
	// PB9 - analog1 polarity switch
	// PB10 - analog2 polarity switch
	// PB1-PB4 - control servo1		PB1 - SON
	// PB5-PB8 - control servo2		PB5 - SON
	// PB11 - si8 reset
	// PB12 - si8 block
	// PB0 - servo power on/off
	MDR_PORTB->ANALOG |= (0x3<<14) + (0x1<<9) + (0x1<<10) + (0x1<<11) + (0x1<<12);
	MDR_PORTB->RXTX &= ~((0x3<<14) + (0x1<<9) + (0x1<<10) + (0x1<<11) + (0x1<<12));
	MDR_PORTB->OE |= (0x3<<14) + (0x1<<9) + (0x1<<10)  + (0x1<<11) + (0x1<<12);
	MDR_PORTB->PWR |= (0xF<<28) + (0x3<<18) + (0x3<<20)  + (0x3<<22) + (0x3<<24);

	MDR_PORTB->ANALOG |= (1<<0)+(1<<1)+(1<<2)+(1<<3)+(1<<4)+(1<<5)+(1<<6)+(1<<7)+(1<<8);
	MDR_PORTB->RXTX &= ~((1<<0)+(1<<1)+(1<<2)+(1<<3)+(1<<4)+(1<<5)+(1<<6)+(1<<7)+(1<<8));
	MDR_PORTB->OE |= (1<<0)+(1<<1)+(1<<2)+(1<<3)+(1<<4)+(1<<5)+(1<<6)+(1<<7)+(1<<8);
	MDR_PORTB->PWR |= (0xffff<<2) | 0x03;

	// port D
	// UART2 PD.13 PD.14 RS485
	// PD15 - RS485 RS/TX
	MDR_PORTD->FUNC |= (0x01 << (13<<1)) | (0x01 << (14<<1)); 						// основная функция 
	MDR_PORTD->ANALOG |= (1<<13) | (1<<14) | (1<<15);								// цифровой режим
	MDR_PORTD->PWR |= (0x03 << (13<<1)) | (0x03 << (14<<1)) | (0x03 << (15<<1));	// max speed
	MDR_PORTD->RXTX &= ~((1 << 13) | (1 << 14) | (1 << 15));	 	    			// очищаем выход
	MDR_PORTD->OE |= (0x01 << 15);

	// port C
	// PC3 - UART1_TXD
	// PC4 - UART1_RXD	
	MDR_PORTC->FUNC &= ~( (0x03 << (3<<1)) | (0x03 << (4<<1)) );
	MDR_PORTC->FUNC |= (0x01 << (3<<1)) | (0x01 << (4<<1)); 	// основная функция PC.3 и PC.4
	MDR_PORTC->ANALOG |= (1 << 3) | (1 << 4);					// PC.3 PC.4 - цифровой режим
	MDR_PORTC->PWR |= (0x03 << (3<<1)) | (0x03 << (4<<1));		// max speed PC.3 PC.4
	MDR_PORTC->RXTX &= ~((1 << 3) | (1 << 4));	     			// очищаем выход
	
	// PC5 - EXTINT1
	//MDR_PORTC->ANALOG |= (1 << 5);							// PC.5 - цифровой вход
	//MDR_PORTC->FUNC |= (1 << (5<<1));							// PC.5 - осн функ
	//NVIC_ClearPendingIRQ(EXT_INT1_IRQn);
	//NVIC_EnableIRQ(EXT_INT1_IRQn); 								
	
	// portE
	// PE1 - DAC0 servo1 speed control
	// PE2 - DAC1 servo2 torque control
	MDR_PORTE->ANALOG &= ~((1 << 1)+(1 << 2));
	
}

void ClkConfig(void)
{
	MDR_RST_CLK->RTC_CLOCK = (1<<9);
	MDR_BKP->REG_0F |= (1<<4) + (2<<2);
	MDR_BKP->RTC_PRL = 0xfffff;
	MDR_BKP->RTC_DIV = 1;
	
	MDR_RST_CLK->HS_CONTROL |= 0x00000005; 				// HSE power on, oscillator mode
														// HSE2 on oscillator mode
	while((MDR_RST_CLK->CLOCK_STATUS&0x0C)!=0x0C);		//Wait until HSE and HSE2 not ready
	
	MDR_RST_CLK->CPU_CLOCK |= 0x00000002;				// source for CPU_C1 is HSE

	// setup PLL CPU
	MDR_RST_CLK->PLL_CONTROL = RST_CLK_PLL_CONTROL_PLL_CPU_ON |
						   ((CPU_PLL_MULT-1) << RST_CLK_PLL_CONTROL_PLL_CPU_MUL_Pos);
	while(0 == (MDR_RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_PLL_CPU_RDY));	// wait for PLL CPU ready
	
	// flash delay
	MDR_RST_CLK->PER_CLOCK|=0x08;						//EEPROM_CTRL Clock enable
	MDR_EEPROM->CMD |= (EEPROM_DEL << EEPROM_CMD_DELAY_Pos);
	MDR_RST_CLK->PER_CLOCK&=(~0x08);					//EEPROM_CTRL Clock disable
						   						   
	MDR_RST_CLK->CPU_CLOCK |= (1 << RST_CLK_CPU_CLOCK_HCLK_SEL_Pos);	// source for HCLK is CPU_C3
	MDR_RST_CLK->CPU_CLOCK |= (1 << RST_CLK_CPU_CLOCK_CPU_C2_SEL_Pos);	// source for CPU_C2 is PLLCPUo	

	// ETH enable
	MDR_RST_CLK->ETH_CLOCK=(1<<24)|(1<<27)|(3<<28);		//PHY_CLK_SEL = HSE2 (25MHz), ETH_CLK_EN=1, PHY_CLK_EN=1
	
	// TIM1 clk enable
	MDR_RST_CLK->TIM_CLOCK |= RST_CLK_TIM_CLOCK_TIM1_CLK_EN;
	MDR_RST_CLK->TIM_CLOCK &= ~RST_CLK_TIM_CLOCK_TIM1_BRG_Msk;
	
	// TIM2 clk enable
	MDR_RST_CLK->TIM_CLOCK |= RST_CLK_TIM_CLOCK_TIM2_CLK_EN;
	MDR_RST_CLK->TIM_CLOCK &= ~RST_CLK_TIM_CLOCK_TIM2_BRG_Msk;

	MDR_RST_CLK->PER_CLOCK|=(1<<14) | (1<<15) | (1<<21) |
			(1<<22)|(1<<23)|(1<<24)|(1<<25)|(1<<18);	//Enable clock for TIM1, TIM2, PORTA, PORTB, PORTC, PORTD, PORTE, DAC

	// enable clock UART2
	MDR_RST_CLK->PER_CLOCK |= (1 << 7);
	MDR_RST_CLK->UART_CLOCK |= (1 << 25);
	MDR_RST_CLK->UART_CLOCK &= ~(0xff<< 8);	// uart2 clk = hclk	
	
	// enable clock UART1
	MDR_RST_CLK->PER_CLOCK |= (1 << 6);
	MDR_RST_CLK->UART_CLOCK |= (1 << 24);
	MDR_RST_CLK->UART_CLOCK &= ~(0xff<< 0);	// uart1 clk = hclk
}

void TimerConfig(void)
{
	MDR_TIMER1->CNT = 0;
	MDR_TIMER1->PSG = 96 - 1;  // prescaller gets 1 MHz
	MDR_TIMER1->ARR = 100000 - 1;	// TIM1 period is 100 ms
	
	MDR_TIMER1->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// enable int for CNT=ARR event
	MDR_TIMER1->CNTRL |= TIMER_CNTRL_CNT_EN; 						// start count
	NVIC_EnableIRQ(TIMER1_IRQn); 									// enable in nvic int from timer1
}

void dac_init()
{
	MDR_DAC->CFG |= (1<<2)+(1<<3); // dac0 dac1 on
}

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	TimerConfig();
	dac_init();
	
	
	NVIC_SetPriority(ETHERNET_IRQn, 0);
	NVIC_SetPriority(TIMER1_IRQn, 1);
	NVIC_SetPriority(SysTick_IRQn, 3);
}	
