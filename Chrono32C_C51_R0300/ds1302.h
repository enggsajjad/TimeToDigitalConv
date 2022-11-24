  #ifndef sajjad
	#define sajjad
	#include "at89c51rc2.h"
  #endif

  /*********** Chrono-32C **************************/
  sbit  rSCLK 		= 	P1^5; // Real Time Clock Serial Clcok pin
  sbit  rIO			= 	P1^6; // Real Time Clock Serial Data I/O pin
  sbit  rRST 		= 	P1^7; // Real Time Clock Reset pin
  /*********** Chrono-32C **************************/
  
  /*********** Chrono-32b **************************/
 	//sbit 	rRST 		= 	P1^5; // Real Time Clock Reset pin
  	//sbit 	rIO		= 	P1^6; // Real Time Clock Serial Data I/O pin
  	//sbit	rSCLK 	= 	P1^7; // Real Time Clock Serial Clcok pin    
  /*********** Chrono-32b **************************/

  void rWriteClk(unsigned char cmd,unsigned char ch);
  void rBrstReadClk(unsigned char *ch);
  char BCD2Binary(char a);
  char Binary2BCD(char a);
