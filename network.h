#ifndef NETWORK_H
#define NETWORK_H

#include "ethfunc.h"
#include "param.h"

#define UDPMODBUS_PORT 	4660
#define UDPDATASZ 508

void network_config(void);
void threadPacketParser(void *arg);
void threadNetworkUpdate(void *arg);

#endif
