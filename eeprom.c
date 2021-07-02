#include "eeprom.h"

#define EEPROM_REG_ACCESS_KEY           ((uint32_t)0x8AAA5551)


void eeprom_on(void)
{
	__disable_irq();
	MDR_RST_CLK->PER_CLOCK |= (1<<3);	
}

void eeprom_off(void)
{
	__enable_irq();
	MDR_RST_CLK->PER_CLOCK &= ~(1<<3);
}

__attribute__((section(".ramfunc")))
void usleep(int t)
{
	t = (t*11) >> 1;
	while(t--) {};
}

/*
Стирание одной страницы выполняется в 4 этапа:
1 этап – стирание Sector_A для одной страницы;
2 этап – стирание Sector_B для одной страницы;
3 этап – стирание Sector_C для одной страницы;
4 этап – стирание Sector_D для одной страницы.

Для стирания одного сектора страницы памяти надо установить
необходимое значение в бит IFREN (1 – для информационной памяти и 0 – для основной
памяти), затем установить адрес стираемой страницы в регистре EEPROM_ADR[16:12] и
номер сектора EEPROM_ADR[3:2] (00 – Sector_A, 01 – Sector_B, 10 – Sector_C и
11 – Sector_D). Далее установить биты XE и ERASE в единицу, и спустя время tnvs = 5 мкс
установить бит NVSTR в единицу. Стирание страницы памяти длится время terase = 40 мс.
Спустя это время необходимо очистить бит ERASE, и спустя время tnvh = 5 мкс очистить
биты XE и NVSTR. Последующие операции с памятью можно выполнять спустя время
trcv = 1 мкс.
*/
__attribute__((section(".ramfunc")))
int eeprom_erase_page(void) {
	uint32_t i;
	int ret = 1;
	uint32_t padr = 0;
	
	MDR_EEPROM->KEY = EEPROM_REG_ACCESS_KEY;
	MDR_EEPROM->CMD |= EEPROM_CMD_CON | EEPROM_CMD_IFREN;
	// erase sectors A-D
	for (i=0;i<16;i+=4)
	{
		MDR_EEPROM->ADR = padr + i;
		MDR_EEPROM->DI = 0;

		MDR_EEPROM->CMD |= EEPROM_CMD_XE | EEPROM_CMD_ERASE;
		usleep(6);// 6us
		MDR_EEPROM->CMD |= EEPROM_CMD_NVSTR;
		usleep(50000);// 50ms
		MDR_EEPROM->CMD &= ~EEPROM_CMD_ERASE;
		usleep(5);// 5us
		MDR_EEPROM->CMD &= ~(EEPROM_CMD_XE | EEPROM_CMD_NVSTR);
		usleep(2);// 2us
	}
	
	// check erasing sucessfull
	for (i=padr; i<padr+0x1000; i+=4)
	{
		MDR_EEPROM->ADR = i;
		MDR_EEPROM->CMD |= EEPROM_CMD_XE | EEPROM_CMD_YE | EEPROM_CMD_SE;
		usleep(1);
		unsigned long data = MDR_EEPROM->DO;
		MDR_EEPROM->CMD &= ~(EEPROM_CMD_XE | EEPROM_CMD_YE | EEPROM_CMD_SE);
		usleep(1);
		if(data != 0xffffffff) {ret = 0; break;}
	}

	MDR_EEPROM->CMD &= ~(EEPROM_CMD_CON | EEPROM_CMD_IFREN);
	MDR_EEPROM->KEY  = 0;	
	return ret;
}

__attribute__((section(".ramfunc")))
void eeprom_program_word(uint32_t Address, uint32_t Data)
{
  uint32_t Command;

  MDR_EEPROM->KEY = EEPROM_REG_ACCESS_KEY;
  Command = MDR_EEPROM->CMD & EEPROM_CMD_DELAY_Msk;
  Command |= EEPROM_CMD_CON | EEPROM_CMD_IFREN;
  MDR_EEPROM->CMD = Command;

  MDR_EEPROM->ADR = Address;
  MDR_EEPROM->DI  = Data;
  Command |= EEPROM_CMD_XE | EEPROM_CMD_PROG;
  MDR_EEPROM->CMD = Command;
  usleep(5);
  Command |= EEPROM_CMD_NVSTR;
  MDR_EEPROM->CMD = Command;
  usleep(10);
  Command |= EEPROM_CMD_YE;
  MDR_EEPROM->CMD = Command;
  usleep(40);
  Command &= ~EEPROM_CMD_YE;
  MDR_EEPROM->CMD = Command;
  Command &= ~EEPROM_CMD_PROG;
  MDR_EEPROM->CMD = Command;
  usleep(5);
  Command &= ~(EEPROM_CMD_XE | EEPROM_CMD_NVSTR);
  MDR_EEPROM->CMD = Command;
  usleep(1);

  MDR_EEPROM->CMD = Command & EEPROM_CMD_DELAY_Msk;
  MDR_EEPROM->KEY = 0;
}

__attribute__((section(".ramfunc")))
uint32_t eeprom_read_word(uint32_t Address)
{
  uint32_t Command;
  uint32_t Data;

  MDR_EEPROM->KEY = EEPROM_REG_ACCESS_KEY;
  Command = (MDR_EEPROM->CMD & EEPROM_CMD_DELAY_Msk) | EEPROM_CMD_CON;
  Command |= EEPROM_CMD_IFREN;
  MDR_EEPROM->CMD = Command;
  
  MDR_EEPROM->ADR = Address;
  MDR_EEPROM->CMD = Command | EEPROM_CMD_XE | EEPROM_CMD_YE | EEPROM_CMD_SE;
  MDR_EEPROM->DO;   /* Idle Reading for Delay */
  MDR_EEPROM->DO;   /* Idle Reading for Delay */
  MDR_EEPROM->DO;   /* Idle Reading for Delay */
  Data = MDR_EEPROM->DO;
  
  Command &= EEPROM_CMD_DELAY_Msk;
  MDR_EEPROM->CMD = Command;
  MDR_EEPROM->KEY = 0;

  return Data;
}
