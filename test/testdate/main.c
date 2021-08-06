#include <stdlib.h>
#include <stdio.h>

//char version[6] = {VERSION_1, VERSION_2, VERSION_3, VERSION_4, VERSION_5 ,VERSION_6};
short version[3] = {
		((VERSION_1/10)<<12) | ((VERSION_1%10)<<8)| ((VERSION_2/10)<<4) | ((VERSION_2%10)<<0),
		((VERSION_3/10)<<12) | ((VERSION_3%10)<<8)| ((VERSION_4/10)<<4) | ((VERSION_4%10)<<0),
		((VERSION_5/10)<<12) | ((VERSION_5%10)<<8)| ((VERSION_6/10)<<4) | ((VERSION_6%10)<<0),
};

int main(int argc, char **argv)
{
	int i;
	for(i=0; i < 3; i++)
		printf("%04x:", version[i]);
	puts("");
	return 0;
}
