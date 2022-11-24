library verilog;
use verilog.vl_types.all;
entity synclogic is
    port(
        clk             : in     vl_logic;
        pulse           : in     vl_logic;
        reset           : in     vl_logic;
        test_pulse      : in     vl_logic;
        pulse_clk_sync  : out    vl_logic;
        pulse_sync      : out    vl_logic
    );
end synclogic;
