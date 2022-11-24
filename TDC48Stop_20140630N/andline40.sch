VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Vout(39:0)
        SIGNAL Vout(31:16)
        SIGNAL Vout(31)
        SIGNAL Vout(39:32)
        SIGNAL Vout(15)
        SIGNAL Vout(15:0)
        SIGNAL Vin
        PORT Output Vout(39:0)
        PORT Input Vin
        BEGIN BLOCKDEF andline8
            TIMESTAMP 2014 6 26 7 4 51
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF andline16
            TIMESTAMP 2014 6 26 7 5 35
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 andline8
            BEGIN ATTR RLOC "R0C16"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN Vin Vout(31)
            PIN Vout(7:0) Vout(39:32)
        END BLOCK
        BEGIN BLOCK XLXI_2 andline16
            BEGIN ATTR RLOC "R0C8"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN Vin Vout(15)
            PIN Vout(15:0) Vout(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_3 andline16
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN Vin Vin
            PIN Vout(15:0) Vout(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Vout(39:0)
            WIRE 1808 896 1920 896
            WIRE 1920 896 1920 1088
            WIRE 1920 1088 1920 1280
            WIRE 1920 1280 2048 1280
            WIRE 1824 1088 1920 1088
            WIRE 1824 1280 1920 1280
        END BRANCH
        BUSTAP 1824 1088 1728 1088
        BEGIN BRANCH Vout(31:16)
            WIRE 1488 1088 1728 1088
        END BRANCH
        BEGIN BRANCH Vout(31)
            WIRE 960 1280 1120 1280
        END BRANCH
        BEGIN BRANCH Vout(39:32)
            WIRE 1504 1280 1728 1280
        END BRANCH
        BUSTAP 1824 1280 1728 1280
        BEGIN BRANCH Vout(15)
            WIRE 944 1088 1104 1088
        END BRANCH
        BEGIN INSTANCE XLXI_1 1120 1312 R0
            BEGIN DISPLAY 132 20 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1104 1120 R0
            BEGIN DISPLAY 132 16 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Vout(15:0)
            WIRE 1488 896 1712 896
        END BRANCH
        BEGIN BRANCH Vin
            WIRE 1024 896 1104 896
        END BRANCH
        BUSTAP 1808 896 1712 896
        BEGIN INSTANCE XLXI_3 1104 928 R0
            BEGIN DISPLAY 136 20 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 1024 896 Vin R180 28
        IOMARKER 2048 1280 Vout(39:0) R0 28
    END SHEET
END SCHEMATIC
