library verilog;
use verilog.vl_types.all;
entity ua_receiver is
    generic(
        idle            : integer := 0;
        start_bit       : integer := 1;
        data_bits       : integer := 2;
        stop_bit        : integer := 3;
        load            : integer := 4
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        enable          : in     vl_logic;
        ser_in          : in     vl_logic;
        dout_byte       : out    vl_logic_vector(7 downto 0);
        dout_byte_rdy   : out    vl_logic
    );
end ua_receiver;
