
module DAC(clk, inc_dac, rst_dac, sel_dac, DACout, dac_val);//, restest);


input clk;
input rst_dac;
input inc_dac;
input sel_dac;

output DACout;
output [7:0] dac_val;


reg    [7:0] Accum;  // for optimum performance, ensure that this ff is in IOB
wire   [8:0] Sum;
reg    [7:0] dacinreg;
reg 	  [3:0] DACaddr;

assign Sum = dacinreg + Accum;

always @(posedge clk or posedge rst_dac)
begin

if(rst_dac)
    Accum <= 0;
else
    Accum <=Sum;
end

assign DACout = Sum[8];

assign dac_val=(sel_dac==0)? {4'h0,DACaddr}: 8'hzz;




always @(posedge inc_dac or posedge rst_dac)
if (rst_dac)
DACaddr<=0;
else if (DACaddr==9)
DACaddr<=1;
else
DACaddr<= DACaddr + 1;

always @ (DACaddr)
case (DACaddr)

0:	dacinreg<=32;
1:	dacinreg<=8;//13
2:	dacinreg<=12;
3:	dacinreg<=16;
4:	dacinreg<=20;
5:	dacinreg<=24;
6:	dacinreg<=26;
7:	dacinreg<=28;
8:	dacinreg<=30;
9:	dacinreg<=32;

default:	dacinreg<=32;
endcase

endmodule

