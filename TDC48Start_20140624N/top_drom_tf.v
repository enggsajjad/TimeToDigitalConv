// Verilog test fixture created from schematic top_drom.sch - Wed Jun 25 13:01:09 2014

`timescale 1ns / 1ns

module top_drom_tf();

// Inputs
   reg [4:0] address;
   reg clk;

// Output
   wire sel_fpgasel;
   wire sel_dac1;
   wire [4:0] sel_vers;
   wire [15:0] sel_counters;
   wire sel_pencoder;
   integer i;
// Bidirs

// Instantiate the UUT
   top_drom UUT (
		.sel_fpgasel(sel_fpgasel), 
		.sel_dac1(sel_dac1), 
		.sel_vers(sel_vers), 
		.sel_counters(sel_counters), 
		.sel_pencoder(sel_pencoder), 
		.address(address), 
		.clk(clk)
   );
// Initialize Inputs
       	initial begin
		address = 31;
		clk = 0;
		for (i=0;i<24;i=i+1)
			begin
			#100 address = i;
	  		end
		end
always 
#10 clk = ~clk;
endmodule
