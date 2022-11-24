library verilog;
use verilog.vl_types.all;
entity sel_vernier is
    port(
        vin             : in     vl_logic_vector(39 downto 0);
        sel_ver         : in     vl_logic;
        vout            : out    vl_logic_vector(39 downto 0)
    );
end sel_vernier;
