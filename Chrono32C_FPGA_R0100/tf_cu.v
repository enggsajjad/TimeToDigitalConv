`timescale 1ns /1ns

module cu_hmi_tf_cu_v_tf();

// DATE:     09:53:19 07/24/2008 
// MODULE:   cu_hmi
// DESIGN:   cu_hmi
// FILENAME: tf_cu.v
// PROJECT:  TDC16Channel_8bitout_uart
// VERSION:  


// Inputs
    reg clk;
    reg res;
    reg [7:0] din;
    reg din_rdy;
    reg [2:0] in_value;


// Outputs
    wire [5:0] address;
    wire reset;
    wire res_dac;
    wire inc_dac1;
    wire inc_dac2;
    wire read;
    wire fpga_sel;
    wire [7:0] fpga_sel_status;
	 wire restest;


// Bidirs


// Instantiate the UUT
    cu_hmi uut (
        .clk(clk), 
        .res(res), 
        .din(din), 
        .din_rdy(din_rdy), 
        .in_value(in_value), 
        .address(address), 
        .reset(reset), 
        .res_dac(res_dac), 
        .inc_dac1(inc_dac1), 
        .inc_dac2(inc_dac2), 
        .read(read), 
        .fpga_sel(fpga_sel), 
        .fpga_sel_status(fpga_sel_status),
		  .restest(restest)
        );


// Initialize Inputs
   
        initial 
	   begin
            clk = 0;
            res = 0;
            din = 0;
            din_rdy = 0;
            in_value = 3'b111;
		  #1000 res = 1;
		  #100 res = 0;

		  #100 din = 0;
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b1100_0111; //select fpga
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b1100_0000;  //deselect fpga
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;


			#100 din = 8'b1100_0111; //select fpga
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b0100_0100; //read
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b0100_0010; //read
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b0100_0001; //read
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b1000_0101; //address
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;
		  
		  
		  
		  


        end

   

always 
#(10*16) clk = ~clk;


endmodule

