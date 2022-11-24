VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL stop_pulses(3)
        SIGNAL stop_pulses(2)
        SIGNAL stop_pulses(1)
        SIGNAL stop_pulses(0)
        SIGNAL sel_vers_stop(0)
        SIGNAL sel_vers_stop(1)
        SIGNAL sel_vers_stop(2)
        SIGNAL sel_vers_stop(3)
        SIGNAL sel_vers_stop(7:0)
        SIGNAL stop_pulses(7:0)
        SIGNAL reset
        SIGNAL clk
        SIGNAL start_pulse
        SIGNAL test_stop
        SIGNAL sel_vers_stop(4)
        SIGNAL sel_vers_stop(5)
        SIGNAL sel_vers_stop(6)
        SIGNAL sel_vers_stop(7)
        SIGNAL stop_pulses(4)
        SIGNAL stop_pulses(5)
        SIGNAL stop_pulses(7)
        SIGNAL stop_pulses(6)
        SIGNAL ver_stop_10bits_out(39:0)
        SIGNAL PulseSyncOut(7:0)
        SIGNAL load_reg(7:0)
        SIGNAL PulseSyncOut(4)
        SIGNAL load_reg(4)
        SIGNAL PulseSyncOut(5)
        SIGNAL load_reg(5)
        SIGNAL PulseSyncOut(6)
        SIGNAL load_reg(6)
        SIGNAL PulseSyncOut(7)
        SIGNAL load_reg(7)
        SIGNAL load_reg(3)
        SIGNAL PulseSyncOut(3)
        SIGNAL load_reg(2)
        SIGNAL PulseSyncOut(2)
        SIGNAL load_reg(1)
        SIGNAL PulseSyncOut(1)
        SIGNAL load_reg(0)
        SIGNAL PulseSyncOut(0)
        PORT Input sel_vers_stop(7:0)
        PORT Input stop_pulses(7:0)
        PORT Input reset
        PORT Input clk
        PORT Input start_pulse
        PORT Input test_stop
        PORT Output ver_stop_10bits_out(39:0)
        PORT Output PulseSyncOut(7:0)
        PORT Output load_reg(7:0)
        BEGIN BLOCKDEF stop_channel
            TIMESTAMP 2011 3 7 4 35 44
            LINE N 64 -352 0 -352 
            RECTANGLE N 64 -376 496 -108 
            LINE N 496 -240 560 -240 
            RECTANGLE N 496 -252 560 -228 
            LINE N 496 -336 560 -336 
            LINE N 64 -256 0 -256 
            LINE N 64 -224 0 -224 
            LINE N 64 -320 0 -320 
            LINE N 64 -192 0 -192 
            LINE N 64 -144 0 -144 
            LINE N 496 -160 560 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 stop_channel
            BEGIN ATTR RLOC "R14C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut PulseSyncOut(0)
            PIN stop_pulse stop_pulses(0)
            PIN start_pulse start_pulse
            PIN clk clk
            PIN teststop test_stop
            PIN sel_ver sel_vers_stop(0)
            PIN load_reg load_reg(0)
        END BLOCK
        BEGIN BLOCK XLXI_3 stop_channel
            BEGIN ATTR RLOC "R12C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut PulseSyncOut(1)
            PIN stop_pulse stop_pulses(1)
            PIN start_pulse start_pulse
            PIN clk clk
            PIN teststop test_stop
            PIN sel_ver sel_vers_stop(1)
            PIN load_reg load_reg(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 stop_channel
            BEGIN ATTR RLOC "R10C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut PulseSyncOut(2)
            PIN stop_pulse stop_pulses(2)
            PIN start_pulse start_pulse
            PIN clk clk
            PIN teststop test_stop
            PIN sel_ver sel_vers_stop(2)
            PIN load_reg load_reg(2)
        END BLOCK
        BEGIN BLOCK XLXI_5 stop_channel
            BEGIN ATTR RLOC "R8C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut PulseSyncOut(3)
            PIN stop_pulse stop_pulses(3)
            PIN start_pulse start_pulse
            PIN clk clk
            PIN teststop test_stop
            PIN sel_ver sel_vers_stop(3)
            PIN load_reg load_reg(3)
        END BLOCK
        BEGIN BLOCK XLXI_9 stop_channel
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut PulseSyncOut(7)
            PIN stop_pulse stop_pulses(7)
            PIN start_pulse start_pulse
            PIN clk clk
            PIN teststop test_stop
            PIN sel_ver sel_vers_stop(7)
            PIN load_reg load_reg(7)
        END BLOCK
        BEGIN BLOCK XLXI_8 stop_channel
            BEGIN ATTR RLOC "R2C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut PulseSyncOut(6)
            PIN stop_pulse stop_pulses(6)
            PIN start_pulse start_pulse
            PIN clk clk
            PIN teststop test_stop
            PIN sel_ver sel_vers_stop(6)
            PIN load_reg load_reg(6)
        END BLOCK
        BEGIN BLOCK XLXI_7 stop_channel
            BEGIN ATTR RLOC "R4C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut PulseSyncOut(5)
            PIN stop_pulse stop_pulses(5)
            PIN start_pulse start_pulse
            PIN clk clk
            PIN teststop test_stop
            PIN sel_ver sel_vers_stop(5)
            PIN load_reg load_reg(5)
        END BLOCK
        BEGIN BLOCK XLXI_6 stop_channel
            BEGIN ATTR RLOC "R6C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut PulseSyncOut(4)
            PIN stop_pulse stop_pulses(4)
            PIN start_pulse start_pulse
            PIN clk clk
            PIN teststop test_stop
            PIN sel_ver sel_vers_stop(4)
            PIN load_reg load_reg(4)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 864 736 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_3 848 1312 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_4 832 1856 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_5 816 2384 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BUSTAP 608 480 704 480
        BUSTAP 608 1056 704 1056
        BUSTAP 608 1600 704 1600
        BUSTAP 608 2128 704 2128
        BEGIN BRANCH stop_pulses(3)
            WIRE 704 2128 816 2128
        END BRANCH
        BEGIN BRANCH stop_pulses(2)
            WIRE 704 1600 832 1600
        END BRANCH
        BEGIN BRANCH stop_pulses(1)
            WIRE 704 1056 848 1056
        END BRANCH
        BEGIN BRANCH stop_pulses(0)
            WIRE 704 480 864 480
        END BRANCH
        BUSTAP 368 592 464 592
        BUSTAP 368 1168 464 1168
        BUSTAP 368 1712 464 1712
        BUSTAP 368 2240 464 2240
        BEGIN BRANCH sel_vers_stop(0)
            WIRE 464 592 864 592
        END BRANCH
        BEGIN BRANCH sel_vers_stop(1)
            WIRE 464 1168 848 1168
        END BRANCH
        BEGIN BRANCH sel_vers_stop(2)
            WIRE 464 1712 832 1712
        END BRANCH
        BEGIN BRANCH sel_vers_stop(3)
            WIRE 464 2240 816 2240
        END BRANCH
        BEGIN BRANCH sel_vers_stop(7:0)
            WIRE 288 272 368 272
            WIRE 368 272 368 592
            WIRE 368 592 368 1168
            WIRE 368 1168 368 1712
            WIRE 368 1712 368 2240
            WIRE 368 2240 368 2272
            WIRE 368 272 1872 272
            WIRE 1872 272 1872 816
            WIRE 1872 816 1872 1392
            WIRE 1872 1392 1872 1920
            WIRE 1872 1920 1872 2512
            WIRE 1872 2512 1872 2544
        END BRANCH
        BEGIN BRANCH stop_pulses(7:0)
            WIRE 320 128 608 128
            WIRE 608 128 608 480
            WIRE 608 480 608 1056
            WIRE 608 1056 608 1600
            WIRE 608 1600 608 2128
            WIRE 608 2128 608 2224
            WIRE 608 128 2144 128
            WIRE 2144 128 2144 704
            WIRE 2144 704 2144 1280
            WIRE 2144 1280 2144 1808
            WIRE 2144 1808 2144 2400
            WIRE 2144 2400 2144 2480
        END BRANCH
        BEGIN BRANCH reset
            WIRE 224 64 800 64
            WIRE 800 64 800 384
            WIRE 800 384 800 960
            WIRE 800 960 800 1504
            WIRE 800 1504 800 2032
            WIRE 800 2032 816 2032
            WIRE 800 1504 832 1504
            WIRE 800 960 848 960
            WIRE 800 384 864 384
            WIRE 800 64 2336 64
            WIRE 2336 64 2336 608
            WIRE 2336 608 2432 608
            WIRE 2336 608 2336 1184
            WIRE 2336 1184 2432 1184
            WIRE 2336 1184 2336 1712
            WIRE 2336 1712 2432 1712
            WIRE 2336 1712 2336 2304
            WIRE 2336 2304 2432 2304
        END BRANCH
        BEGIN BRANCH clk
            WIRE 208 96 768 96
            WIRE 768 96 768 416
            WIRE 768 416 864 416
            WIRE 768 416 768 992
            WIRE 768 992 848 992
            WIRE 768 992 768 1536
            WIRE 768 1536 768 2064
            WIRE 768 2064 816 2064
            WIRE 768 1536 832 1536
            WIRE 768 96 2288 96
            WIRE 2288 96 2288 640
            WIRE 2288 640 2432 640
            WIRE 2288 640 2288 1216
            WIRE 2288 1216 2432 1216
            WIRE 2288 1216 2288 1744
            WIRE 2288 1744 2432 1744
            WIRE 2288 1744 2288 2336
            WIRE 2288 2336 2432 2336
        END BRANCH
        BEGIN BRANCH start_pulse
            WIRE 272 176 544 176
            WIRE 544 176 544 512
            WIRE 544 512 864 512
            WIRE 544 512 544 1088
            WIRE 544 1088 848 1088
            WIRE 544 1088 544 1632
            WIRE 544 1632 544 2160
            WIRE 544 2160 816 2160
            WIRE 544 1632 832 1632
            WIRE 544 176 2064 176
            WIRE 2064 176 2064 736
            WIRE 2064 736 2432 736
            WIRE 2064 736 2064 1312
            WIRE 2064 1312 2432 1312
            WIRE 2064 1312 2064 1840
            WIRE 2064 1840 2432 1840
            WIRE 2064 1840 2064 2432
            WIRE 2064 2432 2432 2432
        END BRANCH
        BEGIN BRANCH test_stop
            WIRE 240 224 496 224
            WIRE 496 224 496 544
            WIRE 496 544 864 544
            WIRE 496 544 496 1120
            WIRE 496 1120 848 1120
            WIRE 496 1120 496 1664
            WIRE 496 1664 832 1664
            WIRE 496 1664 496 2192
            WIRE 496 2192 816 2192
            WIRE 496 224 2016 224
            WIRE 2016 224 2016 768
            WIRE 2016 768 2432 768
            WIRE 2016 768 2016 1344
            WIRE 2016 1344 2432 1344
            WIRE 2016 1344 2016 1872
            WIRE 2016 1872 2432 1872
            WIRE 2016 1872 2016 2464
            WIRE 2016 2464 2432 2464
        END BRANCH
        BEGIN BRANCH sel_vers_stop(4)
            WIRE 1968 816 2432 816
        END BRANCH
        BEGIN BRANCH sel_vers_stop(5)
            WIRE 1968 1392 2432 1392
        END BRANCH
        BEGIN BRANCH sel_vers_stop(6)
            WIRE 1968 1920 2432 1920
        END BRANCH
        BEGIN BRANCH sel_vers_stop(7)
            WIRE 1968 2512 2432 2512
        END BRANCH
        BUSTAP 1872 2512 1968 2512
        BUSTAP 1872 1920 1968 1920
        BUSTAP 1872 1392 1968 1392
        BUSTAP 1872 816 1968 816
        BEGIN BRANCH stop_pulses(4)
            WIRE 2240 704 2432 704
        END BRANCH
        BEGIN BRANCH stop_pulses(5)
            WIRE 2240 1280 2432 1280
        END BRANCH
        BEGIN BRANCH stop_pulses(7)
            WIRE 2240 2400 2432 2400
        END BRANCH
        BEGIN BRANCH stop_pulses(6)
            WIRE 2240 1808 2432 1808
        END BRANCH
        BUSTAP 2144 704 2240 704
        BUSTAP 2144 1280 2240 1280
        BUSTAP 2144 1808 2240 1808
        BUSTAP 2144 2400 2240 2400
        BEGIN INSTANCE XLXI_9 2432 2656 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2432 2064 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2432 1536 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_6 2432 960 R0
            BEGIN DISPLAY 0 -496 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH ver_stop_10bits_out(39:0)
            WIRE 1376 2144 1456 2144
            WIRE 1456 2144 1456 2672
            WIRE 1456 2672 3008 2672
            WIRE 3008 2672 3120 2672
            WIRE 1392 1616 1456 1616
            WIRE 1456 1616 1456 2144
            WIRE 1408 1072 1456 1072
            WIRE 1456 1072 1456 1616
            WIRE 1424 496 1456 496
            WIRE 1456 496 1456 1072
            WIRE 2992 720 3008 720
            WIRE 3008 720 3008 1296
            WIRE 3008 1296 3008 1824
            WIRE 3008 1824 3008 2416
            WIRE 3008 2416 3008 2672
            WIRE 2992 1296 3008 1296
            WIRE 2992 1824 3008 1824
            WIRE 2992 2416 3008 2416
        END BRANCH
        BEGIN BRANCH load_reg(7:0)
            WIRE 1680 512 1680 576
            WIRE 1680 576 1680 1152
            WIRE 1680 1152 1680 1696
            WIRE 1680 1696 1680 2224
            WIRE 1680 2224 1680 2624
            WIRE 1680 2624 3168 2624
            WIRE 3168 2624 3232 2624
            WIRE 3168 464 3168 800
            WIRE 3168 800 3168 1376
            WIRE 3168 1376 3168 1904
            WIRE 3168 1904 3168 2496
            WIRE 3168 2496 3168 2624
        END BRANCH
        BUSTAP 1680 2224 1584 2224
        BUSTAP 1680 1696 1584 1696
        BUSTAP 1680 1152 1584 1152
        BUSTAP 1680 576 1584 576
        BUSTAP 3120 624 3024 624
        BUSTAP 3120 1200 3024 1200
        BUSTAP 3120 1728 3024 1728
        BUSTAP 3120 2320 3024 2320
        BUSTAP 3168 2496 3072 2496
        BUSTAP 3168 1904 3072 1904
        BUSTAP 3168 1376 3072 1376
        BUSTAP 3168 800 3072 800
        BEGIN BRANCH PulseSyncOut(4)
            WIRE 2992 624 3024 624
        END BRANCH
        BEGIN BRANCH load_reg(4)
            WIRE 2992 800 3072 800
        END BRANCH
        BEGIN BRANCH PulseSyncOut(5)
            WIRE 2992 1200 3024 1200
        END BRANCH
        BEGIN BRANCH load_reg(5)
            WIRE 2992 1376 3072 1376
        END BRANCH
        BEGIN BRANCH PulseSyncOut(6)
            WIRE 2992 1728 3024 1728
        END BRANCH
        BEGIN BRANCH load_reg(6)
            WIRE 2992 1904 3072 1904
        END BRANCH
        BEGIN BRANCH PulseSyncOut(7)
            WIRE 2992 2320 3024 2320
        END BRANCH
        BEGIN BRANCH load_reg(7)
            WIRE 2992 2496 3072 2496
        END BRANCH
        BEGIN BRANCH load_reg(3)
            WIRE 1376 2224 1584 2224
        END BRANCH
        BEGIN BRANCH PulseSyncOut(3)
            WIRE 1376 2048 1472 2048
        END BRANCH
        BEGIN BRANCH load_reg(2)
            WIRE 1392 1696 1584 1696
        END BRANCH
        BEGIN BRANCH PulseSyncOut(2)
            WIRE 1392 1520 1472 1520
        END BRANCH
        BEGIN BRANCH load_reg(1)
            WIRE 1408 1152 1584 1152
        END BRANCH
        BEGIN BRANCH PulseSyncOut(1)
            WIRE 1408 976 1472 976
        END BRANCH
        BEGIN BRANCH load_reg(0)
            WIRE 1424 576 1584 576
        END BRANCH
        BEGIN BRANCH PulseSyncOut(0)
            WIRE 1424 400 1472 400
        END BRANCH
        IOMARKER 224 64 reset R180 28
        IOMARKER 208 96 clk R180 28
        IOMARKER 320 128 stop_pulses(7:0) R180 28
        IOMARKER 272 176 start_pulse R180 28
        IOMARKER 240 224 test_stop R180 28
        IOMARKER 288 272 sel_vers_stop(7:0) R180 28
        IOMARKER 3232 2624 load_reg(7:0) R0 28
        IOMARKER 3264 2560 PulseSyncOut(7:0) R0 28
        IOMARKER 3120 2672 ver_stop_10bits_out(39:0) R0 28
        BUSTAP 1568 2048 1472 2048
        BUSTAP 1568 1520 1472 1520
        BUSTAP 1568 976 1472 976
        BUSTAP 1568 400 1472 400
        BEGIN BRANCH PulseSyncOut(7:0)
            WIRE 1568 352 1568 400
            WIRE 1568 400 1568 976
            WIRE 1568 976 1568 1520
            WIRE 1568 1520 1568 2048
            WIRE 1568 2048 1568 2592
            WIRE 1568 2592 3120 2592
            WIRE 3120 2592 3184 2592
            WIRE 3120 576 3120 624
            WIRE 3120 624 3120 1200
            WIRE 3120 1200 3120 1728
            WIRE 3120 1728 3120 2320
            WIRE 3120 2320 3120 2592
            WIRE 3184 2560 3264 2560
            WIRE 3184 2560 3184 2592
        END BRANCH
    END SHEET
END SCHEMATIC
