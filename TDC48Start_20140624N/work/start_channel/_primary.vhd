library verilog;
use verilog.vl_types.all;
entity start_channel is
    port(
        clk             : in     vl_logic;
        pulse           : in     vl_logic;
        reset           : in     vl_logic;
        sel_ver         : in     vl_logic;
        test_pulse      : in     vl_logic;
        pulse_clk_sync  : out    vl_logic;
        pulse_sync      : out    vl_logic;
        ver_out         : out    vl_logic_vector(39 downto 0)
    );
end start_channel;
