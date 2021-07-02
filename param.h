#ifndef PARAM_H
#define PARAM_H

#include "MDR1986VE1T.h"
#include "network.h"
#include "crc.h"
#include "eeprom.h"

// size must be  aligned 4 bytes
struct STR_BSI_PARAM {
	uint8_t mac[6];
	uint8_t ip_loc[4];
	uint8_t ip_rem[4];
	uint8_t res[2];
	uint32_t crc;
};

int par_read(void);
void par_default(void);
int par_verify(void);
void par_save(void);
void par_update(uint8_t* frm);

void par_mac(uint8_t *mac);
void par_iploc(uint8_t *iploc);
void par_iprem(uint8_t *iprem);
void par_default(void);

#endif
