library verilog;
use verilog.vl_types.all;
entity priority_encoder is
    port(
        datain          : in     vl_logic_vector(39 downto 0);
        sel             : in     vl_logic;
        dataoutz        : out    vl_logic_vector(7 downto 0)
    );
end priority_encoder;
