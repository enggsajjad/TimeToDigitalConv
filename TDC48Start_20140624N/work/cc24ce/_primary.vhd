library verilog;
use verilog.vl_types.all;
entity cc24ce is
    port(
        ce              : in     vl_logic;
        clk             : in     vl_logic;
        res             : in     vl_logic;
        co              : out    vl_logic;
        ovf24           : out    vl_logic;
        q               : out    vl_logic_vector(31 downto 0)
    );
end cc24ce;
