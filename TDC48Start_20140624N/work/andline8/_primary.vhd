library verilog;
use verilog.vl_types.all;
entity andline8 is
    port(
        vin             : in     vl_logic;
        vout            : out    vl_logic_vector(7 downto 0)
    );
end andline8;
