library verilog;
use verilog.vl_types.all;
entity ua_transmitter1 is
    generic(
        idle            : integer := 0;
        load_data       : integer := 1;
        wait_txdone     : integer := 2;
        shift           : integer := 3
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        enable          : in     vl_logic;
        din_rdy         : in     vl_logic;
        din_byte        : in     vl_logic_vector(7 downto 0);
        ser_out         : out    vl_logic;
        uart_ready      : out    vl_logic
    );
end ua_transmitter1;
