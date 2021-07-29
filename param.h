#ifndef PARAM_H
#define PARAM_H

#include "MDR1986VE1T.h"
#include "network.h"
#include "crc.h"
#include "eeprom.h"

// size must be  aligned 4 bytes
struct STR_BSI_PARAM {
	uint16_t ip[2];
	uint16_t mac[3];
	uint16_t crc;
};
/*
int par_read(void);
void par_default(void);
int par_verify(void);
void par_save(void);
void par_update(uint8_t* frm);

void par_mac(uint16_t *mac);
void par_ip(uint16_t *ip);
void par_default(void);
*/

void par_save(const struct STR_BSI_PARAM *par);
void par_read(struct STR_BSI_PARAM *par);
extern const struct STR_BSI_PARAM defBsiParam;

#endif
