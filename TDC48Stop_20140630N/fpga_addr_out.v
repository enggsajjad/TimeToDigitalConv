module fpga_addr_out(sel,din,dout);
    input sel;
    input [7:0] din;
    output [7:0] dout;


assign dout = sel? 8'hzz:din;
endmodule
