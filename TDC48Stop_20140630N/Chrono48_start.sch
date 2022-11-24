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
        SIGNAL sel_fpga_byte
        SIGNAL sel_ver_bytes(4:0)
        SIGNAL dout(7:0)
        SIGNAL clk100mhz
        SIGNAL cmd_reset
        SIGNAL clk25mhz
        SIGNAL dev_addr(2:0)
        SIGNAL cmd_startup
        SIGNAL cmd_dev_sel
        SIGNAL tx
        SIGNAL rx
        SIGNAL pkt_addr(4:0)
        SIGNAL cmd_rst_test
        SIGNAL DACout
        SIGNAL rst
        SIGNAL sel_penc_byte
        SIGNAL rx_uc
        SIGNAL tx_uc
        SIGNAL XLXN_60
        SIGNAL clk
        SIGNAL XLXN_65(3:0)
        SIGNAL stop_pulses(3:0)
        SIGNAL start_clk_sync
        SIGNAL teststop
        SIGNAL sel_ver_bytes(4:1)
        SIGNAL XLXN_76(39:0)
        SIGNAL sel_cntr_bytes(15:0)
        PORT Output cmd_rst_dac
        PORT Output cmd_inc_dac
        PORT Output cmd_reset
        PORT Input dev_addr(2:0)
        PORT Output cmd_dev_sel
        PORT Output cmd_rst_test
        PORT Output DACout
        PORT Input rx_uc
        PORT Output tx_uc
        PORT Input clk
        PORT Input stop_pulses(3:0)
        PORT Input start_clk_sync
        PORT Input teststop
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
        BEGIN BLOCKDEF ir_decoder
            TIMESTAMP 2014 6 25 12 18 13
            LINE N 352 -528 416 -528 
            LINE N 352 -464 416 -464 
            LINE N 352 -400 416 -400 
            LINE N 352 -336 416 -336 
            LINE N 352 -272 416 -272 
            LINE N 352 -208 416 -208 
            LINE N 352 -144 416 -144 
            RECTANGLE N 352 -156 416 -132 
            LINE N 352 -80 416 -80 
            RECTANGLE N 352 -92 416 -68 
            RECTANGLE N 96 -624 352 -56 
            LINE N 352 -576 416 -576 
            LINE N 96 -576 32 -576 
            LINE N 96 -448 32 -448 
            LINE N 96 -320 32 -320 
            LINE N 96 -192 32 -192 
            RECTANGLE N 32 -204 96 -180 
            LINE N 96 -112 32 -112 
            RECTANGLE N 32 -124 96 -100 
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
        BEGIN BLOCK XLXI_13 obuf_f_24
            PIN I XLXN_60
            PIN O DACout
        END BLOCK
        BEGIN BLOCK XLXI_43 gnd
            PIN G rst
        END BLOCK
        BEGIN BLOCK XLXI_41 ir_decoder
            PIN cmd_reset cmd_reset
            PIN cmd_rst_dac cmd_rst_dac
            PIN cmd_inc_dac cmd_inc_dac
            PIN cmd_dev_sel cmd_dev_sel
            PIN cmd_rst_test cmd_rst_test
            PIN cmd_startup cmd_startup
            PIN pkt_addr(4:0) pkt_addr(4:0)
            PIN dev_sel_byte(7:0) dev_sel_byte(7:0)
            PIN tx tx
            PIN clk clk25mhz
            PIN rst rst
            PIN rx rx
            PIN data_in(7:0) dout(7:0)
            PIN dev_addr(2:0) dev_addr(2:0)
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
        INSTANCE XLXI_43 96 352 R0
        BEGIN BRANCH tx
            WIRE 784 128 864 128
            WIRE 864 128 944 128
            BEGIN DISPLAY 864 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 160 208 160 224
            WIRE 160 208 336 208
            WIRE 336 208 336 256
            WIRE 336 256 400 256
        END BRANCH
        BEGIN BRANCH cmd_inc_dac
            WIRE 784 304 832 304
            WIRE 832 304 896 304
            BEGIN DISPLAY 832 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_rst_dac
            WIRE 784 240 800 240
            WIRE 800 240 880 240
            BEGIN DISPLAY 800 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkt_addr(4:0)
            WIRE 784 560 880 560
            WIRE 880 560 896 560
            BEGIN DISPLAY 880 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_rst_test
            WIRE 784 432 800 432
            WIRE 800 432 832 432
            BEGIN DISPLAY 800 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_startup
            WIRE 784 496 832 496
            BEGIN DISPLAY 832 496 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_reset
            WIRE 784 176 864 176
            WIRE 864 176 896 176
            BEGIN DISPLAY 864 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_dev_sel
            WIRE 784 368 896 368
            WIRE 896 368 928 368
            BEGIN DISPLAY 896 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_sel_byte(7:0)
            WIRE 784 624 896 624
            WIRE 896 624 912 624
            BEGIN DISPLAY 896 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_addr(2:0)
            WIRE 336 592 400 592
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 176 512 240 512
            WIRE 240 512 400 512
            BEGIN DISPLAY 240 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rx
            WIRE 336 384 352 384
            WIRE 352 384 400 384
            BEGIN DISPLAY 352 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 304 128 320 128
            WIRE 320 128 400 128
            BEGIN DISPLAY 320 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_41 368 704 R0
        END INSTANCE
        IOMARKER 336 592 dev_addr(2:0) R180 28
        BEGIN INSTANCE XLXI_97 448 1152 R0
        END INSTANCE
        BEGIN BRANCH sel_fpga_byte
            WIRE 848 864 880 864
            WIRE 880 864 944 864
            BEGIN DISPLAY 880 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_penc_byte
            WIRE 848 928 880 928
            WIRE 880 928 928 928
            BEGIN DISPLAY 880 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_dac_byte
            WIRE 848 992 864 992
            WIRE 864 992 928 992
            BEGIN DISPLAY 864 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_ver_bytes(4:0)
            WIRE 848 1056 944 1056
            WIRE 944 1056 1040 1056
            BEGIN DISPLAY 944 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkt_addr(4:0)
            WIRE 368 1184 384 1184
            WIRE 384 1184 448 1184
            BEGIN DISPLAY 384 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_98 448 2240 R0
        END INSTANCE
        BEGIN BRANCH dout(7:0)
            WIRE 832 2144 864 2144
            WIRE 864 2144 944 2144
            BEGIN DISPLAY 864 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_fpga_byte
            WIRE 304 2144 400 2144
            WIRE 400 2144 448 2144
            BEGIN DISPLAY 400 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_sel_byte(7:0)
            WIRE 288 2208 320 2208
            WIRE 320 2208 448 2208
            BEGIN DISPLAY 320 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_50 512 1792 R0
        END INSTANCE
        BEGIN BRANCH rx_uc
            WIRE 480 1488 512 1488
        END BRANCH
        IOMARKER 480 1488 rx_uc R180 28
        BEGIN BRANCH cmd_dev_sel
            WIRE 416 1728 464 1728
            WIRE 464 1728 512 1728
            BEGIN DISPLAY 464 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tx
            WIRE 464 1584 480 1584
            WIRE 480 1584 512 1584
            BEGIN DISPLAY 480 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tx_uc
            WIRE 896 1504 928 1504
        END BRANCH
        IOMARKER 928 1504 tx_uc R0 28
        BEGIN BRANCH rx
            WIRE 896 1648 928 1648
            WIRE 928 1648 960 1648
            BEGIN DISPLAY 928 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
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
        IOMARKER 896 176 cmd_reset R0 28
        IOMARKER 880 240 cmd_rst_dac R0 28
        IOMARKER 896 304 cmd_inc_dac R0 28
        IOMARKER 928 368 cmd_dev_sel R0 28
        IOMARKER 832 432 cmd_rst_test R0 28
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
        BEGIN INSTANCE XLXI_103 2272 1328 R0
            BEGIN DISPLAY -2 -504 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_104 1424 1520 R0
            BEGIN DISPLAY 0 -456 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH cmd_reset
            WIRE 2144 976 2208 976
            WIRE 2208 976 2272 976
            BEGIN DISPLAY 2208 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk100mhz
            WIRE 2160 1040 2192 1040
            WIRE 2192 1040 2272 1040
            BEGIN DISPLAY 2192 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_clk_sync
            WIRE 2160 1088 2176 1088
            WIRE 2176 1088 2272 1088
            BEGIN DISPLAY 2176 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_cntr_bytes(15:0)
            WIRE 2176 1152 2208 1152
            WIRE 2208 1152 2272 1152
            BEGIN DISPLAY 2208 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_65(3:0)
            WIRE 1936 1328 2096 1328
            WIRE 2096 1216 2096 1328
            WIRE 2096 1216 2272 1216
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 2688 976 2768 976
            WIRE 2768 976 2800 976
            BEGIN DISPLAY 2768 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH stop_pulses(3:0)
            WIRE 1280 1232 1424 1232
        END BRANCH
        BEGIN BRANCH cmd_reset
            WIRE 1280 1296 1344 1296
            WIRE 1344 1296 1424 1296
            BEGIN DISPLAY 1344 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk100mhz
            WIRE 1312 1360 1328 1360
            WIRE 1328 1360 1424 1360
            BEGIN DISPLAY 1328 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_clk_sync
            WIRE 1312 1424 1424 1424
        END BRANCH
        BEGIN BRANCH teststop
            WIRE 1296 1488 1424 1488
        END BRANCH
        BEGIN BRANCH sel_ver_bytes(4:1)
            WIRE 1264 1552 1296 1552
            WIRE 1296 1552 1424 1552
            BEGIN DISPLAY 1296 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_101 2464 1536 R0
        END INSTANCE
        BEGIN BRANCH dout(7:0)
            WIRE 2848 1440 2880 1440
            WIRE 2880 1440 2944 1440
            BEGIN DISPLAY 2880 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_penc_byte
            WIRE 2304 1440 2368 1440
            WIRE 2368 1440 2464 1440
            BEGIN DISPLAY 2368 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_76(39:0)
            WIRE 1936 1488 2192 1488
            WIRE 2192 1488 2192 1504
            WIRE 2192 1504 2464 1504
        END BRANCH
        IOMARKER 1312 1424 start_clk_sync R180 28
        IOMARKER 1296 1488 teststop R180 28
        IOMARKER 1280 1232 stop_pulses(3:0) R180 28
        BEGIN BRANCH sel_cntr_bytes(15:0)
            WIRE 848 1120 912 1120
            WIRE 912 1120 1024 1120
            BEGIN DISPLAY 912 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
