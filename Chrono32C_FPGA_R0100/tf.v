
`timescale 1ns/1ns
module testcounter_tf_v_tf();

// DATE:     08:58:41 03/08/2011 
// MODULE:   testcounter
// DESIGN:   testcounter
// FILENAME: tf.v
// PROJECT:  32V7
// VERSION:  


// Inputs
    reg clk;
    reg res_test;
    reg [2:0] fpga_addr;


// Outputs
    wire teststart;
    wire teststop;


// Bidirs


// Instantiate the UUT
    testcounter uut (
        .clk(clk), 
        .res_test(res_test), 
        .fpga_addr(fpga_addr), 
        .teststart(teststart), 
        .teststop(teststop)
        );


// Initialize Inputs
        initial begin
            clk = 0;
            res_test = 0;
            fpga_addr = 0;
				#200 res_test = 1;
				#40 res_test = 0;
				#200000 res_test = 1;
				#40 res_test = 0;
        end

always
#20 clk = ~clk;

endmodule

