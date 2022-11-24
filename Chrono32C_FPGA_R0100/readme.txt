Date:	17-03-2010


26 Bit Counter		1
26 Bit Registers	8

Verniers based on 	Latches


STOP Pulse Captured	First


Date:	31-03-2010
threshold reset to old values of 80/8

Date:	28-07-2010
threshold reset to values of 60/6

Date: 	01-11-2010
threshold non-linear pattern
resistor changed from 510 to 330


15-02-2011
Update: Modified Router

03-03-2011
Optimzation
04-03-2011
Register increased to 27 bit, but Counter stoped at 24th bit
if Counter stoped at 24th: Range is 167ms
if Counter stoped at 26th: Range is 667ms
Interrupt generated from Counter Overflow flaq
Self Test is modifeid; 16us Delay Generated in each FPGA indepedently

11-05-2011
Selft Test Modified; Inclusion of res_test and startup commands to generete 16us delay

04-01-2012
DAC Modified (Linear DAC) 8-40

25-01-2012 (Sultan Mehmood at Room 218)
Same Ground through all
DAC Modified (Linear DAC) 	8;12;16;20;24;28;32;36;40;

15-05-2013
Stop Vernier is enabled at stop pulse(and gate)
Load register signal for the counter is delayed (1 FF)