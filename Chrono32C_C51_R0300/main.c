/*========================================================================================
Project Name:  CHRONO-32C	Version 3 Rev. 2
Author Name:   Sajjad Hussain SE SD-PD
Date,Place:		30-11-2011, ESDG, ICCC, Islamabad. 
					'Chrono32C_MC_R1' against quotation No.Q-SmartPCBs/6049 dated 19-09-2012
Microctroller:	AT89C51RC2
Crystal 			22.1184 MHz
					see ReadMe.C file
=========================================================================================*/
#include "chrono32c.h"
#include <intrins.h>


//CHRONO32C
unsigned char beepCnt,beepLmt;


bit autoprint;
void main(void)
{
	Initialize();
	while(1)
	{
		switch (state) 
		{
			//===============================================================
			//				RST Button
			// Here the TDC is reseted, buffer is emptied, READY LDE is on, START, STOP LED are off
			//===============================================================
			case RST:
				switch(last)
				{
					case lst_remote:
						break;
					default:
						// Update the Screen
						gClear(0);
						gDrawRect(14,136,24,146,0);
						gGotoXY(0,3);	gPutStr(TITLE);//gPutStr(TITLE);
						gGotoXY(3,3);gPutStr("SYSTEM STATUS");
						gGotoXY(5,2);gPutStr("Setting= ");gPutStr(mStr);
						StopTh1 = ROM_Read(0x7003);
						StartTh2 = ROM_Read(0x7004);
						gGotoXY(7,2);gPutStr("Start Th= ");
						gPutc((StartTh2/10)+48);gPutc('0');
					   gGotoXY(8,2);gPutStr("Stop  Th= ");
						gPutc((StopTh1/10)+48);gPutc('0');
						
						gGotoXY(10,2);gPutStr("PRN:");
						gPutc((prntCh/10)+48);gPutc((prntCh%10)+48);
						gPutStr("  SCN:");
						gPutc('0');gPutc(scrn+1+48);
						
						gGotoXY(12,2);gPutStr("ID :");
						gPutc((system/10)+48);gPutc((system%10)+48);
						gPutStr("  REF:");
						gPutc((jtrCh/10)+48);gPutc((jtrCh%10)+48);
						
						//Testing
						/*
						ROM_Write(0x7000,0);
						ROM_Write(0x7001,0);
						ROM_Write(0x7005,8);
	               */
						last = lst_reset;
						next = sav_n_disp; state = reset_tdc;
						rxState = rx_null;
						break;
				}
				break;
			case reset_tdc:
				// Reset the Variables
				LDRDY = 1;
				LDSRT = 0;
				LDSTP = 0;
				qHits = 0;
  				// Empty the Buffer
				//for (p=0;p<32;p++)
				//	Interval[p]= 0;
				// Enable the Exertnal one Interrupt and Make it Edge Triggered
				EX1 = 1;IT1 = 1;
				PX1H = 1; PX1L = 1;
				// Send Command to Chrono-32
				SelectLines(TDC);
				ChronoCmd(RST_GLB);
				ChronoCmd(SEL_FPGA1);
				//ChronoCmd(TRG_TEST);
				SelectLines(PC);
				state = update_rtc;
				break;
			//===============================================================
			//							START TH DAC2	Button	Hit=1
			// Show the Start DAC, and Read the Data from TDC
			//===============================================================
			case TH1:
				switch(last)
				{
					case lst_reset:
						// Update the Screen
						gClear(0);
						gDrawRect(14,136,24,146,0);
						gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,1);gPutStr("THRESHOLD SETTING");
						gGotoXY(5,2);gPutStr("Start Channel");
						gGotoXY(7,2);gPutStr("Start Th= ");
			   		gGotoXY(8,2);gPutStr("Stop  Th= ");			
						// Set the Variables
						rxState = rx_dac2_frm_uc; //dac2 = 1;
		    			rxCnt = 0;FPGA = 0;
	   		 		// Send Commands to Chrono-32
	   		 		SelectLines(TDC);
						ChronoCmd(45+128);
						last = lst_dac1;
						state = update_rtc;
						break;
					case lst_dac1:
					case lst_dac2:
						gGotoXY(5,2);gPutStr("Start Channel");
						rxState = rx_dac2_frm_uc;//dac2 = 1;
		   		 	rxCnt = 0;FPGA = 0;
						// Send Commands to Chrono-32
						SelectLines(TDC);
						ChronoCmd(INC_DAC2);
						ChronoCmd(45+128);
						state = update_rtc;
						break;
				}//switch
				break;
			//===============================================================
			//							STOP TH DAC1	Button	Hit = 1 
			// Show the Stop DAC, and Read the Data from TDC
			//===============================================================
			case TH2:
				switch(last)
				{
					case lst_reset:
						// Update the Screen
						gClear(0);
						gDrawRect(14,136,24,146,0);
						gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,1);gPutStr("THRESHOLD SETTING");
						gGotoXY(5,2);gPutStr("Stop Channels");
						gGotoXY(7,2);gPutStr("Start Th= ");
			   		gGotoXY(8,2);gPutStr("Stop  Th= ");
					   // Send the Variables
						rxState = rx_dac1_frm_uc;//dac1 = 1;
    					rxCnt = 0;FPGA = 0;
						// Set Commands to Chrono-32
						SelectLines(TDC);
						ChronoCmd(44+128);
						last = lst_dac2;
  						state = update_rtc;
  						break;
  					case lst_dac1:
  					case lst_dac2:
  						gGotoXY(5,2);gPutStr("Stop Channels");
  						rxState = rx_dac1_frm_uc;//dac1 = 1;
    					rxCnt = 0;FPGA = 0;
						// Send Commands to Chrono-32
						SelectLines(TDC);
						ChronoCmd(INC_DAC1);
						ChronoCmd(44+128);
		  				state = update_rtc;
  						break;
  				}//switch
				break;
			//===============================================================
			//				NEXT	Button
			// Here the time value; either current or saved ,can be display in decimal formate
			// it displays upto one decimal points
			//===============================================================
			case NXT:
		 		switch(last)
		 		{
 					case lst_reset:
				      //scrn = scrn%5;
				      gClear(0);
		      		gDrawRect(14,136,24,146,0);
				      gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,1);gPutStr("SET DEFAULT SCREEN");
						gGotoXY(8,2);
						gPutStr("Screen No:");
						gPutc('0');gPutc(scrn+1+48);
		  				last = lst_screen;
		  				state = update_rtc;
		  				break;
		  			case lst_screen:
		  				scrn++;
				      if(scrn==4)
				      	scrn = 0;
						gGotoXY(8,12);
						gPutc('0');gPutc(scrn+1+48);
		  				state = update_rtc;
		  				break;
 					case lst_data:
		 			case lst_listing:
		 			case lst_calc_jtr:
		 			case lst_disp_next:
						gClear(0);
						gGotoXY(0,3);	gPutStr("CHRONO32 ICCC");
						gGotoXY(3,3);gPutStr("CH TIME(ns)");
						Display(FPGA++,0);
						gDrawRect(14,136,24,146,1);
						gGotoXY(2,17);gPutc(FPGA+48);
						if (FPGA==4) FPGA=0;
						last = lst_disp_next;
						state = update_rtc;
						break;
				}
				break;
			//===============================================================
			//				CALCULATE JITTER 	Button
			// Min was already calculated in main, here it shows the Jitter of each channel
			// the Jitter Information can only be printed if this button is pressed
			//===============================================================
			case JTR:
				switch(last)
				{
					case lst_data:
					case lst_listing:
					case lst_calc_jtr:
					case lst_disp_next:
						gClear(0);
						gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,3);gPutStr("CH JITTER(ns)");
			 			// Calculate the Default Jitter Value
   		   		if(jtrCh != 0 && Interval[jtrCh-1]!= -1)
		   		   	min = Interval[jtrCh-1];
						// Calculate the Jitte Difference
						Display(FPGA++,min);
						gDrawRect(14,136,24,146,1);
						gGotoXY(2,17);gPutc(FPGA+48);
						if (FPGA==4) FPGA=0;
						last = lst_calc_jtr;
  						state = update_rtc;
  						break;
  				}
				break;
			//===============================================================
			//				Select JITTER CHANNEL	Button	Hit 1
			// Show the Jitter Reference Channel;From 1 to 32
			// The Jitter than will be calculated from that channel
			//===============================================================
			case REF:
				switch(last)
				{
					case lst_reset:
					//case lst_data:
					//case lst_listing:
				      jtrCh = jtrCh%33;
				      gClear(0);
		      		gDrawRect(14,136,24,146,0);
				      gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,1);gPutStr("SET JITTER CHANNEL");
						gGotoXY(8,2);
						gPutStr("The Reference");
						gGotoXY(9,2);
						gPutStr("Channel is:");
						gPutc((jtrCh/10)+48);gPutc((jtrCh%10)+48);		
		  				last = lst_jtr_ref;
		  				state = update_rtc;
		  				break;
		  			case lst_jtr_ref:
		  				jtrCh++;
				      jtrCh = jtrCh%33;
						gGotoXY(9,13);
						gPutc((jtrCh/10)+48);gPutc((jtrCh%10)+48);		
		  				state = update_rtc;
		  				break;
		  		}
				break;
			//===============================================================
			//				REMOTE Button
			//===============================================================
			case RMT:
				switch(last)
				{
				 	case lst_reset:
				 	case lst_local:
				 		SelectLines(TDC);
				 		mStr = "MULTI ";
				 		gGotoXY(5,2);gPutStr("Setting= ");gPutStr(mStr);
				 		multi = 1;
				 		LDRMT = 0;
				 		autoprint = 0;
				 		last = lst_multi;
				 		rxState = rx_data_frm_uc;
				 		state = update_rtc;
				 		break;
				 	case lst_multi:
				 		SelectLines(PC);
				 		mStr = "REMOTE";
				 		gGotoXY(5,2);gPutStr("Setting= ");gPutStr(mStr);
				 		multi = 0;
				 		LDRMT = 1;
				 		autoprint = 0;
				 		last = lst_remote;
				 		rxState = rx_comd_frm_pc;
				 		state = update_rtc;
				 		break;
				 	case lst_remote:
				 		SelectLines(TDC);
				 		mStr = "PRINT ";
				 		gGotoXY(5,2);gPutStr("Setting= ");gPutStr(mStr);
						multi = 0;
						LDRMT = 0;
						autoprint = 1;
						last = lst_autoprint;
				 		rxState = rx_data_frm_uc;
				 		state = update_rtc;
				 		break;
				 	case lst_autoprint:
				 		SelectLines(TDC);
				 		mStr = "SINGLE";
				 		gGotoXY(5,2);gPutStr("Setting= ");gPutStr(mStr);
				 		autoprint = 0;
						last = lst_local;
				 		rxState = rx_data_frm_uc;
				 		state = update_rtc;
				 		break;
				}
				break;
			//===============================================================
			//							CURSOR MOVE	Button 
			//===============================================================
			case CUR:
				switch(last)
				{
					case lst_reset:
				   	state = idle_state;
				    	gClear(0);
		   			gDrawRect(14,136,24,146,0);
				      gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,3);gPutStr("CLOCK SETTING");
	   	 			gGotoXY(8,2);
						gPutStr("Setting the  ");
						gGotoXY(9,2);
						gPutStr("Time and Date");
					
						gGotoXY(15,1);					
						rDisp_Date(time);
						gPutc(' ');gPutc(' ');
						rDisp_Time(time);
				
	   			 	DigitKey = (time[3]&0xF0)>>4;// Save last Date Byte
	   	 			DigitKey = DigitKey*10 + (time[3]&0x0F);
			   	 	CurCol = 1;
	   			 	gGotoXY(15,CurCol);
	   	 			gPutc('_');gPutc('_');
			   	 	last = lst_cur_hit1;
	   		 		break;
					case lst_cur_hit1:
	   			 	time[3] = DigitKey/10;
						time[3] = time[3]<<4;
			   	 	time[3] = time[3] + (DigitKey%10); // Update Month byte

	   			 	gGotoXY(15,CurCol);
	   	 			gPutc(((time[3]&0xF0)>>4)+48);
						gPutc((time[3]&0x0F)+48);

	   			 	DigitKey = (time[4]&0xF0)>>4;// Save last Month Byte
	   	 			DigitKey = DigitKey*10 + (time[4]&0x0F);
			    		CurCol = 4;
	   		 		gGotoXY(15,CurCol);
	    				gPutc('_');gPutc('_');
			    		last = lst_cur_hit2;
	   			 	state = idle_state;
	    				break;
				  	case lst_cur_hit2:
	   				time[4] = DigitKey/10;
						time[4] = time[4]<<4;
			   		time[4] = time[4] + (DigitKey%10); // Update Month byte
	   	 		
	   				gGotoXY(15,CurCol);
	   				gPutc(((time[4]&0xF0)>>4)+48);
						gPutc((time[4]&0x0F)+48);

	   		 		DigitKey = (time[6]&0xF0)>>4;// Save last Year Byte
	   				DigitKey = DigitKey*10 + (time[6]&0x0F);
			   		CurCol = 7;
	   		 		gGotoXY(15,CurCol);
	    				gPutc('_');gPutc('_');
			    		last = lst_cur_hit3;
	   			 	state = idle_state;
	    				break;
			    	case lst_cur_hit3:
		    			time[6] = DigitKey/10;
						time[6] = time[6]<<4;
   	 				time[6] = time[6] + (DigitKey%10); // Update Month byte
   	 		
		   	 		gGotoXY(15,CurCol);
   			 		gPutc(((time[6]&0xF0)>>4)+48);
						gPutc((time[6]&0x0F)+48);
		    			DigitKey = (time[2]&0xF0)>>4;// Save last Hour Byte
   			 		DigitKey = DigitKey*10 + (time[2]&0x0F);
   	 				CurCol = 11;
		    			gGotoXY(15,CurCol);
    					gPutc('_');gPutc('_');
    					last = lst_cur_hit4;
		   	 		state = idle_state;
    					break;
		    		case lst_cur_hit4:
   			 		time[2] = DigitKey/10;
						time[2] = time[2]<<4;
		   	 		time[2] = time[2] + (DigitKey%10); // Update Month byte
   	 		
   			 		gGotoXY(15,CurCol);
   	 				gPutc(((time[2]&0xF0)>>4)+48);
						gPutc((time[2]&0x0F)+48);
    					DigitKey = (time[1]&0xF0)>>4;// Save last Minute Byte
	  	 				DigitKey = DigitKey*10 + (time[1]&0x0F);
			  	 		CurCol = 14;
	  					gGotoXY(15,CurCol);
	  					gPutc('_');gPutc('_');
			  			last = lst_cur_hit5;
	  			 		state = idle_state;
	 					break;
			    	case lst_cur_hit5:
	  			 		time[1] = DigitKey/10;
						time[1] = time[1]<<4;
			  	 		time[1] = time[1] + (DigitKey%10); // Update Month byte
	  	 		
	  			 		gGotoXY(15,CurCol);
	  	 				gPutc(((time[1]&0xF0)>>4)+48);
						gPutc((time[1]&0x0F)+48);
    					DigitKey = (time[0]&0xF0)>>4;// Save last Second Byte
		   	 		DigitKey = DigitKey*10 + (time[0]&0x0F);
   			 		CurCol = 17;
		    			gGotoXY(15,CurCol);
    					gPutc('_');gPutc('_');
		    			last = lst_cur_hit6;
   			 		state = idle_state;
    					break;
			    	case lst_cur_hit6:
   			 		time[0] = DigitKey/10;
						time[0] = time[0]<<4;
		   	 		time[0] = time[0] + (DigitKey%10); // Update Month byte
  	 		
		   	 		gGotoXY(15,CurCol);
   			 		gPutc(((time[0]&0xF0)>>4)+48);
						gPutc((time[0]&0x0F)+48);
		   	 		// Write to The RTC
		   	 		/*
		   	 		time[0] = 0x00;
		   	 		time[1] = 0x00;
		   	 		time[2] = 0x00;
		   	 		time[3] = 0x00;
		   	 		time[4] = 0x00;
		   	 		time[5] = 0x00;
		   	 		time[6] = 0x00;
		   	 		*/
   			 		rWriteClk(0x8E,0x00); //Disable Write Protect
						rWriteClk(0x80,time[0]); //Set Scs
						rWriteClk(0x82,time[1]); //Set Minutes
						rWriteClk(0x84,time[2]); //Set Hours
						rWriteClk(0x86,time[3]); //Set Date
						rWriteClk(0x88,time[4]); //Set Month
						rWriteClk(0x8A,0x03); //Set Day
						rWriteClk(0x8C,time[6]); //Set Year
						rWriteClk(0x8E,0x80); //Enalble Write Protect
				
    					gGotoXY(7,2);
						gPutStr("Time and Date");
						gGotoXY(8,2);
						gPutStr("has Changed  ");
    					gGotoXY(9,2);
						gPutStr("               ");
						gGotoXY(10,2);
						gPutStr("Press RST to");
						gGotoXY(11,2);
						gPutStr("continue");
						last = lst_cur_hit7;
   	 				state = update_rtc;
		    			break;
		    }
		    break;
    		//===============================================================
			//							Digit Increment
			//===============================================================
    		case INC: 
    			switch(last)
    			{
    				case lst_cur_hit1:
				   	DigitKey++;
	   		 		if (DigitKey==32) DigitKey=1;	// Date
	    				gGotoXY(15,CurCol);
						gPutc((DigitKey/10)+48);
						gPutc((DigitKey%10)+48);
						state = idle_state;
						break;
		    		case lst_cur_hit2: 
	   		 		DigitKey++;
	    				if (DigitKey==13) DigitKey=1;	// Month
			    		gGotoXY(15,CurCol);
						gPutc((DigitKey/10)+48);
						gPutc((DigitKey%10)+48);
						state = idle_state;
						break;
		    		case lst_cur_hit3: 
	   		 		DigitKey++;
	    				if (DigitKey==100) DigitKey=0; // Year
			    		gGotoXY(15,CurCol);
						gPutc((DigitKey/10)+48);
						gPutc((DigitKey%10)+48);
						state = idle_state;
						break;
		    		case lst_cur_hit4: 
	   		 		DigitKey++;
	    				if (DigitKey==24) DigitKey=0;	// Hour
			    		gGotoXY(15,CurCol);
						gPutc((DigitKey/10)+48);
						gPutc((DigitKey%10)+48);
						state = idle_state;
						break;
		    		case lst_cur_hit5: 
	   		 		DigitKey++;
	    				if (DigitKey==60) DigitKey=0;	// Minute
			    		gGotoXY(15,CurCol);
						gPutc((DigitKey/10)+48);
						gPutc((DigitKey%10)+48);
						state = idle_state;
						break;
		    		case lst_cur_hit6: 
	   		 		DigitKey++;
	    				if (DigitKey==60) DigitKey=0;  // Second
			    		gGotoXY(15,CurCol);
						gPutc((DigitKey/10)+48);
						gPutc((DigitKey%10)+48);
						state = idle_state;
						break;
			}
			break;
			//===============================================================
			//							LIST	Button				
			//===============================================================
			case LST:
				switch(last)
				{
					case lst_reset:
					case lst_listing:
						// Updating the Screen
						state = idle_state;
						gClear(0);
						gDrawRect(14,136,24,146,0);
						gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,3);gPutStr("STORED RECORDS");
						FPGA = 0;
						//Get the Number of Reading, one by one		
						qReadings = ROM_Read(0x7000);
						qRear = ROM_Read(0x7001)-1;
						// Check for No of Readings
						if (!qReadings)
						{
						 	gGotoXY(8,2);
						 	gPutStr("No Records");
						 	
						 	gGotoXY(10,2);
							gPutStr("Press RST to");
							gGotoXY(11,2);
							gPutStr("continue");
						}
						else// There is a reading
						{
							gGotoXY(6,2);
							gPutStr("Plz Wait...");
							gGotoXY(6,2);
							if ((qRear-qHits)<0)
								qPtr = READINGS + qRear - qHits;
							else
								qPtr = qRear -qHits;
							// Fetch the saved data into buffer
							for(p=0;p<32;p++)
							{
								Interval[p]= (long)ROM_Read(512*qPtr+4*p+3);
								Interval[p]= (Interval[p]<<8) + (long)ROM_Read(512*qPtr+4*p+2);
								Interval[p]= (Interval[p]<<8) + (long)ROM_Read(512*qPtr+4*p+1);
								Interval[p]= (Interval[p]<<8) + (long)ROM_Read(512*qPtr+4*p+0);
							}
							
							StopTh1 = ROM_Read(512*qPtr+384);
					 		StartTh2 = ROM_Read(512*qPtr+385);
			 				for(p=0;p<8;p++)
			 					tSave [p] = ROM_Read(512*qPtr+p+386);
			 		
					 		min = (long)ROM_Read(512*qPtr+396);
							min = (min<<8) + (long)ROM_Read(512*qPtr+395);
							min = (min<<8) + (long)ROM_Read(512*qPtr+394);
							min = (min<<8) + (long)ROM_Read(512*qPtr+393);
					
							max = (long)ROM_Read(512*qPtr+400);
							max = (max<<8) + (long)ROM_Read(512*qPtr+399);
							max = (max<<8) + (long)ROM_Read(512*qPtr+398);
							max = (max<<8) + (long)ROM_Read(512*qPtr+397);
								
				      	// Counting Hit on the Key
							qHits++;
							gPutStr("Record No. ");
							gPutc((qHits/10)+48);
							gPutc((qHits%10)+48);
						   // Roll over if scrolling is done
							if(qHits==qReadings)
								qHits=0;
							// Display the Date and Time
							gGotoXY(8,2);gPutStr("Time:");
							rDisp_Time(tSave);
							gGotoXY(9,2);gPutStr("Date:");
							rDisp_Date(tSave);
							
							gGotoXY(11,2);
							gPutStr("Press NXT for");
							gGotoXY(12,2);
							gPutStr("details");
							last = lst_listing;
   					}// End There is a reading
		  				state = update_rtc;
						break;
					default:
						break;
				}//switch
				break;
			//===============================================================
			//							RS232 INTERFACE TO PC	Button	
			//===============================================================
			case RS232:
				switch(last)
				{
					case lst_data:
					case lst_listing:
  					case lst_disp_next: //Added
  					case lst_calc_jtr: // Added
						LDRMT = 1;
						SelectLines(PC);
						Delay5ms();
						SendFormatedData();
						SelectLines(TDC);
						LDRMT = 0;
						break;
				}
				state = update_rtc;
				break;
			//===============================================================
			//							START/STOP PRINT	Button	
			//===============================================================
			case PRN:
		  		// BLACK PRINTER
		  		switch(last)
				{
					case lst_reset:
				      //prntCh = prntCh%33;
				      gClear(0);
		      		gDrawRect(14,136,24,146,0);
				      gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,1);gPutStr("SET PRINT CHANNELS");
						gGotoXY(8,2);
						gPutStr("Channels:");
						gPutc((prntCh/10)+48);gPutc((prntCh%10)+48);		
		  				last = lst_print_chan;
		  				state = update_rtc;
		  				break;
		  			case lst_print_chan:
		  				prntCh =prntCh+2;
		  				if(prntCh==34)
		  					prntCh = 2;
				      //prntCh = prntCh%33;
						gGotoXY(8,11);
						gPutc((prntCh/10)+48);gPutc((prntCh%10)+48);		
		  				state = update_rtc;
		  				break;
		  				
					case lst_listing:
					case lst_data:
					case lst_disp_next:
					//case lst_printing:
						EX1 = 0;
						gClear(0);
						gDrawRect(14,136,24,146,0);
						gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,4);gPutStr("PRINT STATUS");
							//Enable PRINTER Serial Communication
							SelectLines(PRINTER);
							gGotoXY(6,2);gPutStr("Printing the");
	   					gGotoXY(7,2);gPutStr("Channel No. 00");
			   			gGotoXY(9,2);gPutStr("Press PRN to");
	   					gGotoXY(10,2);gPutStr("Stop Printing");
							// Start the text to print 
							// hieghtx2, widthx2 Black Printer
							PrintChar(0x1B);PrintChar(0x0C);
				   		PrintString("   ");
				   		PrintString(TITLE);
				   		PrintChar('\n');
				   		PrintChar('\n');
							// Print System ID
							PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
							PrintString("  System ID: ");
							PrintChar((system/10)+48);
							PrintChar((system%10)+48);
							PrintChar('\n');PrintChar('\n');
							
						 	for(p=0;p<prntCh;p++)
				 			{     	
			 					gGotoXY(7,14);
					 			gPutc(((p+1)/10)+48);
   							gPutc(((p+1)%10)+48);
								PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
								Print(p,0);
						 	}
						 	// Print Jitter Information
						 	DelayHalfSec();
				 			PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
				 			PrintString("Jitter  = ");
				 			PrintChar(0xF1);
		 					EstJtr = max-min;
		 					LongToAscii(EstJtr/2,0);
				 			EstJtr = (EstJtr%2)*10;
				 			PrintChar('.');
		 					PrintChar((EstJtr/2)+48);
				 			PrintChar('\n');
				 			
						 	// Print Thresholds
						 	PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
						 	PrintString("StartTH = ");
					  		PrintChar((StartTh2/10)+48);PrintChar('0');
					  		PrintChar('\n');
	  						PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
	  						PrintString("StopTH  = ");
			  				PrintChar((StopTh1/10)+48);PrintChar('0');
							PrintChar('\n');
							PrintChar('\n');
							//Print Date and time of Experiment
						 	PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
						 	PrintString("Expr: Time.\n");
						 	rPrint_Time(tSave);
	 						//Print Date and time of Printing
			 				PrintChar('\n');
						 	PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
						 	PrintString("Print: Time.\n");
						 	DelayHalfSec();
						 	rPrint_Time(time);
						 	PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
						 	PrintString("\n          -**-\n\n\n");
							Delay25ms();	// For Select Lines
							//Enable FPGAs Serial Communication
							SelectLines(TDC);

							//if(p==32)
							//{
	   						gGotoXY(8,2);gPutStr("                ");
			   				gGotoXY(6,2);gPutStr("The Printing");
			   				gGotoXY(7,2);gPutStr("has Completed ");
			   				gGotoXY(9,2);gPutStr("Press PRN to");
			   				gGotoXY(10,2);gPutStr("Print Again  ");
			   			//}
		  				state = update_rtc;
		  				break;
		  			case lst_calc_jtr:
		  				gClear(0);
						gDrawRect(14,136,24,146,0);
						gGotoXY(0,3);	gPutStr(TITLE);
						gGotoXY(3,4);gPutStr("PRINT STATUS");
						//Enable PRINTER Serial Communication
						SelectLines(PRINTER);
						gGotoXY(6,2);gPutStr("Printing the");
   					gGotoXY(7,2);gPutStr("Channel No. 00");
		   			gGotoXY(9,2);gPutStr("Press PRN to");
   					gGotoXY(10,2);gPutStr("Stop Printing");
						// Start the text to print 
						PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
						PrintString("   JITTER (ns)\n");
						// Print System ID
						PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
						PrintString("  System ID: ");
						PrintChar((system/10)+48);PrintChar((system%10)+48);
						PrintChar('\n');PrintChar('\n');
					 	for(p=0;p<prntCh;p++)
			 			{     	
		 					gGotoXY(7,14);
				 			gPutc(((p+1)/10)+48);
  							gPutc(((p+1)%10)+48);
							PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
							Print(p,min);
					 	}
					 	DelayHalfSec();
			 			PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
			 			PrintString("Jitter  = ");
			 			PrintChar(0xF1);
	 					EstJtr = max-min;
	 					LongToAscii(EstJtr/2,0);
			 			EstJtr = (EstJtr%2)*10;
			 			PrintChar('.');
	 					PrintChar((EstJtr/2)+48);
			 			PrintChar('\n');
					 	PrintChar(0x1B);PrintChar(0x04); //widthx2 Black Printer
					 	PrintString("\n          -**-\n\n\n");
						Delay25ms();	// For Select Lines
						//Enable FPGAs Serial Communication
						SelectLines(TDC);
						//if(p==32)
						//{
   						gGotoXY(8,2);gPutStr("                ");
		   				gGotoXY(6,2);gPutStr("The Printing");
		   				gGotoXY(7,2);gPutStr("has Completed ");
		   				gGotoXY(9,2);gPutStr("Press PRN to");
		   				gGotoXY(10,2);gPutStr("Print Again  ");
		   			//}
		  				last = lst_data;
		  				state = update_rtc;
		  				break;
		  		}
				break;
			//===============================================================
		 	// Check the External Interrupt (Start or Stop Pulse)
			//===============================================================
			case tdc_trigrd:
		 	 	LDRDY = 0;
		 	 	EX1 = 0;//9.5.13
		 	 	// Save the time of Occurance of pulse
			 	for (p=0;p<8;p++)
		 	 		tSave[p] = time[p];
		 	 	// Waite for 1 sec; to be save side (Max Time of TDC 671.08864)
		 	 	// Interrupt at Start/Stop
	 	 		//for(p=0;p<40;p++)
	 	 		//	Delay25ms();
	 	 		// Interrupt at Counter Overflow
	 	 		for(p=0;p<8;p++)
	 	 			Delay25ms();
      	   // Read the data from CHRONO32
      	   SelectLines(TDC);
  				rxState = rx_data_frm_uc;
  				// Reset the Variable
				FPGA = 0;
				rxCnt = 0;
				AllStops = 0;
				min = 2147483647;	//0x7FFFFFFF;
				max = -2147483648;//0x80000000;
		 		FPGA = 0;
		 		
		 		//CHRONO32C
	         BEEP = 1; 
	         beepCnt = 0;
	         beepLmt = 20;	
	         
		 		ChronoCmd(SEL_FPGA1);
				ChronoCmd(128); 	 	
				state = update_rtc;
				break;
			//===============================================================
		 	// Select the next FPGA (2nd) and Start Reading 
			//===============================================================
		 	case calc_fpga0:
			 	FPGA = 1;
			 	Calculate(0);
			 	ChronoCmd(SEL_FPGA2);
			 	ChronoCmd(128);
			 	state = update_rtc;
			 	break;
			//===============================================================
		 	// Select the next FPGA (3rd) and Start Reading 
			//===============================================================
			 case calc_fpga1:
			 	FPGA = 2;
			 	Calculate(1);
			 	ChronoCmd(SEL_FPGA3);
			 	ChronoCmd(128);
			 	state = update_rtc;
			 	break;
			//===============================================================
		 	// Select the next FPGA (4th) and Start Reading 
			//===============================================================
			 case calc_fpga2:
			 	FPGA = 3;
		 		Calculate(2);
			 	ChronoCmd(SEL_FPGA4);
			 	ChronoCmd(128);
			 	state = update_rtc;
			 	break;
			//===============================================================
		 	// Differnetiate Between the Actual Triggering and Self Triggering
			//===============================================================
			 case calc_fpga3:
			 	//FPGA = 0;
			 	FPGA = scrn;
				Calculate(3);
			 	state = next;
			 	break;
			//===============================================================
		 	// After Start/Stop Pulse has occured, and 256 bytes are read from
		 	// all the FPGA's, now save all the bytes and display the first 8 channels,
		 	// without saving
			//===============================================================
			 case sav_n_disp:
			 	// Save the Results First
			 	qReadings = ROM_Read(0x7000);
 				qRear = ROM_Read(0x7001);
				//Write the buffered values and time into EEPROM
				ROM_WritePage(512*qRear);
				// Update Pointers
				qRear++;
				if(qRear==10)	qRear = 0;
		 		if (qReadings<10)	qReadings++;
		 		ROM_Write(0x7000,qReadings);
	 			ROM_Write(0x7001,qRear);
				// Display the Results Now
				last = lst_data;
			 	gClear(0);
				gGotoXY(0,3);	gPutStr(TITLE);
				gGotoXY(3,3);gPutStr("CH TIME(ns)");
				gGotoXY(2,17);gPutc(FPGA+49);
				gDrawRect(14,136,24,146,1);
				Display(FPGA++,0);
				if (FPGA==4) FPGA=0;
				qHits = 0;
				state = update_rtc;
				if(multi) state = reset_tdc;
				///
				if (autoprint == 1)
					state = PRN;
				///
    			break;
			//===============================================================
		 	// After Self Testing Pulses has occured, and 256 bytes are read from
		 	// all the FPGA's, now analyse the channels and display result
			//===============================================================
    		case test_reslt:
    			gClear(0);
				gGotoXY(0,3);	gPutStr(TITLE);
				gGotoXY(3,6);gPutStr("SELF TEST");
				gGotoXY(6,2);
				AllStops = 1;
				for(p=0;p<32;p++)
				{
					// Uncontrolled Counter (Runnig Always)
					//if(Interval[p] == 0 || Interval[p] == -1)
					//AllStops = 0;
					// Controlled Counter (Runnig Till 0x1000000)
					if((Interval[p]>16003) || (Interval[p]<15997))
					AllStops = 0;
				}
				if((LDSRT)&&(AllStops))
				{
					gPutStr("Self Test Passed");
					gGotoXY(9,2);
					gPutStr("Press NXT for");
					gGotoXY(10,2);
					gPutStr("Details");
				}
				else
				{
					gPutStr("Self Test Failed");
					gGotoXY(9,2);
					gPutStr("Press NXT for");
					gGotoXY(10,2);
					gPutStr("Details");
				}
				// Initial Screen After Self Test
				// Start Keyboard Interrupt
				EX0  	= 1;
				// Offset Values Chrono32b
				/*offset[0]=1;	offset[1]=2;	offset[2]=2;	offset[3]=2;	offset[4]=1;	offset[5]=1;	offset[6]=1;	offset[7]=1;
				offset[8]=12;	offset[9]=12;	offset[10]=13;	offset[11]=13;	offset[12]=12;	offset[13]=12;	offset[14]=12;	offset[15]=12;
				offset[16]=12;	offset[17]=13;	offset[18]=13;	offset[19]=13;	offset[20]=13;	offset[21]=12;	offset[22]=12;	offset[23]=12;
				offset[24]=22;	offset[25]=24;	offset[26]=24;	offset[27]=26;	offset[28]=20;	offset[29]=25;	offset[30]=22;	offset[31]=22;
				*/
				// Offset Values Chrono32C
				offset[0]=1;	offset[1]=2;	offset[2]=2;	offset[3]=3;	offset[4]=5;	offset[5]=3;	offset[6]=3;	offset[7]=1;
				offset[8]=13;	offset[9]=13;	offset[10]=13;	offset[11]=13;	offset[12]=14;	offset[13]=13;	offset[14]=13;	offset[15]=13;
				offset[16]=17;	offset[17]=17;	offset[18]=18;	offset[19]=19;	offset[20]=19;	offset[21]=18;	offset[22]=17;	offset[23]=18;
				offset[24]=28;	offset[25]=29;	offset[26]=29;	offset[27]=29;	offset[28]=28;	offset[29]=29;	offset[30]=28;	offset[31]=29;
				
				// ReCall the Saved Values
				StopTh1 = ROM_Read(0x7003);
				StartTh2 = ROM_Read(0x7004);
				for(p=10;p<=StopTh1;p=p+10)
					ChronoCmd(INC_DAC1);
				for(p=10;p<=StartTh2;p=p+10)
					ChronoCmd(INC_DAC2);
            last = lst_data;//lst_testing;
				state = update_rtc;
				break;
			case pc_send_data:
				//SelectLines(PC);
				SEL1 = 0; SEL0 = 1;
				Delay5ms();
				SendFormatedData();
				//
				// Send Command to Chrono-32
				SelectLines(TDC);
				Delay5ms();
				ChronoCmd(SEL_FPGA1);
				SelectLines(PC);
				//
				//SelectLines(PC);
				SEL1 = 0; SEL0 = 1;
				rxState = rx_comd_frm_pc;
				state = update_rtc;
				break;
			case pc_inc_dac1:
 		 		LDRDY = 0;
 		 		rxState = rx_dac1_frm_pc;
   		 	rxCnt = 0;FPGA = 0;
				// Send Commands to Chrono-32
				SelectLines(TDC);
				ChronoCmd(INC_DAC1);
				ChronoCmd(44+128);
				state = update_rtc;
				break;
			case pc_send_dac1:
				SelectLines(PC);
				PrintChar(StopTh1);
				rxState = rx_comd_frm_pc;
				state = update_rtc;
				break;
			case pc_inc_dac2:
				LDRDY = 0;
 		 		rxState = rx_dac2_frm_pc;
   		 	rxCnt = 0;FPGA = 0;
				// Send Commands to Chrono-32
				SelectLines(TDC);
				ChronoCmd(INC_DAC2);
				ChronoCmd(45+128);
				state = update_rtc;
				break;
			case pc_send_dac2:
				SelectLines(PC);
				PrintChar(StartTh2);
				rxState = rx_comd_frm_pc;
				state = update_rtc;
				break;
			case pc_chng_id:
				LDRDY = 0;
				// Send Commands to Chrono-32
				SelectLines(TDC);
				ChronoCmd(RST_DAC);
				state = update_rtc;
				break;
			case pc_send_dacs:
				SendChar('@');Delay25ms();
				SendChar('@');Delay25ms();
				SendChar(StopTh1);Delay25ms();
				SendChar(StartTh2);
				state = update_rtc;
				break;
			//===============================================================
		 	// Idle State	1
			//===============================================================
			case idle_state:
				break;
			//===============================================================
		 	// Idle State	2: Updating time from RTC
			//===============================================================
			case update_rtc:	
			 	rBrstReadClk(time);
 				gGotoXY(15,1);					
				rDisp_Date(time);
				gPutc(' ');gPutc(' ');
				rDisp_Time(time);
				break;
		}//Endswitch
	}//End while(1)
}

//====== 		I N T E R R U P T     S E R V I C E    R O U T I N E S			=======

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//External interrupt 0 used for 4x3 keypad thru 74HC922 encoder

//CHRONO32C
void KeyInt() interrupt 0 
{
	// External Interrupt 0 Has Occured, key pressed?
	if(isInit)
	{
	kBus = 0xFF;	// Make Input
	gCE = 1;			// Disable GLCD
	_nop_();
	kCE = 0;			// Enable Key Pad
	_nop_();	
	Key = kBus&0xF0;	// Read Keypad Bus
	_nop_();
	kCE = 1;			// Disable Key Pad
	_nop_();
	gCE = 0;			// Enable GLCD
	_nop_();	
	BEEP=1;
   beepCnt = 0;
   beepLmt = 3;
	Key = Key>>4;
	LDRDY = 0;
	state = Key;
	}
}

/*
//CHRONO32B
void KeyInt() interrupt 0 
{
	// External Interrupt 0 Has Occured, key pressed?
	if(isInit)
	{
	Key = kBus&0x0F;	// Read Keypad Bus
	LDRDY = 0;
	state = Key;
	}
}
*/
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//External interrupt 1 used to detect the occurance of START pulse
void StartInt() interrupt 2 
{
	// External interrupt 1 has occured
	// That is startpulse has occured
	state = tdc_trigrd;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Serial port interrupt, used for only recieve interrupt.
void Serial() interrupt 4
{
	if (RI)
	{
  		RI = 0;
  		rxChr = SBUF;
		switch(rxState)
  		{
  		 	case rx_dac1_frm_pc:
  		 		state = pc_send_dac1;
  		 	case rx_dac1_frm_uc://DAC1 For Stop
		 		StopTh1 = (rxChr)*10;
			 	gGotoXY(7,12);
		 		gPutc((StartTh2/10)+48);gPutc('0');
			 	gGotoXY(8,12);
			 	gPutc((StopTh1/10)+48);gPutc('0');
			 	ROM_Write(0x7003,StopTh1);  		 	
  		 		break;
  		 	case rx_dac2_frm_pc:
  		 		state = pc_send_dac2;
  		 	case rx_dac2_frm_uc://DAC2 For Start
	 			StartTh2 = (rxChr)*10;
			 	gGotoXY(7,12);
			 	gPutc((StartTh2/10)+48);gPutc('0');
			 	gGotoXY(8,12);
		 		gPutc((StopTh1/10)+48);gPutc('0');
			 	ROM_Write(0x7004,StartTh2);
  		 		break;
  		 	case rx_data_frm_uc://Read From FPGA 1,2,3,4
  		 		rxBuf[rxCnt]=rxChr;
				if (rxCnt==63)
				{
   				rxCnt = 0;
   				state = calc_fpga0 + FPGA;
    			}
	    		else
   	 		{	                          	
    				rxCnt++;
    				ChronoCmd(128+rxCnt);
	    		}// End if rxCnt
  		 		break;
  		 	case rx_comd_frm_pc://PC Communication
  		 		switch(rxChr)
		 		{
		 		 	case reset_tdc_cntrs:// Reset the tdc
	 			 		next  = pc_send_data;
	 			 		state = reset_tdc;
	 		 			break;
 		 		 	case change_sys_id:// reset the dac
		 		 		//state = get_id_frm_pc;
		 		 		break;
 		 		 	case inc_n_read_dac1:// increment dac2 and send value to pc
		 		 		state = pc_inc_dac1;
		 		 		break;
	 			 	case inc_n_read_dac2:// increment dac2 and send value to pc
	 			 		state = pc_inc_dac2;
	 		 			break;
  		 		 	case send_info_2_pc:// send dac values to pc
		 		 		state = pc_send_dacs;
		 		 		break;
		 		 	//case switch_2_single:
		 		 	//	multi = 0;
		 		 	//	break;
		 		 	//case switch_2_multi:
		 		 	//	multi = 1;
		 		 	//	break;
	 			}
  		 		break;
  		 	case rx_data_frm_pr:// Printer_Communication
  		 		break;
  		 	default:
  		 		break;
  		}//End Switch
   }// End if RI
}


//CHRONO32C
void Timer1_OneSec() interrupt 3
{
 	TF1 = 0;
	TH0 = 0x4C;	TL0 = 0x00;
 	beepCnt++;
 	if(beepCnt==beepLmt)
 		BEEP = 0;
}





























































































