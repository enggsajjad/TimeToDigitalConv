#include "misc.h"
#include "t693.h"
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Converts a long value (10 digits) into ascii
//Argument 1:	 Value= the long to be converted
//Argument 2:	 Device_type=1 Characters displayed on LCD
//				 	 Device_type=0 Characters printed on Printer
void LongToAscii(unsigned long Value,bit Device_type)
{
 //Handles Upto 10 Digits
 unsigned long Divisor = 1000000000;
 unsigned char i;
 bit isDivisible = 0;
 if(Value==0)
 {
  	if(Device_type)
  		gPutc('0');
  	else
  		PrintChar('0');
  	return;
 }
 
 	
 for(i=0;i<10;i++)
 {
 	if (Divisor<=Value) isDivisible=1;
	if(isDivisible)
 	{
 	 	if(Device_type)
  	  		gPutc((Value/Divisor)+48); 
		else
		   PrintChar((Value/Divisor)+48);	
 		Value = Value - (Value/Divisor)*Divisor;
	}//End if (isDivisible)
	Divisor = Divisor/10;
 }//End for
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Sends the Character to Serial Port with delays
//Argument 1:	 c = the character to be printed
void SendChar(unsigned char c)
{
	TI=1;
	while (!TI);	TI=0;	SBUF = c;
	while (!TI);	TI=0;

}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Sends a string to Serial Port
//Argument 1:	 *s = Pointer to the string to be printed
void PrintString(char *s)
{
	while (*s)
	{
		PrintChar(*s);
		s++;
	}
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Delay of 5 milli 0
void Delay5ms(void)
{
	TH0 = 0xDC;	//5msec @ 22.1184MHz
	TL0 = 0x00;
	TR0 = 1;
	while(!TF0);
	TR0 = 0;
	TF0 = 0;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Delay of 25 milli Sec
void Delay25ms(void)
{
	TH0 = 0x4C;	//25msec @ 22.1184MHz
	TL0 = 0x00;
	TR0 = 1;
	while(!TF0);
	TR0 = 0;
	TF0 = 0;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Delay of 0.5 Sec
void DelayHalfSec(void)
{
 unsigned char half;
 for(half=0;half<32;half++)//.9sec
 	Delay25ms();
}
































































































