library verilog;
use verilog.vl_types.all;
entity dac is
    port(
        clk             : in     vl_logic;
        inc_dac         : in     vl_logic;
        rst_dac         : in     vl_logic;
        sel_dac         : in     vl_logic;
        dacout          : out    vl_logic;
        dac_val         : out    vl_logic_vector(7 downto 0)
    );
end dac;
