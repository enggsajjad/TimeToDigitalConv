library verilog;
use verilog.vl_types.all;
entity router is
    port(
        rx_pc           : in     vl_logic;
        rx_uc           : in     vl_logic;
        rx_pr           : in     vl_logic;
        rx_fpga         : in     vl_logic;
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        tx_fpga         : out    vl_logic;
        tx_pc           : out    vl_logic;
        tx_uc           : out    vl_logic;
        tx_pr           : out    vl_logic;
        dev_sel         : in     vl_logic;
        dev_addr        : in     vl_logic_vector(2 downto 0)
    );
end router;
