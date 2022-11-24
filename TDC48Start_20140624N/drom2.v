module drom2(addr, sel_out);
input [4:0] addr;
 
output [31:0] sel_out;


reg [31:0] sel_out;

always @(addr) 
case(addr)
0:  sel_out=32'hfffffffe;
1:  sel_out=32'hffffffbd;
2:  sel_out=32'hffffffbb;
3:  sel_out=32'hffffffb7;
4:  sel_out=32'hffffffaf;
5:  sel_out=32'hffffff9f;
6:  sel_out=32'hffffffff;
7:  sel_out=32'hffffff7f;
8:  sel_out=32'hfffffeff;
9:  sel_out=32'hfffffdff;
10:  sel_out=32'hfffffbff;
11:  sel_out=32'hfffff7ff;
12:  sel_out=32'hffffefff;
13:  sel_out=32'hffffdfff;
14:  sel_out=32'hffffbfff;
15:  sel_out=32'hffff7fff;
16:  sel_out=32'hfffeffff;
17:  sel_out=32'hfffdffff;
18:  sel_out=32'hfffbffff;
19:  sel_out=32'hfff7ffff;
20:  sel_out=32'hffefffff;
21:  sel_out=32'hffdfffff;
22:  sel_out=32'hffbfffff;
23:  sel_out=32'hff7fffff;
24:  sel_out=32'hffffffff;
25:  sel_out=32'hffffffff;
26:  sel_out=32'hffffffff;
27:  sel_out=32'hffffffff;
28:  sel_out=32'hffffffff;
29:  sel_out=32'hffffffff;
30:  sel_out=32'hffffffff;
31:  sel_out=32'hffffffff;

endcase

endmodule
