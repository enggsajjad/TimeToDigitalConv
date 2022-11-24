#include "eeprom.h"
#include "ds1302.h"
#include "t693.h"
#include "misc.h"
/*========================================================================================
File Name: 		tdc32.h
Project Name:  tdc32v13
Author Name:   Sajjad Hussain SE SD-PD
Date,Place:		26-05-2009, ICCC, Islamabad.
PCB Board:		New Board, Separate Controller Board
Description:   header file defines, the function headers, variables, constants, and pins
========================================================================================*/					
//====== 		U S E R 		D E F I N  E D 		C O N S T A N T S			=======

//Constants: 	*****Commands to TDC32 Channel System****
#define 	RST_GLB 		0x41
#define 	RST_DAC 		0x42
#define 	INC_DAC1 	0x43
#define 	INC_DAC2 	0x44
#define  TRG_TEST		0x45

#define 	reset_tdc_cntrs	0x41
#define 	change_sys_id		0x42
#define 	inc_n_read_dac1 	0x43
#define 	inc_n_read_dac2 	0x44
#define  send_info_2_pc		0x46
#define  switch_2_single	0x47
#define  switch_2_multi		0x48

//Constants: 	*****Addresses of FPGA's on TDC32 Channel System*****
#define 	SEL_FPGA1 	0xC7
#define 	SEL_FPGA2 	0xC6
#define 	SEL_FPGA3 	0xC3
#define 	SEL_FPGA4 	0xC4
#define 	SEL_NONE 	0xC0
#define TDC		0
#define PC		1
#define PRINTER	2

//Constants: 	*****Misc******
#define 	READINGS	10	//save the readings upto

#define INC	0
#define RMT	1
#define PRN	2
#define CUR	3
#define REF 4
#define LST	5
#define RS232	6
#define JTR	7
#define NXT	8
#define TH1	9
#define TH2	10
#define RST	11


#define calc_fpga0	12
#define calc_fpga1	13
#define calc_fpga2	14
#define calc_fpga3	15
#define sav_n_disp	16
#define test_reslt	17 
#define reset_tdc		18
#define pc_send_data	19
#define tdc_trigrd	20
#define pc_inc_dac1	21
#define pc_inc_dac2	22
#define pc_send_dac1	23
#define pc_send_dac2	24
#define idle_state	25
#define update_rtc	26
#define pc_chng_id	27
#define rx_dac1_frm_uc	28
#define rx_dac2_frm_uc	29
#define rx_dac1_frm_pc	30
#define rx_dac2_frm_pc	31
#define rx_data_frm_uc	32
#define rx_comd_frm_pc	33
#define rx_data_frm_pr	34
#define lst_reset			35
#define lst_testing		36
#define lst_data			37
#define lst_dac1			38
#define lst_dac2			39
#define lst_jtr_ref		40
#define lst_listing		41
#define lst_calc_jtr		42
#define lst_remote		43
#define lst_cur_hit1		44
#define lst_cur_hit2		45
#define lst_cur_hit3		46
#define lst_cur_hit4		47
#define lst_cur_hit5		48
#define lst_cur_hit6		49
#define lst_cur_hit7		50
#define lst_local			51
#define lst_disp_next	52
#define pc_send_dacs		53
#define lst_printing		54
#define lst_multi			55
#define lst_autoprint	56
#define lst_screen		57
#define lst_print_chan	58
#define rx_null			59

//====== 		M I C R O C O N T R O L L E R 	P I N 	A S S I G N M E N T			=======

	/******************** Chrono32C PCB With SMD components ***************************/
  #define  kBus		P2			// Key Pad Data Bus (4 Bit)
  sbit  LDSRT 		=  P0^1; // Indicator for System to perform test
  sbit  LDSTP 		=  P0^2; // Indicator for any Stop Channel
  sbit  LDRDY 		=  P0^3;	// Indicator for Start Channel
  sbit  LDRMT 		=  P0^4; // Indicator for PC Comm// Printing
  sbit  kCE 		=  P0^7; // Key Pad Enable

  sbit  BEEP		=	P1^0;	// Beep
  sbit  SEL1 		= 	P1^1;	// Select a FPGA/Printer Communincation from the Master
  sbit  IO2			=  P1^2;	// GPIO
  sbit  SEL0 		= 	P1^3;	// Select between Remote/Local Control
  sbit  IO1			=  P1^4;	// GPIO
	/******************** Chrono-32C PCB With SMD components ***************************/
	
	/******************** Chrono32b PCB With DIP components ***************************/
	//#define  kBus		P1			// Key Pad Data Bus (4 Bit Lsb)
  	//sbit  LDSRT 		=  P3^4;	// Indicator for Start Channel
  	//sbit  LDSTP 		=  P3^5; // Indicator for any Stop Channel
  	//sbit  LDRDY 		=  P3^6; // Indicator for System to perform test
  	//sbit  LDRMT 		=  P3^7; // Indicator for PC Comm// Printing
  	//sbit	kCE	does not exist
  	//sbit  BEEP	does not exist
  	//sbit 	SEL1 		= 	P1^4;	// Select a FPGA/Printer Communincation from the Master
  	//sbit  IO2	does not exist
  	//sbit 	SEL0 		= 	P2^4;	// Select between Remote/Local Control
	//sbit  IO2	does not exist
	/******************** Chrono-32b PCB With DIP components ***************************/
  
void rDisp_Time(unsigned char *tm);
void rDisp_Date(unsigned char *tm);
void rPrint_Time(unsigned char *tm);
//Misc functions
void Initialize(void);
void SendFormatedData(void);
void LongToAscii(unsigned long Value,bit Device_type);

//====== 		G L O B A L 	V A R I A B L E S 	& 		B U F F E R S			=======

//TDC related variables
xdata unsigned char rxBuf[64];   //holds 160 bytes from 4 FPGAs
xdata unsigned char offset[32];
xdata long Interval[32];
xdata unsigned char tSave[7];
//xdata unsigned char DAC[] = {10,20,30,40,50,60,70,80,90};
unsigned char rxCnt;     			//counts recieved characters
unsigned char StopTh1;				//holds stop threshold value
unsigned char StartTh2;    		//holds start threshold value
unsigned char FPGA;      		//holds current FPGA
unsigned char scrn;
unsigned char prntCh = 4;
unsigned char jtrCh=0;
//unsigned char tmp;
unsigned char system;
unsigned char rxState;
unsigned char last;
//unsigned char frac;
char Start;					//TDC Start signal;must be signed
char Stop;					//TDC Stop signal;must be signed
long Counter;				//TDC Counter  
long Whole;
long EstJtr;
//Clock related variables
xdata unsigned char time[7];	//for RTC time & date information
unsigned char CurCol;
unsigned char DigitKey=0;
//EEPROM save and recall
char qHits;
char qReadings;
char qRear;
char qPtr;
//temporary & counters
unsigned char Key;//,PreKey;
char p;                  //Counter
//char chan;					//just for counting
bit AllStops;
bit multi;
bit rxFlag;
bit rtc_Problem = 0;
bit isInit;
bit run =1 ;
//bit SelfTesting=1;
//bit select;
//bit SaveReading;
char *mStr;
xdata unsigned char rxChr;
//unsigned char jChan;
unsigned char state;
unsigned char next;
//unsigned char No_of_Hits;
long min = 2147483647;	//0x7FFFFFFF;
long max = -2147483648;//0x80000000;
//====== 		G E N E R A L 		F U N C T I O N 		D E F I N I T I O N S			=======

void SelectLines(unsigned char device)
{
	
	/*SEL1 = 1; SEL0 = 1;
	Delay25ms();*/
	switch(device)
	{
		case 0:
			SEL1 = 0; SEL0 = 0;
			break;
		case 1:
			SEL1 = 0; SEL0 = 1;
			break;
		case 2:
			SEL1 = 1; SEL0 = 0;
			break;
	}
	//Delay25ms();
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:  Calculates the Time Interval Measurements for 8 Channels (Overflow Controlled Counter)
//Argument 1:	 FPGA_No:	One of the FPGA (0,1,2,3 ... )
//
void Calculate(unsigned char FPGA_No)
{
	unsigned char pp;
	FPGA_No = 8*FPGA_No;
	Start = rxBuf[1];
	if (Start) LDSRT = 1;
	for(pp=0;pp<8;pp++)
	{
		
		Stop = rxBuf[pp+2];
		
		Counter = ((long)rxBuf[4*pp+14]<<24) + ((long)rxBuf[4*pp+13]<<16) + (rxBuf[4*pp+12]<<8) + rxBuf[4*pp+11];
		if (Counter<0x1000000)	// Valid
		{
			if (Stop) LDSTP = 1; // if Valid Stop Pulse than turn on
			Interval[FPGA_No+pp] = 30*Counter + Start - Stop;
			//Interval[FPGA_No+pp] = Interval[FPGA_No+pp] + (offset[FPGA_No+pp]+10)*3;
			Interval[FPGA_No+pp] = Interval[FPGA_No+pp] + (offset[FPGA_No+pp])*3; //offset removed
			Interval[FPGA_No+pp] = Interval[FPGA_No+pp] / 3;
			if (Interval[FPGA_No+pp] < min)
				min = Interval[FPGA_No+pp];
			if (Interval[FPGA_No+pp] > max)
				max = Interval[FPGA_No+pp];
		}
		else// Overflow
		{
			Interval[FPGA_No+pp] = -1;
		}
	}//for
	StopTh1 = rxBuf[44]*10;
	StartTh2 = rxBuf[45]*10;
}

//Description:  Send Formated Data to PC
void SendFormatedData(void)
{
	unsigned char pp,dg;
	unsigned long Divisor = 100000000;
	unsigned long tempInterval;
	SendChar('3');Delay25ms();
	SendChar('2');Delay25ms();
	SendChar('T');Delay25ms();
	SendChar('D');Delay25ms();
	SendChar('C');Delay25ms();
	SendChar(':');Delay25ms();
	SendChar(' ');Delay25ms();
	SendChar((system/10)+48);Delay25ms();
	SendChar((system%10)+48);Delay25ms();
	SendChar(' ');Delay25ms();
	SendChar('V');Delay25ms();
	SendChar(' ');Delay25ms();
	SendChar('R');Delay25ms();
	SendChar('E');Delay25ms();
	SendChar('F');Delay25ms();
	SendChar(':');Delay25ms();
	SendChar(' ');Delay25ms();
	SendChar('0');Delay25ms();
	SendChar('0');Delay25ms();
	SendChar('\r');Delay25ms();
	SendChar('\n');Delay25ms();
	for(pp=0;pp<32;pp++)
	{
	 	SendChar(((pp+1)/10)+48);Delay25ms();
	 	SendChar(((pp+1)%10)+48);Delay25ms();
 		SendChar(' ');Delay25ms();

	 	if(Interval[pp] != -1)
	 	{
	 		SendChar(' ');Delay25ms();
	 		tempInterval = Interval[pp];
	 		Divisor = 100000000;
		 	for(dg=0;dg<9;dg++)
		 	{
	 			SendChar((tempInterval/Divisor)+48);Delay25ms();
		 		tempInterval = tempInterval%Divisor;
		 		Divisor=Divisor/10;
		 	}//for
	 	}
	 	else
	 	{
	 		SendChar('D');Delay25ms();
	 		for(dg=0;dg<9;dg++)
	 		{
		 		SendChar('0');Delay25ms();
		 	}
	 	}
	 	SendChar('\r');Delay25ms();
 		SendChar('\n');Delay25ms();
	}//for
	SendChar('\r');Delay25ms();
	SendChar('\n');Delay25ms();
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:  Display the Time Interval Measurements for 8 Channels on LCD
//Argument 1:	 FPGA_No:	One of the FPGA (0,1,2,3 ... )
//Argument 1:	 Reference:	the minimum of the 32 channels
//					 To Display Jitter Reference = Min
//					 To Display Interval Reference = 0
void Display(unsigned char FPGA_No,long Reference)
{
	unsigned char pp;
	FPGA_No = 8*FPGA_No;
	for(pp=0;pp<8;pp++)
	{
	 	gGotoXY(pp+5,1);
	 	gPutc(((pp+FPGA_No+1)/10)+48);gPutc(((pp+FPGA_No+1)%10)+48);
 		gPutc(' ');
 		gPutc(' ');
	 	if(Interval[pp+FPGA_No] != -1)
		{
	 		if(Interval[pp+FPGA_No] >= Reference)//+ve Difference
			{	
				Whole = Interval[pp+FPGA_No] - Reference;
			}
 			else	//-ve Difference
			{
 				Whole = Reference - Interval[pp+FPGA_No];
				gPutc('-');
	 		}
			LongToAscii(Whole,1);
			gGotoXY(pp+5,16);
			if(Interval[pp+FPGA_No] == min )
				gPutStr("Min");
			else if(Interval[pp+FPGA_No] == max)
				gPutStr("Max");
	 	}
	 	else
			gPutStr("OVF");
	}//for
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:  Print the Time Interval Measurements for A Channels
//Argument 1:	 Chan:	One of the Channels (0,1,2,3 ... 31)
//Argument 1:	 Reference:	the minimum of the 32 channels
//					 To Display Jitter Reference = Min
//					 To Display Interval Reference = 0

void Print(unsigned char Chan,long Reference)
{

	PrintChar(((Chan+1)/10)+48);PrintChar(((Chan+1)%10)+48);
	PrintChar(':');
	PrintChar(' ');
	if(Interval[Chan] != -1)
	{
		if(Interval[Chan]>=Reference)//+ve Difference
		{
	 		Whole = Interval[Chan] - Reference;
		}
		else	//-ve Difference
		{
			Whole = Reference - Interval[Chan];
			PrintChar('-');
		} 		
		LongToAscii(Whole,0);
		if(Interval[Chan] == min )
			PrintString("  (min)");
		else if(Interval[Chan] == max)
		{
			PrintString("  (max)");
		}
	}
	else
 		PrintString("OVF");
 	PrintChar('\n');
 	PrintChar('\n');
 	DelayHalfSec();
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Intializes LCD,Serial Port, RTC, TDC32, Variables
//					Tigger the TDC32 for Self Testing
void Initialize(void)
{
	mStr = "SINGLE";
	TH0 = 0x4C;	TL0 = 0x00; //25msec @ 22.1184MHz
	TMOD 	= 0x11;
	LDSRT	= 0;LDSTP= 0;LDRDY= 0;LDRMT= 0;
	BEEP=0;//CHRONO32C
	// Turn All LED's off	
	LDSRT	= 1;LDSTP= 1;LDRDY= 1;LDRMT= 1;
	DelayHalfSec();
	LDSRT	= 0;LDSTP= 0;LDRDY= 0;LDRMT= 0;
	DelayHalfSec();
	LDSRT	= 1;LDSTP= 1;LDRDY= 1;LDRMT= 1;
	DelayHalfSec();
	LDSRT	= 0;LDSTP= 0;LDRDY= 0;LDRMT= 0;
	 //Enable FPGA Serial Communication
	SelectLines(TDC);
	//Initialize the LCD and set mode (TEXT or Graphics) 
	gInitialize();
	gClear(0);//Text
	gClear(1);//Graphics
	gWriteCommand(GR_ON_MODE | TX_ON_MODE);
	//Display the Startup Text
	// Read the System ID and Save Records from EEPROM
	qReadings = ROM_Read(0x7000);
	system = ROM_Read(0x7005);
	// Display the Initial Screen
	gGotoXY(0,3);	gPutStr(TITLE);
	gDrawRect(10,28,10,136,1);
	gDrawRect(12,28,12,136,1);
	gDrawRect(36,8,112,154,1);
	// Self Test Screen
	gGotoXY(3,4);gPutStr("  SELF TEST");
	gGotoXY(6,2);gPutStr("Testing the");
	gGotoXY(7,2);gPutStr("Channels        ");
	gGotoXY(10,2);gPutStr("Plz Wait...");

	// Initialize 8051 registers
   SCON 		= 0x50;
   BDRCON 	&=0xEC;               // BRR=0; SRC=0;
   BDRCON 	|=0x0C;               // TBCK=1;RBCK=1; SPD=0
   BRL		=0xFA;                // =-6 for 9600 Bds at 22.1184MHz
   BDRCON 	|=0x10;               // Baud rate generator run
   	
	
	ES	  	= 1;	//Serial Interrupt
	
	//CHRONO32C
	ET1	= 1;	// Timer 1 Interrupt
	
	
	EA   	= 1;	//Global Interrupt
	IT0	= 1;	//Edge Triggered Ext0 Interrupt
	IT1	= 1;	//Edge Triggered Ext1 Interrupt
	
	
	//AUXR 	= AUXR | 0xFD; //default
	
	//Initialize different variables.
	// Offset Values as compared to First Channel
	offset[0]=0;	offset[1]=0;	offset[2]=0;	offset[3]=0;	offset[4]=0;	offset[5]=0;	offset[6]=0;	offset[7]=0;
	offset[8]=0;	offset[9]=0;	offset[10]=0;	offset[11]=0;	offset[12]=0;	offset[13]=0;	offset[14]=0;	offset[15]=0;
	offset[16]=0;	offset[17]=0;	offset[18]=0;	offset[19]=0;	offset[20]=0;	offset[21]=0;	offset[22]=0;	offset[23]=0;
	offset[24]=0;	offset[25]=0;	offset[26]=0;	offset[27]=0;	offset[28]=0;	offset[29]=0;	offset[30]=0;	offset[31]=0;

	//Initialize the TDC32 
	ChronoCmd(SEL_NONE);
	ChronoCmd(RST_GLB);
	ChronoCmd(RST_DAC);
	ChronoCmd(0x46);
	//ChronoCmd(SEL_FPGA1);
	
	// Read Current Time and Date then Show
	rBrstReadClk(time);
	if(time[0] > 0x59) rtc_Problem = 1;
	if(time[1] > 0x59) rtc_Problem = 1;
	if(time[2] > 0x23) rtc_Problem = 1;
	if(time[3] > 0x31) rtc_Problem = 1;
	if(time[4] > 0x12) rtc_Problem = 1;
	if(time[6] > 0x99) rtc_Problem = 1;
	if (rtc_Problem)
	{
		// 01/04/2013	09:00:00 Sunday
		rWriteClk(0x8E,0x00); //Disable Write Protect
		rWriteClk(0x80,0x00); //Set Scs
		rWriteClk(0x82,0x00); //Set Minutes
		rWriteClk(0x84,0x09); //Set Hours
		rWriteClk(0x86,0x01); //Set Date
		rWriteClk(0x88,0x04); //Set Month
		rWriteClk(0x8A,0x01); //Set Day
		rWriteClk(0x8C,0x13); //Set Year
		rWriteClk(0xC0,'@'); //Set Year
		rWriteClk(0x8E,0x80); //Enalble Write Protect
	}
	state=update_rtc;
	
	rBrstReadClk(time);
	gGotoXY(15,1);					
	rDisp_Date(time);
	gPutc(' ');gPutc(' ');
	rDisp_Time(time);
	// Self Test Started
	rxState = rx_data_frm_uc;
	next = test_reslt;
	EX1 = 1;IT1 = 1;
	
	
	//CHRONO32C
	TR1 = 1;
	
	
	ChronoCmd(TRG_TEST);
	isInit = 1;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Display the Time from the time[] array
//Argument:	 array of 7 bytes holding 0,MINUTE,HOUR,DATE,MONTH,DAY,YEAR
void rDisp_Time(unsigned char *tm)
{
	gPutc(((tm[2]&0xF0)>>4)+48);//Hour
	gPutc((tm[2]&0x0F)+48);
	gPutc(':');
	gPutc(((tm[1]&0xF0)>>4)+48);//Minutes
	gPutc((tm[1]&0x0F)+48);
	gPutc(':');
	gPutc(((tm[0]&0xF0)>>4)+48);//0s
	gPutc((tm[0]&0x0F)+48);
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Display the Date from the time[] array
//Argument:	 array of 7 bytes holding 0,MINUTE,HOUR,DATE,MONTH,DAY,YEAR
void rDisp_Date(unsigned char *tm)
{
	gPutc(((tm[3]&0xF0)>>4)+48);//Date
	gPutc((tm[3]&0x0F)+48);
	gPutc('/');
	gPutc(((tm[4]&0xF0)>>4)+48);//Month
	gPutc((tm[4]&0x0F)+48);
	gPutc('/');
	gPutc(((tm[6]&0xF0)>>4)+48);//Year
	gPutc((tm[6]&0x0F)+48);

}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description: Print the Time&Date from the time[] array
//Argument:	 array of 7 bytes holding 0,MINUTE,HOUR,DATE,MONTH,DAY,YEAR
void rPrint_Time(unsigned char *tm)
{
	PrintChar(((tm[2]&0xF0)>>4)+48);//Hour
	PrintChar((tm[2]&0x0F)+48);
	PrintChar(':');
	PrintChar(((tm[1]&0xF0)>>4)+48);//Minutes
	PrintChar((tm[1]&0x0F)+48);
	PrintChar(':');
	PrintChar(((tm[0]&0xF0)>>4)+48);//0s
	PrintChar((tm[0]&0x0F)+48);
	PrintChar(' ');
	PrintChar(((tm[3]&0xF0)>>4)+48);//Date
	PrintChar((tm[3]&0x0F)+48);
	PrintChar('/');
	PrintChar(((tm[4]&0xF0)>>4)+48);//Month
	PrintChar((tm[4]&0x0F)+48);
	PrintChar('/');
	PrintChar(((tm[6]&0xF0)>>4)+48);//Year
	PrintChar((tm[6]&0x0F)+48);
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Description:	Write Data at a Particular address in Page formate
//Argument:		Address: address 
void ROM_WritePage(unsigned int addr)
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
	Delay5ms();
	Delay5ms();
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
	Delay5ms();
	Delay5ms();
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
}

