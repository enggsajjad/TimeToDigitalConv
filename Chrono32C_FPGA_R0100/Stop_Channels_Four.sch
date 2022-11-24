VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL reset
        SIGNAL start_pulse
        SIGNAL stop_pulses(3)
        SIGNAL stop_pulses(2)
        SIGNAL CE_Counters(3:0)
        SIGNAL CE_Counters(2)
        SIGNAL CE_Counters(3)
        SIGNAL clk
        SIGNAL sel_vers_stop(3:0)
        SIGNAL sel_vers_stop(0)
        SIGNAL sel_vers_stop(1)
        SIGNAL stop_pulses(3:0)
        SIGNAL ver_stop_10bits_out(39:0)
        SIGNAL stop_pulses(1)
        SIGNAL stop_pulses(0)
        SIGNAL CE_Counters(1)
        SIGNAL CE_Counters(0)
        SIGNAL sel_vers_stop(2)
        SIGNAL sel_vers_stop(3)
        SIGNAL PulseSyncOut(3)
        SIGNAL PulseSyncOut(0)
        SIGNAL PulseSyncOut(1)
        SIGNAL PulseSyncOut(2)
        SIGNAL PulseSyncOut(3:0)
        PORT Input reset
        PORT Input start_pulse
        PORT Output CE_Counters(3:0)
        PORT Input clk
        PORT Input sel_vers_stop(3:0)
        PORT Input stop_pulses(3:0)
        PORT Output ver_stop_10bits_out(39:0)
        PORT Output PulseSyncOut(3:0)
        BEGIN BLOCKDEF stop_channel
            TIMESTAMP 2011 3 7 4 26 12
            LINE N 64 160 0 160 
            LINE N 64 96 0 96 
            LINE N 496 32 560 32 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 496 -32 560 -32 
            RECTANGLE N 496 -44 560 -20 
            LINE N 496 -128 560 -128 
            RECTANGLE N 64 -376 496 248 
        END BLOCKDEF
        BEGIN BLOCK stop_channel3 stop_channel
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_vers_stop(3)
            PIN stop_pulse stop_pulses(3)
            PIN clk clk
            PIN reset reset
            PIN start_pulse start_pulse
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN CountEnable CE_Counters(3)
            PIN PulseSyncOut PulseSyncOut(3)
            PIN teststop
        END BLOCK
        BEGIN BLOCK stop_channel2 stop_channel
            BEGIN ATTR RLOC "R2C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_vers_stop(2)
            PIN stop_pulse stop_pulses(2)
            PIN clk clk
            PIN reset reset
            PIN start_pulse start_pulse
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN CountEnable CE_Counters(2)
            PIN PulseSyncOut PulseSyncOut(2)
            PIN teststop
        END BLOCK
        BEGIN BLOCK stop_channel1 stop_channel
            BEGIN ATTR RLOC "R4C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_vers_stop(1)
            PIN stop_pulse stop_pulses(1)
            PIN clk clk
            PIN reset reset
            PIN start_pulse start_pulse
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN CountEnable CE_Counters(1)
            PIN PulseSyncOut PulseSyncOut(1)
            PIN teststop
        END BLOCK
        BEGIN BLOCK stop_channel0 stop_channel
            BEGIN ATTR RLOC "R6C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN sel_ver sel_vers_stop(0)
            PIN stop_pulse stop_pulses(0)
            PIN clk clk
            PIN reset reset
            PIN start_pulse start_pulse
            PIN ver_out_10bits(39:0) ver_stop_10bits_out(39:0)
            PIN CountEnable CE_Counters(0)
            PIN PulseSyncOut PulseSyncOut(0)
            PIN teststop
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE stop_channel2 1056 1248 R0
            BEGIN DISPLAY 220 -272 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 212 -344 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE stop_channel3 1056 608 R0
            BEGIN DISPLAY 236 -528 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 184 -292 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE stop_channel1 1056 1888 R0
            BEGIN DISPLAY 188 -296 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 188 -372 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH reset
            WIRE 768 256 944 256
            WIRE 944 256 944 896
            WIRE 944 896 1024 896
            WIRE 1024 896 1056 896
            WIRE 1024 896 1024 1536
            WIRE 1024 1536 1056 1536
            WIRE 1024 1536 1024 2176
            WIRE 1024 2176 1040 2176
            WIRE 944 256 1056 256
        END BRANCH
        BEGIN BRANCH stop_pulses(3)
            WIRE 480 512 624 512
            WIRE 624 512 1056 512
            BEGIN DISPLAY 624 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_pulse
            WIRE 704 576 1008 576
            WIRE 1008 576 1056 576
            WIRE 1008 576 1008 1216
            WIRE 1008 1216 1056 1216
            WIRE 1008 1216 1008 1856
            WIRE 1008 1856 1056 1856
            WIRE 1008 1856 1008 2496
            WIRE 1008 2496 1040 2496
        END BRANCH
        BEGIN BRANCH stop_pulses(0)
            WIRE 480 2432 592 2432
            WIRE 592 2432 1040 2432
            BEGIN DISPLAY 592 2432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH stop_pulses(1)
            WIRE 480 1808 656 1808
            WIRE 656 1808 784 1808
            WIRE 784 1792 1056 1792
            WIRE 784 1792 784 1808
            BEGIN DISPLAY 656 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 768 256 reset R180 28
        IOMARKER 640 320 clk R180 28
        IOMARKER 704 576 start_pulse R180 28
        BEGIN BRANCH CE_Counters(3:0)
            WIRE 2368 352 2496 352
            WIRE 2368 352 2368 640
            WIRE 2368 640 2368 1280
            WIRE 2368 1280 2368 1920
            WIRE 2368 1920 2368 2304
            WIRE 2368 2304 2368 2560
            WIRE 2368 2560 2368 2608
            BEGIN DISPLAY 2368 2304 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2368 2560 2272 2560
        BUSTAP 2368 1280 2272 1280
        BUSTAP 2368 640 2272 640
        BUSTAP 2368 1920 2272 1920
        BEGIN BRANCH CE_Counters(3)
            WIRE 1616 640 2000 640
            WIRE 2000 640 2272 640
            BEGIN DISPLAY 2000 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_Counters(2)
            WIRE 1616 1280 2016 1280
            WIRE 2016 1280 2272 1280
            BEGIN DISPLAY 2016 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_Counters(1)
            WIRE 1616 1920 2000 1920
            WIRE 2000 1920 2272 1920
            BEGIN DISPLAY 2000 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_Counters(0)
            WIRE 1600 2560 2064 2560
            WIRE 2064 2560 2272 2560
            BEGIN DISPLAY 2064 2560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_vers_stop(3:0)
            WIRE 208 320 208 384
            WIRE 208 384 208 1040
            WIRE 208 1040 208 1664
            WIRE 208 1664 208 2320
            WIRE 208 2320 208 2496
        END BRANCH
        BUSTAP 208 2320 304 2320
        BUSTAP 208 1664 304 1664
        BUSTAP 208 1040 304 1040
        BUSTAP 208 384 304 384
        BEGIN BRANCH sel_vers_stop(3)
            WIRE 304 384 304 704
            WIRE 304 704 640 704
            WIRE 640 704 1056 704
            BEGIN DISPLAY 640 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_vers_stop(2)
            WIRE 304 1040 448 1040
            WIRE 448 1040 672 1040
            WIRE 672 1040 672 1344
            WIRE 672 1344 1056 1344
            BEGIN DISPLAY 448 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 640 320 992 320
            WIRE 992 320 992 960
            WIRE 992 960 1040 960
            WIRE 1040 960 1056 960
            WIRE 1040 960 1040 1600
            WIRE 1040 1600 1056 1600
            WIRE 992 320 1056 320
            WIRE 992 1600 1040 1600
            WIRE 992 1600 992 2240
            WIRE 992 2240 1040 2240
        END BRANCH
        BEGIN BRANCH sel_vers_stop(1)
            WIRE 304 1664 304 1984
            WIRE 304 1984 448 1984
            WIRE 448 1984 1056 1984
            BEGIN DISPLAY 448 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_vers_stop(0)
            WIRE 304 2320 592 2320
            WIRE 592 2320 592 2624
            WIRE 592 2624 1040 2624
            WIRE 560 2624 592 2624
            BEGIN DISPLAY 560 2624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 208 320 sel_vers_stop(3:0) R270 28
        BEGIN BRANCH stop_pulses(3:0)
            WIRE 368 256 368 496
            WIRE 368 496 384 496
            WIRE 384 496 384 512
            WIRE 384 512 384 1152
            WIRE 384 1152 384 1808
            WIRE 384 1808 384 2432
            WIRE 384 2432 384 2480
        END BRANCH
        BUSTAP 384 512 480 512
        BUSTAP 384 1808 480 1808
        BUSTAP 384 2432 480 2432
        BUSTAP 384 1152 480 1152
        BEGIN BRANCH stop_pulses(2)
            WIRE 480 1152 608 1152
            WIRE 608 1152 1056 1152
            BEGIN DISPLAY 608 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 368 256 stop_pulses(3:0) R270 28
        BEGIN BRANCH ver_stop_10bits_out(39:0)
            WIRE 1600 2496 1664 2496
            WIRE 1616 576 1680 576
            WIRE 1680 576 1680 1216
            WIRE 1616 1216 1664 1216
            WIRE 1664 1216 1680 1216
            WIRE 1664 1216 1664 1856
            WIRE 1664 1856 1664 2496
            WIRE 1616 1856 1664 1856
            WIRE 1680 448 1856 448
            WIRE 1680 448 1680 576
        END BRANCH
        BEGIN INSTANCE stop_channel0 1040 2528 R0
            BEGIN DISPLAY 216 -224 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 204 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        IOMARKER 1856 448 ver_stop_10bits_out(39:0) R0 28
        IOMARKER 2496 352 CE_Counters(3:0) R0 28
        BEGIN BRANCH PulseSyncOut(3)
            WIRE 1616 480 1760 480
            WIRE 1760 320 1760 480
            WIRE 1760 320 1808 320
            WIRE 1808 320 2112 320
            BEGIN DISPLAY 1808 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2208 2400 2112 2400
        BEGIN BRANCH PulseSyncOut(0)
            WIRE 1600 2400 1744 2400
            WIRE 1744 2400 2112 2400
            BEGIN DISPLAY 1744 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2208 1760 2112 1760
        BEGIN BRANCH PulseSyncOut(1)
            WIRE 1616 1760 1792 1760
            WIRE 1792 1760 2112 1760
            BEGIN DISPLAY 1792 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2208 1120 2112 1120
        BEGIN BRANCH PulseSyncOut(2)
            WIRE 1616 1120 1792 1120
            WIRE 1792 1120 2112 1120
            BEGIN DISPLAY 1792 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2208 320 2112 320
        BEGIN BRANCH PulseSyncOut(3:0)
            WIRE 2208 240 2256 240
            WIRE 2256 240 2288 240
            WIRE 2208 240 2208 320
            WIRE 2208 320 2208 1120
            WIRE 2208 1120 2208 1760
            WIRE 2208 1760 2208 2400
            WIRE 2208 2400 2208 2480
        END BRANCH
        IOMARKER 2288 240 PulseSyncOut(3:0) R0 28
    END SHEET
END SCHEMATIC
