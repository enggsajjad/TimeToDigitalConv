library verilog;
use verilog.vl_types.all;
entity cu_hmi is
    generic(
        idle            : integer := 0;
        check           : integer := 1;
        addrs           : integer := 2;
        cmd             : integer := 3;
        selfpga         : integer := 4;
        reset           : integer := 5;
        res_dac         : integer := 6;
        inc_dac1        : integer := 7;
        res_test        : integer := 9;
        read            : integer := 10;
        startup         : integer := 11
    );
    port(
        clk             : in     vl_logic;
        res             : in     vl_logic;
        din_rdy         : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        dev_addr        : in     vl_logic_vector(2 downto 0);
        cmd_reset       : out    vl_logic;
        cmd_rst_dac     : out    vl_logic;
        cmd_inc_dac     : out    vl_logic;
        cmd_read        : out    vl_logic;
        cmd_dev_sel     : out    vl_logic;
        cmd_rst_test    : out    vl_logic;
        cmd_startup     : out    vl_logic;
        pkt_addr        : out    vl_logic_vector(4 downto 0);
        dev_sel_byte    : out    vl_logic_vector(7 downto 0)
    );
end cu_hmi;
