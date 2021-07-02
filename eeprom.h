#ifndef FLASH_H
#define FLASH_H

#include "MDR1986VE1T.h"

extern void eeprom_on(void);
extern void eeprom_off(void);
extern int eeprom_erase_page(void);
extern void eeprom_program_word(uint32_t Address, uint32_t Data);
extern uint32_t eeprom_read_word(uint32_t Address);

#endif
