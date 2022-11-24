library verilog;
use verilog.vl_types.all;
entity drom is
    port(
        addr            : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        dout            : out    vl_logic_vector(31 downto 0)
    );
end drom;
