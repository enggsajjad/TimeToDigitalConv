library verilog;
use verilog.vl_types.all;
entity ildceline40 is
    port(
        din             : in     vl_logic_vector(39 downto 0);
        gbar            : in     vl_logic;
        ge              : in     vl_logic_vector(39 downto 0);
        reset           : in     vl_logic;
        qout            : out    vl_logic_vector(39 downto 0)
    );
end ildceline40;
