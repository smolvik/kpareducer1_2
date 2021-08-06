#include "MDR1986VE1T.h"
#include "network.h"
#include "modbusdef.h"

#include <cmsis_os.h>
#include "signals.h"

#define MY_ADDRESS 					17

/* Holding registers */
#define REGISTERS_REF_ADDRESS		0x0000
#define REGISTERS_NB  				38
/* Input registers */
#define INPUT_REGISTERS_REF_ADDRESS 0x0100
#define INPUT_REGISTERS_NB 			4
/* FIFO registers */
#define FIFO_REGISTERS_REF_ADDRESS 	0x0200

#define MDB_FIFO_QSIZE 512
#define PARREGS						0x0020
#define PARNREG						6

// BCD format YY:MM:DD:HH:MM:SS

static uint8_t fifo_queue[MDB_FIFO_QSIZE];
static uint32_t ihead = 0;
static uint32_t itail = 0;

uint16_t 	register_tab[REGISTERS_NB];
uint16_t    input_registers_tab[INPUT_REGISTERS_NB] = {
		((FWVERSION_1/10)<<12) | ((FWVERSION_1%10)<<8)| ((FWVERSION_2/10)<<4) | ((FWVERSION_2%10)<<0),
		((FWVERSION_3/10)<<12) | ((FWVERSION_3%10)<<8)| ((FWVERSION_4/10)<<4) | ((FWVERSION_4%10)<<0),
		((FWVERSION_5/10)<<12) | ((FWVERSION_5%10)<<8)| ((FWVERSION_6/10)<<4) | ((FWVERSION_6%10)<<0),
		((VERSION_1/10)<<12) | ((VERSION_1%10)<<8)| ((VERSION_2/10)<<4) | ((VERSION_2%10)<<0)
};

const uint8_t device_additional_info[] = "SAU controller";

static int 	pdu_read_fifo_queue(int);
static int 	pdu_report_server_id(int);
static int 	pdu_read_input_registers(int);
static int 	pdu_read_holding_registers(int);
static int 	pdu_write_multiply_registers(int);
static int 	pdu_illegal_function_error(int);
//static void proc_ADU();

extern void sendpacket(const uint8_t *p, int n);
extern int dut_qread(uint8_t *buf, int n);
extern void Send_UDP(uint8_t *s, int uln);

extern osMessageQId fsmCmdMsgQid;
extern osMutexId mutexMdbRegId;


uint32_t modbus_error = 0;

static uint8_t *rx_buffer;
static uint8_t tx_buffer[UDPDATASZ];

int (* const proc_PDU_table[256])(int) = {
	pdu_illegal_function_error,
	pdu_illegal_function_error,			
	pdu_illegal_function_error,			
	pdu_read_holding_registers,			// 0x03
	pdu_read_input_registers, 			// 0x04
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,			
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,	   		
	pdu_write_multiply_registers,  		// 0x10
	pdu_report_server_id,				// 0x11
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error, 	
	pdu_read_fifo_queue,				// 0x18
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,	
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,	
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,	
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error
};

int mdb_fifo_read(uint8_t *buf, int n)
{
	int i;

	osMutexWait(mutexMdbRegId, osWaitForever);	
	uint32_t sfill = (ihead-itail)&(MDB_FIFO_QSIZE-1);
	uint32_t sfree = MDB_FIFO_QSIZE - sfill;
	
	//if(n>sfill) n = sfill;
	if(n<=sfill) {	
		for(i=0; i < n; i++) {
			*buf++ = fifo_queue[itail];
			itail = (itail+1)&(MDB_FIFO_QSIZE-1);
		}
	} else n = 0;
	
	osMutexRelease(mutexMdbRegId);
	
	return n;
}

int mdb_fifo_write(uint8_t *buf, int n)
{
	int i;
			
	osMutexWait(mutexMdbRegId, osWaitForever);
	uint32_t sfill = (ihead-itail)&(MDB_FIFO_QSIZE-1);
	uint32_t sfree = MDB_FIFO_QSIZE - sfill;

	//if(n>sfree) n = sfree;
	
	for(i=0; i < n; i++) {
		fifo_queue[ihead] = *buf++;
		ihead = (ihead+1)&(MDB_FIFO_QSIZE-1);
	}
	osMutexRelease(mutexMdbRegId);
	
	return n;
}

void mdb_get_testparam(struct STR_TEST_PARAM *par)
{
	int i;
	
	par->num_cyc = (register_tab[1]<<16) | register_tab[2];
	par->in_speed = (register_tab[3]<<16) | register_tab[4];
	par->max_in_rot = (register_tab[5]<<16) | register_tab[6];
	par->max_out_torque = (register_tab[7]<<16) | register_tab[8];
	
	uint16_t *pr1 = &register_tab[9];
	uint16_t *pr2 = &register_tab[14];
	
	for(i=0; i < 5; i++) {
		par->in_rot_tab[i] = *pr1++;
		par->out_torque_tab[i] = *pr2++;
	}
}

uint16_t mdb_get_holding_register(int idx) 
{
	if(idx<0 || idx >= REGISTERS_NB) return 0;
	uint16_t r = register_tab[idx];
	return r;
}

int pdu_report_server_id(int ofs)
{
	uint8_t code;
	int idx, i;
	int n = sizeof(device_additional_info);
	
	code = rx_buffer[ofs];
	
	idx = ofs;
	tx_buffer[idx++] = code;
	tx_buffer[idx++] = 2 + n;	
	tx_buffer[idx++] = MY_ADDRESS;	
	tx_buffer[idx++] = 0xff;
	
	for(i = 0; i < n; i++)
	{
		tx_buffer[idx++] = device_additional_info[i];
	}
	
	return idx;
}

int pdu_read_input_registers(int ofs)
{
	uint8_t code;
	uint16_t start_address;
	uint16_t quantity_of_registers;
	int i,j;
	
	code = rx_buffer[ofs];
	start_address = (rx_buffer[ofs+1]<<8) | rx_buffer[ofs+2];
	quantity_of_registers = (rx_buffer[ofs+3]<<8) | rx_buffer[ofs+4];
	
	// check address
	if( (start_address < INPUT_REGISTERS_REF_ADDRESS) || 
	( (start_address+quantity_of_registers) >  INPUT_REGISTERS_REF_ADDRESS+INPUT_REGISTERS_NB) )
	{
		// error - illegal data address
		j = ofs;
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;
		return j;
	}	

	// address is OK
	j = ofs;
	tx_buffer[j++] = code;
	tx_buffer[j++] = quantity_of_registers << 1; // num bytes is Nx2
	// copy registers to tx buffer
	for(i = 0; i < quantity_of_registers; i++)
	{
		uint16_t reg = 
			input_registers_tab[i+(start_address-INPUT_REGISTERS_REF_ADDRESS)];
		tx_buffer[j++] = (reg >> 8)&0xff;
		tx_buffer[j++] = reg&0xff;		
	}		

	return j;
}

int pdu_write_multiply_registers(int ofs)
{
	uint8_t code;
	uint16_t start_address;
	uint16_t quantity_of_registers;
	uint8_t byte_count;
	int i,j;
	
	code = rx_buffer[ofs];
	start_address = (rx_buffer[ofs+1]<<8) | rx_buffer[ofs+2];
	quantity_of_registers = (rx_buffer[ofs+3]<<8) | rx_buffer[ofs+4];
	byte_count = rx_buffer[ofs+5];
	
	// check address
	if( (start_address < REGISTERS_REF_ADDRESS) || 
		( (start_address+quantity_of_registers) >  REGISTERS_REF_ADDRESS+REGISTERS_NB) )
	{
		// error - illegal data address
		j = ofs;
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;
	}
	else
	{
		// address is OK
		// make writing registers
		j = ofs+6; // data begins here
		for(i = 0; i < quantity_of_registers; i++)
		{
			uint16_t reg;
			
			reg = (rx_buffer[j++]<<8);
			reg |= (rx_buffer[j++]);
			register_tab[(start_address-REGISTERS_REF_ADDRESS)+i] = reg;
		}
		
		// make pdu of the responce
		j = ofs;
		for(i=ofs; i < ofs+5; i++) tx_buffer[j++] = rx_buffer[i];
	}
	
	if(start_address == 0) {
		// signal about command receiving
		//osSignalSet(thrFSMProcceedId, SIG_FSM_MDBCOMRDY_THRFSMPROCEED);
		osMessagePut(fsmCmdMsgQid, register_tab[0], 0);
	}
	
	if(start_address == 0x0020) {		
		if(0 == crc16((uint8_t*)&register_tab[PARREGS], PARNREG*2)) {
			// crc ok - save parameters
			par_save((struct STR_BSI_PARAM*)&register_tab[PARREGS]);
			struct STR_BSI_PARAM rp;
			par_read(&rp);
		}
	}	
	
	return j;
}

static inline void u16tobe(uint16_t u, uint8_t *buf)
{
	*buf++ = (u>>8)&0xff;
	*buf++ = u;		
}

static inline void u32tobe(uint32_t u, uint8_t *buf)
{
	*buf++ = (u>>24)&0xff;
	*buf++ = (u>>16)&0xff;
	*buf++ = (u>>8)&0xff;
	*buf++ = u;	
}

int pdu_read_fifo_queue(int ofs)
{
	uint8_t code;
	uint16_t fifo_address;
	int i,j;
	uint16_t fifosz = 3;
	
	code = rx_buffer[ofs];
	fifo_address = (rx_buffer[ofs+1]<<8) | rx_buffer[ofs+2];
	
	if(FIFO_REGISTERS_REF_ADDRESS != fifo_address) {
		// error - illegal address
		j = ofs;
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;
	} else{
		// address is ok
		j = ofs;
		tx_buffer[j++] = code;
		tx_buffer[j++] = 0;
		tx_buffer[j++] = 0;	// FIFO_SZ*2+2;
		tx_buffer[j++] = 0;
		tx_buffer[j++] = 0; // FIFO_SZ;
		
		int idat = j;
		
		struct STR_TEST_DATA tdat;
		uint8_t *dst = &tx_buffer[j];
		while( (j+sizeof(tdat)) < UDPDATASZ ) {
			int nr = 0;
			// read the telemetry queue
			if( 0 == (nr=mdb_fifo_read((uint8_t*)&tdat, sizeof tdat)) ) break;
			
			u32tobe(tdat.in_cnt_rot, dst); dst += 4;
			u32tobe(tdat.in_torque, dst); dst += 4;
			u32tobe(tdat.in_speed, dst); dst += 4;
			u32tobe(tdat.out_cnt_rot, dst); dst += 4;
			u32tobe(tdat.out_torque, dst); dst += 4;
			u32tobe(tdat.out_speed, dst); dst += 4;
			u32tobe(tdat.cyc_cnt, dst); dst += 4;
			u32tobe(tdat.fsm_state, dst); dst += 4;

			j += nr;
		}
		
		//tx_buffer[ofs+2] = j-idat+2;
		//tx_buffer[ofs+4] = (j-idat)>>1;
		u16tobe(j-idat+2, &tx_buffer[ofs+1]);
		u16tobe((j-idat)>>1, &tx_buffer[ofs+3]);
	}
	
	return j;
}

int pdu_read_holding_registers(int ofs)
{
	uint8_t code;
	uint16_t start_address;
	uint16_t quantity_of_registers;
	int i,j;
	
	code = rx_buffer[ofs];
	start_address = (rx_buffer[ofs+1]<<8) | rx_buffer[ofs+2];
	quantity_of_registers = (rx_buffer[ofs+3]<<8) | rx_buffer[ofs+4];
	
	// check address
	if( (start_address < REGISTERS_REF_ADDRESS) || 
		( (start_address+quantity_of_registers) >  REGISTERS_REF_ADDRESS+REGISTERS_NB) )
	{
		// error - illegal data address
		j = ofs;
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;
	}	
	else
	{
		// address is OK
		j = ofs;
		tx_buffer[j++] = code;
		tx_buffer[j++] = quantity_of_registers << 1; // num bytes is Nx2
		// copy registers to tx buffer
		for(i = 0; i < quantity_of_registers; i++)
		{
			uint16_t reg = 
				register_tab[i+(start_address-REGISTERS_REF_ADDRESS)];
			tx_buffer[j++] = (reg >> 8)&0xff;
			tx_buffer[j++] = reg&0xff;		
		}		
	}

	return j;
}

int pdu_illegal_function_error(int ofs)
{
	uint8_t code;
	int j;
	
	code = rx_buffer[ofs];
	
	j = ofs;
	tx_buffer[j++] = 0x80 | code;
	tx_buffer[j++] = 0x01;
	return j;
}

void mdb_proc_adu(uint8_t *rx)
{
	rx_buffer = rx;
	
	uint8_t code;
	int i;
	
	// MBAP HEADER
	uint16_t tr_id = (uint16_t)rx_buffer[0]<<8 | (uint16_t)rx_buffer[1];
	uint16_t prot_id = (uint16_t)rx_buffer[2]<<8 | (uint16_t)rx_buffer[3];
	uint16_t length = (uint16_t)rx_buffer[4]<<8 | (uint16_t)rx_buffer[5];
	uint8_t  unit_id = rx_buffer[6];
	code = rx_buffer[7];
	
	if(unit_id == MY_ADDRESS)
	{
		int j;

		// make pdu body
		j = (*proc_PDU_table[code])(7);
		
		// make adu header
		for(i=0; i < 7; i++) tx_buffer[i] = rx_buffer[i];
		tx_buffer[4] = (j-6)<<8; 	// length
		tx_buffer[5] = (j-6)&0xff; 	// length

		// packet is ready - start transmitter
		//sendpacket(tx_buffer, j);
		Send_UDP(tx_buffer, j);
	}
}
