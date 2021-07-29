#ifndef NETWORK_H
#define NETWORK_H

#include "ethfunc.h"
#include "param.h"

#define UDPMODBUS_PORT 	502
#define UDPDATASZ 508

void network_config(const struct STR_BSI_PARAM *par);
void threadPacketParser(void *arg);
void threadNetworkUpdate(void *arg);

#endif
