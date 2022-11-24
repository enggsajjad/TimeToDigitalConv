library verilog;
use verilog.vl_types.all;
entity gen_sel_signals is
    port(
        addr            : in     vl_logic_vector(4 downto 0);
        sel_fpga_byte   : out    vl_logic;
        sel_ver_bytes   : out    vl_logic_vector(4 downto 0);
        sel_penc_byte   : out    vl_logic;
        sel_cntr_bytes  : out    vl_logic_vector(15 downto 0);
        sel_dac_byte    : out    vl_logic
    );
end gen_sel_signals;
