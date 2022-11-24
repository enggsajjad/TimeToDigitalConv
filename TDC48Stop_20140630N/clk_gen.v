module clk_gen(clk, rst, enable);

input clk;
input rst;
output enable;

reg [7:0] cnt1;

always  @(posedge clk or posedge rst)
if(rst)
cnt1<=0;
else if (cnt1==162) //for 9600
//else if (cnt1==162) //for 19200
cnt1<=0;
else
cnt1<=cnt1+1;

assign enable = (cnt1==80)?1:0;

endmodule
