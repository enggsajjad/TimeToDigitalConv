// Verilog test fixture created from schematic chrono48_stop.sch - Wed Jul 02 10:31:17 2014

`timescale 1ns / 1ns

module chrono48_stop_tf();

// Inputs
   reg [2:0] dev_addr;
   reg rx_uc;
   reg clk;
   reg [3:0] stop_pulses;
   reg start_clk_sync;
   reg teststop;

// Output
   wire cmd_rst_dac;
   wire cmd_inc_dac;
   wire cmd_reset;
   wire cmd_dev_sel;
   wire cmd_rst_test;
   wire DACout;
   wire tx_uc;

// Bidirs

// Instantiate the UUT
   chrono48_stop3 UUT (
		.cmd_rst_dac(cmd_rst_dac), 
		.cmd_inc_dac(cmd_inc_dac), 
		.cmd_reset(cmd_reset), 
		.dev_addr(dev_addr), 
		.cmd_dev_sel(cmd_dev_sel), 
		.cmd_rst_test(cmd_rst_test), 
		.DACout(DACout), 
		.rx_uc(rx_uc), 
		.tx_uc(tx_uc), 
		.clk(clk), 
		.stop_pulses(stop_pulses), 
		.start_clk_sync(start_clk_sync), 
		.teststop(teststop)
   );
// Initialize Inputs
       initial begin
		start_pulse = 0;
		clk = 0;
		dev_addr = 3'b110;
		rx_uc = 0;
		teststop = 0;
		#35 start_clk_sync = 1;
		#12 stop_pulses = 4'b1111;
		#100 start_clk_sync = 0;
		stop_pulses = 4'b0000;



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
