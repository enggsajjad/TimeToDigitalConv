module IR_decoder(clk,rst,rx,data_in,dev_addr,
				cmd_reset, cmd_rst_dac, cmd_inc_dac, cmd_dev_sel, cmd_rst_test,cmd_startup,
			     pkt_addr,tx,dev_sel_byte);

input clk; 
input rst;
input rx;
input [7:0] data_in; //uart data in
input [2:0] dev_addr;

output tx;
output cmd_reset;
output cmd_rst_dac;
output cmd_inc_dac;
//output inc_dac2;
output cmd_dev_sel;
output cmd_rst_test;
output cmd_startup;
output [4:0] pkt_addr;
output [7:0] dev_sel_byte;

wire doutrdy;
wire cmd_read;
wire uart_ready;
wire [7:0]  dout_byte;
wire enb;
wire dout_byte_rdy;
wire tx1;
wire temp;

assign temp = cmd_read;
assign tx =tx1;//= (cmd_dev_sel==1)?tx1:1'bz;
assign doutrdy = dout_byte_rdy;

    // Instantiate the module
	cu_hmi c2 (
    .clk(clk), 
    .res(rst), 
    .din_rdy(dout_byte_rdy), 
    .din(dout_byte), 
    .dev_addr(dev_addr), 
    .cmd_reset(cmd_reset), 
    .cmd_rst_dac(cmd_rst_dac), 
    .cmd_inc_dac(cmd_inc_dac),
    /*.inc_dac2(inc_dac2), */ 
    .cmd_read(cmd_read), 
    .cmd_dev_sel(cmd_dev_sel), 
    .cmd_rst_test(cmd_rst_test), 
    .cmd_startup(cmd_startup), 
    .pkt_addr(pkt_addr), 
    .dev_sel_byte(dev_sel_byte)
    );
		// Instantiate the module
		UA_Transmitter1 u1 (
    .clk(clk), 
    .rst(rst), 
    .enable(enb), 
    .din_rdy(temp), 
    .din_byte(data_in), 
    .ser_out(tx1), 
    .uart_ready(uart_ready)
		
    );
   	// Instantiate the module
	UA_Receiver u2 (
    .clk(clk), 
    .rst(rst), 
    .enable(enb), 
    .ser_in(rx), 
    .dout_byte(dout_byte), 
    .dout_byte_rdy(dout_byte_rdy)
    );
	// Instantiate the module
	clk_gen c1 (
    .clk(clk), 
    .rst(rst), 
    .enable(enb) 
    );
endmodule