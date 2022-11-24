VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Vout(15:0)
        SIGNAL Vout(31:16)
        SIGNAL Vout(31)
        SIGNAL Vout(39:32)
        SIGNAL Vout(15)
        SIGNAL Vin
        SIGNAL Vout(39:0)
        SIGNAL XLXN_2
        PORT Input Vin
        PORT Output Vout(39:0)
        BEGIN BLOCKDEF ixorcyline16_d
            TIMESTAMP 2006 12 18 11 8 44
            RECTANGLE N 64 -128 352 0 
            LINE N 64 -32 0 -32 
            LINE N 352 -96 416 -96 
            RECTANGLE N 352 -108 416 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF ixorcyline8_d
            TIMESTAMP 2006 12 18 11 8 29
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF fmap
            TIMESTAMP 2001 2 2 12 54 15
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCK xorline_c ixorcyline8_d
            BEGIN ATTR RLOC "R0C16"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN Vin Vout(31)
            PIN Vout(7:0) Vout(39:32)
        END BLOCK
        BEGIN BLOCK xorline_b ixorcyline16_d
            BEGIN ATTR RLOC "R0C8"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN Vin Vout(15)
            PIN Vout(15:0) Vout(31:16)
        END BLOCK
        BEGIN BLOCK xorline_a ixorcyline16_d
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN Vin XLXN_2
            PIN Vout(15:0) Vout(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I Vin
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 fmap
            BEGIN ATTR RLOC "R0C0.S1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN I1
            PIN I2
            PIN I3
            PIN I4 Vin
            PIN O XLXN_2
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BUSTAP 1680 640 1584 640
        BUSTAP 1680 960 1584 960
        BEGIN BRANCH Vout(15:0)
            WIRE 1344 640 1584 640
        END BRANCH
        BEGIN BRANCH Vout(31:16)
            WIRE 1360 960 1584 960
        END BRANCH
        BEGIN INSTANCE xorline_a 928 736 R0
            BEGIN DISPLAY 124 -216 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE xorline_c 944 1248 R0
            BEGIN DISPLAY 96 32 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Vout(31)
            WIRE 752 1216 944 1216
        END BRANCH
        BEGIN INSTANCE xorline_b 944 1056 R0
            BEGIN DISPLAY 120 -228 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Vout(15)
            WIRE 736 1024 944 1024
        END BRANCH
        BEGIN BRANCH Vout(39:32)
            WIRE 1328 1216 1568 1216
        END BRANCH
        BUSTAP 1696 1216 1568 1216
        BEGIN BRANCH Vout(39:0)
            WIRE 1680 640 1760 640
            WIRE 1760 640 1760 960
            WIRE 1760 960 1760 1216
            WIRE 1760 1216 1760 1504
            WIRE 1760 1504 1760 1744
            WIRE 1680 960 1760 960
            WIRE 1696 1216 1760 1216
        END BRANCH
        IOMARKER 1760 1744 Vout(39:0) R90 28
        BEGIN BRANCH Vin
            WIRE 432 704 640 704
            WIRE 640 704 656 704
        END BRANCH
        INSTANCE XLXI_2 656 736 R0
        BEGIN BRANCH XLXN_2
            WIRE 880 704 928 704
        END BRANCH
        BEGIN BRANCH Vin
            WIRE 480 144 528 144
            WIRE 528 144 528 160
            WIRE 528 160 560 160
            BEGIN DISPLAY 528 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 944 256 976 256
            WIRE 976 240 1008 240
            WIRE 976 240 976 256
            BEGIN DISPLAY 976 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 432 704 Vin R180 28
        BEGIN INSTANCE XLXI_3 560 480 R0
            BEGIN DISPLAY 108 -328 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
    END SHEET
END SCHEMATIC
