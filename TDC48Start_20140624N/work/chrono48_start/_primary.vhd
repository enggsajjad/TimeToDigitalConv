library verilog;
use verilog.vl_types.all;
entity chrono48_start is
    port(
        clk             : in     vl_logic;
        rx_pc           : in     vl_logic;
        rx_pr           : in     vl_logic;
        start_pulse     : in     vl_logic;
        rx_uc           : in     vl_logic;
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        cmd_rst_dac     : out    vl_logic;
        cmd_reset       : out    vl_logic;
        startout1       : out    vl_logic;
        startout2       : out    vl_logic;
        clkout1         : out    vl_logic;
        clkout2         : out    vl_logic;
        cmd_inc_dac     : out    vl_logic;
        tst_stop_pulse  : out    vl_logic;
        cmd_dev_sel     : out    vl_logic;
        tx_pc           : out    vl_logic;
        dacout          : out    vl_logic;
        tx_pr           : out    vl_logic;
        tx_uc           : out    vl_logic;
        cmd_rst_test    : out    vl_logic;
        intr            : out    vl_logic;
        dev_addr        : in     vl_logic_vector(2 downto 0)
    );
end chrono48_start;
