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
        SIGNAL cmd_dev_sel
        SIGNAL tx
        SIGNAL rx
        SIGNAL pkt_addr(4:0)
        SIGNAL rst
        SIGNAL sel_penc_byte
        SIGNAL sel_cntr_bytes(15:0)
        SIGNAL load(3:0)
        SIGNAL stop_pulses(3:0)
        SIGNAL teststop
        SIGNAL sel_ver_bytes(4:1)
        SIGNAL XLXN_76(39:0)
        SIGNAL sel_fpga_byte
        SIGNAL sel_ver_bytes(4:0)
        SIGNAL enb
        SIGNAL cmd_read
        SIGNAL dout_byte(7:0)
        SIGNAL dout_byte_rdy
        SIGNAL intr
        SIGNAL tx_uc
        SIGNAL rx_uc
        SIGNAL uart_rdy
        SIGNAL DACout
        SIGNAL XLXN_60
        SIGNAL clk
        SIGNAL start_sync
        SIGNAL start_pulse_buf
        SIGNAL sel_ver_bytes(0)
        SIGNAL XLXN_180
        SIGNAL start_clk_sync
        SIGNAL start_sync_in
        SIGNAL XLXN_111
        SIGNAL cmd_rst_test
        SIGNAL dev_addr(3:0)
        PORT Output clk100mhz
        PORT Input stop_pulses(3:0)
        PORT Input teststop
        PORT Output tx_uc
        PORT Input rx_uc
        PORT Output DACout
        PORT Input clk
        PORT Input start_sync_in
        PORT Input dev_addr(3:0)
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
            TIMESTAMP 2014 7 16 4 5 21
            LINE N 64 -192 0 -192 
            LINE N 320 -192 384 -192 
            LINE N 64 -352 0 -352 
            LINE N 64 -240 0 -240 
            LINE N 320 -352 384 -352 
            RECTANGLE N 64 -384 320 -144 
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
            TIMESTAMP 2014 7 9 7 35 15
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
        BEGIN BLOCKDEF ibuf
            TIMESTAMP 2001 2 2 12 53 1
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF start_channel
            TIMESTAMP 2014 6 26 7 40 8
            LINE N 64 32 0 32 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -196 384 128 
            LINE N 64 -144 0 -144 
            LINE N 64 80 0 80 
            LINE N 384 -144 448 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -80 448 -80 
            LINE N 384 -16 448 -16 
        END BLOCKDEF
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
            PIN load(3:0) load(3:0)
            PIN ovf24_intr intr
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
            PIN load_reg(3:0) load(3:0)
            PIN stop_clk_sync(3:0)
            PIN ver_stop(39:0) XLXN_76(39:0)
        END BLOCK
        BEGIN BLOCK XLXI_101 priority_encoder
            PIN sel sel_penc_byte
            PIN dataIn(39:0) XLXN_76(39:0)
            PIN dataOutz(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_98 fpga_addr_out
            PIN sel sel_fpga_byte
            PIN din(7:0) dev_sel_byte(7:0)
            PIN dout(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_50 router
            PIN rx_uc rx_uc
            PIN dev_sel cmd_dev_sel
            PIN tx_uc tx_uc
            PIN tx tx
            PIN rx rx
        END BLOCK
        BEGIN BLOCK XLXI_97 gen_sel_signals
            PIN sel_fpga_byte sel_fpga_byte
            PIN sel_penc_byte sel_penc_byte
            PIN sel_dac_byte sel_dac_byte
            PIN sel_ver_bytes(4:0) sel_ver_bytes(4:0)
            PIN sel_cntr_bytes(15:0) sel_cntr_bytes(15:0)
            PIN addr(4:0) pkt_addr(4:0)
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
        BEGIN BLOCK XLXI_100 dac
            PIN clk clk25mhz
            PIN inc_dac cmd_inc_dac
            PIN rst_dac cmd_rst_dac
            PIN sel_dac sel_dac_byte
            PIN DACout XLXN_60
            PIN dac_val(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 obuf_f_24
            PIN I XLXN_60
            PIN O DACout
        END BLOCK
        BEGIN BLOCK Clock_Mul clk_mul
            PIN clk clk
            PIN clk4x clk100mhz
            PIN clkdiv clk25mhz
        END BLOCK
        BEGIN BLOCK XLXI_131 start_channel
            BEGIN ATTR RLOC_ORIGIN "R27C7"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_ver_bytes(0)
            PIN clk clk100mhz
            PIN reset cmd_reset
            PIN pulse start_pulse_buf
            PIN test_pulse XLXN_180
            PIN ver_out(39:0) XLXN_76(39:0)
            PIN pulse_sync start_sync
            PIN pulse_clk_sync start_clk_sync
        END BLOCK
        BEGIN BLOCK XLXI_10 ibuf
            PIN I start_sync_in
            PIN O start_pulse_buf
        END BLOCK
        BEGIN BLOCK XLXI_112 uart_baud
            PIN clk clk25mhz
            PIN rst rst
            PIN enable enb
        END BLOCK
        BEGIN BLOCK XLXI_115 gnd
            PIN G rst
        END BLOCK
        BEGIN BLOCK XLXI_111 inst_decoder
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
            PIN cmd_startup XLXN_111
            PIN pkt_addr(4:0) pkt_addr(4:0)
            PIN dev_sel_byte(7:0) dev_sel_byte(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
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
            WIRE 2624 1520 2736 1520
            WIRE 2736 1520 2896 1520
            WIRE 2736 1520 2736 1888
            WIRE 2704 1888 2736 1888
        END BRANCH
        IOMARKER 1728 1504 teststop R180 28
        IOMARKER 1712 1248 stop_pulses(3:0) R180 28
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
        BEGIN BRANCH intr
            WIRE 3120 1088 3152 1088
        END BRANCH
        BUSTAP 1600 1568 1696 1568
        BEGIN BRANCH sel_ver_bytes(4:0)
            WIRE 1600 1536 1600 1568
            WIRE 1600 1568 1600 2064
            WIRE 1600 2064 1600 2128
            BEGIN DISPLAY 1600 2128 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH load(3:0)
            WIRE 2368 1344 2528 1344
            WIRE 2528 1232 2704 1232
            WIRE 2528 1232 2528 1344
        END BRANCH
        BEGIN BRANCH start_clk_sync
            WIRE 1808 1440 1840 1440
            WIRE 1840 1440 1856 1440
            BEGIN DISPLAY 1840 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_50 384 2432 R0
        END INSTANCE
        BEGIN BRANCH tx_uc
            WIRE 768 2080 800 2080
        END BRANCH
        BEGIN BRANCH rx_uc
            WIRE 272 2080 384 2080
        END BRANCH
        BEGIN BRANCH cmd_dev_sel
            WIRE 288 2192 336 2192
            WIRE 336 2192 384 2192
            BEGIN DISPLAY 336 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 800 2080 tx_uc R0 28
        IOMARKER 272 2080 rx_uc R180 28
        BEGIN INSTANCE XLXI_97 336 1776 R0
        END INSTANCE
        BEGIN BRANCH sel_fpga_byte
            WIRE 736 1488 768 1488
            WIRE 768 1488 832 1488
            BEGIN DISPLAY 768 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_penc_byte
            WIRE 736 1552 768 1552
            WIRE 768 1552 816 1552
            BEGIN DISPLAY 768 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_dac_byte
            WIRE 736 1616 752 1616
            WIRE 752 1616 816 1616
            BEGIN DISPLAY 752 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_ver_bytes(4:0)
            WIRE 736 1680 832 1680
            WIRE 832 1680 928 1680
            BEGIN DISPLAY 832 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkt_addr(4:0)
            WIRE 256 1808 272 1808
            WIRE 272 1808 336 1808
            BEGIN DISPLAY 272 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_cntr_bytes(15:0)
            WIRE 736 1744 800 1744
            WIRE 800 1744 912 1744
            BEGIN DISPLAY 800 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_113 1232 336 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_114 1232 768 R0
        END INSTANCE
        BEGIN BRANCH clk25mhz
            WIRE 1184 112 1216 112
            WIRE 1216 112 1232 112
            BEGIN DISPLAY 1216 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1168 176 1200 176
            WIRE 1200 176 1232 176
            BEGIN DISPLAY 1200 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enb
            WIRE 1184 240 1216 240
            WIRE 1216 240 1232 240
            BEGIN DISPLAY 1216 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rx
            WIRE 1184 304 1216 304
            WIRE 1216 304 1232 304
            BEGIN DISPLAY 1216 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 1184 480 1216 480
            WIRE 1216 480 1232 480
            BEGIN DISPLAY 1216 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1200 544 1216 544
            WIRE 1216 544 1232 544
            BEGIN DISPLAY 1216 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enb
            WIRE 1184 608 1216 608
            WIRE 1216 608 1232 608
            BEGIN DISPLAY 1216 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_read
            WIRE 1168 672 1200 672
            WIRE 1200 672 1232 672
            BEGIN DISPLAY 1200 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 1168 736 1200 736
            WIRE 1200 736 1232 736
            BEGIN DISPLAY 1200 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH uart_rdy
            WIRE 1616 736 1632 736
            WIRE 1632 736 1680 736
            BEGIN DISPLAY 1632 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tx
            WIRE 1616 480 1632 480
            WIRE 1632 480 1680 480
            BEGIN DISPLAY 1632 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte(7:0)
            WIRE 1616 304 1664 304
            WIRE 1664 304 1696 304
            BEGIN DISPLAY 1664 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte_rdy
            WIRE 1616 112 1632 112
            WIRE 1632 112 1696 112
            BEGIN DISPLAY 1632 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_dac_byte
            WIRE 2336 688 2432 688
            WIRE 2432 688 2496 688
            BEGIN DISPLAY 2432 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DACout
            WIRE 3136 496 3184 496
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 2880 688 2960 688
            WIRE 2960 688 3168 688
            BEGIN DISPLAY 2960 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_100 2496 720 R0
        END INSTANCE
        BEGIN BRANCH clk25mhz
            WIRE 2368 496 2400 496
            WIRE 2400 496 2496 496
            BEGIN DISPLAY 2400 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_inc_dac
            WIRE 2368 560 2416 560
            WIRE 2416 560 2496 560
            BEGIN DISPLAY 2416 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_rst_dac
            WIRE 2336 624 2432 624
            WIRE 2432 624 2496 624
            BEGIN DISPLAY 2432 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_60
            WIRE 2880 496 2912 496
        END BRANCH
        INSTANCE XLXI_13 2912 528 R0
        BEGIN BRANCH clk
            WIRE 2144 240 2320 240
        END BRANCH
        BEGIN INSTANCE Clock_Mul 2320 336 R0
        END INSTANCE
        BEGIN BRANCH clk100mhz
            WIRE 2704 192 2704 240
            WIRE 2704 192 2720 192
            WIRE 2720 192 3040 192
            BEGIN DISPLAY 2720 192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 3136 208 TEXT 100MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 3144 316 TEXT 25MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2100 276 TEXT 25MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN BRANCH clk25mhz
            WIRE 2704 304 2720 304
            WIRE 2720 304 3040 304
            BEGIN DISPLAY 2720 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3184 496 DACout R0 28
        IOMARKER 2144 240 clk R180 28
        IOMARKER 3040 192 clk100mhz R0 28
        BEGIN INSTANCE XLXI_131 2256 2032 R0
            BEGIN DISPLAY 136 152 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        INSTANCE XLXI_10 1728 976 R0
        BEGIN BRANCH start_pulse_buf
            WIRE 2192 1888 2240 1888
            WIRE 2240 1888 2256 1888
            BEGIN DISPLAY 2240 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk100mhz
            WIRE 2208 1936 2240 1936
            WIRE 2240 1936 2256 1936
            BEGIN DISPLAY 2240 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_reset
            WIRE 2192 2000 2224 2000
            WIRE 2224 2000 2256 2000
            BEGIN DISPLAY 2224 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_ver_bytes(0)
            WIRE 2192 2064 2240 2064
            WIRE 2240 2064 2256 2064
            BEGIN DISPLAY 2240 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_180
            WIRE 2176 2112 2256 2112
        END BRANCH
        BEGIN BRANCH start_sync
            WIRE 2704 1952 2736 1952
            WIRE 2736 1952 2800 1952
            BEGIN DISPLAY 2736 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_clk_sync
            WIRE 2704 2016 2752 2016
            WIRE 2752 2016 2816 2016
            BEGIN DISPLAY 2752 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1600 2064 2192 2064
        BEGIN BRANCH start_sync_in
            WIRE 1520 944 1664 944
            WIRE 1664 944 1728 944
            BEGIN DISPLAY 1664 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1520 944 start_sync_in R180 28
        BEGIN BRANCH start_pulse_buf
            WIRE 1952 944 1984 944
            WIRE 1984 944 2000 944
            WIRE 2000 944 2032 944
            BEGIN DISPLAY 2000 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tx
            WIRE 336 2240 352 2240
            WIRE 352 2240 384 2240
            BEGIN DISPLAY 352 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rx
            WIRE 768 2240 800 2240
            WIRE 800 2240 832 2240
            BEGIN DISPLAY 800 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_112 352 1296 R0
        END INSTANCE
        INSTANCE XLXI_115 208 1408 R0
        BEGIN BRANCH rst
            WIRE 272 1264 272 1280
            WIRE 272 1264 320 1264
            WIRE 320 1264 352 1264
            BEGIN DISPLAY 320 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 272 1200 320 1200
            WIRE 320 1200 352 1200
            BEGIN DISPLAY 320 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enb
            WIRE 736 1200 752 1200
            WIRE 752 1200 768 1200
            BEGIN DISPLAY 752 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_111 464 656 R0
        END INSTANCE
        BEGIN BRANCH dev_sel_byte(7:0)
            WIRE 864 624 912 624
            WIRE 912 624 960 624
            BEGIN DISPLAY 912 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkt_addr(4:0)
            WIRE 864 560 928 560
            WIRE 928 560 992 560
            BEGIN DISPLAY 928 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_111
            WIRE 864 496 928 496
        END BRANCH
        BEGIN BRANCH cmd_rst_test
            WIRE 864 432 896 432
            WIRE 896 432 928 432
            BEGIN DISPLAY 896 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_dev_sel
            WIRE 864 368 880 368
            WIRE 880 368 928 368
            BEGIN DISPLAY 880 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_read
            WIRE 864 304 880 304
            WIRE 880 304 928 304
            BEGIN DISPLAY 880 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_inc_dac
            WIRE 864 240 880 240
            WIRE 880 240 928 240
            BEGIN DISPLAY 880 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_rst_dac
            WIRE 864 176 880 176
            WIRE 880 176 928 176
            BEGIN DISPLAY 880 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cmd_reset
            WIRE 864 112 880 112
            WIRE 880 112 928 112
            BEGIN DISPLAY 880 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk25mhz
            WIRE 416 112 448 112
            WIRE 448 112 464 112
            BEGIN DISPLAY 448 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 416 240 448 240
            WIRE 448 240 464 240
            BEGIN DISPLAY 448 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte_rdy
            WIRE 416 368 448 368
            WIRE 448 368 464 368
            BEGIN DISPLAY 448 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_byte(7:0)
            WIRE 416 496 432 496
            WIRE 432 496 464 496
            BEGIN DISPLAY 432 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dev_addr(3:0)
            WIRE 368 592 448 592
            WIRE 448 592 464 592
            BEGIN DISPLAY 448 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 368 592 dev_addr(3:0) R180 28
    END SHEET
END SCHEMATIC
