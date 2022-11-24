library verilog;
use verilog.vl_types.all;
entity vernier_40_gates is
    port(
        logic0          : in     vl_logic;
        pulse_clk_sync  : in     vl_logic;
        pulse_sync      : in     vl_logic;
        reset           : in     vl_logic;
        sel_ver         : in     vl_logic;
        qout            : out    vl_logic_vector(39 downto 0)
    );
end vernier_40_gates;
