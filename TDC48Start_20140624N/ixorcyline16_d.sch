VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL "Vout(15:0)"
        SIGNAL "XLXN_1"
        SIGNAL "XLXN_2"
        SIGNAL "XLXN_3"
        SIGNAL "XLXN_4"
        SIGNAL "XLXN_5"
        SIGNAL "XLXN_6"
        SIGNAL "XLXN_7"
        SIGNAL "XLXN_8"
        SIGNAL "XLXN_9"
        SIGNAL "XLXN_10"
        SIGNAL "XLXN_11"
        SIGNAL "XLXN_12"
        SIGNAL "XLXN_13"
        SIGNAL "XLXN_14"
        SIGNAL "XLXN_16"
        SIGNAL "XLXN_31"
        SIGNAL "Vin"
        SIGNAL "Vout(0)"
        SIGNAL "Vout(1)"
        SIGNAL "Vout(2)"
        SIGNAL "Vout(3)"
        SIGNAL "Vout(4)"
        SIGNAL "Vout(5)"
        SIGNAL "Vout(6)"
        SIGNAL "Vout(7)"
        SIGNAL "Vout(8)"
        SIGNAL "Vout(9)"
        SIGNAL "Vout(10)"
        SIGNAL "Vout(11)"
        SIGNAL "Vout(12)"
        SIGNAL "Vout(13)"
        SIGNAL "Vout(14)"
        SIGNAL "Vout(15)"
        PORT Output "Vout(15:0)"
        PORT Input "Vin"
        BEGIN BLOCKDEF "xorcy_d"
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
        BEGIN BLOCKDEF "xorcy"
            TIMESTAMP 2001 2 2 12 51 24
            ARC N 44 -224 220 -48 128 -48 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            ARC N 44 -144 220 32 208 -96 128 -144 
            LINE N 128 -144 64 -144 
            LINE N 0 -128 60 -128 
            LINE N 0 -64 64 -64 
            LINE N 128 -48 64 -48 
            LINE N 256 -96 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF "gnd"
            TIMESTAMP 2001 2 2 12 52 44
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK "xor_2" "xorcy_d"
            BEGIN ATTR RLOC "R0C1.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_2"
            PIN "LO" "Vout(2)"
            PIN "O" "XLXN_3"
        END BLOCK
        BEGIN BLOCK "xor_3" "xorcy_d"
            BEGIN ATTR RLOC "R0C1.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_3"
            PIN "LO" "Vout(3)"
            PIN "O" "XLXN_4"
        END BLOCK
        BEGIN BLOCK "xor_4" "xorcy_d"
            BEGIN ATTR RLOC "R0C2.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_4"
            PIN "LO" "Vout(4)"
            PIN "O" "XLXN_5"
        END BLOCK
        BEGIN BLOCK "xor_5" "xorcy_d"
            BEGIN ATTR RLOC "R0C2.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_5"
            PIN "LO" "Vout(5)"
            PIN "O" "XLXN_6"
        END BLOCK
        BEGIN BLOCK "xor_6" "xorcy_d"
            BEGIN ATTR RLOC "R0C3.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_6"
            PIN "LO" "Vout(6)"
            PIN "O" "XLXN_7"
        END BLOCK
        BEGIN BLOCK "xor_7" "xorcy_d"
            BEGIN ATTR RLOC "R0C3.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_7"
            PIN "LO" "Vout(7)"
            PIN "O" "XLXN_8"
        END BLOCK
        BEGIN BLOCK "xor_8" "xorcy_d"
            BEGIN ATTR RLOC "R0C4.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_8"
            PIN "LO" "Vout(8)"
            PIN "O" "XLXN_9"
        END BLOCK
        BEGIN BLOCK "xor_9" "xorcy_d"
            BEGIN ATTR RLOC "R0C4.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_9"
            PIN "LO" "Vout(9)"
            PIN "O" "XLXN_11"
        END BLOCK
        BEGIN BLOCK "xor_10" "xorcy_d"
            BEGIN ATTR RLOC "R0C5.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_11"
            PIN "LO" "Vout(10)"
            PIN "O" "XLXN_10"
        END BLOCK
        BEGIN BLOCK "xor_11" "xorcy_d"
            BEGIN ATTR RLOC "R0C5.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_10"
            PIN "LO" "Vout(11)"
            PIN "O" "XLXN_12"
        END BLOCK
        BEGIN BLOCK "xor_12" "xorcy_d"
            BEGIN ATTR RLOC "R0C6.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_12"
            PIN "LO" "Vout(12)"
            PIN "O" "XLXN_13"
        END BLOCK
        BEGIN BLOCK "xor_13" "xorcy_d"
            BEGIN ATTR RLOC "R0C6.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_13"
            PIN "LO" "Vout(13)"
            PIN "O" "XLXN_14"
        END BLOCK
        BEGIN BLOCK "xor_14" "xorcy_d"
            BEGIN ATTR RLOC "R0C7.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_14"
            PIN "LO" "Vout(14)"
            PIN "O" "XLXN_16"
        END BLOCK
        BEGIN BLOCK "xor_1" "xorcy_d"
            BEGIN ATTR RLOC "R0C0.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_1"
            PIN "LO" "Vout(1)"
            PIN "O" "XLXN_2"
        END BLOCK
        BEGIN BLOCK "xor_0" "xorcy_d"
            BEGIN ATTR RLOC "R0C0.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "Vin"
            PIN "LO" "Vout(0)"
            PIN "O" "XLXN_1"
        END BLOCK
        BEGIN BLOCK "xor_15" "xorcy"
            BEGIN ATTR RLOC "R0C7.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN "CI" "XLXN_31"
            PIN "LI" "XLXN_16"
            PIN "O" "Vout(15)"
        END BLOCK
        BEGIN BLOCK "XLXI_30" "gnd"
            PIN "G" "XLXN_31"
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 6400 2720
        BEGIN BRANCH "Vout(15:0)"
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
        BEGIN INSTANCE "xor_2" 1296 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_3" 1616 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_4" 1936 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_5" 2256 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_6" 2576 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_7" 2896 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_8" 3216 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_9" 3536 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_10" 3856 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_11" 4176 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_12" 4496 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_13" 4816 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_14" 5136 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_1" 976 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE "xor_0" 656 736 M180
            BEGIN DISPLAY 0 -200 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH "XLXN_1"
            WIRE 912 832 944 832
            WIRE 944 832 944 864
            WIRE 944 864 976 864
        END BRANCH
        BEGIN BRANCH "XLXN_2"
            WIRE 1232 832 1264 832
            WIRE 1264 832 1264 864
            WIRE 1264 864 1296 864
        END BRANCH
        BEGIN BRANCH "XLXN_3"
            WIRE 1552 832 1584 832
            WIRE 1584 832 1584 864
            WIRE 1584 864 1616 864
        END BRANCH
        BEGIN BRANCH "XLXN_4"
            WIRE 1872 832 1904 832
            WIRE 1904 832 1904 864
            WIRE 1904 864 1936 864
        END BRANCH
        BEGIN BRANCH "XLXN_5"
            WIRE 2192 832 2224 832
            WIRE 2224 832 2224 864
            WIRE 2224 864 2256 864
        END BRANCH
        BEGIN BRANCH "XLXN_6"
            WIRE 2512 832 2544 832
            WIRE 2544 832 2544 864
            WIRE 2544 864 2576 864
        END BRANCH
        BEGIN BRANCH "XLXN_7"
            WIRE 2832 832 2864 832
            WIRE 2864 832 2864 864
            WIRE 2864 864 2896 864
        END BRANCH
        BEGIN BRANCH "XLXN_8"
            WIRE 3152 832 3184 832
            WIRE 3184 832 3184 864
            WIRE 3184 864 3216 864
        END BRANCH
        BEGIN BRANCH "XLXN_9"
            WIRE 3472 832 3504 832
            WIRE 3504 832 3504 864
            WIRE 3504 864 3536 864
        END BRANCH
        BEGIN BRANCH "XLXN_10"
            WIRE 4112 832 4144 832
            WIRE 4144 832 4144 864
            WIRE 4144 864 4176 864
        END BRANCH
        BEGIN BRANCH "XLXN_11"
            WIRE 3792 832 3824 832
            WIRE 3824 832 3824 864
            WIRE 3824 864 3856 864
        END BRANCH
        BEGIN BRANCH "XLXN_12"
            WIRE 4432 832 4464 832
            WIRE 4464 832 4464 864
            WIRE 4464 864 4496 864
        END BRANCH
        BEGIN BRANCH "XLXN_13"
            WIRE 4752 832 4784 832
            WIRE 4784 832 4784 864
            WIRE 4784 864 4816 864
        END BRANCH
        BEGIN BRANCH "XLXN_14"
            WIRE 5072 832 5104 832
            WIRE 5104 832 5104 864
            WIRE 5104 864 5136 864
        END BRANCH
        BEGIN INSTANCE "xor_15" 5456 736 M180
            BEGIN DISPLAY 0 -164 ATTR "RLOC"
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH "XLXN_16"
            WIRE 5392 832 5424 832
            WIRE 5424 832 5424 864
            WIRE 5424 864 5456 864
        END BRANCH
        BEGIN BRANCH "Vin"
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
        BUSTAP 3520 1216 3520 1120
        BUSTAP 3840 1216 3840 1120
        BUSTAP 4160 1216 4160 1120
        BUSTAP 4480 1216 4480 1120
        BUSTAP 4800 1216 4800 1120
        BUSTAP 5120 1216 5120 1120
        BUSTAP 5440 1216 5440 1120
        BUSTAP 5760 1216 5760 1120
        IOMARKER 6128 1440 "Vout(15:0)" R0 28
        BEGIN BRANCH "Vout(0)"
            WIRE 912 896 960 896
            WIRE 960 896 960 1136
        END BRANCH
        BEGIN BRANCH "Vout(1)"
            WIRE 1232 896 1280 896
            WIRE 1280 896 1280 1120
        END BRANCH
        BEGIN BRANCH "Vout(2)"
            WIRE 1552 896 1600 896
            WIRE 1600 896 1600 1136
        END BRANCH
        BEGIN BRANCH "Vout(3)"
            WIRE 1872 896 1920 896
            WIRE 1920 896 1920 1120
        END BRANCH
        BEGIN BRANCH "Vout(4)"
            WIRE 2192 896 2240 896
            WIRE 2240 896 2240 1120
        END BRANCH
        BEGIN BRANCH "Vout(5)"
            WIRE 2512 896 2560 896
            WIRE 2560 896 2560 1120
        END BRANCH
        BEGIN BRANCH "Vout(6)"
            WIRE 2832 896 2880 896
            WIRE 2880 896 2880 1120
        END BRANCH
        BEGIN BRANCH "Vout(7)"
            WIRE 3152 896 3200 896
            WIRE 3200 896 3200 1120
        END BRANCH
        BEGIN BRANCH "Vout(8)"
            WIRE 3472 896 3520 896
            WIRE 3520 896 3520 1120
        END BRANCH
        BEGIN BRANCH "Vout(9)"
            WIRE 3792 896 3840 896
            WIRE 3840 896 3840 1120
        END BRANCH
        BEGIN BRANCH "Vout(10)"
            WIRE 4112 896 4160 896
            WIRE 4160 896 4160 1120
        END BRANCH
        BEGIN BRANCH "Vout(11)"
            WIRE 4432 896 4480 896
            WIRE 4480 896 4480 1120
        END BRANCH
        BEGIN BRANCH "Vout(12)"
            WIRE 4752 896 4800 896
            WIRE 4800 896 4800 1120
        END BRANCH
        BEGIN BRANCH "Vout(13)"
            WIRE 5072 896 5120 896
            WIRE 5120 896 5120 1120
        END BRANCH
        BEGIN BRANCH "Vout(14)"
            WIRE 5392 896 5440 896
            WIRE 5440 896 5440 1120
        END BRANCH
        BEGIN BRANCH "Vout(15)"
            WIRE 5712 832 5760 832
            WIRE 5760 832 5760 1120
        END BRANCH
        BEGIN BRANCH "XLXN_31"
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
        INSTANCE "XLXI_30" 400 832 R0
        IOMARKER 480 864 "Vin" R180 28
    END SHEET
END SCHEMATIC
