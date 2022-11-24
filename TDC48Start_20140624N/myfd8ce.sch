VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CE
        SIGNAL C
        SIGNAL CLR
        SIGNAL Q(0)
        SIGNAL Q(1)
        SIGNAL Q(2)
        SIGNAL Q(3)
        SIGNAL Q(4)
        SIGNAL Q(5)
        SIGNAL Q(6)
        SIGNAL Q(7)
        SIGNAL Q(7:0)
        SIGNAL D(0)
        SIGNAL D(1)
        SIGNAL D(2)
        SIGNAL D(3)
        SIGNAL D(4)
        SIGNAL D(5)
        SIGNAL D(6)
        SIGNAL D(7)
        SIGNAL D(7:0)
        PORT Input CE
        PORT Input C
        PORT Input CLR
        PORT Output Q(7:0)
        PORT Input D(7:0)
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2001 5 4 10 19 22
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF title
            TIMESTAMP 2001 5 4 10 19 22
            LINE N -764 -288 -796 -256 
            LINE N -732 -256 -764 -288 
            LINE N -776 -256 -732 -256 
            LINE N -788 -264 -776 -256 
            LINE N -840 -256 -796 -256 
            LINE N -804 -256 -836 -288 
            LINE N -800 -256 -832 -288 
            LINE N -796 -256 -828 -288 
            LINE N -832 -288 -800 -320 
            LINE N -828 -288 -796 -320 
            LINE N -828 -352 -796 -384 
            LINE N -840 -384 -796 -384 
            LINE N -796 -384 -764 -352 
            LINE N -800 -320 -832 -352 
            LINE N -796 -320 -828 -352 
            LINE N -804 -320 -836 -352 
            LINE N -832 -352 -800 -384 
            LINE N -836 -352 -804 -384 
            LINE N -872 -352 -840 -384 
            LINE N -868 -352 -836 -384 
            LINE N -732 -384 -764 -352 
            LINE N -776 -384 -732 -384 
            LINE N -788 -376 -776 -384 
            LINE N -764 -356 -736 -384 
            LINE N -768 -360 -740 -384 
            LINE N -768 -356 -740 -384 
            LINE N -772 -360 -744 -384 
            LINE N -772 -360 -748 -384 
            LINE N -772 -360 -752 -384 
            LINE N -840 -352 -808 -384 
            LINE N -844 -352 -812 -384 
            LINE N -848 -352 -816 -384 
            LINE N -852 -352 -820 -384 
            LINE N -816 -256 -848 -288 
            LINE N -820 -256 -852 -288 
            LINE N -872 -352 -828 -352 
            LINE N -836 -320 -868 -352 
            LINE N -832 -320 -864 -352 
            LINE N -828 -320 -860 -352 
            LINE N -824 -320 -856 -352 
            LINE N -872 -288 -840 -320 
            LINE N -872 -288 -828 -288 
            LINE N -860 -352 -828 -384 
            LINE N -864 -352 -832 -384 
            LINE N -856 -352 -824 -384 
            LINE N -856 -288 -824 -320 
            LINE N -852 -288 -820 -320 
            LINE N -848 -288 -816 -320 
            LINE N -844 -288 -812 -320 
            LINE N -840 -288 -808 -320 
            LINE N -836 -288 -804 -320 
            LINE N -868 -288 -836 -320 
            LINE N -864 -288 -832 -320 
            LINE N -860 -288 -828 -320 
            LINE N -840 -320 -872 -352 
            LINE N -820 -320 -852 -352 
            LINE N -816 -320 -848 -352 
            LINE N -812 -320 -844 -352 
            LINE N -808 -320 -840 -352 
            LINE N -808 -256 -840 -288 
            LINE N -812 -256 -844 -288 
            LINE N -836 -256 -868 -288 
            LINE N -840 -256 -872 -288 
            LINE N -824 -256 -856 -288 
            LINE N -828 -256 -860 -288 
            LINE N -832 -256 -864 -288 
            LINE N -772 -364 -756 -384 
            LINE N -776 -364 -756 -384 
            LINE N -776 -368 -760 -384 
            LINE N -780 -368 -764 -384 
            LINE N -780 -372 -768 -384 
            LINE N -784 -372 -772 -384 
            LINE N -784 -376 -772 -384 
            LINE N -612 -272 -612 -368 
            LINE N -616 -272 -616 -368 
            LINE N -620 -272 -620 -368 
            LINE N -564 -276 -612 -276 
            LINE N -456 -272 -456 -368 
            LINE N -460 -272 -460 -368 
            LINE N -640 -272 -640 -368 
            LINE N -392 -272 -444 -368 
            LINE N -392 -368 -444 -272 
            LINE N -660 -272 -712 -368 
            LINE N -660 -368 -716 -272 
            LINE N -544 -272 -544 -368 
            LINE N -644 -272 -644 -368 
            LINE N -636 -272 -636 -368 
            LINE N -656 -272 -708 -368 
            LINE N -468 -272 -520 -368 
            LINE N -660 -272 -716 -368 
            LINE N -664 -272 -720 -368 
            LINE N -524 -272 -524 -368 
            LINE N -528 -272 -528 -368 
            LINE N -632 -272 -632 -368 
            LINE N -468 -272 -524 -368 
            LINE N -540 -272 -540 -368 
            LINE N -464 -272 -516 -368 
            LINE N -460 -272 -516 -368 
            LINE N -548 -272 -548 -368 
            LINE N -388 -272 -440 -368 
            LINE N -564 -272 -612 -272 
            LINE N -664 -368 -720 -272 
            LINE N -772 -256 -784 -264 
            LINE N -784 -268 -772 -256 
            LINE N -768 -256 -780 -268 
            LINE N -780 -272 -764 -256 
            LINE N -760 -256 -776 -272 
            LINE N -776 -276 -756 -256 
            LINE N -756 -256 -772 -276 
            LINE N -772 -280 -752 -256 
            LINE N -748 -256 -772 -280 
            LINE N -772 -280 -744 -256 
            LINE N -740 -256 -768 -280 
            LINE N -768 -284 -740 -256 
            LINE N -736 -256 -764 -284 
            LINE N -388 -272 -436 -368 
            LINE N -384 -272 -436 -368 
            LINE N -388 -368 -440 -272 
            LINE N -112 -176 -1140 -176 
            BEGIN LINE W -1136 -416 -1136 -212 
            END LINE
            BEGIN LINE W -80 -416 -80 -220 
            END LINE
            BEGIN LINE W -1136 -416 -80 -416 
            END LINE
            LINE N -1136 -128 -80 -128 
            LINE N -1132 -220 -80 -220 
            BEGIN LINE W -80 -80 -352 -80 
            END LINE
            BEGIN LINE W -1136 -80 -352 -80 
            END LINE
            BEGIN LINE W -1136 -224 -1136 -80 
            END LINE
            BEGIN LINE W -144 -80 -152 -80 
            END LINE
            BEGIN LINE W -80 -224 -80 -80 
            END LINE
            LINE N -780 -128 -780 -80 
            LINE N -112 -176 -80 -176 
            LINE N -176 -128 -144 -128 
        END BLOCKDEF
        BEGIN BLOCK I_Q7 fdce
            BEGIN ATTR RLOC "R0C3.S0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(7)
            PIN Q Q(7)
        END BLOCK
        BEGIN BLOCK I_Q6 fdce
            BEGIN ATTR RLOC "R0C3.S1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(6)
            PIN Q Q(6)
        END BLOCK
        BEGIN BLOCK I_Q4 fdce
            BEGIN ATTR RLOC "R0C2.S1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(4)
            PIN Q Q(4)
        END BLOCK
        BEGIN BLOCK I_Q5 fdce
            BEGIN ATTR RLOC "R0C2.S0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(5)
            PIN Q Q(5)
        END BLOCK
        BEGIN BLOCK I_Q0 fdce
            BEGIN ATTR RLOC "R0C0.S1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(0)
            PIN Q Q(0)
        END BLOCK
        BEGIN BLOCK I_Q1 fdce
            BEGIN ATTR RLOC "R0C0.S0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(1)
            PIN Q Q(1)
        END BLOCK
        BEGIN BLOCK I_Q2 fdce
            BEGIN ATTR RLOC "R0C1.S1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(2)
            PIN Q Q(2)
        END BLOCK
        BEGIN BLOCK I_Q3 fdce
            BEGIN ATTR RLOC "R0C1.S0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(3)
            PIN Q Q(3)
        END BLOCK
        BLOCK I1 title
        BLOCK I2 title
    END NETLIST
    BEGIN SHEET 1 3840 3040
        BEGIN INSTANCE I_Q7 2432 2048 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE I_Q6 2432 1664 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE I_Q4 2432 896 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE I_Q5 2432 1280 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE I_Q0 1152 896 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE I_Q1 1152 1280 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE I_Q2 1152 1664 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE I_Q3 1152 2048 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE I1 3840 3040 R0
        END INSTANCE
        BEGIN INSTANCE I2 3840 3040 R0
        END INSTANCE
        BEGIN BRANCH CE
            WIRE 352 2144 384 2144
            WIRE 384 2144 896 2144
            WIRE 896 2144 2176 2144
            WIRE 896 704 896 1088
            WIRE 896 1088 896 1472
            WIRE 896 1472 896 1856
            WIRE 896 1856 896 2144
            WIRE 896 1856 1152 1856
            WIRE 896 1472 1152 1472
            WIRE 896 1088 1152 1088
            WIRE 896 704 1152 704
            WIRE 2176 704 2176 1088
            WIRE 2176 1088 2176 1472
            WIRE 2176 1472 2176 1856
            WIRE 2176 1856 2176 2144
            WIRE 2176 1856 2432 1856
            WIRE 2176 1472 2432 1472
            WIRE 2176 1088 2432 1088
            WIRE 2176 704 2432 704
            BEGIN DISPLAY 384 2144 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 352 2144 CE R180 28
        BEGIN BRANCH C
            WIRE 352 2208 384 2208
            WIRE 384 2208 960 2208
            WIRE 960 2208 2240 2208
            WIRE 960 768 960 1152
            WIRE 960 1152 960 1536
            WIRE 960 1536 960 1920
            WIRE 960 1920 960 2208
            WIRE 960 1920 1152 1920
            WIRE 960 1536 1152 1536
            WIRE 960 1152 1152 1152
            WIRE 960 768 1152 768
            WIRE 2240 768 2240 1152
            WIRE 2240 1152 2240 1536
            WIRE 2240 1536 2240 1920
            WIRE 2240 1920 2240 2208
            WIRE 2240 1920 2432 1920
            WIRE 2240 1536 2432 1536
            WIRE 2240 1152 2432 1152
            WIRE 2240 768 2432 768
            BEGIN DISPLAY 384 2208 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 352 2208 C R180 28
        BEGIN BRANCH CLR
            WIRE 352 2272 384 2272
            WIRE 384 2272 1024 2272
            WIRE 1024 2272 2304 2272
            WIRE 1024 864 1024 1248
            WIRE 1024 1248 1024 1632
            WIRE 1024 1632 1024 2016
            WIRE 1024 2016 1024 2272
            WIRE 1024 2016 1152 2016
            WIRE 1024 1632 1152 1632
            WIRE 1024 1248 1152 1248
            WIRE 1024 864 1152 864
            WIRE 2304 864 2304 1248
            WIRE 2304 1248 2304 1632
            WIRE 2304 1632 2304 2016
            WIRE 2304 2016 2304 2272
            WIRE 2304 2016 2432 2016
            WIRE 2304 1632 2432 1632
            WIRE 2304 1248 2432 1248
            WIRE 2304 864 2432 864
            BEGIN DISPLAY 384 2272 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 352 2272 CLR R180 28
        BEGIN BRANCH Q(0)
            WIRE 1536 640 1696 640
            WIRE 1696 640 1808 640
            BEGIN DISPLAY 1696 640 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 640 1808 640
        BEGIN BRANCH Q(1)
            WIRE 1536 1024 1696 1024
            WIRE 1696 1024 1808 1024
            BEGIN DISPLAY 1696 1024 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 1024 1808 1024
        BEGIN BRANCH Q(2)
            WIRE 1536 1408 1696 1408
            WIRE 1696 1408 1808 1408
            BEGIN DISPLAY 1696 1408 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 1408 1808 1408
        BEGIN BRANCH Q(3)
            WIRE 1536 1792 1696 1792
            WIRE 1696 1792 1808 1792
            BEGIN DISPLAY 1696 1792 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 1792 1808 1792
        BEGIN BRANCH Q(4)
            WIRE 2816 640 2976 640
            WIRE 2976 640 3088 640
            BEGIN DISPLAY 2976 640 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3104 640 3088 640
        BEGIN BRANCH Q(5)
            WIRE 2816 1024 2976 1024
            WIRE 2976 1024 3088 1024
            BEGIN DISPLAY 2976 1024 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3104 1024 3088 1024
        BEGIN BRANCH Q(6)
            WIRE 2816 1408 2976 1408
            WIRE 2976 1408 3088 1408
            BEGIN DISPLAY 2976 1408 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3104 1408 3088 1408
        BEGIN BRANCH Q(7)
            WIRE 2816 1792 2976 1792
            WIRE 2976 1792 3088 1792
            BEGIN DISPLAY 2976 1792 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3104 1792 3088 1792
        BEGIN BRANCH Q(7:0)
            WIRE 1824 480 1824 640
            WIRE 1824 640 1824 1024
            WIRE 1824 1024 1824 1408
            WIRE 1824 1408 1824 1792
            WIRE 1824 480 3104 480
            WIRE 3104 480 3104 640
            WIRE 3104 640 3104 1024
            WIRE 3104 1024 3104 1408
            WIRE 3104 1408 3104 1792
            WIRE 3104 480 3296 480
            WIRE 3296 480 3488 480
            BEGIN DISPLAY 3296 480 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3488 480 Q(7:0) R0 28
        BUSTAP 736 640 752 640
        BEGIN BRANCH D(0)
            WIRE 752 640 768 640
            WIRE 768 640 1152 640
            BEGIN DISPLAY 768 640 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 736 1024 752 1024
        BEGIN BRANCH D(1)
            WIRE 752 1024 768 1024
            WIRE 768 1024 1152 1024
            BEGIN DISPLAY 768 1024 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 736 1408 752 1408
        BEGIN BRANCH D(2)
            WIRE 752 1408 768 1408
            WIRE 768 1408 1152 1408
            BEGIN DISPLAY 768 1408 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 736 1792 752 1792
        BEGIN BRANCH D(3)
            WIRE 752 1792 768 1792
            WIRE 768 1792 1152 1792
            BEGIN DISPLAY 768 1792 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2016 640 2032 640
        BEGIN BRANCH D(4)
            WIRE 2032 640 2048 640
            WIRE 2048 640 2432 640
            BEGIN DISPLAY 2048 640 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2016 1024 2032 1024
        BEGIN BRANCH D(5)
            WIRE 2032 1024 2048 1024
            WIRE 2048 1024 2432 1024
            BEGIN DISPLAY 2048 1024 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2016 1408 2032 1408
        BEGIN BRANCH D(6)
            WIRE 2032 1408 2048 1408
            WIRE 2048 1408 2432 1408
            BEGIN DISPLAY 2048 1408 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2016 1792 2032 1792
        BEGIN BRANCH D(7)
            WIRE 2032 1792 2048 1792
            WIRE 2048 1792 2432 1792
            BEGIN DISPLAY 2048 1792 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(7:0)
            WIRE 352 2080 736 2080
            WIRE 736 2080 2016 2080
            WIRE 736 640 736 1024
            WIRE 736 1024 736 1408
            WIRE 736 1408 736 1792
            WIRE 736 1792 736 2080
            WIRE 2016 640 2016 1024
            WIRE 2016 1024 2016 1408
            WIRE 2016 1408 2016 1792
            WIRE 2016 1792 2016 2080
        END BRANCH
        IOMARKER 352 2080 D(7:0) R180 28
    END SHEET
END SCHEMATIC
