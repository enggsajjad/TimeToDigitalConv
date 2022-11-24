module drom(addr, 
			sel_fpga_byte, 
			sel_ver_bytes, 
			sel_penc_byte, 
			sel_cntr_bytes, 
			sel_dac_byte);

input [4:0] addr;
output sel_fpga_byte;			 
output [4:0] sel_ver_bytes;  
output sel_penc_byte;  
output [15:0] sel_cntr_bytes; 
output sel_dac_byte;
 
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

assign sel_fpga_byte = sel_in[0];
assign sel_ver_bytes = sel_in[5:1];
assign sel_penc_byte= sel_in [6];
assign sel_cntr_bytes = {sel_in[22:19],sel_in[18:15],sel_in[14:11],sel_in[10:7]};
assign sel_dac_byte = sel_in[23];

endmodule
