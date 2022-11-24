library verilog;
use verilog.vl_types.all;
entity top_drom is
    port(
        address         : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        sel_counters    : out    vl_logic_vector(15 downto 0);
        sel_dac1        : out    vl_logic;
        sel_fpgasel     : out    vl_logic;
        sel_pencoder    : out    vl_logic;
        sel_vers        : out    vl_logic_vector(4 downto 0)
    );
end top_drom;
