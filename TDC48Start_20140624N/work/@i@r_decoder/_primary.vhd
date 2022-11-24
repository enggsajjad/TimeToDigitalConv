library verilog;
use verilog.vl_types.all;
entity ir_decoder is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        rx              : in     vl_logic;
        cmd_rst_dac     : out    vl_logic;
        cmd_reset       : out    vl_logic;
        cmd_inc_dac     : out    vl_logic;
        cmd_dev_sel     : out    vl_logic;
        tx              : out    vl_logic;
        cmd_rst_test    : out    vl_logic;
        cmd_startup     : out    vl_logic;
        dev_addr        : in     vl_logic_vector(2 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        dev_sel_byte    : out    vl_logic_vector(7 downto 0);
        pkt_addr        : out    vl_logic_vector(4 downto 0)
    );
end ir_decoder;
