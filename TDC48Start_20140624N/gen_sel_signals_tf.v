

module gen_sel_signals_tf();

// DATE:     08:55:36 06/26/2014 
// MODULE:   gen_sel_signals
// DESIGN:   gen_sel_signals
// FILENAME: gen_sel_signals_tf.v
// PROJECT:  48V1
// VERSION:  


// Inputs
    reg [4:0] addr;


// Outputs
    wire sel_fpga_byte;
    wire [4:0] sel_ver_bytes;
    wire sel_penc_byte;
    wire [15:0] sel_cntr_bytes;
    wire sel_dac_byte;


// Bidirs


// Instantiate the UUT
    gen_sel_signals uut (
        .addr(addr), 
        .sel_fpga_byte(sel_fpga_byte), 
        .sel_ver_bytes(sel_ver_bytes), 
        .sel_penc_byte(sel_penc_byte), 
        .sel_cntr_bytes(sel_cntr_bytes), 
        .sel_dac_byte(sel_dac_byte)
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
endmodule

