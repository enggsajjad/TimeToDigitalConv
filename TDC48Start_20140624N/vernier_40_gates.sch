VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL logic0
        SIGNAL reset
        SIGNAL Qout(39:0)
        SIGNAL XLXN_5(39:0)
        SIGNAL pulse_clk_sync
        SIGNAL sel_ver
        SIGNAL Q(39:0)
        SIGNAL pulse_sync
        SIGNAL XLXN_4(39:0)
        SIGNAL XLXN_14(39:0)
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        PORT Input logic0
        PORT Input reset
        PORT Output Qout(39:0)
        PORT Input pulse_clk_sync
        PORT Input sel_ver
        PORT Input pulse_sync
        BEGIN BLOCKDEF sel_vernier
            TIMESTAMP 2007 6 4 11 1 54
            LINE N 64 96 0 96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
            RECTANGLE N 64 -128 320 128 
        END BLOCKDEF
        BEGIN BLOCKDEF andline40
            TIMESTAMP 2014 6 26 7 9 49
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF ildceline40
            TIMESTAMP 2014 6 26 7 29 13
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF xorcy_dline40
            TIMESTAMP 2014 6 26 7 19 28
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 sel_vernier
            PIN Vin(39:0) Q(39:0)
            PIN Vout(39:0) Qout(39:0)
            PIN sel_ver sel_ver
        END BLOCK
        BEGIN BLOCK XLXI_3 ildceline40
            BEGIN ATTR RLOC "R1C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN Gbar logic0
            PIN GE(39:0) XLXN_5(39:0)
            PIN Din(39:0) XLXN_4(39:0)
            PIN Qout(39:0) Q(39:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 xorcy_dline40
            BEGIN ATTR RLOC "R1C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN Vin pulse_clk_sync
            PIN Vout(39:0) XLXN_5(39:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 andline40
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN Vin pulse_sync
            PIN Vout(39:0) XLXN_4(39:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH reset
            WIRE 560 1024 1264 1024
            WIRE 1264 1024 1264 1120
            WIRE 1264 1120 1280 1120
        END BRANCH
        BEGIN BRANCH XLXN_5(39:0)
            WIRE 1072 1248 1280 1248
        END BRANCH
        BEGIN BRANCH pulse_clk_sync
            WIRE 656 1248 672 1248
            WIRE 672 1248 688 1248
        END BRANCH
        BEGIN BRANCH logic0
            WIRE 592 1120 1040 1120
            WIRE 1040 1120 1040 1184
            WIRE 1040 1184 1264 1184
            WIRE 1264 1184 1280 1184
        END BRANCH
        BEGIN BRANCH Qout(39:0)
            WIRE 2144 1056 2160 1056
            WIRE 2160 1056 2256 1056
        END BRANCH
        BEGIN BRANCH Q(39:0)
            WIRE 1664 1120 1760 1120
        END BRANCH
        BEGIN BRANCH sel_ver
            WIRE 576 1536 1728 1536
            WIRE 1728 1248 1728 1536
            WIRE 1728 1248 1760 1248
        END BRANCH
        BEGIN INSTANCE XLXI_3 1280 1344 R0
            BEGIN DISPLAY 148 28 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH pulse_sync
            WIRE 608 1424 672 1424
            WIRE 672 1424 688 1424
        END BRANCH
        BEGIN BRANCH XLXN_4(39:0)
            WIRE 1072 1424 1264 1424
            WIRE 1264 1312 1280 1312
            WIRE 1264 1312 1264 1424
        END BRANCH
        BEGIN INSTANCE XLXI_4 688 1280 R0
            BEGIN DISPLAY 140 24 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 656 1248 pulse_clk_sync R180 28
        BEGIN INSTANCE XLXI_2 688 1456 R0
            BEGIN DISPLAY 128 24 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 608 1424 pulse_sync R180 28
        IOMARKER 592 1120 logic0 R180 28
        IOMARKER 560 1024 reset R180 28
        IOMARKER 576 1536 sel_ver R180 28
        BEGIN INSTANCE XLXI_1 1760 1152 R0
        END INSTANCE
        IOMARKER 2256 1056 Qout(39:0) R0 28
    END SHEET
END SCHEMATIC
