library verilog;
use verilog.vl_types.all;
entity fpga_addr_out is
    port(
        sel             : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        dout            : out    vl_logic_vector(7 downto 0)
    );
end fpga_addr_out;
