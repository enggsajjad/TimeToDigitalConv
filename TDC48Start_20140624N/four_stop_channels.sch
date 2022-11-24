VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL sel_vers(0)
        SIGNAL sel_vers(1)
        SIGNAL sel_vers(2)
        SIGNAL sel_vers(3)
        SIGNAL sel_vers(3:0)
        SIGNAL start_pulse
        SIGNAL test_stop
        SIGNAL stop_clk_sync(3)
        SIGNAL stop_clk_sync(2)
        SIGNAL stop_clk_sync(1)
        SIGNAL stop_clk_sync(0)
        SIGNAL load_reg(3:0)
        SIGNAL stop_clk_sync(3:0)
        SIGNAL ver_stop(39:0)
        SIGNAL XLXN_51(39:0)
        SIGNAL XLXN_52(39:0)
        SIGNAL XLXN_53(39:0)
        SIGNAL load_reg(0)
        SIGNAL load_reg(1)
        SIGNAL load_reg(2)
        SIGNAL load_reg(3)
        SIGNAL clk
        SIGNAL reset
        SIGNAL XLXN_28
        SIGNAL stop_pulses(0)
        SIGNAL stop_pulses(3:0)
        SIGNAL XLXN_31
        SIGNAL stop_pulses(3)
        SIGNAL XLXN_33
        SIGNAL stop_pulses(2)
        SIGNAL XLXN_35
        SIGNAL stop_pulses(1)
        PORT Input sel_vers(3:0)
        PORT Input start_pulse
        PORT Input test_stop
        PORT Output load_reg(3:0)
        PORT Output stop_clk_sync(3:0)
        PORT Output ver_stop(39:0)
        PORT Input clk
        PORT Input reset
        PORT Input stop_pulses(3:0)
        BEGIN BLOCKDEF stop_channel
            TIMESTAMP 2014 6 26 11 5 29
            LINE N 64 -112 0 -112 
            LINE N 496 -112 560 -112 
            RECTANGLE N 496 -124 560 -100 
            LINE N 496 -80 560 -80 
            LINE N 64 -352 0 -352 
            LINE N 64 -256 0 -256 
            LINE N 64 -224 0 -224 
            LINE N 64 -320 0 -320 
            LINE N 64 -144 0 -144 
            LINE N 496 -160 560 -160 
            RECTANGLE N 64 -376 496 -44 
        END BLOCKDEF
        BEGIN BLOCKDEF ibuf
            TIMESTAMP 2001 2 2 12 53 1
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_11 ibuf
            PIN I stop_pulses(0)
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_5 stop_channel
            BEGIN ATTR RLOC "R8C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_vers(3)
            PIN stop_pulse XLXN_31
            PIN clk clk
            PIN reset reset
            PIN start_pulse start_pulse
            PIN load_reg load_reg(3)
            PIN test_stop test_stop
            PIN ver_out(39:0) ver_stop(39:0)
            PIN pulse_clk_sync stop_clk_sync(3)
        END BLOCK
        BEGIN BLOCK XLXI_4 stop_channel
            BEGIN ATTR RLOC "R10C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_vers(2)
            PIN stop_pulse XLXN_33
            PIN clk clk
            PIN reset reset
            PIN start_pulse start_pulse
            PIN load_reg load_reg(2)
            PIN test_stop test_stop
            PIN ver_out(39:0) ver_stop(39:0)
            PIN pulse_clk_sync stop_clk_sync(2)
        END BLOCK
        BEGIN BLOCK XLXI_3 stop_channel
            BEGIN ATTR RLOC "R12C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_vers(1)
            PIN stop_pulse XLXN_35
            PIN clk clk
            PIN reset reset
            PIN start_pulse start_pulse
            PIN load_reg load_reg(1)
            PIN test_stop test_stop
            PIN ver_out(39:0) ver_stop(39:0)
            PIN pulse_clk_sync stop_clk_sync(1)
        END BLOCK
        BEGIN BLOCK XLXI_2 stop_channel
            BEGIN ATTR RLOC "R14C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_vers(0)
            PIN stop_pulse XLXN_28
            PIN clk clk
            PIN reset reset
            PIN start_pulse start_pulse
            PIN load_reg load_reg(0)
            PIN test_stop test_stop
            PIN ver_out(39:0) ver_stop(39:0)
            PIN pulse_clk_sync stop_clk_sync(0)
        END BLOCK
        BEGIN BLOCK XLXI_12 ibuf
            PIN I stop_pulses(1)
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_13 ibuf
            PIN I stop_pulses(2)
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_14 ibuf
            PIN I stop_pulses(3)
            PIN O XLXN_31
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_11 1328 720 R0
        BUSTAP 1184 800 1280 800
        BUSTAP 1184 1376 1280 1376
        BUSTAP 1184 1920 1280 1920
        BUSTAP 1184 2448 1280 2448
        BEGIN BRANCH sel_vers(0)
            WIRE 1280 800 1680 800
        END BRANCH
        BEGIN BRANCH sel_vers(1)
            WIRE 1280 1376 1664 1376
        END BRANCH
        BEGIN BRANCH sel_vers(2)
            WIRE 1280 1920 1648 1920
        END BRANCH
        BEGIN BRANCH sel_vers(3)
            WIRE 1280 2448 1632 2448
        END BRANCH
        BEGIN BRANCH sel_vers(3:0)
            WIRE 1104 480 1184 480
            WIRE 1184 480 1184 800
            WIRE 1184 800 1184 1376
            WIRE 1184 1376 1184 1920
            WIRE 1184 1920 1184 2448
            WIRE 1184 2448 1184 2480
        END BRANCH
        BEGIN BRANCH start_pulse
            WIRE 1088 384 1280 384
            WIRE 1280 384 1280 720
            WIRE 1280 720 1280 1296
            WIRE 1280 1296 1280 1840
            WIRE 1280 1840 1280 2368
            WIRE 1280 2368 1632 2368
            WIRE 1280 1840 1648 1840
            WIRE 1280 1296 1664 1296
            WIRE 1280 720 1680 720
        END BRANCH
        BEGIN BRANCH test_stop
            WIRE 1056 432 1232 432
            WIRE 1232 432 1232 832
            WIRE 1232 832 1232 1408
            WIRE 1232 1408 1232 1952
            WIRE 1232 1952 1232 2480
            WIRE 1232 2480 1632 2480
            WIRE 1232 1952 1648 1952
            WIRE 1232 1408 1664 1408
            WIRE 1232 832 1680 832
        END BRANCH
        BEGIN BRANCH stop_clk_sync(3)
            WIRE 2192 2512 2288 2512
        END BRANCH
        BUSTAP 2384 2512 2288 2512
        BEGIN BRANCH stop_clk_sync(2)
            WIRE 2208 1984 2288 1984
        END BRANCH
        BUSTAP 2384 1984 2288 1984
        BEGIN BRANCH stop_clk_sync(1)
            WIRE 2224 1440 2288 1440
        END BRANCH
        BUSTAP 2384 1440 2288 1440
        BUSTAP 2384 864 2288 864
        BEGIN BRANCH stop_clk_sync(0)
            WIRE 2240 864 2288 864
        END BRANCH
        BEGIN BRANCH load_reg(3:0)
            WIRE 2496 720 2496 784
            WIRE 2496 784 2496 1360
            WIRE 2496 1360 2496 1904
            WIRE 2496 1904 2496 2432
            WIRE 2496 2432 2496 2448
            WIRE 2496 2448 2592 2448
        END BRANCH
        BEGIN BRANCH stop_clk_sync(3:0)
            WIRE 2384 560 2384 864
            WIRE 2384 864 2384 1440
            WIRE 2384 1440 2384 1984
            WIRE 2384 1984 2384 2272
            WIRE 2384 2272 2384 2512
            WIRE 2384 2512 2384 2528
            WIRE 2384 2272 2576 2272
        END BRANCH
        BEGIN BRANCH ver_stop(39:0)
            WIRE 2192 2480 2272 2480
            WIRE 2208 1952 2272 1952
            WIRE 2272 1952 2272 2352
            WIRE 2272 2352 2272 2480
            WIRE 2272 2352 2592 2352
            WIRE 2224 1408 2272 1408
            WIRE 2272 1408 2272 1952
            WIRE 2240 832 2272 832
            WIRE 2272 832 2272 1408
        END BRANCH
        BEGIN BRANCH load_reg(0)
            WIRE 2240 784 2400 784
        END BRANCH
        BEGIN BRANCH load_reg(1)
            WIRE 2224 1360 2400 1360
        END BRANCH
        BEGIN BRANCH load_reg(2)
            WIRE 2208 1904 2400 1904
        END BRANCH
        BEGIN BRANCH load_reg(3)
            WIRE 2192 2432 2400 2432
        END BRANCH
        BUSTAP 2496 784 2400 784
        BUSTAP 2496 1360 2400 1360
        BUSTAP 2496 1904 2400 1904
        BUSTAP 2496 2432 2400 2432
        BEGIN INSTANCE XLXI_5 1632 2592 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1648 2064 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1664 1520 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1680 944 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 1024 304 1584 304
            WIRE 1584 304 1584 624
            WIRE 1584 624 1584 1200
            WIRE 1584 1200 1664 1200
            WIRE 1584 1200 1584 1744
            WIRE 1584 1744 1648 1744
            WIRE 1584 1744 1584 2272
            WIRE 1584 2272 1632 2272
            WIRE 1584 624 1680 624
        END BRANCH
        BEGIN BRANCH reset
            WIRE 1040 272 1616 272
            WIRE 1616 272 1616 592
            WIRE 1616 592 1680 592
            WIRE 1616 592 1616 1168
            WIRE 1616 1168 1616 1712
            WIRE 1616 1712 1616 2240
            WIRE 1616 2240 1632 2240
            WIRE 1616 1712 1648 1712
            WIRE 1616 1168 1664 1168
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1552 688 1680 688
        END BRANCH
        BEGIN BRANCH stop_pulses(0)
            WIRE 1136 688 1328 688
        END BRANCH
        INSTANCE XLXI_12 1312 1280 R0
        INSTANCE XLXI_13 1312 1840 R0
        INSTANCE XLXI_14 1312 2336 R0
        BEGIN BRANCH XLXN_31
            WIRE 1536 2304 1584 2304
            WIRE 1584 2304 1584 2336
            WIRE 1584 2336 1632 2336
        END BRANCH
        BEGIN BRANCH stop_pulses(3)
            WIRE 1136 2304 1312 2304
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1536 1808 1648 1808
        END BRANCH
        BEGIN BRANCH stop_pulses(2)
            WIRE 1136 1808 1312 1808
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1536 1248 1600 1248
            WIRE 1600 1248 1600 1264
            WIRE 1600 1264 1664 1264
        END BRANCH
        BEGIN BRANCH stop_pulses(1)
            WIRE 1136 1248 1312 1248
        END BRANCH
        IOMARKER 1040 272 reset R180 28
        IOMARKER 1024 304 clk R180 28
        IOMARKER 1088 384 start_pulse R180 28
        IOMARKER 1056 432 test_stop R180 28
        IOMARKER 1104 480 sel_vers(3:0) R180 28
        IOMARKER 2576 2272 stop_clk_sync(3:0) R0 28
        IOMARKER 2592 2448 load_reg(3:0) R0 28
        IOMARKER 2592 2352 ver_stop(39:0) R0 28
        IOMARKER 640 560 stop_pulses(3:0) R180 28
        BEGIN BRANCH stop_pulses(3:0)
            WIRE 640 560 688 560
            WIRE 688 560 688 688
            WIRE 688 688 688 1248
            WIRE 688 1248 688 1808
            WIRE 688 1808 688 2304
            WIRE 688 2304 688 2336
        END BRANCH
        BUSTAP 688 688 1136 688
        BUSTAP 688 1248 1136 1248
        BUSTAP 688 1808 1136 1808
        BUSTAP 688 2304 1136 2304
    END SHEET
END SCHEMATIC
