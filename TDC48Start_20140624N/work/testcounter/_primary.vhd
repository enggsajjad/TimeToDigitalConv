library verilog;
use verilog.vl_types.all;
entity testcounter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        res_test        : in     vl_logic;
        startup         : in     vl_logic;
        tst_start_pulse : out    vl_logic;
        tst_stop_pulse  : out    vl_logic;
        testing         : out    vl_logic
    );
end testcounter;
