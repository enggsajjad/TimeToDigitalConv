VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL load
        SIGNAL clock
        SIGNAL reset
        SIGNAL din(7:0)
        SIGNAL din(15:8)
        SIGNAL din(23:16)
        SIGNAL din(26:0)
        SIGNAL din(25)
        SIGNAL dout(26:0)
        SIGNAL dout(7:0)
        SIGNAL dout(25)
        SIGNAL dout(24)
        SIGNAL dout(23:16)
        SIGNAL dout(15:8)
        SIGNAL din(24)
        SIGNAL dout(26)
        SIGNAL din(26)
        PORT Input load
        PORT Input clock
        PORT Input reset
        PORT Input din(26:0)
        PORT Output dout(26:0)
        BEGIN BLOCKDEF myfd8ce
            TIMESTAMP 2010 3 8 6 39 36
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2001 2 2 12 52 25
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
        BEGIN BLOCK XLXI_5 myfd8ce
            BEGIN ATTR RLOC "R0C4"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CE load
            PIN C clock
            PIN CLR reset
            PIN D(7:0) din(15:8)
            PIN Q(7:0) dout(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_6 myfd8ce
            BEGIN ATTR RLOC "R0C8"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CE load
            PIN C clock
            PIN CLR reset
            PIN D(7:0) din(23:16)
            PIN Q(7:0) dout(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_7 fdce
            BEGIN ATTR RLOC "R0C12.S1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C clock
            PIN CE load
            PIN CLR reset
            PIN D din(24)
            PIN Q dout(24)
        END BLOCK
        BEGIN BLOCK XLXI_8 fdce
            BEGIN ATTR RLOC "R0C12.S0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C clock
            PIN CE load
            PIN CLR reset
            PIN D din(25)
            PIN Q dout(25)
        END BLOCK
        BEGIN BLOCK XLXI_9 myfd8ce
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CE load
            PIN C clock
            PIN CLR reset
            PIN D(7:0) din(7:0)
            PIN Q(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 fdce
            BEGIN ATTR RLOC "R0C13.S1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C clock
            PIN CE load
            PIN CLR reset
            PIN D din(26)
            PIN Q dout(26)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_5 1776 1264 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_6 2336 1264 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clock
            WIRE 1024 1104 1120 1104
            WIRE 1120 1104 1168 1104
            WIRE 1120 1104 1120 1328
            WIRE 1120 1328 1600 1328
            WIRE 1600 1328 1600 1472
            WIRE 1344 1472 1344 1776
            WIRE 1344 1776 1408 1776
            WIRE 1408 1776 1408 1792
            WIRE 1408 1792 1408 1952
            WIRE 1408 1952 1872 1952
            WIRE 1408 1776 1424 1776
            WIRE 1344 1472 1600 1472
            WIRE 1600 928 1600 1104
            WIRE 1600 1104 1600 1328
            WIRE 1600 1104 1776 1104
            WIRE 1600 928 2208 928
            WIRE 2208 928 2208 1104
            WIRE 2208 1104 2336 1104
            WIRE 1872 1776 1872 1952
            WIRE 1872 1776 1936 1776
            WIRE 1936 1776 1984 1776
            WIRE 1936 1776 1936 1968
            WIRE 1936 1968 2416 1968
            WIRE 2416 1760 2416 1968
            WIRE 2416 1760 2944 1760
        END BRANCH
        BEGIN INSTANCE XLXI_8 1984 1904 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH din(7:0)
            WIRE 1152 704 1152 736
            WIRE 1152 736 1152 848
            WIRE 1152 848 1152 1232
            WIRE 1152 1232 1168 1232
            BEGIN DISPLAY 1152 848 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH din(15:8)
            WIRE 1760 704 1760 736
            WIRE 1760 736 1760 752
            WIRE 1760 752 1760 768
            WIRE 1760 768 1760 1232
            WIRE 1760 1232 1776 1232
            BEGIN DISPLAY 1760 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH din(23:16)
            WIRE 2304 704 2304 736
            WIRE 2304 736 2304 752
            WIRE 2304 752 2304 816
            WIRE 2304 816 2304 1232
            WIRE 2304 1232 2336 1232
            BEGIN DISPLAY 2304 816 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH din(26:0)
            WIRE 1008 608 1152 608
            WIRE 1152 608 1760 608
            WIRE 1760 608 1936 608
            WIRE 1936 608 2240 608
            WIRE 2240 608 2304 608
            WIRE 2304 608 2752 608
        END BRANCH
        BUSTAP 2304 608 2304 704
        BUSTAP 1760 608 1760 704
        BUSTAP 1152 608 1152 704
        BEGIN BRANCH din(25)
            WIRE 1920 1328 2240 1328
            WIRE 1920 1328 1920 1648
            WIRE 1920 1648 1984 1648
            WIRE 2240 704 2240 752
            WIRE 2240 752 2240 784
            WIRE 2240 784 2240 1328
            BEGIN DISPLAY 2240 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2240 608 2240 704
        BUSTAP 1936 608 1936 704
        IOMARKER 1008 608 din(26:0) R180 28
        BEGIN BRANCH dout(26:0)
            WIRE 912 2240 1072 2240
            WIRE 1072 2240 1472 2240
            WIRE 1472 2240 1856 2240
            WIRE 1856 2240 2080 2240
            WIRE 2080 2240 2400 2240
            WIRE 2400 2240 2656 2240
            WIRE 2656 2240 3072 2240
            BEGIN DISPLAY 1072 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_9 1168 1264 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH reset
            WIRE 1024 1168 1088 1168
            WIRE 1088 1168 1168 1168
            WIRE 1088 1168 1088 1312
            WIRE 1088 1312 1472 1312
            WIRE 1472 1312 1584 1312
            WIRE 1472 1312 1472 1520
            WIRE 1360 1520 1472 1520
            WIRE 1360 1520 1360 1872
            WIRE 1360 1872 1424 1872
            WIRE 1360 1872 1360 1888
            WIRE 1360 1888 1984 1888
            WIRE 1584 896 1584 1168
            WIRE 1584 1168 1584 1312
            WIRE 1584 1168 1776 1168
            WIRE 1584 896 2320 896
            WIRE 2320 896 2320 1168
            WIRE 2320 1168 2336 1168
            WIRE 1904 1872 1984 1872
            WIRE 1984 1872 1984 1888
            WIRE 1904 1872 1904 1952
            WIRE 1904 1952 2384 1952
            WIRE 2384 1856 2384 1952
            WIRE 2384 1856 2944 1856
        END BRANCH
        BEGIN BRANCH load
            WIRE 960 1040 1104 1040
            WIRE 1104 1040 1168 1040
            WIRE 1104 1040 1104 1344
            WIRE 1104 1344 1616 1344
            WIRE 1616 1344 1616 1456
            WIRE 1376 1456 1376 1712
            WIRE 1376 1712 1408 1712
            WIRE 1408 1712 1424 1712
            WIRE 1376 1456 1616 1456
            WIRE 1408 1488 1408 1712
            WIRE 1408 1488 1872 1488
            WIRE 1872 1488 1872 1712
            WIRE 1872 1712 1936 1712
            WIRE 1936 1712 1984 1712
            WIRE 1616 912 1616 1040
            WIRE 1616 1040 1616 1344
            WIRE 1616 1040 1776 1040
            WIRE 1616 912 2224 912
            WIRE 2224 912 2224 1040
            WIRE 2224 1040 2336 1040
            WIRE 1936 1424 1936 1712
            WIRE 1936 1424 2416 1424
            WIRE 2416 1424 2416 1696
            WIRE 2416 1696 2944 1696
        END BRANCH
        BEGIN INSTANCE XLXI_7 1424 1904 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BUSTAP 1472 2240 1472 2144
        BUSTAP 2080 2240 2080 2144
        BUSTAP 2656 2240 2656 2144
        BUSTAP 2400 2240 2400 2144
        BUSTAP 1856 2240 1856 2144
        BEGIN BRANCH dout(7:0)
            WIRE 1472 2064 1472 2144
            WIRE 1472 2064 1600 2064
            WIRE 1600 2064 1888 2064
            WIRE 1552 1040 1568 1040
            WIRE 1568 1040 1568 1376
            WIRE 1568 1376 1888 1376
            WIRE 1888 1376 1888 2064
            BEGIN DISPLAY 1600 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(15:8)
            WIRE 2080 2080 2080 2144
            WIRE 2080 2080 2224 2080
            WIRE 2224 2080 2256 2080
            WIRE 2256 2080 2432 2080
            WIRE 2160 1040 2192 1040
            WIRE 2192 1040 2192 1440
            WIRE 2192 1440 2432 1440
            WIRE 2432 1440 2432 2080
            BEGIN DISPLAY 2224 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(23:16)
            WIRE 2656 2064 2656 2144
            WIRE 2656 2064 2704 2064
            WIRE 2704 2064 2768 2064
            WIRE 2768 2064 2800 2064
            WIRE 2720 1040 2800 1040
            WIRE 2800 1040 2800 2064
            BEGIN DISPLAY 2704 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(25)
            WIRE 2368 1648 2400 1648
            WIRE 2400 1648 2400 2128
            WIRE 2400 2128 2400 2144
            BEGIN DISPLAY 2400 2128 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(24)
            WIRE 1808 1648 1856 1648
            WIRE 1856 1648 1856 2112
            WIRE 1856 2112 1856 2144
            BEGIN DISPLAY 1856 2112 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3072 2240 dout(26:0) R0 28
        IOMARKER 960 1040 load R180 28
        IOMARKER 1024 1104 clock R180 28
        IOMARKER 1024 1168 reset R180 28
        BEGIN BRANCH din(24)
            WIRE 1136 816 1136 1648
            WIRE 1136 1648 1424 1648
            WIRE 1136 816 1936 816
            WIRE 1936 704 1936 752
            WIRE 1936 752 1936 816
            BEGIN DISPLAY 1936 752 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_10 2944 1888 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BUSTAP 3009 2241 3009 2145
        BUSTAP 2623 609 2623 705
        BEGIN BRANCH dout(26)
            WIRE 3008 2064 3008 2144
            WIRE 3008 2064 3408 2064
            WIRE 3328 1632 3408 1632
            WIRE 3408 1632 3408 2064
            BEGIN DISPLAY 3008 2144 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH din(26)
            WIRE 2624 704 2624 752
            WIRE 2624 752 2624 784
            WIRE 2624 784 2736 784
            WIRE 2736 784 2736 1632
            WIRE 2736 1632 2944 1632
            BEGIN DISPLAY 2624 752 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
