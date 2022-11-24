VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Vin
        SIGNAL XLXN_18
        SIGNAL Vout(7:0)
        SIGNAL Vout(0)
        SIGNAL Vout(1)
        SIGNAL Vout(2)
        SIGNAL Vout(3)
        SIGNAL Vout(4)
        SIGNAL Vout(5)
        SIGNAL Vout(6)
        SIGNAL Vout(7)
        PORT Input Vin
        PORT Output Vout(7:0)
        BEGIN BLOCKDEF mult_and
            TIMESTAMP 2001 2 2 12 38 38
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 64 -144 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -64 64 -64 
            LINE N 144 -48 64 -48 
            LINE N 64 -48 64 -144 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 2 2 12 52 44
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK and_0 mult_and
            BEGIN ATTR RLOC "R0C0.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN I0 XLXN_18
            PIN I1 Vin
            PIN LO Vout(0)
        END BLOCK
        BEGIN BLOCK and_1 mult_and
            BEGIN ATTR RLOC "R0C0.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN I0 XLXN_18
            PIN I1 Vout(0)
            PIN LO Vout(1)
        END BLOCK
        BEGIN BLOCK and_2 mult_and
            BEGIN ATTR RLOC "R0C1.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN I0 XLXN_18
            PIN I1 Vout(1)
            PIN LO Vout(2)
        END BLOCK
        BEGIN BLOCK and_3 mult_and
            BEGIN ATTR RLOC "R0C1.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN I0 XLXN_18
            PIN I1 Vout(2)
            PIN LO Vout(3)
        END BLOCK
        BEGIN BLOCK and_4 mult_and
            BEGIN ATTR RLOC "R0C2.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN I0 XLXN_18
            PIN I1 Vout(3)
            PIN LO Vout(4)
        END BLOCK
        BEGIN BLOCK and_5 mult_and
            BEGIN ATTR RLOC "R0C2.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN I0 XLXN_18
            PIN I1 Vout(4)
            PIN LO Vout(5)
        END BLOCK
        BEGIN BLOCK and_6 mult_and
            BEGIN ATTR RLOC "R0C3.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN I0 XLXN_18
            PIN I1 Vout(5)
            PIN LO Vout(6)
        END BLOCK
        BEGIN BLOCK and_7 mult_and
            BEGIN ATTR RLOC "R0C3.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN I0 XLXN_18
            PIN I1 Vout(6)
            PIN LO Vout(7)
        END BLOCK
        BEGIN BLOCK XLXI_33 vcc
            PIN P XLXN_18
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN INSTANCE and_0 480 768 R0
            BEGIN DISPLAY 0 -144 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE and_1 800 768 R0
            BEGIN DISPLAY 0 -144 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE and_2 1120 768 R0
            BEGIN DISPLAY 0 -144 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE and_3 1440 768 R0
            BEGIN DISPLAY 0 -144 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE and_4 1760 768 R0
            BEGIN DISPLAY 0 -144 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE and_5 2080 768 R0
            BEGIN DISPLAY 0 -144 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE and_6 2400 768 R0
            BEGIN DISPLAY 0 -144 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE and_7 2720 768 R0
            BEGIN DISPLAY 0 -144 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Vin
            WIRE 288 640 480 640
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 272 544 416 544
            WIRE 416 544 416 704
            WIRE 416 704 480 704
            WIRE 416 544 784 544
            WIRE 784 544 784 704
            WIRE 784 704 800 704
            WIRE 784 544 1104 544
            WIRE 1104 544 1104 704
            WIRE 1104 704 1120 704
            WIRE 1104 544 1424 544
            WIRE 1424 544 1424 704
            WIRE 1424 704 1440 704
            WIRE 1424 544 1744 544
            WIRE 1744 544 1744 704
            WIRE 1744 704 1760 704
            WIRE 1744 544 2064 544
            WIRE 2064 544 2064 704
            WIRE 2064 704 2080 704
            WIRE 2064 544 2384 544
            WIRE 2384 544 2384 704
            WIRE 2384 704 2400 704
            WIRE 2384 544 2704 544
            WIRE 2704 544 2704 704
            WIRE 2704 704 2720 704
            WIRE 2704 544 3024 544
            WIRE 3024 544 3024 704
            WIRE 3024 704 3040 704
            WIRE 3024 544 3344 544
            WIRE 3344 544 3344 704
            WIRE 3344 704 3360 704
            WIRE 3344 544 3664 544
            WIRE 3664 544 3664 704
            WIRE 3664 704 3680 704
            WIRE 3664 544 3984 544
            WIRE 3984 544 3984 704
            WIRE 3984 704 4000 704
            WIRE 3984 544 4304 544
            WIRE 4304 544 4304 704
            WIRE 4304 704 4320 704
            WIRE 4304 544 4624 544
            WIRE 4624 544 4624 704
            WIRE 4624 704 4640 704
            WIRE 4624 544 4944 544
            WIRE 4944 544 4944 704
            WIRE 4944 704 4960 704
            WIRE 4944 544 5264 544
            WIRE 5264 544 5264 704
            WIRE 5264 704 5280 704
        END BRANCH
        INSTANCE XLXI_33 208 544 R0
        IOMARKER 288 640 Vin R180 28
        BEGIN BRANCH Vout(7:0)
            WIRE 496 1648 816 1648
            WIRE 816 1648 1136 1648
            WIRE 1136 1648 1456 1648
            WIRE 1456 1648 1776 1648
            WIRE 1776 1648 2096 1648
            WIRE 2096 1648 2416 1648
            WIRE 2416 1648 2736 1648
            WIRE 2736 1648 3056 1648
            WIRE 3056 1648 3376 1648
            WIRE 3376 1648 3696 1648
            WIRE 3696 1648 4016 1648
            WIRE 4016 1648 4336 1648
            WIRE 4336 1648 4656 1648
            WIRE 4656 1648 4976 1648
            WIRE 4976 1648 5296 1648
            WIRE 5296 1648 5616 1648
            WIRE 5616 1648 5984 1648
            WIRE 816 1440 816 1648
            WIRE 1136 1424 1136 1648
            WIRE 1456 1440 1456 1648
            WIRE 1776 1424 1776 1648
            WIRE 2096 1424 2096 1648
            WIRE 2416 1424 2416 1648
            WIRE 2736 1424 2736 1648
            WIRE 3056 1424 3056 1648
            WIRE 3376 1424 3376 1648
            WIRE 3696 1424 3696 1648
            WIRE 4016 1424 4016 1648
            WIRE 4336 1424 4336 1648
            WIRE 4656 1424 4656 1648
            WIRE 4976 1424 4976 1648
            WIRE 5296 1424 5296 1648
            WIRE 5616 1424 5616 1648
        END BRANCH
        BUSTAP 816 1440 816 1344
        BUSTAP 1136 1424 1136 1328
        BUSTAP 1456 1440 1456 1344
        BUSTAP 1776 1424 1776 1328
        BUSTAP 2096 1424 2096 1328
        BUSTAP 2416 1424 2416 1328
        BUSTAP 2736 1424 2736 1328
        BUSTAP 3056 1424 3056 1328
        BEGIN BRANCH Vout(0)
            WIRE 736 672 768 672
            WIRE 768 672 768 1104
            WIRE 768 1104 816 1104
            WIRE 816 1104 816 1344
            WIRE 768 640 768 672
            WIRE 768 640 800 640
        END BRANCH
        BEGIN BRANCH Vout(1)
            WIRE 1056 672 1088 672
            WIRE 1088 672 1088 1104
            WIRE 1088 1104 1136 1104
            WIRE 1136 1104 1136 1328
            WIRE 1088 640 1088 672
            WIRE 1088 640 1120 640
        END BRANCH
        BEGIN BRANCH Vout(2)
            WIRE 1376 672 1408 672
            WIRE 1408 672 1408 1104
            WIRE 1408 1104 1456 1104
            WIRE 1456 1104 1456 1344
            WIRE 1408 640 1408 672
            WIRE 1408 640 1440 640
        END BRANCH
        BEGIN BRANCH Vout(3)
            WIRE 1696 672 1728 672
            WIRE 1728 672 1728 1104
            WIRE 1728 1104 1776 1104
            WIRE 1776 1104 1776 1328
            WIRE 1728 640 1728 672
            WIRE 1728 640 1760 640
        END BRANCH
        BEGIN BRANCH Vout(4)
            WIRE 2016 672 2048 672
            WIRE 2048 672 2048 1104
            WIRE 2048 1104 2096 1104
            WIRE 2096 1104 2096 1328
            WIRE 2048 640 2048 672
            WIRE 2048 640 2080 640
        END BRANCH
        BEGIN BRANCH Vout(5)
            WIRE 2336 672 2368 672
            WIRE 2368 672 2368 1104
            WIRE 2368 1104 2416 1104
            WIRE 2416 1104 2416 1328
            WIRE 2368 640 2368 672
            WIRE 2368 640 2400 640
        END BRANCH
        BEGIN BRANCH Vout(6)
            WIRE 2656 672 2688 672
            WIRE 2688 672 2688 1104
            WIRE 2688 1104 2736 1104
            WIRE 2736 1104 2736 1328
            WIRE 2688 640 2688 672
            WIRE 2688 640 2720 640
        END BRANCH
        BEGIN BRANCH Vout(7)
            WIRE 2976 672 3008 672
            WIRE 3008 672 3008 1104
            WIRE 3008 1104 3056 1104
            WIRE 3056 1104 3056 1328
            WIRE 3008 640 3008 672
            WIRE 3008 640 3040 640
        END BRANCH
        IOMARKER 5984 1648 Vout(7:0) R0 28
    END SHEET
END SCHEMATIC
