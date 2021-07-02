#include "param.h"

//const uint16_t MyMAC[3]={0x3412,0x7856,0xBC9A}; //MAC-адрес контроллера 12.34.56.78.9A.BC
//{0x000A,0x0100};  //(0:10, 1:0) IP-адрес клиента (наш IP-адрес): 10.0.0.1

/* base address for parameters storage at flash */
#define EEPROM_ADDRES (0x00000000)

struct STR_BSI_PARAM bsiParam __attribute__ ((aligned (4)));

const struct STR_BSI_PARAM defBsiParam = {
	.mac={0xbc,0x9a,0x78,0x56,0x34,0x12},
	.ip_loc={1,0,0,10},
	.ip_rem={2,0,0,10},
	.res = {0,0}
};

// restore default parameters
void par_default(void)
{
	bsiParam = defBsiParam;
}

void par_save(void)
{
	eeprom_on();
	if(eeprom_erase_page()){
		int i;
		uint32_t *pw = (uint32_t*)&bsiParam;
		int sz = sizeof(bsiParam)/4;
		uint32_t adr = EEPROM_ADDRES;
		
		for(i = 0; i < sz; i++) {
			eeprom_program_word(adr, *pw++);
			adr += 4;
		}
	}		
	eeprom_off();
}

int par_verify(void)
{
	int ret = 1;
	
	eeprom_on();
	int i;
	uint32_t *pw = (uint32_t*)&bsiParam;
	int sz = sizeof(bsiParam)/4;
	uint32_t adr = EEPROM_ADDRES;
	for(i = 0; i < sz; i++) {
		if(*pw++ ^ eeprom_read_word(adr)) ret = 0;
		adr += 4;
	}
	eeprom_off();
	
	return ret;
}

int par_read(void)
{
	eeprom_on();
	int i;
	uint32_t *pw = (uint32_t*)&bsiParam;
	int sz = sizeof(bsiParam)/4;
	uint32_t adr = EEPROM_ADDRES;
	for(i = 0; i < sz; i++) {
		*pw++ = eeprom_read_word(adr);
		adr += 4;
	}
	eeprom_off();
	
	if(crc32((uint8_t*)&bsiParam, sizeof(bsiParam))) return 0;
	return 1;
}

void par_update(uint8_t* frm)
{
	int i;
	uint32_t ofs = *frm++;
	uint32_t sz = *frm++;
	uint32_t res = *frm++;
	res += (*frm++)<<8;
	uint32_t rw = res & 0x01;
	
	if( (ofs+sz)>sizeof(struct STR_BSI_PARAM) ) return;
	
	if(rw == 0) {
		// write request
		uint8_t *dst = ofs+(uint8_t*)&bsiParam;
		for(i=0; i < sz; i++) *dst++ = *frm++;
		bsiParam.crc = crc32((uint8_t*)&bsiParam, sizeof(bsiParam)-4);
		par_save();
		if(par_verify() == 0) par_default();
	}else {
		// read request
		par_read();
	}
	
//	Send_UDP(ofs+(uint8_t*)&bsiParam, sz, UDPPORT_CNTR);
	//Send_UDP((uint8_t*)&bsiParam, sizeof(struct STR_BSI_PARAM), UDPPORT_CNTR);
}

// read and return local mac
void par_mac(uint8_t *mac)
{
	uint8_t *src = &bsiParam.mac[5];
	int i;
	for(i=0; i < 6; i++) *mac++ = *src--;
}

// read and return local ip address
void par_iploc(uint8_t *iploc)
{
	uint8_t *src = &bsiParam.ip_loc[3];
	int i;
	for(i=0; i < 4; i++) *iploc++ = *src--;
}

// read and return remote ip address
void par_iprem(uint8_t *iprem)
{
	uint8_t *src = &bsiParam.ip_rem[3];
	int i;
	for(i=0; i < 4; i++) *iprem++ = *src--;
}
