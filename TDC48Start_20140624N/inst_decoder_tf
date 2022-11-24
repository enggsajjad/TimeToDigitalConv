

module inst_decoder_tf();

// DATE:     14:11:52 06/25/2014 
// MODULE:   cu_hmi
// DESIGN:   cu_hmi
// FILENAME: cu_hmi_tf.v
// PROJECT:  48V1
// VERSION:  


// Inputs
    reg clk;
    reg res;
    reg [7:0] din;
    reg din_rdy;
    reg [2:0] dev_addr;


// Outputs
    wire [4:0] pkt_addr;
    wire cmd_reset;
    wire cmd_rst_dac;
    wire cmd_inc_dac;
    wire cmd_read;
    wire cmd_dev_sel;
    wire [7:0] dev_sel_byte;
    wire cmd_rst_test;
    wire cmd_startup;


// Bidirs

// Instantiate the module
inst_decoder instance_name (
    .clk(clk), 
    .res(res), 
    .din_rdy(din_rdy), 
    .din(din), 
    .dev_addr(dev_addr), 
    .cmd_reset(cmd_reset), 
    .cmd_rst_dac(cmd_rst_dac), 
    .cmd_inc_dac(cmd_inc_dac), 
    .cmd_read(cmd_read), 
    .cmd_dev_sel(cmd_dev_sel), 
    .cmd_rst_test(cmd_rst_test), 
    .cmd_startup(cmd_startup), 
    .pkt_addr(pkt_addr), 
    .dev_sel_byte(dev_sel_byte)
    );

// Initialize Inputs
   
        initial 
	   begin
            clk = 0;
            res = 0;
            din = 0;
            din_rdy = 0;
            dev_addr = 3'b111;
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


		  #100 din = 8'b0100_0001; //reset
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b0100_0010; //reset dac
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b0100_0011; //inc dac1
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b0100_0101; //reset test
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;

		  #100 din = 8'b0100_0110; //startup
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0;


		  #100 din = 8'b1000_0000; //address
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0; 

		  #100 din = 8'b1000_0001; //address
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0; 
		  
		  #100 din = 8'b1000_0010; //address
		  #100 din_rdy = 1;
		  #52084 din_rdy = 0;
		  #(52084*11) din_rdy = 0; 		  		  
        end

always 
#(10*16) clk = ~clk;


endmodule

