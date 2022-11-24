

`timescale 1ns/1ns
module ir_decoder_tf();

// DATE:     12:18:22 06/27/2014 
// MODULE:   IR_decoder
// DESIGN:   IR_decoder
// FILENAME: ir_decoder_tf.v
// PROJECT:  48V1
// VERSION:  


// Inputs
    reg clk;
    reg rst;
    reg rx;
    reg [7:0] data_in;
    reg [2:0] dev_addr;


// Outputs
    wire cmd_reset;
    wire cmd_rst_dac;
    wire cmd_inc_dac;
    wire cmd_dev_sel;
    wire cmd_rst_test;
    wire cmd_startup;
    wire [4:0] pkt_addr;
    wire tx;
    wire [7:0] dev_sel_byte;


// Bidirs


// Instantiate the UUT
    IR_decoder uut (
        .clk(clk), 
        .rst(rst), 
        .rx(rx), 
        .data_in(data_in), 
        .dev_addr(dev_addr), 
        .cmd_reset(cmd_reset), 
        .cmd_rst_dac(cmd_rst_dac), 
        .cmd_inc_dac(cmd_inc_dac), 
        .cmd_dev_sel(cmd_dev_sel), 
        .cmd_rst_test(cmd_rst_test), 
        .cmd_startup(cmd_startup), 
        .pkt_addr(pkt_addr), 
        .tx(tx), 
        .dev_sel_byte(dev_sel_byte)
        );


// Initialize Inputs
        initial begin
            clk = 0;
            rst = 0;
		  data_in = 0;
		  dev_addr = 0;
		  rx = 0;

		  #50 rst = 1;
		  #50 rst = 0;
            

		  #100 data_in = 8'haa;
		  dev_addr = 3'b110;
		  	
			#(52083*12) rx =1;//idle

			//cmd_reset
			#(52083*2) rx =0;//start
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle
			//cmd_rst_dac
			#(52083*2) rx =0;//start
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle
			//cmd_inc_dac
			#(52083*2) rx =0;//start
			#(52083*2) rx =1;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle
			
			//cmd_rst_test
			#(52083*2) rx =0;//start
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle

			//cmd_startup
			#(52083*2) rx =0;//start
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle


			// select dev
			#(52083*2) rx =0;//start

			#(52083*2) rx =0;//d0
			#(52083*2) rx =1;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =1;//d7

			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle

			// read
			data_in = 8'h01;
			#(52083*2) rx =0;//start

			#(52083*2) rx =0;//d0
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//d7

			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle
			// read
			data_in = 8'h02;
			#(52083*2) rx =0;//start

			#(52083*2) rx =1;//d0
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//d7

			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle

			// read
			data_in = 8'h03;
			#(52083*2) rx =0;//start

			#(52083*2) rx =0;//d0
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//d7

			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle


			// read
			data_in = 8'h04;
			#(52083*2) rx =0;//start

			#(52083*2) rx =1;//d0
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//d7

			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle


			// read
			data_in = 8'h05;
			#(52083*2) rx =0;//start

			#(52083*2) rx =0;//d0
			#(52083*2) rx =0;
			#(52083*2) rx =1;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =0;
			#(52083*2) rx =1;//d7

			#(52083*2) rx =1;//stop
			#((52083*2)*12) rx =1;//idle
        end

always 
#20 clk = ~clk;
endmodule

