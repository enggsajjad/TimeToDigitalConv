VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL sel_ver
        SIGNAL logic0
        SIGNAL pulse
        SIGNAL ver_out(39:0)
        SIGNAL clk
        SIGNAL reset
        SIGNAL pulse_sync
        SIGNAL pulse_clk_sync
        SIGNAL test_pulse
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        PORT Input sel_ver
        PORT Input pulse
        PORT Output ver_out(39:0)
        PORT Input clk
        PORT Input reset
        PORT Output pulse_sync
        PORT Output pulse_clk_sync
        PORT Input test_pulse
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2001 2 2 12 52 44
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
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
        BEGIN BLOCKDEF vernier_40_gates
            TIMESTAMP 2014 6 26 7 33 55
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 gnd
            PIN G logic0
        END BLOCK
        BEGIN BLOCK XLXI_4 synclogic
            BEGIN ATTR RLOC "R1C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN clk clk
            PIN reset reset
            PIN pulse pulse
            PIN test_pulse test_pulse
            PIN pulse_sync pulse_sync
            PIN pulse_clk_sync pulse_clk_sync
        END BLOCK
        BEGIN BLOCK XLXI_5 vernier_40_gates
            BEGIN ATTR RLOC "R0C2"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN logic0 logic0
            PIN reset reset
            PIN pulse_clk_sync pulse_clk_sync
            PIN sel_ver sel_ver
            PIN pulse_sync pulse_sync
            PIN Qout(39:0) ver_out(39:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH sel_ver
            WIRE 1216 1040 2032 1040
            WIRE 2032 752 2048 752
            WIRE 2032 752 2032 1040
        END BRANCH
        BEGIN BRANCH pulse
            WIRE 1248 880 1376 880
        END BRANCH
        BEGIN BRANCH ver_out(39:0)
            WIRE 2432 560 2512 560
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1168 752 1376 752
        END BRANCH
        BEGIN BRANCH logic0
            WIRE 1760 464 1760 480
            WIRE 1760 464 2032 464
            WIRE 2032 464 2032 560
            WIRE 2032 560 2048 560
        END BRANCH
        BEGIN BRANCH test_pulse
            WIRE 1248 944 1376 944
        END BRANCH
        BEGIN INSTANCE XLXI_4 1376 976 R0
            BEGIN DISPLAY 136 -148 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 1248 880 pulse R180 28
        IOMARKER 1200 816 reset R180 28
        IOMARKER 1168 752 clk R180 28
        IOMARKER 1248 944 test_pulse R180 28
        BEGIN INSTANCE XLXI_5 2048 848 R0
            BEGIN DISPLAY 156 32 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH pulse_sync
            WIRE 1760 752 1840 752
            WIRE 1840 752 1840 816
            WIRE 1840 816 2048 816
            WIRE 1840 752 1840 1056
            WIRE 1840 1056 2496 1056
        END BRANCH
        BEGIN BRANCH reset
            WIRE 1200 816 1312 816
            WIRE 1312 816 1376 816
            WIRE 1312 624 1312 816
            WIRE 1312 624 2048 624
        END BRANCH
        BEGIN BRANCH pulse_clk_sync
            WIRE 1760 944 1872 944
            WIRE 1872 944 2480 944
            WIRE 1872 688 1872 944
            WIRE 1872 688 2048 688
        END BRANCH
        IOMARKER 2512 560 ver_out(39:0) R0 28
        IOMARKER 2480 944 pulse_clk_sync R0 28
        IOMARKER 2496 1056 pulse_sync R0 28
        INSTANCE XLXI_3 1696 608 R0
        IOMARKER 1216 1040 sel_ver R180 28
    END SHEET
END SCHEMATIC
