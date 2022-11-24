#include "eeprom.h"
#include "misc.h"
//====== 		E E P R O M 		F U N C T I O N 		D E F I N I T I O N S			=======

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	I2C Start Condition
void I2C_start(void)
{
	if(eSCL)
	eSCL = 0;				// Clear eSCL  
	eSDA = 1;        		// Set eSDA  
	eSCL = 1;				// Set eSCL  
	eSDA = 0;        		// Clear eSDA  
	eSCL = 0;        		// Clear eSCL  
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	I2C Stop Condition 
void I2C_stop(void)
{
	if(eSCL)	
	eSCL = 0;			// Clear eSCL  
	eSDA = 0;			// Clear eSDA  
	eSCL = 1;			// Set eSCL  
	eSDA = 1;			// Set eSDA  
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	Send sigle byte via I2C interface
//Argument:		byte to be sent
bit I2C_write(unsigned char dat)
{
	bit data_bit;		
	unsigned char i;	
	for(i=0;i<8;i++)					// For loop 8 time(send data 1 byte)  
	{
		data_bit = dat & 0x80;		// Filter MSB bit keep to data_bit  
		eSDA = data_bit;				// Send data_bit to eSDA  
		eSCL = 1;						// Start clock  
		eSCL = 0;						// Clear eSCL
		dat = dat<<1;  
	}
	eSDA = 1;							// Set eSDA  
	eSCL = 1;							// Set eSCL  
	data_bit = eSDA;   				// Check acknowledge  
	eSCL = 0;							// Clear eSCL  
	return data_bit;					// If send_bit = 0 i2c is valid  		 	
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	Read sigle byte via I2C interface
//Return:		byte read from I2C interface 
unsigned char I2C_read(void)
{
	bit rd_bit;	
	unsigned char i, dat;
	dat = 0x00;	
	for(i=0;i<8;i++)						// For loop read data 1 byte  
	{
		eSCL = 1;							// Set eSCL  
		rd_bit = eSDA;						// Keep for check acknowledge	 
		dat = dat<<1;		
		dat = dat + rd_bit;				// Keep bit data in dat  
		eSCL = 0;							// Clear eSCL  
	}
	return dat;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	No Acknowledge Condition for I2C
void I2C_noack()
{
	eSDA = 1;									// Set eSDA  
	eSCL = 1;									// Start clock  
	eSCL = 0;									// Clear eSCL
	eSCL = 1;									// Set eSCL  
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	Read a single byte from I2C EEPROM at Particular Address
//Argument:		Address: from where to read
unsigned char ROM_Read(unsigned int addr)
{
	unsigned char dat;	
	I2C_start();            				// Start i2c bus  
	I2C_write(0xA0);   						// Connect to EEPROM  
	I2C_write((addr&0xFF00)/0xFF);	 	// Request RAM address (Hight byte)  
	I2C_write(addr&0x00FF);	 				// Request RAM address (Low byte)  
	I2C_start();								// Start i2c bus  
	I2C_write(0xA1);							// Connect to EEPROM for Read  
	dat = I2C_read();							// Receive data  
	I2C_noack();
	I2C_stop();									// Stop i2c bus  
   return dat;			
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	Write a single byte to I2C EEPROM at Particular Address
//Argument:		Address: Address at which to write
//					val:		Byte to be Written 
void ROM_Write(unsigned int addr, unsigned char val)
{
	I2C_start(); 
	I2C_write(0xA0);   						// Connect to EEPROM  
	I2C_write((addr&0xFF00)/0xFF);	 	// Request RAM address (Hight byte)  
	I2C_write(addr&0x00FF);	 				// Request RAM address (Low byte) 
	I2C_write(val);							// Write sec on RAM specified address
	I2C_stop();           					// Stop i2c bus
	Delay5ms();  
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	Write Data at a Particular address in Page formate
//Argument:		Address: address 
/*void ROM_WritePage(unsigned int addr)
{
	unsigned char pp;
	
	// Save Measurement Intervals values from 0-15 (FPGA 1 and 2 Data)
	I2C_start(); 
	I2C_write(0xA0);
	I2C_write((addr&0xFF00)/0xFF);
	I2C_write(addr&0x00FF);	 		
	for (pp=0;pp<16;pp++)
	{
		I2C_write((Interval[pp]&0xFF));
		I2C_write(((Interval[pp]>>8)&0xFF));
		I2C_write(((Interval[pp]>>16)&0xFF));
		I2C_write(((Interval[pp]>>24)&0xFF));
	}
	I2C_stop();           			
	//Delay5ms();
	//Delay5ms();
	// Save Measurement Intervals values from 16-31 (FPGA 3 and 4 Data)
	I2C_start(); 
	I2C_write(0xA0);   				
	I2C_write(((addr+64)&0xFF00)/0xFF);
	I2C_write((addr+64)&0x00FF);	 	
	for (pp=16;pp<32;pp++)
	{
		I2C_write((Interval[pp]&0xFF));
		I2C_write(((Interval[pp]>>8)&0xFF));
		I2C_write(((Interval[pp]>>16)&0xFF));
		I2C_write(((Interval[pp]>>24)&0xFF));
	}				
	I2C_stop();           				
	//Delay5ms();
	//Delay5ms();
	// Misc
	// Save Threshold Values
	ROM_Write(addr+384,StopTh1);
	ROM_Write(addr+385,StartTh2);
	// Save the Time of Occurance
	ROM_Write(addr+386,tSave[0]);
	ROM_Write(addr+387,tSave[1]);
	ROM_Write(addr+388,tSave[2]);
	ROM_Write(addr+389,tSave[3]);	
	ROM_Write(addr+390,tSave[4]);
	ROM_Write(addr+391,tSave[5]);
	ROM_Write(addr+392,tSave[6]);
	// Save the Minimum Value for Measurement Intervals
	ROM_Write(addr+393,(min&0xFF));
	ROM_Write(addr+394,((min>>8)&0xFF));
	ROM_Write(addr+395,((min>>16)&0xFF));
	ROM_Write(addr+396,((min>>24)&0xFF));
	// Save the Maximum Value for Measurement Intervals
	ROM_Write(addr+397,(max&0xFF));
	ROM_Write(addr+398,((max>>8)&0xFF));
	ROM_Write(addr+399,((max>>16)&0xFF));
	ROM_Write(addr+400,((max>>24)&0xFF));
}*/




















































































































