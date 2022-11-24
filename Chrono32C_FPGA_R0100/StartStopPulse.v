module StartStopPulse( startpulse,stoppulse,intr);

//input clk, res;
input startpulse;
input [7:0] stoppulse;

output intr;

//reg intr;
//wire intr1;

////////////////////////////////////////////
assign intr = ~(|({stoppulse,startpulse}));
/*
reg [5:0] CountA;

always @(posedge clk or posedge res)
if(res)
	CountA <= 0;
else if (intr1)
	CountA <= 0;
else if (CountA == 63)
	CountA <= CountA;
else
	CountA <= CountA + 1;

always @(posedge clk or posedge res)
if(res)
	intr <= 1;
else if (CountA == 1)
	intr <= 0;
else if (CountA == 60)
	intr <= 1;
else
	intr <= intr;
*/
endmodule
