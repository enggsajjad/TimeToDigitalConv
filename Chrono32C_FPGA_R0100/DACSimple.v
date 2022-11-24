
module DACSimple(Clk, loaddac, resdac, sel_dac, DACout, dac_val);//, restest);


input Clk;
input resdac;
input loaddac;
input sel_dac;

output DACout;
output [7:0] dac_val;


reg    [7:0] Accum;  // for optimum performance, ensure that this ff is in IOB
wire   [8:0] Sum;
reg    [7:0] dacinreg;
reg 	 [3:0] DACaddr;

assign Sum = dacinreg + Accum;

always @(posedge Clk or posedge resdac)
begin

if(resdac)
    Accum <= 0;
else
    Accum <=Sum;
end

assign DACout = Sum[8];

assign dac_val=(sel_dac==0)? {4'h0,DACaddr}: 8'hzz;


/*
assign dac_val=(sel_dac==0)? dacinreg: 8'hzz;

// Linear DAC with steps of 6
always @(posedge loaddac or posedge resdac)
if (resdac)
dacinreg<=6;
else if (dacinreg==54)
dacinreg<=6;
else
dacinreg<= dacinreg + 6;
*/


always @(posedge loaddac or posedge resdac)
if (resdac)
DACaddr<=0;
else if (DACaddr==9)
DACaddr<=1;
else
DACaddr<= DACaddr + 1;

always @ (DACaddr)
case (DACaddr)

/*
0:	dacinreg<=51;//6
1:	dacinreg<=5;//13
2:	dacinreg<=8;
3:	dacinreg<=10;
4:	dacinreg<=13;
5:	dacinreg<=16;
6:	dacinreg<=21;
7:	dacinreg<=41;
8:	dacinreg<=46;
9:	dacinreg<=51;
*/
0:	dacinreg<=40;
1:	dacinreg<=8;//13
2:	dacinreg<=12;
3:	dacinreg<=16;
4:	dacinreg<=20;
5:	dacinreg<=24;
6:	dacinreg<=28;
7:	dacinreg<=32;
8:	dacinreg<=36;
9:	dacinreg<=40;

default:	dacinreg<=40;
endcase

endmodule

