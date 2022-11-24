#include "ds1302.h"
//====== 		R E A L 	T I M E 	C L O C K 	F U N C T I O N 	D E F I N I T I O N S	=======
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	Writes data to DS1302
//Argument 1:	Address of Time and Date Registers
//Argument 2:	Value to be written
void rWriteClk(unsigned char cmd,unsigned char ch)
{
	unsigned char rCount;
	rSCLK=0;
	rRST=1;
	
	for(rCount=0;rCount<16;rCount++)
	{
		rIO=0;
		if(cmd&0x01)
			rIO=1;
		rSCLK=1;
		cmd >>=1;
		if(rCount==7)
			cmd=ch;
		rSCLK=0;
	}
 
	rRST=0;
	rSCLK=1;
	rIO=1;	
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Read the DS1302 in burst mode
//Argument:	 array of 7 bytes holding 0,MINUTE,HOUR,DATE,MONTH,DAY,YEAR
void rBrstReadClk(unsigned char *ch)
{
	unsigned char rbCount,wrd,ir;
	rWriteClk(0x8E,0x00);//Disable Write Protect
	rRST=1;
	
	wrd=0xBF;
	for(rbCount=0;rbCount<8;rbCount++)
	{   
		rIO=0;
		if(wrd&0x01)
			rIO=1;
		rSCLK=1;
		wrd >>=1;
		rSCLK=0;
	}
 
	for(rbCount=0;rbCount<8;rbCount++)
	{
		*ch = 0x00;
		for(ir=0;ir<8;ir++)
		{
			wrd = (unsigned char)rIO;
			rSCLK=1;
			wrd=wrd<<ir;
			*ch = (*ch) | wrd;
			rSCLK=0;
		}
		*ch++;
	}
	rWriteClk(0x8E,0x80); //Enable Write Protect
	rRST=0;
	rSCLK=1;
	rIO=1;
}


char Binary2BCD(char a)
{
   int t1, t2;
   t1 = a%10;
   t1 = t1 & 0x0F;
   a = a/10;
   t2 = a%10;
   t2 = 0x0F & t2;
   t2 = t2 << 4;
   t2 = 0xF0 & t2;
   t1 = t1 | t2;
   return t1;
}
char BCD2Binary(char a)
{
   int r,t;
   t = a & 0x0F;
   r = t;
   a = 0xF0 & a;
   t = a >> 4;
   t = 0x0F & t;
   r = t*10 + r;
   return r;
}












































































































