module IR_decoder(clk,rst,rx,res,fpga_sel, res_dac, inc_dac1, inc_dac2, data_in,
			   sel_val, address,tx,uart_ready,read,fpga_sel_status, restest,startup,doutrdy);

input clk;  //312500
input rst;
input rx;
input [7:0] data_in;
input [2:0] sel_val;

output tx;
output fpga_sel;
output res;
output res_dac;
output inc_dac1;
output inc_dac2;
output read;
output uart_ready;
output [5:0] address;
output restest;
output startup;
output [7:0] fpga_sel_status;
output doutrdy;

wire [7:0]  dout_byte;
wire dout_byte_rdy;
wire ce_rx;
wire tx1;
wire temp;

assign temp = read;
assign tx =tx1;//= (fpga_sel==1)?tx1:1'bz;
assign doutrdy = dout_byte_rdy;

		// Instantiate the module
		cu_hmi c2 (
    .clk(clk), 
    .res(rst), 
    .din(dout_byte), 
    .din_rdy(dout_byte_rdy), 
    .in_value(sel_val), 
    .address(address), 
    .reset(res), 
    .res_dac(res_dac), 
    .inc_dac1(inc_dac1), 
    .inc_dac2(inc_dac2), 
    .read(read), 
    .fpga_sel(fpga_sel),
    .fpga_sel_status(fpga_sel_status),
	 .restest (restest),
	 .startup(startup)
	
    );
		// Instantiate the module
		UA_Transmitter1 u1 (
    .clk(clk), 
    .rst(rst), 
    .enable(ce_rx), 
    .din_rdy(temp), 
    .din_byte(data_in), 
    .ser_out(tx1), 
    .uart_ready(uart_ready)
		
    );
   	// Instantiate the module
		UA_Receiver u2 (
    .clk(clk), 
    .rst(rst), 
    .enable(ce_rx), 
    .ser_in(rx), 
    .dout_byte(dout_byte), 
    .dout_byte_rdy(dout_byte_rdy)
    );
	  // Instantiate the module
		clk_gen c1 (
    .clk(clk), 
    .rst(rst), 
    .en_rx(ce_rx) 
    );
endmodule