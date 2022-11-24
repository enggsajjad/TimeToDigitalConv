VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL reset
        SIGNAL Gbar
        SIGNAL GE(39:0)
        SIGNAL Din(39:0)
        SIGNAL Qout(39:0)
        SIGNAL Qout(31:16)
        SIGNAL Qout(15:0)
        SIGNAL Din(31:16)
        SIGNAL Din(15:0)
        SIGNAL GE(15:0)
        SIGNAL GE(31:16)
        SIGNAL GE(39:32)
        SIGNAL Din(39:32)
        SIGNAL Qout(39:32)
        PORT Input reset
        PORT Input Gbar
        PORT Input GE(39:0)
        PORT Input Din(39:0)
        PORT Output Qout(39:0)
        BEGIN BLOCKDEF ildce16_1_gebus
            TIMESTAMP 2006 12 18 11 9 20
            RECTANGLE N 64 -256 400 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 400 -224 464 -224 
            RECTANGLE N 400 -236 464 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF ildce8_1_gebus
            TIMESTAMP 2006 12 18 11 9 16
            RECTANGLE N 64 -256 368 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 368 -224 432 -224 
            RECTANGLE N 368 -236 432 -212 
        END BLOCKDEF
        BEGIN BLOCK latchline_a ildce16_1_gebus
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN reset reset
            PIN Din(15:0) Din(15:0)
            PIN Gbar Gbar
            PIN GE(15:0) GE(15:0)
            PIN Qout(15:0) Qout(15:0)
        END BLOCK
        BEGIN BLOCK latchline_b ildce16_1_gebus
            BEGIN ATTR RLOC "R0C8"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN reset reset
            PIN Din(15:0) Din(31:16)
            PIN Gbar Gbar
            PIN GE(15:0) GE(31:16)
            PIN Qout(15:0) Qout(31:16)
        END BLOCK
        BEGIN BLOCK latchline_c ildce8_1_gebus
            BEGIN ATTR RLOC "R0C16"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN reset reset
            PIN Din(7:0) Din(39:32)
            PIN Gbar Gbar
            PIN GE(7:0) GE(39:32)
            PIN Qout(7:0) Qout(39:32)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE latchline_a 960 1024 R0
            BEGIN DISPLAY 148 -352 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE latchline_b 960 1504 R0
            BEGIN DISPLAY 148 -380 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BUSTAP 704 864 800 864
        BUSTAP 592 992 688 992
        BUSTAP 720 1344 816 1344
        BUSTAP 608 1472 704 1472
        BEGIN BRANCH GE(39:0)
            WIRE 448 1792 464 1792
            WIRE 464 1792 560 1792
            WIRE 448 1792 448 2496
            WIRE 464 992 464 1472
            WIRE 464 1472 608 1472
            WIRE 464 1472 464 1792
            WIRE 464 992 592 992
        END BRANCH
        BEGIN BRANCH Din(39:0)
            WIRE 256 864 704 864
            WIRE 256 864 256 1344
            WIRE 256 1344 720 1344
            WIRE 256 1344 256 1664
            WIRE 256 1664 656 1664
            WIRE 256 1664 256 2400
        END BRANCH
        BEGIN BRANCH Qout(39:0)
            WIRE 1760 800 1856 800
            WIRE 1856 800 1856 1280
            WIRE 1856 1280 1856 1600
            WIRE 1856 1600 1872 1600
            WIRE 1872 1600 1872 2080
            WIRE 1760 1280 1856 1280
            WIRE 1808 1600 1856 1600
        END BRANCH
        BUSTAP 1760 800 1664 800
        BUSTAP 1760 1280 1664 1280
        BEGIN BRANCH Qout(31:16)
            WIRE 1424 1280 1664 1280
        END BRANCH
        BEGIN BRANCH Qout(15:0)
            WIRE 1424 800 1664 800
        END BRANCH
        BEGIN BRANCH Din(31:16)
            WIRE 816 1344 960 1344
        END BRANCH
        BEGIN BRANCH Din(15:0)
            WIRE 800 864 960 864
        END BRANCH
        BEGIN BRANCH GE(15:0)
            WIRE 688 992 960 992
        END BRANCH
        BEGIN BRANCH GE(31:16)
            WIRE 704 1472 960 1472
        END BRANCH
        BEGIN BRANCH GE(39:32)
            WIRE 656 1792 672 1792
            WIRE 672 1792 672 1824
            WIRE 672 1824 992 1824
        END BRANCH
        BEGIN BRANCH Din(39:32)
            WIRE 752 1664 768 1664
            WIRE 768 1664 768 1696
            WIRE 768 1696 992 1696
        END BRANCH
        BUSTAP 656 1664 752 1664
        BUSTAP 560 1792 656 1792
        BEGIN BRANCH Qout(39:32)
            WIRE 1424 1632 1696 1632
            WIRE 1696 1600 1712 1600
            WIRE 1696 1600 1696 1632
        END BRANCH
        BUSTAP 1808 1600 1712 1600
        IOMARKER 240 800 reset R180 28
        IOMARKER 208 2240 Gbar R180 28
        BEGIN INSTANCE latchline_c 992 1856 R0
            BEGIN DISPLAY 164 -68 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 448 2496 GE(39:0) R90 28
        IOMARKER 256 2400 Din(39:0) R90 28
        IOMARKER 1872 2080 Qout(39:0) R90 28
        BEGIN BRANCH Gbar
            WIRE 208 2240 944 2240
            WIRE 928 928 960 928
            WIRE 928 928 928 1408
            WIRE 928 1408 960 1408
            WIRE 928 1408 928 1728
            WIRE 928 1728 944 1728
            WIRE 944 1728 960 1728
            WIRE 960 1728 960 1760
            WIRE 960 1760 992 1760
            WIRE 944 1728 944 2240
        END BRANCH
        BEGIN BRANCH reset
            WIRE 240 800 944 800
            WIRE 944 800 960 800
            WIRE 944 800 944 1280
            WIRE 944 1280 960 1280
            WIRE 944 1280 944 1632
            WIRE 944 1632 992 1632
            WIRE 912 1632 944 1632
        END BRANCH
    END SHEET
END SCHEMATIC
