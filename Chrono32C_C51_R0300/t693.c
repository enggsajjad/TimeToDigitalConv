#include "t693.h"
//====== 		G R A P H I C S 	L C D 	F U N C T I O N 		D E F I N I T I O N S			=======
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Read the Status of the Graphic LCD
//Return:		 Status Byte

unsigned char gReadStatus(void)
{
	unsigned char gStatus;
	gWR = 1;
	gCD = 1;
	gBus = 0xFF;
	gCE = 0;
	gRD = 0;
	gRD = 0;
	gRD = 0;
	gStatus = gBus;
	gRD = 1;
	gCE = 1;	
	return(gStatus);	
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Read the Data from the Graphic LCD
//Return:		 Data Byte
unsigned char gReadData(void)
{
	unsigned char gStatus;
	gWR = 1;
	gCD = 0;
	gBus = 0xFF;
	gCE = 0;
	gRD = 0;
	gRD = 0;
	gRD = 0;
	gStatus = gBus;
	gRD = 1;
	gCE = 1;	
	return(gStatus);	
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Write data to the Graphic LCD
//Argument:		Data Byte
void gWriteData(unsigned char d)
{
	unsigned char gTemp;
	do{
		gTemp=gReadStatus();	
	}while((gTemp & 0x03) != 0x03);
   
	gRD = 1;
	gCD = 0;
	gBus = d;
	gCE = 0;
	gWR = 0;
	gWR = 0;
	gWR = 1;
	gCE = 1;	
	gBus = 0xFF;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Write Command to the Graphic LCD
//Argument:		Command Byte
void gWriteCommand(unsigned char c)
{
	unsigned char gTemp;
	do{
		gTemp=gReadStatus();	
	}while((gTemp & 0x03) != 0x03);
	
	gRD = 1;
	gCD = 1;
	gBus = c;
	gCE = 0;
	gWR = 0;
	gWR = 0;
	gWR = 1;
	gCE = 1;	
	gBus = 0xFF;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Initializes the Graphic LCD
void gInitialize(void)
{
	 gCE = 1;				// set chip select high off output
	 //gRST = 1;				// set gRST signal high off output
	 gCD = 0;				// set the gCD line low as output 
	 gRD = 1;				// set RD line high as output
	 gWR = 1;		   	// set WR line high as output
	 //gFS = 0;				// force font select line low
	 //gRST = 0;
	 
	 //CHRONO32C
 	 gBLT = 0;
	 
	 
	 
	 //CHRONO32B
 	 //gBLT = 1;
	 
	 
	 //Delay5ms();//Insert some delay
	 	
	 //gRST = 1; 
	 
    //Set Char Gen Up 
    gWriteCommand(CG_OR_MODE);
    
    //Set Graphic Home Address
    gWriteData(GR_HOME);
    gWriteData(GR_HOME >> 8);
    gWriteCommand(GR_HOM_SET);
    
    //Set Graphic Area
    gWriteData(GR_AREA); //Width of 20 Chars
    gWriteData(0x00);
    gWriteCommand(GR_ARA_SET);
    
    //Set Text Home Address
    gWriteData(TX_HOME);
    gWriteData(TX_HOME >> 8);
    gWriteCommand(TX_HOM_SET);
    
    //Set Text Area
    gWriteData(TX_AREA); //Width of 20 Chars
    gWriteData(0x0);
    gWriteCommand(TX_ARA_SET);
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Writes a character on the graphic LCD
//Argument:		Character to be written As 'A'=0x42=65   
void gPutc(unsigned char c)
{
	gWriteData(c-0x20);
	gWriteCommand(WR_AUT_INC);
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Writes a string on the graphic LCD
//Argument:		String to be written
void gPutStr(char *ch)
{
	while(*ch)
	{
		gPutc(*ch);
		ch++;
	}
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Moves LCD Cursor on the text ram
//Argument:		Row,Column positions
void gGotoXY(unsigned char y, unsigned char x)
{
	 unsigned int gAddr;
    gAddr = (y * TX_AREA) + x + TX_HOME;
    gWriteData(gAddr & 0xff);
    gWriteData(gAddr >> 0x08);
    gWriteCommand(GR_PTR_SET);
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Clear graphic and text areas of graphical LCD
//Arguments:    ram=0  TEXT RAM
//					 ram=1  GRAPHICS RAM
void gClear(bit ram)
{
    unsigned int gAddr;
    
    if (ram)
    {
	    gAddr = GR_HOME;	
    	 gWriteData(0x00);
	    gWriteData(0x0C);
   	 gWriteCommand(GR_PTR_SET);
   	 while (gAddr < 0x1800)
    	 {
       	 gWriteData(0x00);
        	 gWriteCommand(WR_AUT_INC);
        	 gAddr = gAddr + 1;
		 }     		    
    }
    else
    {
	    gAddr = TX_HOME;	
    	 gWriteData(0x00);
	    gWriteData(0x00);
   	 gWriteCommand(GR_PTR_SET);
   	 while (gAddr < 0x0C00)
    	 {
       	 gWriteData(0x00);
        	 gWriteCommand(WR_AUT_INC);
        	 gAddr = gAddr + 1;
		 }     		
  	 }
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: set single pixel in 240x64 array
//Arguments:    ROW and COLUMN pixels, Set Value 0/1
void gSetPixel(unsigned char row, unsigned char column,bit set)
{
	unsigned int gAddr;       // memory address of byte containing pixel to write
  	gAddr =  0xC00 + (row*20)  + (column/8);
  	gWriteData(gAddr & 0xff);
   gWriteData(gAddr >> 0x08);
   gWriteCommand(GR_PTR_SET);
  	if(set)
  		gWriteCommand(0xf8 | ((7-column%8)) );  // set bit-within-byte command
  	else
  		gWriteCommand(0xf0 | ((7-column%8)) );  // Reset bit-within-byte command
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: set pixel at the specified location
//Arguments:    ROW and COLUMN pixels
void gGotoPixel(unsigned char row, unsigned char column)
{
	unsigned int gAddr;       // memory address of byte containing pixel to write
  	gAddr =  0xC00 + (row*20)  + (column/8);
  	gWriteData(gAddr & 0xff);
   gWriteData(gAddr >> 0x08);
   gWriteCommand(GR_PTR_SET);
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Write a Character in Text Area or Draw a byte paterrn in Graphics Area.
//Arguments:    the Byte
void gWriteByte(unsigned char ch)
{
  	gWriteData(ch);
  	gWriteCommand(WR_AUT_INC);
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Draw Horizontal, Vertical Lines or Rectangular Box
//Arguments:   Top Left Cornor (r1,c1); Bottom Right Cornor (r2,c2)
void gDrawRect(unsigned char r1,unsigned char c1,unsigned char r2,unsigned char c2, bit set)
{
 unsigned char pxl;
 if(r1==r2)//horizontal line
 {
  	for(pxl=c1;pxl<=c2;pxl++)
  		gSetPixel(r1,pxl,set);
 }
 else if(c1==c2)//vertical line
 {
  	for(pxl=r1;pxl<=r2;pxl++)
  		gSetPixel(pxl,c1,set); 
 }
 else//Rectangular Box
 {
  	for(pxl=c1;pxl<=c2;pxl++)//top
  		gSetPixel(r1,pxl,set);
  	for(pxl=r1;pxl<=r2;pxl++)//right
  		gSetPixel(pxl,c2,set); 
  	for(pxl=c1;pxl<=c2;pxl++)//bottom
  		gSetPixel(r2,pxl,set);
  	for(pxl=r1;pxl<=r2;pxl++)//left
  		gSetPixel(pxl,c1,set); 	  		  		 
 }
 
}





























































































































