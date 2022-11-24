library verilog;
use verilog.vl_types.all;
entity counter32bit is
    port(
        clk             : in     vl_logic;
        enb             : in     vl_logic;
        reset           : in     vl_logic;
        ovf24_intr      : out    vl_logic
    );
end counter32bit;
