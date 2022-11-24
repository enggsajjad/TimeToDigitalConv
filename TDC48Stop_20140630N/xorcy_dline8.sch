VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Vout(7:0)
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_31
        SIGNAL Vin
        SIGNAL Vout(0)
        SIGNAL Vout(1)
        SIGNAL Vout(2)
        SIGNAL Vout(3)
        SIGNAL Vout(4)
        SIGNAL Vout(5)
        SIGNAL Vout(6)
        SIGNAL Vout(7)
        PORT Output Vout(7:0)
        PORT Input Vin
        BEGIN BLOCKDEF xorcy_d
            TIMESTAMP 2001 2 2 12 36 12
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            LINE N 128 -144 64 -144 
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -160 208 -160 
            LINE N 176 -128 208 -160 
            LINE N 256 -96 208 -96 
            LINE N 128 -48 64 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2001 2 2 12 52 44
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK xor_2 xorcy_d
            BEGIN ATTR RLOC "R0C1.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CI XLXN_31
            PIN LI XLXN_2
            PIN LO Vout(2)
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK xor_3 xorcy_d
            BEGIN ATTR RLOC "R0C1.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CI XLXN_31
            PIN LI XLXN_3
            PIN LO Vout(3)
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK xor_4 xorcy_d
            BEGIN ATTR RLOC "R0C2.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CI XLXN_31
            PIN LI XLXN_4
            PIN LO Vout(4)
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK xor_5 xorcy_d
            BEGIN ATTR RLOC "R0C2.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CI XLXN_31
            PIN LI XLXN_5
            PIN LO Vout(5)
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK xor_6 xorcy_d
            BEGIN ATTR RLOC "R0C3.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CI XLXN_31
            PIN LI XLXN_6
            PIN LO Vout(6)
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK xor_7 xorcy_d
            BEGIN ATTR RLOC "R0C3.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CI XLXN_31
            PIN LI XLXN_7
            PIN LO Vout(7)
            PIN O
        END BLOCK
        BEGIN BLOCK xor_1 xorcy_d
            BEGIN ATTR RLOC "R0C0.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CI XLXN_31
            PIN LI XLXN_1
            PIN LO Vout(1)
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK xor_0 xorcy_d
            BEGIN ATTR RLOC "R0C0.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CI XLXN_31
            PIN LI Vin
            PIN LO Vout(0)
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_30 gnd
            PIN G XLXN_31
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 6400 2720
        BEGIN BRANCH Vout(7:0)
            WIRE 640 1440 960 1440
            WIRE 960 1440 1280 1440
            WIRE 1280 1440 1600 1440
            WIRE 1600 1440 1920 1440
            WIRE 1920 1440 2240 1440
            WIRE 2240 1440 2560 1440
            WIRE 2560 1440 2880 1440
            WIRE 2880 1440 3200 1440
            WIRE 3200 1440 3520 1440
            WIRE 3520 1440 3840 1440
            WIRE 3840 1440 4160 1440
            WIRE 4160 1440 4480 1440
            WIRE 4480 1440 4800 1440
            WIRE 4800 1440 5120 1440
            WIRE 5120 1440 5440 1440
            WIRE 5440 1440 5760 1440
            WIRE 5760 1440 6128 1440
            WIRE 960 1232 960 1440
            WIRE 1280 1216 1280 1440
            WIRE 1600 1232 1600 1440
            WIRE 1920 1216 1920 1440
            WIRE 2240 1216 2240 1440
            WIRE 2560 1216 2560 1440
            WIRE 2880 1216 2880 1440
            WIRE 3200 1216 3200 1440
            WIRE 3520 1216 3520 1440
            WIRE 3840 1216 3840 1440
            WIRE 4160 1216 4160 1440
            WIRE 4480 1216 4480 1440
            WIRE 4800 1216 4800 1440
            WIRE 5120 1216 5120 1440
            WIRE 5440 1216 5440 1440
            WIRE 5760 1216 5760 1440
        END BRANCH
        BEGIN INSTANCE xor_2 1296 736 M180
            BEGIN DISPLAY 0 -200 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE xor_3 1616 736 M180
            BEGIN DISPLAY 0 -200 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE xor_4 1936 736 M180
            BEGIN DISPLAY 0 -200 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE xor_5 2256 736 M180
            BEGIN DISPLAY 0 -200 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE xor_6 2576 736 M180
            BEGIN DISPLAY 0 -200 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE xor_7 2896 736 M180
            BEGIN DISPLAY 0 -200 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE xor_1 976 736 M180
            BEGIN DISPLAY 0 -200 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE xor_0 656 736 M180
            BEGIN DISPLAY 0 -200 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 912 832 944 832
            WIRE 944 832 944 864
            WIRE 944 864 976 864
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1232 832 1264 832
            WIRE 1264 832 1264 864
            WIRE 1264 864 1296 864
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1552 832 1584 832
            WIRE 1584 832 1584 864
            WIRE 1584 864 1616 864
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1872 832 1904 832
            WIRE 1904 832 1904 864
            WIRE 1904 864 1936 864
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 2192 832 2224 832
            WIRE 2224 832 2224 864
            WIRE 2224 864 2256 864
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 2512 832 2544 832
            WIRE 2544 832 2544 864
            WIRE 2544 864 2576 864
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 2832 832 2864 832
            WIRE 2864 832 2864 864
            WIRE 2864 864 2896 864
        END BRANCH
        BEGIN BRANCH Vin
            WIRE 480 864 656 864
        END BRANCH
        BUSTAP 960 1232 960 1136
        BUSTAP 1280 1216 1280 1120
        BUSTAP 1600 1232 1600 1136
        BUSTAP 1920 1216 1920 1120
        BUSTAP 2240 1216 2240 1120
        BUSTAP 2560 1216 2560 1120
        BUSTAP 2880 1216 2880 1120
        BUSTAP 3200 1216 3200 1120
        IOMARKER 6128 1440 Vout(7:0) R0 28
        BEGIN BRANCH Vout(0)
            WIRE 912 896 960 896
            WIRE 960 896 960 1136
        END BRANCH
        BEGIN BRANCH Vout(1)
            WIRE 1232 896 1280 896
            WIRE 1280 896 1280 1120
        END BRANCH
        BEGIN BRANCH Vout(2)
            WIRE 1552 896 1600 896
            WIRE 1600 896 1600 1136
        END BRANCH
        BEGIN BRANCH Vout(3)
            WIRE 1872 896 1920 896
            WIRE 1920 896 1920 1120
        END BRANCH
        BEGIN BRANCH Vout(4)
            WIRE 2192 896 2240 896
            WIRE 2240 896 2240 1120
        END BRANCH
        BEGIN BRANCH Vout(5)
            WIRE 2512 896 2560 896
            WIRE 2560 896 2560 1120
        END BRANCH
        BEGIN BRANCH Vout(6)
            WIRE 2832 896 2880 896
            WIRE 2880 896 2880 1120
        END BRANCH
        BEGIN BRANCH Vout(7)
            WIRE 3152 896 3200 896
            WIRE 3200 896 3200 1120
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 464 688 608 688
            WIRE 608 688 608 800
            WIRE 608 800 656 800
            WIRE 608 688 944 688
            WIRE 944 688 944 800
            WIRE 944 800 976 800
            WIRE 944 688 1248 688
            WIRE 1248 688 1248 800
            WIRE 1248 800 1296 800
            WIRE 1248 688 1584 688
            WIRE 1584 688 1584 800
            WIRE 1584 800 1616 800
            WIRE 1584 688 1888 688
            WIRE 1888 688 1888 800
            WIRE 1888 800 1936 800
            WIRE 1888 688 2224 688
            WIRE 2224 688 2224 800
            WIRE 2224 800 2256 800
            WIRE 2224 688 2528 688
            WIRE 2528 688 2528 800
            WIRE 2528 800 2576 800
            WIRE 2528 688 2864 688
            WIRE 2864 688 2864 800
            WIRE 2864 800 2896 800
            WIRE 2864 688 3168 688
            WIRE 3168 688 3168 800
            WIRE 3168 800 3216 800
            WIRE 3168 688 3504 688
            WIRE 3504 688 3504 800
            WIRE 3504 800 3536 800
            WIRE 3504 688 3808 688
            WIRE 3808 688 3808 800
            WIRE 3808 800 3856 800
            WIRE 3808 688 4144 688
            WIRE 4144 688 4144 800
            WIRE 4144 800 4176 800
            WIRE 4144 688 4448 688
            WIRE 4448 688 4448 800
            WIRE 4448 800 4496 800
            WIRE 4448 688 4784 688
            WIRE 4784 688 4784 800
            WIRE 4784 800 4816 800
            WIRE 4784 688 5120 688
            WIRE 5120 688 5120 800
            WIRE 5120 800 5136 800
            WIRE 5120 688 5440 688
            WIRE 5440 688 5440 800
            WIRE 5440 800 5456 800
            WIRE 464 688 464 704
        END BRANCH
        INSTANCE XLXI_30 400 832 R0
        IOMARKER 480 864 Vin R180 28
    END SHEET
END SCHEMATIC
