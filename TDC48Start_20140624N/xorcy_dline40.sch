VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Vout(31:16)
        SIGNAL Vout(31)
        SIGNAL Vout(39:32)
        SIGNAL Vout(15)
        SIGNAL Vin
        SIGNAL Vout(39:0)
        SIGNAL XLXN_2
        SIGNAL XLXN_4(15:0)
        SIGNAL XLXN_7
        SIGNAL Vout(15:0)
        PORT Input Vin
        PORT Output Vout(39:0)
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
        BEGIN BLOCKDEF xorcy_dline8
            TIMESTAMP 2014 6 26 7 13 8
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF xorcy_dline16
            TIMESTAMP 2014 6 26 7 13 19
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 xorcy_dline8
            BEGIN ATTR RLOC "R0C16"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN Vin Vout(31)
            PIN Vout(7:0) Vout(39:32)
        END BLOCK
        BEGIN BLOCK XLXI_5 xorcy_dline16
            BEGIN ATTR RLOC "R0C8"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN Vin Vout(15)
            PIN Vout(15:0) Vout(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I Vin
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_6 xorcy_dline16
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN Vin XLXN_2
            PIN Vout(15:0) Vout(15:0)
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
        BEGIN BRANCH Vout(31)
            WIRE 752 1216 944 1216
        END BRANCH
        BEGIN BRANCH Vout(15)
            WIRE 736 1024 944 1024
        END BRANCH
        BEGIN BRANCH Vout(39:32)
            WIRE 1328 1216 1568 1216
        END BRANCH
        BUSTAP 1696 1216 1568 1216
        BEGIN INSTANCE XLXI_4 944 1248 R0
            BEGIN DISPLAY 136 24 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_5 944 1056 R0
            BEGIN DISPLAY 144 24 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Vin
            WIRE 704 848 736 848
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 960 848 1008 848
        END BRANCH
        INSTANCE XLXI_2 736 880 R0
        BEGIN INSTANCE XLXI_6 1008 880 R0
            BEGIN DISPLAY 144 28 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 704 848 Vin R180 28
        BEGIN BRANCH Vout(39:0)
            WIRE 1680 960 1760 960
            WIRE 1760 960 1760 1216
            WIRE 1760 1216 1856 1216
            WIRE 1696 1216 1760 1216
            WIRE 1760 784 1760 960
        END BRANCH
        BEGIN BRANCH Vout(31:16)
            WIRE 1328 1024 1584 1024
            WIRE 1584 960 1584 1024
        END BRANCH
        BUSTAP 1680 960 1584 960
        IOMARKER 1856 1216 Vout(39:0) R0 28
        BEGIN INSTANCE XLXI_3 576 688 R0
            BEGIN DISPLAY 108 -328 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH XLXN_2
            WIRE 960 464 992 464
            WIRE 992 448 992 464
            WIRE 992 448 1024 448
            BEGIN DISPLAY 992 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Vin
            WIRE 496 352 544 352
            WIRE 544 352 544 368
            WIRE 544 368 576 368
            BEGIN DISPLAY 544 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Vout(15:0)
            WIRE 1392 848 1488 848
            WIRE 1488 784 1664 784
            WIRE 1488 784 1488 848
        END BRANCH
        BUSTAP 1760 784 1664 784
    END SHEET
END SCHEMATIC
