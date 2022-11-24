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
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4(7:0)
        SIGNAL XLXN_5(7:0)
        PORT Input reset
        PORT Input Gbar
        PORT Input GE(39:0)
        PORT Input Din(39:0)
        PORT Output Qout(39:0)
        BEGIN BLOCKDEF ildceline8
            TIMESTAMP 2014 6 26 7 21 11
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF ildceline16
            TIMESTAMP 2014 6 26 7 21 23
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 ildceline8
            BEGIN ATTR RLOC "R0C16"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN Din(7:0) Din(39:32)
            PIN Gbar Gbar
            PIN GE(7:0) GE(39:32)
            PIN Qout(7:0) Qout(39:32)
        END BLOCK
        BEGIN BLOCK XLXI_5 ildceline16
            BEGIN ATTR RLOC "R0C8"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN Din(15:0) Din(31:16)
            PIN Gbar Gbar
            PIN GE(15:0) GE(31:16)
            PIN Qout(15:0) Qout(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_6 ildceline16
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN Din(15:0) Din(15:0)
            PIN Gbar Gbar
            PIN GE(15:0) GE(15:0)
            PIN Qout(15:0) Qout(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BUSTAP 704 864 800 864
        BUSTAP 592 992 688 992
        BUSTAP 720 1344 816 1344
        BUSTAP 608 1472 704 1472
        BEGIN BRANCH GE(39:0)
            WIRE 256 1792 464 1792
            WIRE 464 1792 560 1792
            WIRE 464 992 464 1472
            WIRE 464 1472 608 1472
            WIRE 464 1472 464 1792
            WIRE 464 992 592 992
        END BRANCH
        BEGIN BRANCH Din(39:0)
            WIRE 240 1664 256 1664
            WIRE 256 1664 656 1664
            WIRE 256 864 704 864
            WIRE 256 864 256 1344
            WIRE 256 1344 720 1344
            WIRE 256 1344 256 1664
        END BRANCH
        BEGIN BRANCH Qout(39:0)
            WIRE 1760 800 1856 800
            WIRE 1856 800 1856 1280
            WIRE 1856 1280 1856 1600
            WIRE 1856 1600 1904 1600
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
            WIRE 816 1344 1040 1344
        END BRANCH
        BEGIN BRANCH Din(15:0)
            WIRE 800 864 1040 864
        END BRANCH
        BEGIN BRANCH GE(15:0)
            WIRE 688 992 1040 992
        END BRANCH
        BEGIN BRANCH GE(31:16)
            WIRE 704 1472 1040 1472
        END BRANCH
        BEGIN BRANCH GE(39:32)
            WIRE 656 1792 672 1792
            WIRE 672 1792 672 1824
            WIRE 672 1824 1040 1824
        END BRANCH
        BEGIN BRANCH Din(39:32)
            WIRE 752 1664 768 1664
            WIRE 768 1664 768 1696
            WIRE 768 1696 1040 1696
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
        BEGIN BRANCH Gbar
            WIRE 208 1728 272 1728
            WIRE 272 1728 272 1760
            WIRE 272 1760 928 1760
            WIRE 928 1760 1040 1760
            WIRE 928 928 1040 928
            WIRE 928 928 928 1408
            WIRE 928 1408 1040 1408
            WIRE 928 1408 928 1760
        END BRANCH
        IOMARKER 1904 1600 Qout(39:0) R0 28
        IOMARKER 240 1664 Din(39:0) R180 28
        IOMARKER 256 1792 GE(39:0) R180 28
        IOMARKER 208 1728 Gbar R180 28
        BEGIN BRANCH reset
            WIRE 240 800 944 800
            WIRE 944 800 944 1280
            WIRE 944 1280 1040 1280
            WIRE 944 1280 944 1632
            WIRE 944 1632 1040 1632
            WIRE 944 800 1040 800
        END BRANCH
        BEGIN INSTANCE XLXI_6 1040 1024 R0
            BEGIN DISPLAY 132 24 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1040 1504 R0
            BEGIN DISPLAY 144 24 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1040 1856 R0
            BEGIN DISPLAY 140 24 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
    END SHEET
END SCHEMATIC
