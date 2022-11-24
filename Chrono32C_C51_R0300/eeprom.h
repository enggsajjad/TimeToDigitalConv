#ifndef sajjad
	#define sajjad
	#include "at89c51rc2.h"
#endif
/*************** Chrono-32C ***************************/
sbit 	eSDA 		= 	P0^5;	// EEPROM Serial Data I/Oe Pin
sbit 	eSCL 		= 	P0^6;	// EEPROM Serial Clock I/Oe Pin
/*************** Chrono-32C ***************************/


/*************** Chrono-32b ***************************/
//  	sbit 	eSDA 		= 	P2^6;	// EEPROM Serial Data I/Oe Pin
//  	sbit 	eSCL 		= 	P2^7;	// EEPROM Serial Clock I/Oe Pin
/*************** Chrono-32b ***************************/
  //EEPROM I2C Related functions
void I2C_noack();
void I2C_start(void);
void I2C_stop(void);
unsigned char I2C_read(void);
bit I2C_write(unsigned char dat);
void ROM_WritePage(unsigned int addr);
unsigned char ROM_Read(unsigned int addr);
void ROM_Write(unsigned int addr, unsigned char val);
