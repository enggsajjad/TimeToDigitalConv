VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL startsync
        SIGNAL XLXN_4(39:0)
        SIGNAL logic0
        SIGNAL reset
        SIGNAL Qout(39:0)
        SIGNAL XLXN_5(39:0)
        SIGNAL clksync
        SIGNAL sel_ver
        SIGNAL Q(39:0)
        PORT Input startsync
        PORT Input logic0
        PORT Input reset
        PORT Output Qout(39:0)
        PORT Input clksync
        PORT Input sel_ver
        BEGIN BLOCKDEF ildce40_1_gebus
            TIMESTAMP 2007 5 14 9 6 52
            RECTANGLE N 64 -256 400 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 400 -224 464 -224 
            RECTANGLE N 400 -236 464 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF imult_andline40
            TIMESTAMP 2007 5 14 9 6 50
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF ixorcyline40_d
            TIMESTAMP 2007 5 14 9 6 46
            RECTANGLE N 64 -128 352 0 
            LINE N 64 -96 0 -96 
            LINE N 352 -96 416 -96 
            RECTANGLE N 352 -108 416 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF sel_vernier
            TIMESTAMP 2007 6 4 11 1 54
            LINE N 64 96 0 96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
            RECTANGLE N 64 -128 320 128 
        END BLOCKDEF
        BEGIN BLOCK latchline ildce40_1_gebus
            BEGIN ATTR RLOC "R1C0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN reset reset
            PIN Gbar logic0
            PIN GE(39:0) XLXN_5(39:0)
            PIN Din(39:0) XLXN_4(39:0)
            PIN Qout(39:0) Q(39:0)
        END BLOCK
        BEGIN BLOCK andline imult_andline40
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN Vin startsync
            PIN Vout(39:0) XLXN_4(39:0)
        END BLOCK
        BEGIN BLOCK xorline ixorcyline40_d
            BEGIN ATTR RLOC "R1C0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN Vin clksync
            PIN Vout(39:0) XLXN_5(39:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 sel_vernier
            PIN Vin(39:0) Q(39:0)
            PIN Vout(39:0) Qout(39:0)
            PIN sel_ver sel_ver
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE xorline 640 1488 R0
            BEGIN DISPLAY 112 32 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 160 60 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE latchline 1280 1344 R0
            BEGIN DISPLAY 144 -344 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH startsync
            WIRE 256 976 576 976
            WIRE 576 976 576 992
            WIRE 576 992 592 992
        END BRANCH
        BEGIN BRANCH XLXN_4(39:0)
            WIRE 976 992 1040 992
            WIRE 1040 992 1040 1312
            WIRE 1040 1312 1280 1312
        END BRANCH
        BEGIN BRANCH reset
            WIRE 208 1120 1280 1120
        END BRANCH
        BEGIN BRANCH XLXN_5(39:0)
            WIRE 1056 1392 1120 1392
            WIRE 1120 1248 1120 1392
            WIRE 1120 1248 1280 1248
        END BRANCH
        BEGIN BRANCH clksync
            WIRE 224 1392 640 1392
        END BRANCH
        IOMARKER 224 1392 clksync R180 28
        BEGIN BRANCH logic0
            WIRE 224 1184 1280 1184
        END BRANCH
        IOMARKER 208 1120 reset R180 28
        IOMARKER 224 1184 logic0 R180 28
        BEGIN INSTANCE andline 592 1024 R0
            BEGIN DISPLAY 116 -144 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 148 -192 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        IOMARKER 256 976 startsync R180 28
        BEGIN BRANCH Qout(39:0)
            WIRE 2288 1056 2768 1056
        END BRANCH
        IOMARKER 1680 1472 sel_ver R180 28
        BEGIN INSTANCE XLXI_1 1904 1152 R0
        END INSTANCE
        BEGIN BRANCH Q(39:0)
            WIRE 1744 1120 1904 1120
        END BRANCH
        IOMARKER 2768 1056 Qout(39:0) R0 28
        BEGIN BRANCH sel_ver
            WIRE 1680 1472 1792 1472
            WIRE 1792 1248 1904 1248
            WIRE 1792 1248 1792 1472
        END BRANCH
    END SHEET
END SCHEMATIC
