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
        SIGNAL clk25mhz
        SIGNAL dev_addr(2:0)
        SIGNAL cmd_dev_sel
        SIGNAL tx
        SIGNAL rx
        SIGNAL pkt_addr(4:0)
        SIGNAL cmd_rst_test
        SIGNAL DACout
        SIGNAL rst
        SIGNAL sel_penc_byte
        SIGNAL XLXN_60
        SIGNAL clk
        SIGNAL sel_cntr_bytes(15:0)
        SIGNAL start_clk_sync
        SIGNAL XLXN_65(3:0)
        SIGNAL stop_pulses(3:0)
        SIGNAL teststop
        SIGNAL sel_ver_bytes(4:1)
        SIGNAL XLXN_76(39:0)
        SIGNAL sel_fpga_byte
        SIGNAL sel_ver_bytes(4:0)
        SIGNAL rx_uc
        SIGNAL tx_uc
        SIGNAL enb
        SIGNAL XLXN_111
        SIGNAL cmd_read
        SIGNAL uart_rdy
        SIGNAL dout_byte(7:0)
        SIGNAL dout_byte_rdy
        PORT Output cmd_rst_dac
        PORT Output cmd_inc_dac
        PORT Output cmd_reset
        PORT Input dev_addr(2:0)
        PORT Output cmd_dev_sel
        PORT Output cmd_rst_test
        PORT Output DACout
        PORT Input clk
        PORT Input start_clk_sync
        PORT Input stop_pulses(3:0)
        PORT Input teststop
        PORT Input rx_uc
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
        BEGIN BLOCKDEF router
            TIMESTAMP 2014 7 2 3 19 38
            RECTANGLE N 64 -384 320 36 
            LINE N 64 -304 0 -304 
            LINE N 64 -208 0 -208 
            LINE N 64 -64 0 -64 
            LINE N 320 -288 384 -288 
            LINE N 320 -144 384 -144 
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
        BEGIN BLOCKDEF priority_encoder
            TIMESTAMP 2014 6 26 6 26 8
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF maincount4channel
            TIMESTAMP 2014 6 26 12 12 9
            LINE N 352 -352 416 -352 
            RECTANGLE N 352 -364 416 -340 
            RECTANGLE N 64 -384 352 -56 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -240 0 -240 
            LINE N 64 -176 0 -176 
            RECTANGLE N 0 -188 64 -164 
            LINE N 64 -112 0 -112 
            RECTANGLE N 0 -124 64 -100 
            LINE N 352 -256 416 -256 
        END BLOCKDEF
        BEGIN BLOCKDEF four_stop_channels
            TIMESTAMP 2014 7 2 4 28 49
            LINE N 64 32 0 32 
            RECTANGLE N 0 20 64 44 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 448 -192 512 -192 
            RECTANGLE N 448 -204 512 -180 
            RECTANGLE N 64 -336 448 64 
            LINE N 448 -96 512 -96 
            RECTANGLE N 448 -108 512 -84 
            LINE N 448 -32 512 -32 
            RECTANGLE N 448 -44 512 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF inst_decoder
            TIMESTAMP 2014 7 1 8 52 18
            RECTANGLE N 64 -576 336 0 
            LINE N 64 -544 0 -544 
            LINE N 64 -416 0 -416 
            LINE N 64 -288 0 -288 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
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
        END BLOCKDEF
        BEGIN BLOCKDEF uart_baud
            TIMESTAMP 2014 7 1 8 52 2
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF uart_rx
            TIMESTAMP 2014 7 1 8 52 9
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
            TIMESTAMP 2014 7 1 8 52 11
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
        BEGIN BLOCK Clock_Mul clk_mul
            PIN clk clk
            PIN clk4x clk100mhz
            PIN clkdiv clk25mhz
        END BLOCK
        BEGIN BLOCK XLXI_103 maincount4channel
            BEGIN ATTR RLOC_ORIGIN "R5C26"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN count(7:0) dout(7:0)
            PIN reset cmd_reset
            PIN clk clk100mhz
            PIN start_sync start_clk_sync
            PIN sel_cntr_bytes(15:0) sel_cntr_bytes(15:0)
            PIN load(3:0) XLXN_65(3:0)
            PIN ovf24_intr
        END BLOCK
        BEGIN BLOCK XLXI_104 four_stop_channels
            BEGIN ATTR RLOC_ORIGIN "R8C3"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_vers(3:0) sel_ver_bytes(4:1)
            PIN start_pulse start_clk_sync
            PIN test_stop teststop
            PIN clk clk100mhz
            PIN reset cmd_reset
            PIN stop_pulses(3:0) stop_pulses(3:0)
            PIN load_reg(3:0) XLXN_65(3:0)
            PIN stop_clk_sync(3:0)
            PIN ver_stop(39:0) XLXN_76(39:0)
        END BLOCK
        BEGIN BLOCK XLXI_101 priority_encoder
            PIN sel sel_penc_byte
            PIN dataIn(39:0) XLXN_76(39:0)
            PIN dataOutz(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_97 gen_sel_signals
            PIN sel_fpga_byte sel_fpga_byte
            PIN sel_penc_byte sel_penc_byte
            PIN sel_dac_byte sel_dac_byte
            PIN sel_ver_bytes(4:0) sel_ver_bytes(4:0)
            PIN sel_cntr_bytes(15:0) sel_cntr_bytes(15:0)
            PIN addr(4:0) pkt_addr(4:0)
        END BLOCK
        BEGIN BLOCK XLXI_98 fpga_addr_out
            PIN sel sel_fpga_byte
            PIN din(7:0) dev_sel_byte(7:0)
            PIN dout(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_50 router
            PIN rx_uc rx_uc
            PIN rx_fpga tx
            PIN dev_sel cmd_dev_sel
            PIN tx_fpga rx
            PIN tx_uc tx_uc
        END BLOCK
        BEGIN BLOCK XLXI_111 inst_decoder
            PIN clk clk25mhz
            PIN res rst
            PIN din_rdy dout_byte_rdy
            PIN din(7:0) dout_byte(7:0)
            PIN dev_addr(2:0) dev_addr(2:0)
            PIN cmd_reset cmd_reset
            PIN cmd_rst_dac cmd_rst_dac
            PIN cmd_inc_dac cmd_inc_dac
            PIN cmd_read cmd_read
            PIN cmd_dev_sel cmd_dev_sel
            PIN cmd_rst_test cmd_rst_test
            PIN cmd_startup XLXN_111
            PIN pkt_addr(4:0) pkt_addr(4:0)
            PIN dev_sel_byte(7:0) dev_sel_byte(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_112 uart_baud
            PIN clk clk25mhz
            PIN rst rst
            PIN enable enb
        END BLOCK
        BEGIN BLOCK XLXI_113 uart_rx
            PIN clk clk25mhz
            PIN rst rst
            PIN enable enb
            PIN ser_in rx
            PIN dout_byte_rdy dout_byte_rdy
            PIN dout_byte(7:0) dout_byte(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_114 uart_tx
            PIN clk clk25mhz
            PIN rst rst
            PIN enable enb
            PIN din_rdy cmd_read
            PIN din_byte(7:0) dout(7:0)
            PIN ser_out tx
            PIN uart_ready uart_rdy
        END BLOCK
        BEGIN BLOCK XLXI_115 gnd
            PIN G rst
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH sel_dac_byte
            WIRE 2464 2336 2560 2336
            WIRE 2560 2336 2624 2336
            BEGIN DISPLAY 2560 2336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
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
        BEGIN BRANCH clk
            WIRE 2272 1888 2448 1888
        END BRANCH
        BEGIN INSTANCE Clock_Mul 2448 1984 R0
        END INSTANCE
        BEGIN BRANCH clk100mhz
            WIRE 2832 1840 2832 1888
            WIRE 2832 1840 2848 1840
            WIRE 2848 1840 3168 1840
            BEGIN DISPLAY 2848 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 3264 1856 TEXT 100MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 3272 1964 TEXT 25MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2228 1924 TEXT 25MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN BRANCH clk25mhz
            WIRE 2832 1952 2848 1952
            WIRE 2848 1952 3168 1952
            BEGIN DISPLAY 2848 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2272 1888 clk R180 28
        BEGIN INSTANCE XLXI_103 2704 1344 R0
            BEGIN DISPLAY 68 -24 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_104 1856 1536 R0
            BEGIN DISPLAY 140 112 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH cmd_reset
            WIRE 2576 992 2640 992
            WIRE 2640 992 2704 992
            BEGIN DISPLAY 2640 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk100mhz
            WIRE 2592 1056 2624 1056
            WIRE 2624 1056 2704 1056
            BEGIN DISPLAY 2624 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_clk_sync
            WIRE 2592 1104 2608 1104
            WIRE 2608 1104 2704 1104
            BEGIN DISPLAY 2608 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_cntr_bytes(15:0)
            WIRE 2608 1168 2640 1168
            WIRE 2640 1168 2704 1168
            BEGIN DISPLAY 2640 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_65(3:0)
            WIRE 2368 1344 2528 1344
            WIRE 2528 1232 2528 1344
            WIRE 2528 1232 2704 1232
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 3120 992 3200 992
            WIRE 3200 992 3232 992
            BEGIN DISPLAY 3200 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH stop_pulses(3:0)
            WIRE 1712 1248 1856 1248
        END BRANCH
        BEGIN BRANCH cmd_reset
            WIRE 1712 1312 1776 1312
            WIRE 1776 1312 1856 1312
            BEGIN DISPLAY 1776 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk100mhz
            WIRE 1744 1376 1760 1376
            WIRE 1760 1376 1856 1376
            BEGIN DISPLAY 1760 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_clk_sync
            WIRE 1744 1440 1856 1440
        END BRANCH
        BEGIN BRANCH teststop
            WIRE 1728 1504 1856 1504
        END BRANCH
        BEGIN BRANCH sel_ver_bytes(4:1)
            WIRE 1696 1568 1728 1568
            WIRE 1728 1568 1856 1568
            BEGIN DISPLAY 1728 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_101 2896 1552 R0
        END INSTANCE
        BEGIN BRANCH dout(7:0)
            WIRE 3280 1456 3312 1456
            WIRE 3312 1456 3376 1456
            BEGIN DISPLAY 3312 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_penc_byte
            WIRE 2736 1456 2800 1456
            WIRE 2800 1456 2896 1456
            BEGIN DISPLAY 2800 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_76(39:0)
            WIRE 2368 1504 2624 1504
            WIRE 2624 1504 2624 1520
            WIRE 2624 1520 2896 1520
        END BRANCH
        IOMARKER 1744 1440 start_clk_sync R180 28
        IOMARKER 1728 1504 teststop R180 28
        IOMARKER 1712 1248 stop_pulses(3:0) R180 28
        BEGIN INSTANCE XLXI_97 352 1504 R0
        END INSTANCE
        BEGIN BRANCH sel_fpga_byte
            WIRE 752 1216 784 1216
            WIRE 784 1216 848 1216
            BEGIN DISPLAY 784 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_penc_byte
            WIRE 752 1280 784 1280
            WIRE 784 1280 832 1280
            BEGIN DISPLAY 784 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_dac_byte
            WIRE 752 1344 768 1344
            WIRE 768 1344 832 1344
            BEGIN DISPLAY 768 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_ver_bytes(4:0)
            WIRE 752 1408 848 1408
            WIRE 848 1408 944 1408
            BEGIN DISPLAY 848 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkt_addr(4:0)
            WIRE 272 1536 288 1536
            WIRE 288 1536 352 1536
            BEGIN DISPLAY 288 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_98 352 2592 R0
        END INSTANCE
        BEGIN BRANCH dout(7:0)
            WIRE 736 2496 768 2496
            WIRE 768 2496 848 2496
            BEGIN DISPLAY 768 2496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_fpga_byte
            WIRE 208 2496 304 2496
            WIRE 304 2496 352 2496
            BEGIN DISPLAY 304 2496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_sel_byte(7:0)
            WIRE 192 2560 224 2560
            WIRE 224 2560 352 2560
            BEGIN DISPLAY 224 2560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_50 416 2144 R0
        END INSTANCE
        BEGIN BRANCH rx_uc
            WIRE 384 1840 416 1840
        END BRANCH
        BEGIN BRANCH cmd_dev_sel
            WIRE 320 2080 368 2080
            WIRE 368 2080 416 2080
            BEGIN DISPLAY 368 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tx
            WIRE 368 1936 384 1936
            WIRE 384 1936 416 1936
            BEGIN DISPLAY 384 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tx_uc
            WIRE 800 1856 832 1856
        END BRANCH
        BEGIN BRANCH rx
            WIRE 800 2000 832 2000
            WIRE 832 2000 864 2000
            BEGIN DISPLAY 832 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_cntr_bytes(15:0)
            WIRE 752 1472 816 1472
            WIRE 816 1472 928 1472
            BEGIN DISPLAY 816 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 384 1840 rx_uc R180 28
        IOMARKER 832 1856 tx_uc R0 28
        BEGIN INSTANCE XLXI_111 1248 704 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_112 1248 960 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_113 2096 352 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_114 2096 784 R0
        END INSTANCE
        INSTANCE XLXI_115 1104 1072 R0
        BEGIN BRANCH rst
            WIRE 1168 928 1168 944
            WIRE 1168 928 1216 928
            WIRE 1216 928 1248 928
            BEGIN DISPLAY 1216 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 1168 864 1216 864
            WIRE 1216 864 1248 864
            BEGIN DISPLAY 1216 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enb
            WIRE 1632 864 1648 864
            WIRE 1648 864 1664 864
            BEGIN DISPLAY 1648 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_sel_byte(7:0)
            WIRE 1648 672 1696 672
            WIRE 1696 672 1744 672
            BEGIN DISPLAY 1696 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkt_addr(4:0)
            WIRE 1648 608 1712 608
            WIRE 1712 608 1776 608
            BEGIN DISPLAY 1712 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_111
            WIRE 1648 544 1712 544
        END BRANCH
        BEGIN BRANCH cmd_rst_test
            WIRE 1648 480 1680 480
            WIRE 1680 480 1712 480
            BEGIN DISPLAY 1680 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_dev_sel
            WIRE 1648 416 1664 416
            WIRE 1664 416 1712 416
            BEGIN DISPLAY 1664 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_read
            WIRE 1648 352 1664 352
            WIRE 1664 352 1712 352
            BEGIN DISPLAY 1664 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_inc_dac
            WIRE 1648 288 1664 288
            WIRE 1664 288 1712 288
            BEGIN DISPLAY 1664 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_rst_dac
            WIRE 1648 224 1664 224
            WIRE 1664 224 1712 224
            BEGIN DISPLAY 1664 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_reset
            WIRE 1648 160 1664 160
            WIRE 1664 160 1712 160
            BEGIN DISPLAY 1664 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 1200 160 1232 160
            WIRE 1232 160 1248 160
            BEGIN DISPLAY 1232 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1200 288 1232 288
            WIRE 1232 288 1248 288
            BEGIN DISPLAY 1232 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte_rdy
            WIRE 1200 416 1232 416
            WIRE 1232 416 1248 416
            BEGIN DISPLAY 1232 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte(7:0)
            WIRE 1200 544 1216 544
            WIRE 1216 544 1248 544
            BEGIN DISPLAY 1216 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_addr(2:0)
            WIRE 1184 672 1232 672
            WIRE 1232 672 1248 672
            BEGIN DISPLAY 1232 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 2048 128 2080 128
            WIRE 2080 128 2096 128
            BEGIN DISPLAY 2080 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2032 192 2064 192
            WIRE 2064 192 2096 192
            BEGIN DISPLAY 2064 192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enb
            WIRE 2048 256 2080 256
            WIRE 2080 256 2096 256
            BEGIN DISPLAY 2080 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rx
            WIRE 2048 320 2080 320
            WIRE 2080 320 2096 320
            BEGIN DISPLAY 2080 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 2048 496 2080 496
            WIRE 2080 496 2096 496
            BEGIN DISPLAY 2080 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2064 560 2080 560
            WIRE 2080 560 2096 560
            BEGIN DISPLAY 2080 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enb
            WIRE 2048 624 2080 624
            WIRE 2080 624 2096 624
            BEGIN DISPLAY 2080 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_read
            WIRE 2032 688 2064 688
            WIRE 2064 688 2096 688
            BEGIN DISPLAY 2064 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 2032 752 2064 752
            WIRE 2064 752 2096 752
            BEGIN DISPLAY 2064 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH uart_rdy
            WIRE 2480 752 2496 752
            WIRE 2496 752 2544 752
            BEGIN DISPLAY 2496 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tx
            WIRE 2480 496 2496 496
            WIRE 2496 496 2544 496
            BEGIN DISPLAY 2496 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte(7:0)
            WIRE 2480 320 2528 320
            WIRE 2528 320 2560 320
            BEGIN DISPLAY 2528 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte_rdy
            WIRE 2480 128 2496 128
            WIRE 2496 128 2560 128
            BEGIN DISPLAY 2496 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1712 160 cmd_reset R0 28
        IOMARKER 1712 224 cmd_rst_dac R0 28
        IOMARKER 1712 288 cmd_inc_dac R0 28
        IOMARKER 1712 416 cmd_dev_sel R0 28
        IOMARKER 1712 480 cmd_rst_test R0 28
        IOMARKER 1184 672 dev_addr(2:0) R180 28
    END SHEET
END SCHEMATIC
