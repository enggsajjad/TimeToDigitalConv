/*=========================================================================================
Update: 15-05-2013	Auto-print; offset of 10 Removed; Stop Vernier trigger after valid start
Update: 09-05-2013	Screen and Printing problem
Update: 30-11-2012
	New SMD PCB; 'Chrono32C_MC_R1' against quotation No.Q-SmartPCBs/6049 dated 19-09-2012
Update: 15-02-2011

Date: 25-05-2009
FPGAs = 4;
For New Version of TDC; with changed UART interface;

Components:		
		1. Microctroller AT8051RC2
		2. Crystal 22.1184 MHz
		3. Graphic LCD CFAG160128ATMITZ
		4. Keypad 4x3 399-1280 Lightend Keys
		5. KeyPad Encoder 74C922
		6. Real Time Clock DS1302
		7. Quart Crystal 32.768KHz
		8. Serial Printer (19200 Buadrate)
		9. TDC32 chanal (19200 Buadrate)
		10. AT24C256 EEPROM
Features:
		01. Serial Transmit (Polling) Serial Recieving (Interrupt)
		02. Serial Software Handshaking Implimented (XOFF/XON) for Printer
		03. Interrupt 0 for Keypad Data Available Interrupt
		04. Interrupt 1 for Start Pulse Inverted.
		05. Buffer for Serial Data is expanded to rxBuff[256]
		06. Offset for each channel is handled using Offset[32];
		07. Display the Time in Decimal and Hexadecimal Format; 8 channels at a time
		08. Displays the Status of TDC,Printer, EEPROM
		09. Save 10 Readings automatically, and clears afterwards.
		10. LED's for Start, Stop, Ready, and Printer
		11. Switch to select PC/UC.
		12. Jitter Calculations
		13. Time value Handled, only Integer Part is Converted to Ascii,Decimal is Printed manually.
		14. Counter 3rd Byte Handled, Can be taken to 4 Bytes.
		15. Time of Experiment is also saved and Printed.
		16. Time can be printed with and without the Jitter.
		17. Real Time Clock Settings
		18. EEPROM page write; and 256Bytes Custom page write function.
		
		Dated: 20-09-2008
		19. Serial Interface is entirely changed.
		20. System ID inclded in LCD and print
		21. Jitter Calculation w.r.t any channel
		22. With "+" or "-" sign
		23. Stop Printing during execution
		24. fractional part ".33" or ".66" converted to ".5"
		25. Counter 4th byte include for the range 671 milli sec (671088640 nsec)
		26. the pulse occuring indication is either by start or by stop

+---+---+---+
| 3 | 7 | B |
+---+---+---+
| 0 | 4 | 8 |
+---+---+---+
| 1 | 5 | 9 |
+---+---+---+
| 2 | 6 | A |
+---+---+---+

//				E  E  P  R  O  M			

Packets of 512 are written at a byte

Addresses	Description
00 - 31		8 Measurements at FPGA1 (4Bytes Each)
32 - 63		8 Measurements at FPGA2 (4Bytes Each)
64 - 95		8 Measurements at FPGA3 (4Bytes Each)
96 - 127		8 Measurements at FPGA4 (4Bytes Each)
 ...			........
352-384		8 Measurements at FPGA12 (4Bytes Each)
384			StopTh1
385			StartTh2
386			Time[0]
387			Time[1]
388			Time[2]
389			Time[3]
390			Time[4]
391			Time[5]
392			Time[6]
393-396		Minimum Value
=========================================================================================*/






























































































































