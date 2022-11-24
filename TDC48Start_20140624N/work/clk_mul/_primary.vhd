library verilog;
use verilog.vl_types.all;
entity clk_mul is
    port(
        clk             : in     vl_logic;
        clkdiv          : out    vl_logic;
        clk4x           : out    vl_logic
    );
end clk_mul;
