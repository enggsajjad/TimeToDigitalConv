VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL resdac
        SIGNAL loaddac1
        SIGNAL loaddac2
        SIGNAL d(7:0)
        SIGNAL sel_dac1
        SIGNAL sel_dac2
        SIGNAL sel_pencoder
        SIGNAL sel_fpga
        SIGNAL sel_ver(8:0)
        SIGNAL dout(7:0)
        SIGNAL clk2x
        SIGNAL reset
        SIGNAL sel_cntr_tbuf(31:0)
        SIGNAL stop_pulse_buf(7:0)
        SIGNAL start_pulse_buf
        SIGNAL StartSync
        SIGNAL clkdiv
        SIGNAL stop_pulses(7:0)
        SIGNAL start_pulse
        SIGNAL clk
        SIGNAL rx_pr
        SIGNAL sel1
        SIGNAL sel0
        SIGNAL rx_uc
        SIGNAL rx_pc
        SIGNAL fpgasel(2:0)
        SIGNAL tx_pr
        SIGNAL tx_uc
        SIGNAL tx_pc
        SIGNAL clkout1
        SIGNAL clkout2
        SIGNAL startout1
        SIGNAL startout2
        SIGNAL teststart
        SIGNAL teststop
        SIGNAL StopSync(7:0)
        SIGNAL intr
        SIGNAL DAC2_start
        SIGNAL DAC1_stop
        SIGNAL start_clksync
        SIGNAL XLXN_19(7:0)
        SIGNAL XLXN_12(39:0)
        SIGNAL sel_ver(8:1)
        SIGNAL sel_ver(0)
        PORT Input stop_pulses(7:0)
        PORT Input start_pulse
        PORT Input clk
        PORT Input rx_pr
        PORT Input sel1
        PORT Input sel0
        PORT Input rx_uc
        PORT Input rx_pc
        PORT Input fpgasel(2:0)
        PORT Output tx_pr
        PORT Output tx_uc
        PORT Output tx_pc
        PORT Output clkout1
        PORT Output clkout2
        PORT Output startout1
        PORT Output startout2
        PORT Output intr
        PORT Output DAC2_start
        PORT Output DAC1_stop
        BEGIN BLOCKDEF control_unit
            TIMESTAMP 2011 3 8 6 9 12
            LINE N 320 160 384 160 
            LINE N 320 32 384 32 
            LINE N 320 96 384 96 
            LINE N 64 -1440 0 -1440 
            RECTANGLE N 0 -1452 64 -1428 
            LINE N 64 -1312 0 -1312 
            RECTANGLE N 0 -1324 64 -1300 
            LINE N 64 -1184 0 -1184 
            LINE N 64 -1056 0 -1056 
            LINE N 64 -928 0 -928 
            LINE N 64 -800 0 -800 
            LINE N 64 -672 0 -672 
            LINE N 64 -544 0 -544 
            LINE N 64 -416 0 -416 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -32 0 -32 
            LINE N 320 -1440 384 -1440 
            LINE N 320 -1376 384 -1376 
            LINE N 320 -1312 384 -1312 
            LINE N 320 -1248 384 -1248 
            RECTANGLE N 320 -1260 384 -1236 
            LINE N 320 -1120 384 -1120 
            LINE N 320 -1056 384 -1056 
            LINE N 320 -992 384 -992 
            LINE N 320 -928 384 -928 
            LINE N 320 -864 384 -864 
            LINE N 320 -800 384 -800 
            LINE N 320 -736 384 -736 
            LINE N 320 -672 384 -672 
            LINE N 320 -608 384 -608 
            RECTANGLE N 320 -620 384 -596 
            LINE N 320 -544 384 -544 
            LINE N 320 -480 384 -480 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
            RECTANGLE N 64 -1472 320 320 
        END BLOCKDEF
        BEGIN BLOCKDEF dacs
            TIMESTAMP 2011 3 4 10 31 10
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -192 384 -192 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -384 320 128 
        END BLOCKDEF
        BEGIN BLOCKDEF fpgaselout
            TIMESTAMP 2008 7 22 10 48 22
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF start_channel
            TIMESTAMP 2011 3 7 4 24 56
            LINE N 64 160 0 160 
            LINE N 384 96 448 96 
            LINE N 64 32 0 32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 384 -224 448 -224 
            RECTANGLE N 384 -236 448 -212 
            LINE N 384 -32 448 -32 
            RECTANGLE N 64 -256 384 256 
        END BLOCKDEF
        BEGIN BLOCKDEF maincount8channel
            TIMESTAMP 2011 3 7 11 5 54
            LINE N 352 32 416 32 
            LINE N 352 -160 416 -160 
            RECTANGLE N 352 -172 416 -148 
            LINE N 64 -368 0 -368 
            LINE N 64 -304 0 -304 
            LINE N 64 -240 0 -240 
            LINE N 64 -176 0 -176 
            RECTANGLE N 0 -188 64 -164 
            LINE N 64 -32 0 -32 
            LINE N 64 -112 0 -112 
            RECTANGLE N 0 -124 64 -100 
            RECTANGLE N 64 -384 352 64 
        END BLOCKDEF
        BEGIN BLOCKDEF pencoder40_binary
            TIMESTAMP 2007 6 4 11 23 40
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF eight_stop_channels
            TIMESTAMP 2011 3 7 7 25 18
            LINE N 64 32 0 32 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 512 -352 576 -352 
            RECTANGLE N 512 -364 576 -340 
            LINE N 512 -192 576 -192 
            RECTANGLE N 512 -204 576 -180 
            LINE N 512 -32 576 -32 
            RECTANGLE N 512 -44 576 -20 
            RECTANGLE N 64 -384 512 64 
        END BLOCKDEF
        BEGIN BLOCK Control_Unit1 control_unit
            PIN fpgasel(2:0) fpgasel(2:0)
            PIN rx_pc rx_pc
            PIN rx_uc rx_uc
            PIN sel0 sel0
            PIN sel1 sel1
            PIN rx_pr rx_pr
            PIN data_in(7:0) dout(7:0)
            PIN start_pulse start_pulse
            PIN stop_pulses(7:0) stop_pulses(7:0)
            PIN StartSync StartSync
            PIN clk clk
            PIN clkdiv clkdiv
            PIN reset reset
            PIN tx_pr tx_pr
            PIN tx_uc tx_uc
            PIN tx_pc tx_pc
            PIN d(7:0) d(7:0)
            PIN loaddac2 loaddac2
            PIN loaddac1 loaddac1
            PIN resdac resdac
            PIN sel_ver(8:0) sel_ver(8:0)
            PIN sel_fpga sel_fpga
            PIN sel_pencoder sel_pencoder
            PIN sel_counts(31:0) sel_cntr_tbuf(31:0)
            PIN sel_dac2 sel_dac2
            PIN sel_dac1 sel_dac1
            PIN teststart teststart
            PIN teststop teststop
            PIN stop_pulses_buf(7:0) stop_pulse_buf(7:0)
            PIN start_pulse_buf start_pulse_buf
            PIN startout2 startout2
            PIN startout1 startout1
            PIN clk2x clk2x
            PIN clkout1 clkout1
            PIN clkout2 clkout2
        END BLOCK
        BEGIN BLOCK FPGA_SEL fpgaselout
            PIN sel sel_fpga
            PIN din(7:0) d(7:0)
            PIN dout(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK DACS1 dacs
            PIN sel_dac2 sel_dac2
            PIN resdac resdac
            PIN loaddac2 loaddac2
            PIN clkdiv clkdiv
            PIN loaddac1 loaddac1
            PIN sel_dac1 sel_dac1
            PIN dout(7:0) dout(7:0)
            PIN DAC2_start DAC2_start
            PIN DAC1_stop DAC1_stop
        END BLOCK
        BEGIN BLOCK start_vernier start_channel
            BEGIN ATTR RLOC_ORIGIN "R27C7"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_ver(0)
            PIN start_pulse start_pulse_buf
            PIN clk clk2x
            PIN reset reset
            PIN ver_out_10bits(39:0) XLXN_12(39:0)
            PIN star_sync_out StartSync
            PIN start_clk_sync start_clksync
            PIN teststart
        END BLOCK
        BEGIN BLOCK Main_Reading maincount8channel
            BEGIN ATTR RLOC_ORIGIN "R5C26"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_cntr_tbuf(31:0) sel_cntr_tbuf(31:0)
            PIN sel_flag
            PIN reset reset
            PIN clk clk2x
            PIN startsynch start_clksync
            PIN load(7:0) XLXN_19(7:0)
            PIN count(7:0) dout(7:0)
            PIN ovf24_intr intr
        END BLOCK
        BEGIN BLOCK XLXI_28 pencoder40_binary
            PIN sel sel_pencoder
            PIN dataIn(39:0) XLXN_12(39:0)
            PIN dataOutz(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_29 eight_stop_channels
            BEGIN ATTR RLOC_ORIGIN "R8C3"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_vers_stop(7:0) sel_ver(8:1)
            PIN stop_pulses(7:0) stop_pulse_buf(7:0)
            PIN reset reset
            PIN clk clk2x
            PIN start_pulse start_clksync
            PIN ver_stop_10bits_out(39:0) XLXN_12(39:0)
            PIN PulseSyncOut(7:0) StopSync(7:0)
            PIN load_reg(7:0) XLXN_19(7:0)
            PIN test_stop teststop
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE Control_Unit1 528 1568 R0
        END INSTANCE
        BEGIN BRANCH resdac
            WIRE 912 128 976 128
            WIRE 976 128 1056 128
            BEGIN DISPLAY 976 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH loaddac1
            WIRE 912 192 976 192
            WIRE 976 192 1056 192
            BEGIN DISPLAY 976 192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH loaddac2
            WIRE 912 256 944 256
            WIRE 944 256 1056 256
            BEGIN DISPLAY 944 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(7:0)
            WIRE 912 320 992 320
            WIRE 992 320 1056 320
            BEGIN DISPLAY 992 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_dac1
            WIRE 912 1216 960 1216
            WIRE 960 1216 1072 1216
            BEGIN DISPLAY 960 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_dac2
            WIRE 912 1280 928 1280
            WIRE 928 1280 1072 1280
            BEGIN DISPLAY 928 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_pencoder
            WIRE 912 1408 944 1408
            WIRE 944 1408 1056 1408
            BEGIN DISPLAY 944 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_fpga
            WIRE 912 1472 960 1472
            WIRE 960 1472 1056 1472
            BEGIN DISPLAY 960 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_ver(8:0)
            WIRE 912 1536 976 1536
            WIRE 976 1536 1056 1536
            BEGIN DISPLAY 976 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_pulse_buf
            WIRE 912 896 944 896
            WIRE 944 896 1072 896
            BEGIN DISPLAY 944 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH stop_pulse_buf(7:0)
            WIRE 912 960 992 960
            WIRE 992 960 1072 960
            BEGIN DISPLAY 992 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_cntr_tbuf(31:0)
            WIRE 912 1344 992 1344
            WIRE 992 1344 1088 1344
            BEGIN DISPLAY 992 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk2x
            WIRE 912 1600 960 1600
            WIRE 960 1600 1024 1600
            BEGIN DISPLAY 960 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkdiv
            WIRE 912 1664 960 1664
            WIRE 960 1664 1024 1664
            BEGIN DISPLAY 960 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH StartSync
            WIRE 464 1536 480 1536
            WIRE 480 1536 528 1536
            BEGIN DISPLAY 480 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH stop_pulses(7:0)
            WIRE 464 1280 528 1280
        END BRANCH
        BEGIN BRANCH start_pulse
            WIRE 480 1152 528 1152
        END BRANCH
        BEGIN BRANCH clk
            WIRE 432 1024 528 1024
        END BRANCH
        BEGIN BRANCH rx_pr
            WIRE 464 896 528 896
        END BRANCH
        BEGIN BRANCH sel1
            WIRE 480 768 528 768
        END BRANCH
        BEGIN BRANCH sel0
            WIRE 464 640 528 640
        END BRANCH
        BEGIN BRANCH rx_uc
            WIRE 448 512 528 512
        END BRANCH
        BEGIN BRANCH rx_pc
            WIRE 464 384 528 384
        END BRANCH
        BEGIN BRANCH fpgasel(2:0)
            WIRE 208 256 528 256
        END BRANCH
        BEGIN BRANCH tx_pr
            WIRE 912 448 992 448
        END BRANCH
        BEGIN BRANCH tx_uc
            WIRE 912 512 992 512
        END BRANCH
        BEGIN BRANCH tx_pc
            WIRE 912 576 992 576
        END BRANCH
        BEGIN BRANCH clkout1
            WIRE 912 640 992 640
        END BRANCH
        BEGIN BRANCH clkout2
            WIRE 912 704 992 704
        END BRANCH
        BEGIN BRANCH startout1
            WIRE 912 768 992 768
        END BRANCH
        BEGIN BRANCH startout2
            WIRE 912 832 992 832
        END BRANCH
        BEGIN BRANCH teststart
            WIRE 912 1024 944 1024
            WIRE 944 1024 1024 1024
            BEGIN DISPLAY 944 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH teststop
            WIRE 912 1088 960 1088
            WIRE 960 1088 1024 1088
            BEGIN DISPLAY 960 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 400 128 432 128
            WIRE 432 128 528 128
            BEGIN DISPLAY 432 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH reset
            WIRE 912 1728 960 1728
            WIRE 960 1728 1024 1728
            BEGIN DISPLAY 960 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        DISPLAY 1092 444 TEXT "Transmit To PC"
        IOMARKER 464 384 rx_pc R180 28
        IOMARKER 448 512 rx_uc R180 28
        IOMARKER 464 640 sel0 R180 28
        IOMARKER 480 768 sel1 R180 28
        IOMARKER 464 896 rx_pr R180 28
        IOMARKER 480 1152 start_pulse R180 28
        IOMARKER 464 1280 stop_pulses(7:0) R180 28
        IOMARKER 992 448 tx_pr R0 28
        IOMARKER 992 512 tx_uc R0 28
        IOMARKER 992 576 tx_pc R0 28
        IOMARKER 992 640 clkout1 R0 28
        IOMARKER 992 704 clkout2 R0 28
        IOMARKER 992 768 startout1 R0 28
        IOMARKER 992 832 startout2 R0 28
        IOMARKER 208 256 fpgasel(2:0) R180 28
        BEGIN INSTANCE FPGA_SEL 1360 240 R0
        END INSTANCE
        BEGIN BRANCH dout(7:0)
            WIRE 1744 144 1824 144
            WIRE 1824 144 1888 144
            BEGIN DISPLAY 1824 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_fpga
            WIRE 1264 144 1296 144
            WIRE 1296 144 1360 144
            BEGIN DISPLAY 1296 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(7:0)
            WIRE 1264 208 1296 208
            WIRE 1296 208 1360 208
            BEGIN DISPLAY 1296 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE DACS1 496 2416 R0
        END INSTANCE
        BEGIN BRANCH sel_dac1
            WIRE 416 2384 448 2384
            WIRE 448 2384 496 2384
            BEGIN DISPLAY 448 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH loaddac1
            WIRE 416 2320 464 2320
            WIRE 464 2320 496 2320
            BEGIN DISPLAY 464 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkdiv
            WIRE 416 2256 432 2256
            WIRE 432 2256 496 2256
            BEGIN DISPLAY 432 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH loaddac2
            WIRE 416 2192 464 2192
            WIRE 464 2192 496 2192
            BEGIN DISPLAY 464 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH resdac
            WIRE 416 2128 448 2128
            WIRE 448 2128 496 2128
            BEGIN DISPLAY 448 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_dac2
            WIRE 416 2064 448 2064
            WIRE 448 2064 496 2064
            BEGIN DISPLAY 448 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 880 2064 912 2064
            WIRE 912 2064 960 2064
            BEGIN DISPLAY 912 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DAC2_start
            WIRE 880 2224 896 2224
            WIRE 896 2224 976 2224
            BEGIN DISPLAY 896 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DAC1_stop
            WIRE 880 2384 896 2384
            WIRE 896 2384 976 2384
            BEGIN DISPLAY 896 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 976 2384 DAC1_stop R0 28
        IOMARKER 976 2224 DAC2_start R0 28
        BEGIN INSTANCE start_vernier 2032 1264 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clk2x
            WIRE 1760 1168 1872 1168
            WIRE 1872 1168 2032 1168
            BEGIN DISPLAY 1872 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH reset
            WIRE 1760 1232 1872 1232
            WIRE 1872 1232 2032 1232
            BEGIN DISPLAY 1872 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_clksync
            WIRE 2480 1360 2624 1360
            BEGIN DISPLAY 2624 1360 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH StartSync
            WIRE 2480 1232 2496 1232
            WIRE 2496 1232 2496 1264
            WIRE 2496 1264 3008 1264
            WIRE 3008 1264 3328 1264
            WIRE 3328 1216 3328 1264
            BEGIN DISPLAY 3008 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_clksync
            WIRE 2672 1712 2704 1712
            WIRE 2704 1712 2736 1712
            BEGIN DISPLAY 2704 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE Main_Reading 2736 1952 R0
            BEGIN DISPLAY 76 -472 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH reset
            WIRE 2656 1584 2736 1584
            BEGIN DISPLAY 2656 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk2x
            WIRE 2640 1648 2656 1648
            WIRE 2656 1648 2736 1648
            BEGIN DISPLAY 2656 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 3152 1792 3216 1792
            WIRE 3216 1792 3280 1792
            BEGIN DISPLAY 3216 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_pulse_buf
            WIRE 1808 1104 1888 1104
            WIRE 1888 1104 2032 1104
            BEGIN DISPLAY 1888 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_19(7:0)
            WIRE 2384 1952 2480 1952
            WIRE 2480 1776 2736 1776
            WIRE 2480 1776 2480 1952
        END BRANCH
        BEGIN BRANCH XLXN_12(39:0)
            WIRE 2384 1632 2560 1632
            WIRE 2480 1040 2560 1040
            WIRE 2560 1040 2560 1632
            WIRE 2560 944 2720 944
            WIRE 2560 944 2560 1040
        END BRANCH
        BEGIN INSTANCE XLXI_28 2720 976 R0
        END INSTANCE
        BEGIN BRANCH sel_pencoder
            WIRE 2544 880 2608 880
            WIRE 2608 880 2720 880
            BEGIN DISPLAY 2608 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 3104 880 3216 880
            WIRE 3216 880 3296 880
            BEGIN DISPLAY 3216 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_29 1808 1984 R0
            BEGIN DISPLAY 0 -504 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clk2x
            WIRE 1760 1824 1808 1824
            BEGIN DISPLAY 1760 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BUSTAP 1568 1632 1664 1632
        BEGIN BRANCH sel_ver(8:1)
            WIRE 1664 1632 1696 1632
            WIRE 1696 1632 1808 1632
            BEGIN DISPLAY 1696 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH reset
            WIRE 1728 1760 1808 1760
            BEGIN DISPLAY 1728 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH stop_pulse_buf(7:0)
            WIRE 1456 1696 1552 1696
            WIRE 1552 1696 1808 1696
            BEGIN DISPLAY 1552 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_clksync
            WIRE 1728 1888 1744 1888
            WIRE 1744 1888 1808 1888
            BEGIN DISPLAY 1744 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_ver(8:0)
            WIRE 1440 1280 1456 1280
            WIRE 1456 1280 1568 1280
            WIRE 1568 1280 1568 1296
            WIRE 1568 1296 1568 1632
            WIRE 1568 1632 1568 1664
            BEGIN DISPLAY 1456 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1568 1296 1664 1296
        BEGIN BRANCH sel_ver(0)
            WIRE 1664 1296 2032 1296
        END BRANCH
        BEGIN BRANCH teststop
            WIRE 1424 2016 1536 2016
            WIRE 1536 2016 1808 2016
            BEGIN DISPLAY 1536 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH intr
            WIRE 3152 1984 3184 1984
        END BRANCH
        IOMARKER 3184 1984 intr R0 28
        BEGIN BRANCH sel_cntr_tbuf(31:0)
            WIRE 1728 2192 1776 2192
            WIRE 1776 2192 2656 2192
            WIRE 2656 1840 2736 1840
            WIRE 2656 1840 2656 2192
            BEGIN DISPLAY 1776 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH StopSync(7:0)
            WIRE 2384 1792 2384 1872
            WIRE 2384 1872 2560 1872
            WIRE 2560 1872 2560 2128
            WIRE 2560 2128 2880 2128
            WIRE 2880 2128 3168 2128
            BEGIN DISPLAY 2880 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 432 1024 clk R180 28
    END SHEET
END SCHEMATIC
