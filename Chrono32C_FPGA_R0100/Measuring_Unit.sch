VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk2x
        SIGNAL reset
        SIGNAL XLXN_12(39:0)
        SIGNAL start_clksync
        SIGNAL XLXN_19(7:0)
        SIGNAL dout(7:0)
        SIGNAL StopSync(7:0)
        SIGNAL start_pulse_buf
        SIGNAL sel_pencoder
        SIGNAL sel_cntr_tbuf(31:0)
        SIGNAL stop_pulses_buf(7:0)
        SIGNAL sel_ver(8:1)
        SIGNAL sel_ver(8:0)
        SIGNAL sel_ver(0)
        SIGNAL test_start
        SIGNAL test_stop
        SIGNAL intr
        SIGNAL StartSync
        PORT Input clk2x
        PORT Input reset
        PORT Output dout(7:0)
        PORT Output StopSync(7:0)
        PORT Input start_pulse_buf
        PORT Input sel_pencoder
        PORT Input sel_cntr_tbuf(31:0)
        PORT Input stop_pulses_buf(7:0)
        PORT Input sel_ver(8:0)
        PORT Input test_start
        PORT Input test_stop
        PORT Output intr
        PORT Output StartSync
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
        BEGIN BLOCKDEF pencoder40_binary
            TIMESTAMP 2007 6 4 11 23 40
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
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
            PIN teststart test_start
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
            PIN stop_pulses(7:0) stop_pulses_buf(7:0)
            PIN reset reset
            PIN clk clk2x
            PIN start_pulse start_clksync
            PIN ver_stop_10bits_out(39:0) XLXN_12(39:0)
            PIN PulseSyncOut(7:0) StopSync(7:0)
            PIN load_reg(7:0) XLXN_19(7:0)
            PIN test_stop test_stop
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE start_vernier 1072 1136 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clk2x
            WIRE 800 1040 1072 1040
        END BRANCH
        BEGIN BRANCH reset
            WIRE 800 1104 1072 1104
        END BRANCH
        BEGIN BRANCH start_clksync
            WIRE 1520 1232 1664 1232
            BEGIN DISPLAY 1664 1232 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH StartSync
            WIRE 1520 1104 1536 1104
            WIRE 1536 1104 1536 1136
            WIRE 1536 1136 2368 1136
            WIRE 2368 1088 2368 1136
        END BRANCH
        BEGIN BRANCH start_clksync
            WIRE 1712 1584 1744 1584
            WIRE 1744 1584 1776 1584
            BEGIN DISPLAY 1744 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE Main_Reading 1776 1824 R0
            BEGIN DISPLAY 76 -472 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH reset
            WIRE 1696 1456 1776 1456
            BEGIN DISPLAY 1696 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk2x
            WIRE 1680 1520 1696 1520
            WIRE 1696 1520 1776 1520
            BEGIN DISPLAY 1696 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 2192 1664 2256 1664
            WIRE 2256 1664 2320 1664
            BEGIN DISPLAY 2256 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2368 1088 StartSync R0 28
        BEGIN BRANCH start_pulse_buf
            WIRE 848 976 1072 976
        END BRANCH
        IOMARKER 848 976 start_pulse_buf R180 28
        IOMARKER 800 1040 clk2x R180 28
        IOMARKER 800 1104 reset R180 28
        BEGIN BRANCH XLXN_19(7:0)
            WIRE 1424 1824 1520 1824
            WIRE 1520 1648 1776 1648
            WIRE 1520 1648 1520 1824
        END BRANCH
        BEGIN BRANCH StopSync(7:0)
            WIRE 1424 1664 1424 1744
            WIRE 1424 1744 1600 1744
            WIRE 1600 1744 1600 1904
            WIRE 1600 1904 1760 1904
            WIRE 1760 1904 2560 1904
            BEGIN DISPLAY 1760 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_12(39:0)
            WIRE 1424 1504 1600 1504
            WIRE 1520 912 1600 912
            WIRE 1600 912 1600 1504
            WIRE 1600 816 1760 816
            WIRE 1600 816 1600 912
        END BRANCH
        BEGIN INSTANCE XLXI_28 1760 848 R0
        END INSTANCE
        BEGIN BRANCH sel_pencoder
            WIRE 1584 752 1760 752
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 2144 752 2480 752
        END BRANCH
        IOMARKER 1584 752 sel_pencoder R180 28
        IOMARKER 2480 752 dout(7:0) R0 28
        IOMARKER 2560 1904 StopSync(7:0) R0 28
        BEGIN BRANCH sel_cntr_tbuf(31:0)
            WIRE 784 2256 1312 2256
            WIRE 1312 2256 1696 2256
            WIRE 1696 1712 1776 1712
            WIRE 1696 1712 1696 2256
            BEGIN DISPLAY 1312 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 784 2256 sel_cntr_tbuf(31:0) R180 28
        BEGIN INSTANCE XLXI_29 848 1856 R0
            BEGIN DISPLAY 0 -504 ATTR RLOC_ORIGIN
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clk2x
            WIRE 800 1696 848 1696
            BEGIN DISPLAY 800 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BUSTAP 608 1504 704 1504
        BEGIN BRANCH sel_ver(8:1)
            WIRE 704 1504 736 1504
            WIRE 736 1504 848 1504
            BEGIN DISPLAY 736 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH reset
            WIRE 768 1632 848 1632
            BEGIN DISPLAY 768 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 496 1568 stop_pulses_buf(7:0) R180 28
        BEGIN BRANCH stop_pulses_buf(7:0)
            WIRE 496 1568 848 1568
        END BRANCH
        BEGIN BRANCH start_clksync
            WIRE 768 1760 784 1760
            WIRE 784 1760 848 1760
            BEGIN DISPLAY 784 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 480 1152 sel_ver(8:0) R180 28
        BEGIN BRANCH sel_ver(8:0)
            WIRE 480 1152 608 1152
            WIRE 608 1152 608 1168
            WIRE 608 1168 608 1504
            WIRE 608 1504 608 1536
        END BRANCH
        BUSTAP 608 1168 704 1168
        BEGIN BRANCH sel_ver(0)
            WIRE 704 1168 1072 1168
        END BRANCH
        BEGIN BRANCH test_start
            WIRE 544 1296 1072 1296
        END BRANCH
        IOMARKER 544 1296 test_start R180 28
        BEGIN BRANCH test_stop
            WIRE 464 1888 832 1888
            WIRE 832 1888 848 1888
        END BRANCH
        IOMARKER 464 1888 test_stop R180 28
        BEGIN BRANCH intr
            WIRE 2192 1856 2224 1856
        END BRANCH
        IOMARKER 2224 1856 intr R0 28
    END SHEET
END SCHEMATIC
