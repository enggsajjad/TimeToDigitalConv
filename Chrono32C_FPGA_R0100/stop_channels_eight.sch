VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL reset
        SIGNAL star_pulse
        SIGNAL sel_vers_stop(7:4)
        SIGNAL stop_pulses(7:4)
        SIGNAL sel_vers_stop(3:0)
        SIGNAL stop_pulses(3:0)
        SIGNAL sel_vers_stop(7:0)
        SIGNAL stop_pulses(7:0)
        SIGNAL ver_stop_10bits_out(39:0)
        SIGNAL CE_Counters(7:0)
        SIGNAL CE_Counters(7:4)
        SIGNAL CE_Counters(3:0)
        SIGNAL PulseSyncOut(3:0)
        SIGNAL PulseSyncOut(7:4)
        SIGNAL PulseSyncOut(7:0)
        PORT Input clk
        PORT Input reset
        PORT Input star_pulse
        PORT Input sel_vers_stop(7:0)
        PORT Input stop_pulses(7:0)
        PORT Output ver_stop_10bits_out(39:0)
        PORT Output CE_Counters(7:0)
        PORT Output PulseSyncOut(7:0)
        BEGIN BLOCKDEF stop_channels_four
            TIMESTAMP 2011 3 7 3 56 24
            LINE N 448 -240 512 -240 
            RECTANGLE N 448 -252 512 -228 
            LINE N 64 -672 0 -672 
            LINE N 64 -608 0 -608 
            LINE N 64 -480 0 -480 
            LINE N 448 -304 512 -304 
            RECTANGLE N 448 -316 512 -292 
            LINE N 64 -432 0 -432 
            RECTANGLE N 0 -444 64 -420 
            LINE N 64 -368 0 -368 
            RECTANGLE N 0 -380 64 -356 
            LINE N 448 -432 512 -432 
            RECTANGLE N 448 -444 512 -420 
            RECTANGLE N 64 -704 448 -88 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 stop_channels_four
            BEGIN ATTR RLOC "R0C2"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN start_pulse star_pulse
            PIN clk clk
            PIN sel_vers_stop(3:0) sel_vers_stop(7:4)
            PIN stop_pulses(3:0) stop_pulses(7:4)
            PIN CE_Counters(3:0) CE_Counters(7:4)
            PIN ver_stop_10bits_out(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut(3:0) PulseSyncOut(7:4)
        END BLOCK
        BEGIN BLOCK XLXI_2 stop_channels_four
            BEGIN ATTR RLOC "R10C2"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN start_pulse star_pulse
            PIN clk clk
            PIN sel_vers_stop(3:0) sel_vers_stop(3:0)
            PIN stop_pulses(3:0) stop_pulses(3:0)
            PIN CE_Counters(3:0) CE_Counters(3:0)
            PIN ver_stop_10bits_out(39:0) ver_stop_10bits_out(39:0)
            PIN PulseSyncOut(3:0) PulseSyncOut(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1344 1200 R0
            BEGIN DISPLAY 208 -824 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1360 2000 R0
            BEGIN DISPLAY 212 -780 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 1168 528 1328 528
            WIRE 1328 528 1344 528
            WIRE 1328 528 1328 1328
            WIRE 1328 1328 1360 1328
        END BRANCH
        BEGIN BRANCH reset
            WIRE 1120 592 1312 592
            WIRE 1312 592 1344 592
            WIRE 1312 592 1312 1392
            WIRE 1312 1392 1360 1392
        END BRANCH
        BEGIN BRANCH star_pulse
            WIRE 1088 688 1248 688
            WIRE 1248 688 1248 720
            WIRE 1248 720 1344 720
            WIRE 1248 720 1248 1072
            WIRE 1248 1072 1248 1520
            WIRE 1248 1520 1360 1520
        END BRANCH
        BEGIN BRANCH sel_vers_stop(7:4)
            WIRE 1024 768 1056 768
            WIRE 1056 768 1344 768
            BEGIN DISPLAY 1056 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH stop_pulses(7:4)
            WIRE 736 832 800 832
            WIRE 800 832 832 832
            WIRE 832 832 1344 832
            BEGIN DISPLAY 800 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_vers_stop(3:0)
            WIRE 1024 1568 1168 1568
            WIRE 1168 1568 1360 1568
            BEGIN DISPLAY 1168 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH stop_pulses(3:0)
            WIRE 736 1632 816 1632
            WIRE 816 1632 1360 1632
            BEGIN DISPLAY 816 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_vers_stop(7:0)
            WIRE 832 576 928 576
            WIRE 928 576 928 768
            WIRE 928 768 928 1568
            WIRE 928 1568 928 1808
        END BRANCH
        BUSTAP 928 768 1024 768
        BUSTAP 928 1568 1024 1568
        IOMARKER 832 576 sel_vers_stop(7:0) R180 28
        BUSTAP 640 1632 736 1632
        BUSTAP 640 832 736 832
        BEGIN BRANCH stop_pulses(7:0)
            WIRE 640 736 640 832
            WIRE 640 832 640 1632
            WIRE 640 1632 640 1728
        END BRANCH
        IOMARKER 640 736 stop_pulses(7:0) R180 28
        IOMARKER 1168 528 clk R180 28
        IOMARKER 1120 592 reset R180 28
        BEGIN BRANCH ver_stop_10bits_out(39:0)
            WIRE 1856 896 2096 896
            WIRE 2096 896 2112 896
            WIRE 2112 896 2112 1696
            WIRE 2112 896 2208 896
            WIRE 1872 1696 2112 1696
        END BRANCH
        IOMARKER 2208 896 ver_stop_10bits_out(39:0) R0 28
        BEGIN BRANCH CE_Counters(7:0)
            WIRE 2016 640 2016 768
            WIRE 2016 768 2016 1568
            WIRE 2016 1568 2016 1616
            WIRE 2016 640 2080 640
        END BRANCH
        BUSTAP 2016 1568 1920 1568
        BUSTAP 2016 768 1920 768
        BEGIN BRANCH CE_Counters(7:4)
            WIRE 1856 768 1872 768
            WIRE 1872 768 1920 768
            BEGIN DISPLAY 1872 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_Counters(3:0)
            WIRE 1872 1568 1904 1568
            WIRE 1904 1568 1920 1568
            BEGIN DISPLAY 1904 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2080 640 CE_Counters(7:0) R0 28
        IOMARKER 1088 688 star_pulse R180 28
        BEGIN BRANCH PulseSyncOut(3:0)
            WIRE 1872 1760 2480 1760
            WIRE 2480 1760 2720 1760
            WIRE 2720 1760 2768 1760
            BEGIN DISPLAY 2480 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PulseSyncOut(7:4)
            WIRE 1856 960 2560 960
            WIRE 2560 960 2640 960
            WIRE 2640 960 2784 960
            BEGIN DISPLAY 2560 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PulseSyncOut(7:0)
            WIRE 2864 752 2880 752
            WIRE 2864 752 2864 848
            WIRE 2864 848 2880 848
            WIRE 2880 848 2880 960
            WIRE 2880 960 2880 1760
            WIRE 2880 1760 2880 1808
            BEGIN DISPLAY 2880 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2880 960 2784 960
        BUSTAP 2880 1760 2768 1760
        IOMARKER 2880 752 PulseSyncOut(7:0) R0 28
    END SHEET
END SCHEMATIC
