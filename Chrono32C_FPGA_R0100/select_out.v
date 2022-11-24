module select_out(sel_in, sel_fpgasel, sel_vers, sel_counters, sel_dac1, sel_dac2, sel_status,sel_pencoder);

input [63:0] sel_in;
output [8:0] sel_vers;
output [31:0] sel_counters;

output sel_dac1;
output sel_dac2;
output sel_fpgasel;
output sel_status;
output sel_pencoder;


assign sel_fpgasel = sel_in[0];
assign sel_vers = sel_in[9:1];
assign sel_pencoder= sel_in [10];
assign sel_counters = {sel_in[42:39],sel_in[38:35],sel_in[34:31],sel_in[30:27],sel_in[26:23],sel_in[22:19],sel_in[18:15],sel_in[14:11]};

assign sel_dac1 = sel_in[44];
assign sel_dac2 = sel_in[45];
assign sel_status = sel_in[48];
endmodule