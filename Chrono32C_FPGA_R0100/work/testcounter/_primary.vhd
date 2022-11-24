library verilog;
use verilog.vl_types.all;
entity testcounter is
    port(
        teststop        : out    vl_logic;
        teststart       : out    vl_logic;
        res_test        : in     vl_logic;
        clk             : in     vl_logic;
        fpga_addr       : in     vl_logic_vector(2 downto 0)
    );
end testcounter;
