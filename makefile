##################################
# k1986ve1t Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LKR_SCRIPT = k1986ve1t.ld

INCLUDES = -I/home/smolvik/CMSIS_5-5.4.0/CMSIS/Core/Include
INCLUDES += -I/home/smolvik/CMSIS_5-5.4.0/CMSIS/RTOS/RTX/INC	
INCLUDES += -I/home/smolvik/CMSIS_5-5.4.0/Device/MDR1986VE1T/inc
INCLUDES += -I/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/include/
#INCLUDES += -I/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/include/

IMAGE = $(shell pwd)/blink.elf
	
CFLAGS  = -c -fno-common -nostdlib -fno-builtin -ffreestanding -O0 -g -Wall
CFLAGS  += -mcpu=cortex-m1 -mthumb $(INCLUDES)
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT)
LFLAGS += -L/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/lib/armv6-m/ 
LFLAGS += -L/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/lib/gcc/arm-none-eabi/5.4.1/armv6-m/
LFLAGS += -L/home/smolvik/CMSIS_5-5.4.0/CMSIS/RTOS/RTX/LIB/GCC
LIBS = --start-group -lgcc -lm -lc -lRTX_CM0 --end-group
CPFLAGS = -Obinary

all: blink.bin
	@echo $(IMAGE)

fsm.o: fsm.c
	$(CC) $(CFLAGS) -o $@ $<

modbus_udp.o: modbus_udp.c
	$(CC) $(CFLAGS) -o $@ $<

RTX_Conf_CM.o: RTX_Conf_CM.c
	$(CC) $(CFLAGS) -o $@ $<

startup.o: startup.c
	$(CC) $(CFLAGS) -o $@ $<

stubs.o: stubs.c
	$(CC) $(CFLAGS) -o $@ $<

ethfunc.o: ethfunc.c
	$(CC) $(CFLAGS) -o $@ $<
	
network.o: network.c
	$(CC) $(CFLAGS) -o $@ $<	
	
system.o: system.c
	$(CC) $(CFLAGS) -o $@ $<	

xprintf.o: xprintf.c
	$(CC) $(CFLAGS) -o $@ $<

mdb232.o: mdb232.c
	$(CC) $(CFLAGS) -o $@ $<

crc.o: crc.c
	$(CC) $(CFLAGS) -o $@ $<
	
#owen485.o: owen485.c
#	$(CC) $(CFLAGS) -o $@ $<	

mdb485.o: mdb485.c
	$(CC) $(CFLAGS) -o $@ $<	
	
eeprom.o: eeprom.c
	$(CC) $(CFLAGS) -o $@ $<	
	
param.o: param.c
	$(CC) $(CFLAGS) -o $@ $<		

main.o: main.c
	$(CC) $(CFLAGS) -o $@ $<

blink.elf: main.o startup.o mdb485.o stubs.o mdb232.o xprintf.o RTX_Conf_CM.o system.o ethfunc.o network.o crc.o eeprom.o param.o modbus_udp.o fsm.o
	$(LD) $(LFLAGS) -Map blink.map -o $@ $^ $(LIBS)

blink.bin: blink.elf
	$(CP) $(CPFLAGS) $< $@
	arm-none-eabi-objdump -d blink.elf > blink.s
clean:
	rm -rf *.o *.elf *.bin

load: blink.elf
	/home/smolvik/mdr1986x-JFlash-master/loadjlink $(IMAGE)

debug:
	arm-none-eabi-gdb
