library verilog;
use verilog.vl_types.all;
entity select_out is
    port(
        sel_in          : in     vl_logic_vector(31 downto 0);
        sel_fpgasel     : out    vl_logic;
        sel_vers        : out    vl_logic_vector(4 downto 0);
        sel_counters    : out    vl_logic_vector(15 downto 0);
        sel_dac1        : out    vl_logic;
        sel_pencoder    : out    vl_logic
    );
end select_out;
