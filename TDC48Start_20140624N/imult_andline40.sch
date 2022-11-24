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
        SIGNAL Vout(15:0)
        SIGNAL Vout(31)
        SIGNAL Vout(39:32)
        SIGNAL Vin
        SIGNAL Vout(15)
        PORT Output Vout(39:0)
        PORT Input Vin
        BEGIN BLOCKDEF imult_andline16
            TIMESTAMP 2006 12 18 11 8 58
            LINE N 64 -32 0 -32 
            LINE N 64 -32 0 -32 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
            RECTANGLE N 64 -64 320 0 
        END BLOCKDEF
        BEGIN BLOCKDEF imult_andline8
            TIMESTAMP 2006 12 18 11 8 54
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCK andline_a imult_andline16
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN Vin Vin
            PIN Vout(15:0) Vout(15:0)
        END BLOCK
        BEGIN BLOCK andline_c imult_andline8
            BEGIN ATTR RLOC "R0C16"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN Vin Vout(31)
            PIN Vout(7:0) Vout(39:32)
        END BLOCK
        BEGIN BLOCK andline_b imult_andline16
            BEGIN ATTR RLOC "R0C8"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN Vin Vout(15)
            PIN Vout(15:0) Vout(31:16)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Vout(39:0)
            WIRE 1824 768 1920 768
            WIRE 1920 768 1920 848
            WIRE 1920 848 1920 864
            WIRE 1920 864 1920 1088
            WIRE 1920 1088 1920 1280
            WIRE 1920 1280 1920 1520
            WIRE 1920 1520 1920 1712
            WIRE 1824 1088 1920 1088
            WIRE 1824 1280 1920 1280
        END BRANCH
        BUSTAP 1824 768 1728 768
        BUSTAP 1824 1088 1728 1088
        BEGIN BRANCH Vout(31:16)
            WIRE 1488 1088 1728 1088
        END BRANCH
        BEGIN BRANCH Vout(15:0)
            WIRE 1504 768 1728 768
        END BRANCH
        BEGIN INSTANCE andline_c 1120 1312 R0
            BEGIN DISPLAY 116 80 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Vout(31)
            WIRE 960 1280 1120 1280
        END BRANCH
        BEGIN BRANCH Vout(39:32)
            WIRE 1504 1280 1728 1280
        END BRANCH
        BUSTAP 1824 1280 1728 1280
        BEGIN INSTANCE andline_a 1120 800 R0
            BEGIN DISPLAY 96 -168 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Vin
            WIRE 880 768 1120 768
        END BRANCH
        IOMARKER 880 768 Vin R180 28
        BEGIN INSTANCE andline_b 1104 1120 R0
            BEGIN DISPLAY 100 -156 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Vout(15)
            WIRE 944 1088 1104 1088
        END BRANCH
        IOMARKER 1920 1712 Vout(39:0) R90 28
    END SHEET
END SCHEMATIC
