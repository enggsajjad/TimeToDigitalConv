#ifndef sajjad
	#define sajjad
	#include "at89c51rc2.h"
#endif
//Constants: 	*****Graphic LCD Constants****
#define GR_HOME   	0x0C00		//Graphic RAM home Address
#define GR_AREA   	0x14    		//Graphic RAM no of bytes/line
#define GR_SIZE   	0x0C00		//Graphic RAM size
#define TX_HOME      0x0000		//Graphic RAM home Address
#define TX_AREA      0x14    		//Graphic RAM no of bytes/line
#define TX_SIZE      0x0C00  		//Text RAM size
//Constants: 	*****Graphic LCD Commands****
#define GR_PTR_SET   0x24
#define TX_HOM_SET   0x40
#define TX_ARA_SET   0x41
#define GR_HOM_SET   0x42
#define GR_ARA_SET   0x43
#define CG_OR_MODE   0x80
#define GR_ON_MODE	0x98
#define TX_ON_MODE   0x94
#define WR_AUT_INC   0xC0

/*************** Chrono32C ***************************/
  #define 	gBus  	P2			// LCD Data BUs (8 Bit)
  sbit  	gBLT  	=  P0^0;	// Graphics LCD Back Light Pin
  sbit 	gWR 		=	P3^4;	// Graphics LCD Write Pin
  sbit 	gRD 		= 	P3^5;	// Graphics LCD Read Pin
  sbit 	gCE 		= 	P3^6;	// Graphics LCD Chip Enable Pin
  sbit 	gCD 		= 	P3^7;	// Graphics LCD Command/Data Pin
/*************** Chrono-32C ***************************/


/*************** Chrono32b ***************************/
	//#define 	gBus  	P0
  	//sbit  	gBLT  	=  P2^5;	// Graphics LCD Back Light Pin
  	//sbit 	gWR 		=	P2^0;	// Graphics LCD Write Pin
  	//sbit 	gRD 		= 	P2^1;	// Graphics LCD Read Pin
  	//sbit 	gCE 		= 	P2^2;	// Graphics LCD Chip Enable Pin
  	//sbit 	gCD 		= 	P2^3;	// Graphics LCD Command/Data Pin
/*************** Chrono-32b ***************************/

//Graphic LCD function header declarations
void gClear(bit ram);
void gPutStr(char *s);
void gInitialize(void);
void gPutc(unsigned char c);
unsigned char gReadStatus(void);
void gWriteData(unsigned char d);
void gWriteByte(unsigned char ch);
void gWriteCommand(unsigned char c);
void gGotoXY(unsigned char y, unsigned char x);
void gSetPixel(unsigned char column, unsigned char row,bit set);
void gGotoPixel(unsigned char row, unsigned char column);
void gDrawRect(unsigned char r1,unsigned char c1,unsigned char r2,unsigned char c2,bit set);
