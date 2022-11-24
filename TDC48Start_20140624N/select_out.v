module select_out(sel_in, 
				sel_fpga_byte, 
				sel_ver_bytes, 
				sel_penc_byte, 
				sel_cntr_bytes, 
				sel_dac_byte);

input [23:0] sel_in;
output sel_fpga_byte;			 
output [4:0] sel_ver_bytes;  
output sel_penc_byte;  
output [15:0] sel_cntr_bytes; 
output sel_dac_byte; 


assign sel_fpga_byte = sel_in[0];
assign sel_ver_bytes = sel_in[5:1];
assign sel_penc_byte= sel_in [6];
assign sel_cntr_bytes = {sel_in[22:19],sel_in[18:15],sel_in[14:11],sel_in[10:7]};
assign sel_dac_byte = sel_in[23];

endmodule