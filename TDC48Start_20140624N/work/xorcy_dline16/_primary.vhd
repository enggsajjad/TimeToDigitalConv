library verilog;
use verilog.vl_types.all;
entity xorcy_dline16 is
    port(
        vin             : in     vl_logic;
        vout            : out    vl_logic_vector(15 downto 0)
    );
end xorcy_dline16;
