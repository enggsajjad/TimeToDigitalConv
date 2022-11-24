#ifndef sajjad
	#define sajjad
	#include "at89c51rc2.h"
#endif
#define ChronoCmd	SendChar
#define PrintChar	SendChar
#define TITLE	"CHRONO32C ICCC"

void Delay5ms(void);
void Delay25ms(void);
void DelayHalfSec(void);
void PrintString(char *s);
void SendChar(unsigned char c);

