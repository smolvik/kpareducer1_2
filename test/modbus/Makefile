CC=gcc
AS=as
STRIP=strip


CFLAGS+=-Wall -O2 -I/usr/include/modbus
LDFLAGS+=-lmodbus 

all: mbrtu_server

mbrtu_server: mbrtu_server.c
	$(CC) $(CFLAGS) -o $@ mbrtu_server.c $(LDFLAGS) 
	$(STRIP) $@
	
clean:
	rm -f *.o mbrtu_server

