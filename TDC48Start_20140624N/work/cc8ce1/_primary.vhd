library verilog;
use verilog.vl_types.all;
entity cc8ce1 is
    port(
        c               : in     vl_logic;
        ce              : in     vl_logic;
        ci              : in     vl_logic;
        clr             : in     vl_logic;
        co              : out    vl_logic;
        c2              : out    vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end cc8ce1;
