// Verilog test fixture created from schematic chrono48_start.sch - Fri Jun 27 12:16:43 2014

`timescale 1ns / 1ns

module chrono48_start_tf();

// Inputs
   reg start_pulse;
   reg clk;
   reg [2:0] dev_addr;
   reg rx_pc;
   reg rx_uc;
   reg sel1;
   reg sel0;
   reg rx_pr;

// Output
   wire clkout1;
   wire clkout2;
   wire startout1;
   wire startout2;
   wire intr;
   wire DACout;
   wire tx_pc;
   wire tx_uc;
   wire tx_pr;
   wire tst_stop_pulse;
   wire cmd_reset;
wire cmd_rst_dac;
wire cmd_inc_dac;
wire cmd_dev_sel;
wire cmd_rst_test;

// Bidirs

// Instantiate the UUT
   chrono48_start UUT (
		.start_pulse(start_pulse), 
		.clk(clk), 
		.dev_addr(dev_addr), 
		.clkout1(clkout1), 
		.clkout2(clkout2), 
		.startout1(startout1), 
		.startout2(startout2), 
		.intr(intr), 
		.DACout(DACout), 
		.rx_pc(rx_pc), 
		.tx_pc(tx_pc), 
		.rx_uc(rx_uc), 
		.sel1(sel1), 
		.sel0(sel0), 
		.rx_pr(rx_pr), 
		.tx_uc(tx_uc), 
		.tx_pr(tx_pr), 
		.tst_stop_pulse(tst_stop_pulse),
		.cmd_reset(cmd_reset),
		.cmd_rst_dac(cmd_rst_dac),
		.cmd_inc_dac(cmd_inc_dac),
		.cmd_dev_sel(cmd_dev_sel),
		.cmd_rst_test(cmd_rst_test)
   );
// Initialize Inputs

       initial begin
		start_pulse = 0;
		clk = 0;
		dev_addr = 3'b110;
		rx_pc = 0;
		rx_uc = 0;
		sel1 = 0;
		sel0 = 0;
		rx_pr = 0;
		#35 start_pulse = 1;
		#100 start_pulse = 0;


			#(52083*12) rx_uc =1;//idle

			//cmd_reset
			#(52083*2) rx_uc =0;//start
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle
			//cmd_rst_dac
			#(52083*2) rx_uc =0;//start
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle
			//cmd_inc_dac
			#(52083*2) rx_uc =0;//start
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle
			
			//cmd_rst_test
			#(52083*2) rx_uc =0;//start
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle

			//cmd_startup
			#(52083*2) rx_uc =0;//start
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle


			// select dev
			#(52083*2) rx_uc =0;//start

			#(52083*2) rx_uc =0;//d0
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =1;//d7

			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle

			// read

			#(52083*2) rx_uc =0;//start

			#(52083*2) rx_uc =0;//d0
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//d7

			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle
			// read

			#(52083*2) rx_uc =0;//start

			#(52083*2) rx_uc =1;//d0
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//d7

			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle

			// read

			#(52083*2) rx_uc =0;//start

			#(52083*2) rx_uc =0;//d0
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//d7

			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle


			// read

			#(52083*2) rx_uc =0;//start

			#(52083*2) rx_uc =1;//d0
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//d7

			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle


			// read

			#(52083*2) rx_uc =0;//start

			#(52083*2) rx_uc =0;//d0
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =0;
			#(52083*2) rx_uc =1;//d7

			#(52083*2) rx_uc =1;//stop
			#((52083*2)*2) rx_uc =1;//idle
        end

always 
#20 clk = ~clk;
endmodule
