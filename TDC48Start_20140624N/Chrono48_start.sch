VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL cmd_rst_dac
        SIGNAL cmd_inc_dac
        SIGNAL dev_sel_byte(7:0)
        SIGNAL sel_dac_byte
        SIGNAL dout(7:0)
        SIGNAL clk100mhz
        SIGNAL cmd_reset
        SIGNAL start_pulse_buf
        SIGNAL start_sync
        SIGNAL clk25mhz
        SIGNAL start_pulse
        SIGNAL clk
        SIGNAL dev_addr(3:0)
        SIGNAL clkout1
        SIGNAL clkout2
        SIGNAL startout1
        SIGNAL startout2
        SIGNAL tst_start_pulse
        SIGNAL start_clk_sync
        SIGNAL intr
        SIGNAL XLXN_17
        SIGNAL cmd_startup
        SIGNAL cmd_dev_sel
        SIGNAL tx
        SIGNAL rx
        SIGNAL pkt_addr(4:0)
        SIGNAL cmd_rst_test
        SIGNAL DACout
        SIGNAL rst
        SIGNAL XLXN_60
        SIGNAL dout_byte(7:0)
        SIGNAL cmd_read
        SIGNAL enb
        SIGNAL dout_byte_rdy
        SIGNAL sel_fpga_byte
        SIGNAL rx_pc
        SIGNAL uart_rdy
        SIGNAL XLXN_154
        SIGNAL testing
        SIGNAL tst_stop_pulse
        SIGNAL XLXN_170
        SIGNAL XLXN_172
        SIGNAL XLXN_173
        SIGNAL cmd_dev_sel1
        SIGNAL tx_pr
        SIGNAL tx_pc
        SIGNAL tx_stop
        SIGNAL rx_uc
        SIGNAL rx_pr
        SIGNAL rx_stop
        SIGNAL sel0
        SIGNAL sel1
        SIGNAL tx_uc
        PORT Input start_pulse
        PORT Input clk
        PORT Input dev_addr(3:0)
        PORT Output clkout1
        PORT Output clkout2
        PORT Output startout1
        PORT Output startout2
        PORT Output intr
        PORT Output DACout
        PORT Input rx_pc
        PORT Output tst_stop_pulse
        PORT Output cmd_dev_sel1
        PORT Output tx_pr
        PORT Output tx_pc
        PORT Output tx_stop
        PORT Input rx_uc
        PORT Input rx_pr
        PORT Input rx_stop
        PORT Input sel0
        PORT Input sel1
        PORT Output tx_uc
        BEGIN BLOCKDEF obuf_f_24
            TIMESTAMP 2001 2 2 12 53 1
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF clk_mul
            TIMESTAMP 2009 7 30 4 8 42
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf
            TIMESTAMP 2001 2 2 12 53 1
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ibuf
            TIMESTAMP 2001 2 2 12 53 1
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF testcounter
            TIMESTAMP 2014 6 26 6 7 38
            LINE N 64 -96 0 -96 
            LINE N 320 16 384 16 
            LINE N 64 -64 0 -64 
            RECTANGLE N 64 -128 320 48 
            LINE N 320 -96 384 -96 
            LINE N 320 -64 384 -64 
            LINE N 64 16 0 16 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF router
            TIMESTAMP 2014 7 16 3 54 23
            RECTANGLE N 64 -512 320 0 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -480 384 -480 
            LINE N 320 -368 384 -368 
            LINE N 320 -256 384 -256 
            LINE N 320 -144 384 -144 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2001 2 2 12 52 44
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF gen_sel_signals
            TIMESTAMP 2014 6 26 3 47 52
            LINE N 64 32 0 32 
            RECTANGLE N 0 20 64 44 
            LINE N 336 -288 400 -288 
            LINE N 336 -224 400 -224 
            LINE N 336 -160 400 -160 
            LINE N 336 -96 400 -96 
            RECTANGLE N 336 -108 400 -84 
            LINE N 336 -32 400 -32 
            RECTANGLE N 336 -44 400 -20 
            RECTANGLE N 64 -320 336 64 
        END BLOCKDEF
        BEGIN BLOCKDEF fpga_addr_out
            TIMESTAMP 2014 6 26 4 13 33
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF dac
            TIMESTAMP 2014 6 26 6 16 26
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF counter32bit
            TIMESTAMP 2014 6 26 6 31 5
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF inst_decoder
            TIMESTAMP 2014 7 15 9 49 22
            RECTANGLE N 64 -576 336 0 
            LINE N 64 -544 0 -544 
            LINE N 64 -416 0 -416 
            LINE N 64 -288 0 -288 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 336 -544 400 -544 
            LINE N 336 -480 400 -480 
            LINE N 336 -416 400 -416 
            LINE N 336 -352 400 -352 
            LINE N 336 -288 400 -288 
            LINE N 336 -224 400 -224 
            LINE N 336 -160 400 -160 
            LINE N 336 -96 400 -96 
            RECTANGLE N 336 -108 400 -84 
            LINE N 336 -32 400 -32 
            RECTANGLE N 336 -44 400 -20 
            LINE N 64 -64 0 -64 
            RECTANGLE N 0 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF uart_baud
            TIMESTAMP 2014 7 1 7 33 25
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF uart_rx
            TIMESTAMP 2014 7 1 7 33 21
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF uart_tx
            TIMESTAMP 2014 7 1 7 33 18
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -288 384 -288 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF synclogic
            TIMESTAMP 2014 6 26 6 53 31
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2001 2 2 12 52 25
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 2 2 12 52 44
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK Clock_Mul clk_mul
            PIN clk clk
            PIN clk4x clk100mhz
            PIN clkdiv clk25mhz
        END BLOCK
        BEGIN BLOCK XLXI_55 obuf
            PIN I clk25mhz
            PIN O clkout2
        END BLOCK
        BEGIN BLOCK XLXI_54 obuf
            PIN I clk25mhz
            PIN O clkout1
        END BLOCK
        BEGIN BLOCK XLXI_89 obuf
            PIN I start_sync
            PIN O startout2
        END BLOCK
        BEGIN BLOCK XLXI_88 obuf
            PIN I start_sync
            PIN O startout1
        END BLOCK
        BEGIN BLOCK XLXI_10 ibuf
            PIN I start_pulse
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_95 or2
            PIN I0 tst_start_pulse
            PIN I1 XLXN_17
            PIN O start_pulse_buf
        END BLOCK
        BEGIN BLOCK XLXI_13 obuf_f_24
            PIN I XLXN_60
            PIN O DACout
        END BLOCK
        BEGIN BLOCK XLXI_100 dac
            PIN clk clk25mhz
            PIN inc_dac cmd_inc_dac
            PIN rst_dac cmd_rst_dac
            PIN sel_dac sel_dac_byte
            PIN DACout XLXN_60
            PIN dac_val(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_102 counter32bit
            PIN reset cmd_reset
            PIN clk clk100mhz
            PIN enb start_clk_sync
            PIN ovf24_intr intr
        END BLOCK
        BEGIN BLOCK XLXI_98 fpga_addr_out
            PIN sel sel_fpga_byte
            PIN din(7:0) dev_sel_byte(7:0)
            PIN dout(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_107 uart_baud
            PIN clk clk25mhz
            PIN rst rst
            PIN enable enb
        END BLOCK
        BEGIN BLOCK XLXI_110 gnd
            PIN G rst
        END BLOCK
        BEGIN BLOCK XLXI_108 uart_rx
            PIN clk clk25mhz
            PIN rst rst
            PIN enable enb
            PIN ser_in rx
            PIN dout_byte_rdy dout_byte_rdy
            PIN dout_byte(7:0) dout_byte(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_109 uart_tx
            PIN clk clk25mhz
            PIN rst rst
            PIN enable enb
            PIN din_rdy cmd_read
            PIN din_byte(7:0) dout(7:0)
            PIN ser_out tx
            PIN uart_ready uart_rdy
        END BLOCK
        BEGIN BLOCK XLXI_106 inst_decoder
            PIN clk clk25mhz
            PIN res rst
            PIN din_rdy dout_byte_rdy
            PIN din(7:0) dout_byte(7:0)
            PIN dev_addr(3:0) dev_addr(3:0)
            PIN cmd_reset cmd_reset
            PIN cmd_rst_dac cmd_rst_dac
            PIN cmd_inc_dac cmd_inc_dac
            PIN cmd_read cmd_read
            PIN cmd_dev_sel cmd_dev_sel
            PIN cmd_rst_test cmd_rst_test
            PIN cmd_startup cmd_startup
            PIN pkt_addr(4:0) pkt_addr(4:0)
            PIN dev_sel_byte(7:0) dev_sel_byte(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_120 synclogic
            BEGIN ATTR RLOC_ORIGIN "R27C7"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN clk clk100mhz
            PIN reset cmd_reset
            PIN pulse start_pulse_buf
            PIN test_pulse XLXN_154
            PIN pulse_sync start_sync
            PIN pulse_clk_sync start_clk_sync
        END BLOCK
        BEGIN BLOCK XLXI_85 testcounter
            PIN clk clk25mhz
            PIN reset cmd_reset
            PIN testing testing
            PIN tst_start_pulse tst_start_pulse
            PIN tst_stop_pulse XLXN_172
            PIN startup cmd_startup
            PIN res_test cmd_rst_test
        END BLOCK
        BEGIN BLOCK XLXI_122 synclogic
            PIN clk clk100mhz
            PIN reset cmd_reset
            PIN pulse XLXN_172
            PIN test_pulse
            PIN pulse_sync XLXN_170
            PIN pulse_clk_sync
        END BLOCK
        BEGIN BLOCK XLXI_123 obuf
            PIN I XLXN_170
            PIN O tst_stop_pulse
        END BLOCK
        BEGIN BLOCK XLXI_4 fdc
            PIN C cmd_dev_sel
            PIN CLR rst
            PIN D XLXN_173
            PIN Q cmd_dev_sel1
        END BLOCK
        BEGIN BLOCK XLXI_125 vcc
            PIN P XLXN_173
        END BLOCK
        BEGIN BLOCK XLXI_50 router
            PIN rx_pc rx_pc
            PIN rx_uc rx_uc
            PIN rx_pr rx_pr
            PIN tx tx
            PIN rx_stop rx_stop
            PIN sel0 sel0
            PIN sel1 sel1
            PIN dev_sel cmd_dev_sel
            PIN rx rx
            PIN tx_pc tx_pc
            PIN tx_uc tx_uc
            PIN tx_pr tx_pr
            PIN tx_stop tx_stop
        END BLOCK
        BEGIN BLOCK XLXI_97 gen_sel_signals
            PIN sel_fpga_byte sel_fpga_byte
            PIN sel_penc_byte
            PIN sel_dac_byte sel_dac_byte
            PIN sel_ver_bytes(4:0)
            PIN sel_cntr_bytes(15:0)
            PIN addr(4:0) pkt_addr(4:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH cmd_reset
            WIRE 2656 736 2736 736
            WIRE 2736 736 2832 736
            BEGIN DISPLAY 2736 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk100mhz
            WIRE 2672 800 2720 800
            WIRE 2720 800 2832 800
            BEGIN DISPLAY 2720 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_clk_sync
            WIRE 2672 864 2720 864
            WIRE 2720 864 2832 864
            BEGIN DISPLAY 2720 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH intr
            WIRE 3216 736 3376 736
        END BRANCH
        IOMARKER 3376 736 intr R0 28
        BEGIN BRANCH sel_dac_byte
            WIRE 2464 2336 2560 2336
            WIRE 2560 2336 2624 2336
            BEGIN DISPLAY 2560 2336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1984 1360 2160 1360
        END BRANCH
        BEGIN INSTANCE Clock_Mul 2160 1456 R0
        END INSTANCE
        BEGIN BRANCH clk100mhz
            WIRE 2544 1312 2544 1360
            WIRE 2544 1312 2560 1312
            WIRE 2560 1312 2880 1312
            BEGIN DISPLAY 2560 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 2544 1424 2560 1424
            WIRE 2560 1424 2688 1424
            WIRE 2688 1424 2880 1424
            WIRE 2688 1088 2832 1088
            WIRE 2688 1088 2688 1168
            WIRE 2688 1168 2848 1168
            WIRE 2688 1168 2688 1424
            BEGIN DISPLAY 2560 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkout1
            WIRE 3056 1088 3104 1088
        END BRANCH
        BEGIN BRANCH clkout2
            WIRE 3072 1168 3104 1168
        END BRANCH
        INSTANCE XLXI_55 2848 1200 R0
        INSTANCE XLXI_54 2832 1120 R0
        BEGIN DISPLAY 3224 1168 TEXT "Clock For Next FPGA"
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 3228 1080 TEXT "Clock For Next Board"
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2976 1328 TEXT 100MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2984 1436 TEXT 25MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 1940 1396 TEXT 25MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN BRANCH startout2
            WIRE 2816 1680 2832 1680
            WIRE 2832 1680 2912 1680
            BEGIN DISPLAY 2832 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH startout1
            WIRE 2784 1536 2848 1536
            WIRE 2848 1536 2880 1536
            BEGIN DISPLAY 2848 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_89 2592 1712 R0
        INSTANCE XLXI_88 2560 1568 R0
        BEGIN BRANCH start_pulse
            WIRE 2192 1776 2288 1776
        END BRANCH
        BEGIN BRANCH start_pulse_buf
            WIRE 2848 1824 2912 1824
            WIRE 2912 1824 2992 1824
            BEGIN DISPLAY 2912 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_10 2288 1808 R0
        BEGIN BRANCH XLXN_17
            WIRE 2512 1776 2544 1776
            WIRE 2544 1776 2544 1792
            WIRE 2544 1792 2592 1792
        END BRANCH
        BEGIN BRANCH tst_start_pulse
            WIRE 2032 1856 2144 1856
            WIRE 2144 1856 2592 1856
            BEGIN DISPLAY 2144 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_95 2592 1920 R0
        IOMARKER 1984 1360 clk R180 28
        IOMARKER 3104 1168 clkout2 R0 28
        IOMARKER 3104 1088 clkout1 R0 28
        IOMARKER 2912 1680 startout2 R0 28
        IOMARKER 2880 1536 startout1 R0 28
        IOMARKER 2192 1776 start_pulse R180 28
        BEGIN BRANCH DACout
            WIRE 3264 2144 3312 2144
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 3008 2336 3088 2336
            WIRE 3088 2336 3296 2336
            BEGIN DISPLAY 3088 2336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_100 2624 2368 R0
        END INSTANCE
        BEGIN BRANCH clk25mhz
            WIRE 2496 2144 2528 2144
            WIRE 2528 2144 2624 2144
            BEGIN DISPLAY 2528 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_inc_dac
            WIRE 2496 2208 2544 2208
            WIRE 2544 2208 2624 2208
            BEGIN DISPLAY 2544 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_rst_dac
            WIRE 2464 2272 2560 2272
            WIRE 2560 2272 2624 2272
            BEGIN DISPLAY 2560 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_60
            WIRE 3008 2144 3040 2144
        END BRANCH
        INSTANCE XLXI_13 3040 2176 R0
        IOMARKER 3312 2144 DACout R0 28
        BEGIN INSTANCE XLXI_102 2832 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_98 288 2576 R0
        END INSTANCE
        BEGIN BRANCH dout(7:0)
            WIRE 672 2480 704 2480
            WIRE 704 2480 784 2480
            BEGIN DISPLAY 704 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_fpga_byte
            WIRE 144 2480 240 2480
            WIRE 240 2480 288 2480
            BEGIN DISPLAY 240 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_sel_byte(7:0)
            WIRE 128 2544 160 2544
            WIRE 160 2544 288 2544
            BEGIN DISPLAY 160 2544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_107 384 1056 R0
        END INSTANCE
        BEGIN BRANCH clk25mhz
            WIRE 320 960 368 960
            WIRE 368 960 384 960
            BEGIN DISPLAY 368 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_110 80 1152 R0
        BEGIN BRANCH rst
            WIRE 144 960 144 1024
            WIRE 144 960 176 960
            WIRE 176 960 176 1024
            WIRE 176 1024 288 1024
            WIRE 288 1024 384 1024
            BEGIN DISPLAY 288 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enb
            WIRE 768 960 784 960
            WIRE 784 960 800 960
            BEGIN DISPLAY 784 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_108 1168 1648 R0
        END INSTANCE
        BEGIN BRANCH clk25mhz
            WIRE 1056 1424 1072 1424
            WIRE 1072 1424 1168 1424
            BEGIN DISPLAY 1072 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1072 1488 1120 1488
            WIRE 1120 1488 1168 1488
            BEGIN DISPLAY 1120 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enb
            WIRE 1072 1552 1104 1552
            WIRE 1104 1552 1168 1552
            BEGIN DISPLAY 1104 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rx
            WIRE 1072 1616 1136 1616
            WIRE 1136 1616 1168 1616
            BEGIN DISPLAY 1136 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte(7:0)
            WIRE 1552 1616 1584 1616
            WIRE 1584 1616 1632 1616
            BEGIN DISPLAY 1584 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte_rdy
            WIRE 1552 1424 1568 1424
            WIRE 1568 1424 1632 1424
            BEGIN DISPLAY 1568 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_109 1216 1232 R0
        END INSTANCE
        BEGIN BRANCH uart_rdy
            WIRE 1600 1200 1616 1200
            WIRE 1616 1200 1632 1200
            BEGIN DISPLAY 1616 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tx
            WIRE 1600 944 1616 944
            WIRE 1616 944 1648 944
            BEGIN DISPLAY 1616 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 1152 944 1184 944
            WIRE 1184 944 1216 944
            BEGIN DISPLAY 1184 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1152 1008 1200 1008
            WIRE 1200 1008 1216 1008
            BEGIN DISPLAY 1200 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enb
            WIRE 1152 1072 1184 1072
            WIRE 1184 1072 1216 1072
            BEGIN DISPLAY 1184 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_read
            WIRE 1152 1136 1184 1136
            WIRE 1184 1136 1216 1136
            BEGIN DISPLAY 1184 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 1152 1200 1184 1200
            WIRE 1184 1200 1216 1200
            BEGIN DISPLAY 1184 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkt_addr(4:0)
            WIRE 896 592 912 592
            WIRE 912 592 928 592
            BEGIN DISPLAY 912 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_read
            WIRE 896 336 912 336
            WIRE 912 336 928 336
            BEGIN DISPLAY 912 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_sel_byte(7:0)
            WIRE 896 656 912 656
            WIRE 912 656 928 656
            BEGIN DISPLAY 912 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_startup
            WIRE 896 528 912 528
            WIRE 912 528 928 528
            BEGIN DISPLAY 912 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_rst_test
            WIRE 896 464 912 464
            WIRE 912 464 928 464
            BEGIN DISPLAY 912 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_dev_sel
            WIRE 896 400 912 400
            WIRE 912 400 928 400
            BEGIN DISPLAY 912 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_inc_dac
            WIRE 896 272 912 272
            WIRE 912 272 928 272
            BEGIN DISPLAY 912 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_rst_dac
            WIRE 896 208 912 208
            WIRE 912 208 928 208
            BEGIN DISPLAY 912 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_reset
            WIRE 896 144 912 144
            WIRE 912 144 928 144
            BEGIN DISPLAY 912 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte(7:0)
            WIRE 432 528 480 528
            WIRE 480 528 496 528
            BEGIN DISPLAY 480 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte_rdy
            WIRE 464 400 480 400
            WIRE 480 400 496 400
            BEGIN DISPLAY 480 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 448 272 480 272
            WIRE 480 272 496 272
            BEGIN DISPLAY 480 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 448 144 480 144
            WIRE 480 144 496 144
            BEGIN DISPLAY 480 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_106 496 688 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_120 1248 544 R0
            BEGIN DISPLAY 92 24 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clk100mhz
            WIRE 1200 320 1232 320
            WIRE 1232 320 1248 320
            BEGIN DISPLAY 1232 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_pulse_buf
            WIRE 1200 448 1232 448
            WIRE 1232 448 1248 448
            BEGIN DISPLAY 1232 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_154
            WIRE 1200 512 1248 512
        END BRANCH
        BEGIN BRANCH start_clk_sync
            WIRE 1632 512 1648 512
            WIRE 1648 512 1680 512
            BEGIN DISPLAY 1648 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_sync
            WIRE 1632 320 1648 320
            WIRE 1648 320 1680 320
            BEGIN DISPLAY 1648 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_addr(3:0)
            WIRE 432 624 480 624
            WIRE 480 624 496 624
            BEGIN DISPLAY 480 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 432 624 dev_addr(3:0) R180 28
        BEGIN BRANCH start_sync
            WIRE 2288 1536 2368 1536
            WIRE 2368 1536 2528 1536
            WIRE 2528 1536 2560 1536
            WIRE 2528 1536 2528 1680
            WIRE 2528 1680 2592 1680
            BEGIN DISPLAY 2368 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_85 1040 2208 R0
        END INSTANCE
        BEGIN BRANCH cmd_reset
            WIRE 992 2144 1008 2144
            WIRE 1008 2144 1040 2144
            BEGIN DISPLAY 1008 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH testing
            WIRE 1424 2224 1440 2224
            WIRE 1440 2224 1456 2224
            BEGIN DISPLAY 1440 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_rst_test
            WIRE 992 2176 1008 2176
            WIRE 1008 2176 1040 2176
            BEGIN DISPLAY 1008 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_startup
            WIRE 992 2224 1008 2224
            WIRE 1008 2224 1040 2224
            BEGIN DISPLAY 1008 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 976 2112 992 2112
            WIRE 992 2112 1040 2112
            BEGIN DISPLAY 992 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tst_start_pulse
            WIRE 1424 2112 1488 2112
            WIRE 1488 2112 1504 2112
            BEGIN DISPLAY 1488 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_122 1648 2592 R0
        END INSTANCE
        BEGIN BRANCH clk100mhz
            WIRE 1600 2368 1632 2368
            WIRE 1632 2368 1648 2368
            BEGIN DISPLAY 1632 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_reset
            WIRE 1600 2432 1616 2432
            WIRE 1616 2432 1648 2432
            BEGIN DISPLAY 1616 2432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_172
            WIRE 1424 2144 1536 2144
            WIRE 1536 2144 1536 2496
            WIRE 1536 2496 1648 2496
        END BRANCH
        INSTANCE XLXI_123 2080 2512 R0
        BEGIN BRANCH XLXN_170
            WIRE 2032 2368 2048 2368
            WIRE 2048 2368 2048 2480
            WIRE 2048 2480 2080 2480
        END BRANCH
        BEGIN BRANCH tst_stop_pulse
            WIRE 2304 2480 2400 2480
        END BRANCH
        DISPLAY 2016 2344 TEXT test_stop_pulse_sync
        BEGIN BRANCH cmd_reset
            WIRE 1168 384 1200 384
            WIRE 1200 384 1248 384
            BEGIN DISPLAY 1200 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 2048 624 R0
        BEGIN BRANCH XLXN_173
            WIRE 1888 368 2048 368
        END BRANCH
        BEGIN BRANCH cmd_dev_sel
            WIRE 1888 496 1936 496
            WIRE 1936 496 2048 496
            BEGIN DISPLAY 1936 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1888 592 1936 592
            WIRE 1936 592 2048 592
            BEGIN DISPLAY 1936 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_dev_sel1
            WIRE 2432 368 2544 368
        END BRANCH
        IOMARKER 2544 368 cmd_dev_sel1 R0 28
        INSTANCE XLXI_125 1824 368 R0
        BEGIN INSTANCE XLXI_50 288 2208 R0
        END INSTANCE
        BEGIN BRANCH cmd_dev_sel
            WIRE 192 2176 240 2176
            WIRE 240 2176 288 2176
            BEGIN DISPLAY 240 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_97 256 1536 R0
        END INSTANCE
        BEGIN BRANCH sel_fpga_byte
            WIRE 656 1248 688 1248
            WIRE 688 1248 752 1248
            BEGIN DISPLAY 688 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_dac_byte
            WIRE 656 1376 672 1376
            WIRE 672 1376 736 1376
            BEGIN DISPLAY 672 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkt_addr(4:0)
            WIRE 176 1568 192 1568
            WIRE 192 1568 256 1568
            BEGIN DISPLAY 192 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rx
            WIRE 672 1728 704 1728
            WIRE 704 1728 736 1728
            BEGIN DISPLAY 704 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tx_pc
            WIRE 672 1840 720 1840
        END BRANCH
        IOMARKER 720 1840 tx_pc R0 28
        BEGIN BRANCH tx_stop
            WIRE 672 2176 704 2176
        END BRANCH
        IOMARKER 704 2176 tx_stop R0 28
        IOMARKER 208 1728 rx_pc R180 28
        BEGIN BRANCH rx_pc
            WIRE 208 1728 288 1728
        END BRANCH
        BEGIN BRANCH rx_uc
            WIRE 256 1792 288 1792
        END BRANCH
        IOMARKER 256 1792 rx_uc R180 28
        BEGIN BRANCH rx_pr
            WIRE 256 1856 288 1856
        END BRANCH
        IOMARKER 256 1856 rx_pr R180 28
        BEGIN BRANCH rx_stop
            WIRE 256 1984 288 1984
        END BRANCH
        IOMARKER 256 1984 rx_stop R180 28
        BEGIN BRANCH tx
            WIRE 208 1920 272 1920
            WIRE 272 1920 288 1920
            BEGIN DISPLAY 272 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel0
            WIRE 224 2048 288 2048
        END BRANCH
        IOMARKER 224 2048 sel0 R180 28
        BEGIN BRANCH sel1
            WIRE 240 2112 288 2112
        END BRANCH
        IOMARKER 240 2112 sel1 R180 28
        IOMARKER 768 2064 tx_pr R0 28
        BEGIN BRANCH tx_pr
            WIRE 672 2064 768 2064
        END BRANCH
        BEGIN BRANCH tx_uc
            WIRE 672 1952 704 1952
        END BRANCH
        IOMARKER 704 1952 tx_uc R0 28
        IOMARKER 2400 2480 tst_stop_pulse R0 28
    END SHEET
END SCHEMATIC
