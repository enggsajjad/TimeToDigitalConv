VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(26:0)
        SIGNAL XLXN_2(26:0)
        SIGNAL XLXN_3(26:0)
        SIGNAL XLXN_4(26:0)
        SIGNAL XLXN_5(26:0)
        SIGNAL XLXN_6(26:0)
        SIGNAL XLXN_7(26:0)
        SIGNAL XLXN_8(26:0)
        SIGNAL count(7:0)
        SIGNAL sel_cntr_tbuf(31:0)
        SIGNAL sel_cntr_tbuf(3:0)
        SIGNAL sel_cntr_tbuf(7:4)
        SIGNAL sel_cntr_tbuf(11:8)
        SIGNAL sel_cntr_tbuf(15:12)
        SIGNAL sel_cntr_tbuf(19:16)
        SIGNAL sel_cntr_tbuf(23:20)
        SIGNAL sel_cntr_tbuf(27:24)
        SIGNAL sel_cntr_tbuf(31:28)
        SIGNAL sel_flag
        SIGNAL reset
        SIGNAL clk
        SIGNAL Q(31:0)
        SIGNAL Q(26:0)
        SIGNAL startsynch
        SIGNAL load(7:0)
        SIGNAL load(0)
        SIGNAL load(1)
        SIGNAL load(2)
        SIGNAL load(3)
        SIGNAL load(4)
        SIGNAL load(5)
        SIGNAL load(6)
        SIGNAL load(7)
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_13
        SIGNAL XLXN_17
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_25
        SIGNAL ovf24_intr
        SIGNAL XLXN_27
        PORT Output count(7:0)
        PORT Input sel_cntr_tbuf(31:0)
        PORT Input sel_flag
        PORT Input reset
        PORT Input clk
        PORT Input startsynch
        PORT Input load(7:0)
        PORT Output ovf24_intr
        BEGIN BLOCKDEF cc24ce
            TIMESTAMP 2011 3 4 5 9 8
            LINE N 320 32 384 32 
            LINE N 64 -96 0 -96 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -32 384 -32 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 64 -192 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF registers_26bit
            TIMESTAMP 2011 3 4 4 56 18
            LINE N 64 -1120 0 -1120 
            LINE N 352 -1120 416 -1120 
            RECTANGLE N 352 -1132 416 -1108 
            LINE N 64 -1088 0 -1088 
            LINE N 64 -688 0 -688 
            RECTANGLE N 0 -700 64 -676 
            LINE N 352 -1072 416 -1072 
            RECTANGLE N 352 -1084 416 -1060 
            LINE N 352 -1024 416 -1024 
            RECTANGLE N 352 -1036 416 -1012 
            LINE N 352 -976 416 -976 
            RECTANGLE N 352 -988 416 -964 
            LINE N 352 -928 416 -928 
            RECTANGLE N 352 -940 416 -916 
            LINE N 352 -880 416 -880 
            RECTANGLE N 352 -892 416 -868 
            LINE N 352 -832 416 -832 
            RECTANGLE N 352 -844 416 -820 
            LINE N 352 -784 416 -784 
            RECTANGLE N 352 -796 416 -772 
            RECTANGLE N 64 -1152 352 -660 
            LINE N 64 -992 0 -992 
            LINE N 64 -1024 0 -1024 
            LINE N 64 -928 0 -928 
            LINE N 64 -960 0 -960 
            LINE N 64 -848 0 -848 
            LINE N 64 -880 0 -880 
            LINE N 64 -784 0 -784 
            LINE N 64 -816 0 -816 
        END BLOCKDEF
        BEGIN BLOCKDEF registers26bit_interface
            TIMESTAMP 2011 3 4 5 0 16
            LINE N 64 -1184 0 -1184 
            LINE N 64 -1120 0 -1120 
            LINE N 64 -1056 0 -1056 
            RECTANGLE N 0 -1068 64 -1044 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 368 -1184 432 -1184 
            RECTANGLE N 368 -1196 432 -1172 
            LINE N 368 -1040 432 -1040 
            RECTANGLE N 368 -1052 432 -1028 
            LINE N 368 -896 432 -896 
            RECTANGLE N 368 -908 432 -884 
            LINE N 368 -752 432 -752 
            RECTANGLE N 368 -764 432 -740 
            LINE N 368 -608 432 -608 
            RECTANGLE N 368 -620 432 -596 
            LINE N 368 -464 432 -464 
            RECTANGLE N 368 -476 432 -452 
            LINE N 368 -320 432 -320 
            RECTANGLE N 368 -332 432 -308 
            LINE N 368 -176 432 -176 
            RECTANGLE N 368 -188 432 -164 
            LINE N 368 -32 432 -32 
            RECTANGLE N 368 -44 432 -20 
            RECTANGLE N 64 -1216 368 0 
            LINE N 64 -992 0 -992 
            RECTANGLE N 0 -1004 64 -980 
            LINE N 64 -928 0 -928 
            RECTANGLE N 0 -940 64 -916 
            LINE N 64 -864 0 -864 
            RECTANGLE N 0 -876 64 -852 
            LINE N 64 -800 0 -800 
            RECTANGLE N 0 -812 64 -788 
            LINE N 64 -736 0 -736 
            RECTANGLE N 0 -748 64 -724 
            LINE N 64 -672 0 -672 
            RECTANGLE N 0 -684 64 -660 
            LINE N 64 -608 0 -608 
            RECTANGLE N 0 -620 64 -596 
            LINE N 64 -544 0 -544 
            RECTANGLE N 0 -556 64 -532 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 2 2 12 52 44
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
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
        BEGIN BLOCK XLXI_1 cc24ce
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN res reset
            PIN clk clk
            PIN ce XLXN_17
            PIN Q(31:0) Q(31:0)
            PIN CO
            PIN ovf24 XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_3 registers26bit_interface
            PIN reset reset
            PIN sel_flag sel_flag
            PIN tc(7:0)
            PIN sel_cntr_tbuf1(3:0) sel_cntr_tbuf(3:0)
            PIN sel_cntr_tbuf2(3:0) sel_cntr_tbuf(7:4)
            PIN sel_cntr_tbuf3(3:0) sel_cntr_tbuf(11:8)
            PIN sel_cntr_tbuf4(3:0) sel_cntr_tbuf(15:12)
            PIN sel_cntr_tbuf5(3:0) sel_cntr_tbuf(19:16)
            PIN sel_cntr_tbuf6(3:0) sel_cntr_tbuf(23:20)
            PIN sel_cntr_tbuf7(3:0) sel_cntr_tbuf(27:24)
            PIN sel_cntr_tbuf8(3:0) sel_cntr_tbuf(31:28)
            PIN counter1(26:0) XLXN_1(26:0)
            PIN counter2(26:0) XLXN_2(26:0)
            PIN counter3(26:0) XLXN_3(26:0)
            PIN counter4(26:0) XLXN_4(26:0)
            PIN counter5(26:0) XLXN_5(26:0)
            PIN counter6(26:0) XLXN_6(26:0)
            PIN counter7(26:0) XLXN_7(26:0)
            PIN counter8(26:0) XLXN_8(26:0)
            PIN count1(7:0) count(7:0)
            PIN count2(7:0) count(7:0)
            PIN count3(7:0) count(7:0)
            PIN count4(7:0) count(7:0)
            PIN count5(7:0) count(7:0)
            PIN count6(7:0) count(7:0)
            PIN count7(7:0) count(7:0)
            PIN count8(7:0) count(7:0)
            PIN tc_flag(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 registers_26bit
            BEGIN ATTR RLOC "R5C3"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN load2 load(1)
            PIN clk clk
            PIN load4 load(3)
            PIN load1 load(0)
            PIN load3 load(2)
            PIN din(26:0) Q(26:0)
            PIN load6 load(5)
            PIN load8 load(7)
            PIN load5 load(4)
            PIN load7 load(6)
            PIN Counter1(26:0) XLXN_1(26:0)
            PIN Counter2(26:0) XLXN_2(26:0)
            PIN Counter3(26:0) XLXN_3(26:0)
            PIN Counter4(26:0) XLXN_4(26:0)
            PIN Counter5(26:0) XLXN_5(26:0)
            PIN Counter6(26:0) XLXN_6(26:0)
            PIN Counter7(26:0) XLXN_7(26:0)
            PIN Counter8(26:0) XLXN_8(26:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 and2b1
            PIN I0 XLXN_13
            PIN I1 startsynch
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_5 fdce
            PIN C clk
            PIN CE XLXN_10
            PIN CLR reset
            PIN D XLXN_9
            PIN Q XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_6 vcc
            PIN P XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_9 fdce
            PIN C clk
            PIN CE XLXN_13
            PIN CLR reset
            PIN D XLXN_20
            PIN Q XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_10 vcc
            PIN P XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I XLXN_25
            PIN O ovf24_intr
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_1(26:0)
            WIRE 1904 1152 2144 1152
            WIRE 2144 1104 2144 1152
            WIRE 2144 1104 2400 1104
        END BRANCH
        BEGIN BRANCH XLXN_2(26:0)
            WIRE 1904 1200 2144 1200
            WIRE 2144 1168 2144 1200
            WIRE 2144 1168 2400 1168
        END BRANCH
        BEGIN BRANCH XLXN_3(26:0)
            WIRE 1904 1248 2144 1248
            WIRE 2144 1232 2144 1248
            WIRE 2144 1232 2400 1232
        END BRANCH
        BEGIN BRANCH XLXN_4(26:0)
            WIRE 1904 1296 2400 1296
        END BRANCH
        BEGIN BRANCH XLXN_5(26:0)
            WIRE 1904 1344 2144 1344
            WIRE 2144 1344 2144 1360
            WIRE 2144 1360 2400 1360
        END BRANCH
        BEGIN BRANCH XLXN_6(26:0)
            WIRE 1904 1392 2144 1392
            WIRE 2144 1392 2144 1424
            WIRE 2144 1424 2400 1424
        END BRANCH
        BEGIN BRANCH XLXN_7(26:0)
            WIRE 1904 1440 2144 1440
            WIRE 2144 1440 2144 1488
            WIRE 2144 1488 2400 1488
        END BRANCH
        BEGIN BRANCH XLXN_8(26:0)
            WIRE 1904 1488 2128 1488
            WIRE 2128 1488 2128 1552
            WIRE 2128 1552 2400 1552
        END BRANCH
        BEGIN BRANCH count(7:0)
            WIRE 2832 400 2960 400
            WIRE 2960 400 2960 544
            WIRE 2960 544 2960 688
            WIRE 2960 688 2960 832
            WIRE 2960 832 2960 976
            WIRE 2960 976 2960 1120
            WIRE 2960 1120 2960 1264
            WIRE 2960 1264 2960 1408
            WIRE 2960 400 3072 400
            WIRE 2832 544 2960 544
            WIRE 2832 688 2960 688
            WIRE 2832 832 2960 832
            WIRE 2832 976 2960 976
            WIRE 2832 1120 2960 1120
            WIRE 2832 1264 2960 1264
            WIRE 2832 1408 2960 1408
        END BRANCH
        BEGIN INSTANCE XLXI_3 2400 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1488 2272 R0
            BEGIN DISPLAY 84 -1272 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 3072 400 count(7:0) R0 28
        BEGIN INSTANCE XLXI_1 944 1968 R0
            BEGIN DISPLAY 0 -312 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BUSTAP 2064 592 2160 592
        BUSTAP 2064 656 2160 656
        BUSTAP 2064 720 2160 720
        BUSTAP 2064 784 2160 784
        BUSTAP 2064 848 2160 848
        BUSTAP 2064 912 2160 912
        BUSTAP 2064 976 2160 976
        BUSTAP 2064 1040 2160 1040
        BEGIN BRANCH sel_cntr_tbuf(3:0)
            WIRE 2160 592 2400 592
        END BRANCH
        BEGIN BRANCH sel_cntr_tbuf(7:4)
            WIRE 2160 656 2400 656
        END BRANCH
        BEGIN BRANCH sel_cntr_tbuf(11:8)
            WIRE 2160 720 2400 720
        END BRANCH
        BEGIN BRANCH sel_cntr_tbuf(15:12)
            WIRE 2160 784 2400 784
        END BRANCH
        BEGIN BRANCH sel_cntr_tbuf(19:16)
            WIRE 2160 848 2400 848
        END BRANCH
        BEGIN BRANCH sel_cntr_tbuf(23:20)
            WIRE 2160 912 2400 912
        END BRANCH
        BEGIN BRANCH sel_cntr_tbuf(27:24)
            WIRE 2160 976 2400 976
        END BRANCH
        BEGIN BRANCH sel_cntr_tbuf(31:28)
            WIRE 2160 1040 2400 1040
        END BRANCH
        IOMARKER 480 512 sel_cntr_tbuf(31:0) R180 28
        BEGIN BRANCH sel_flag
            WIRE 480 464 2400 464
        END BRANCH
        BEGIN BRANCH reset
            WIRE 480 400 896 400
            WIRE 896 400 2400 400
            WIRE 896 400 896 1152
            WIRE 896 1152 896 1936
            WIRE 896 1936 944 1936
            WIRE 896 1936 896 2160
            WIRE 896 2160 1424 2160
            WIRE 1424 2160 1504 2160
            WIRE 1424 2160 1424 2256
            WIRE 1424 2256 2096 2256
            WIRE 896 1152 1488 1152
        END BRANCH
        IOMARKER 480 400 reset R180 28
        IOMARKER 480 464 sel_flag R180 28
        BEGIN BRANCH clk
            WIRE 480 352 848 352
            WIRE 848 352 848 1184
            WIRE 848 1184 848 1872
            WIRE 848 1872 944 1872
            WIRE 848 1872 848 2064
            WIRE 848 2064 1472 2064
            WIRE 1472 2064 1504 2064
            WIRE 1472 2064 1472 2224
            WIRE 1472 2224 1968 2224
            WIRE 848 1184 1488 1184
            WIRE 1968 2160 1968 2224
            WIRE 1968 2160 2096 2160
        END BRANCH
        IOMARKER 480 352 clk R180 28
        BEGIN BRANCH Q(31:0)
            WIRE 1328 1808 1376 1808
            WIRE 1376 1568 1376 1584
            WIRE 1376 1584 1376 1808
        END BRANCH
        BUSTAP 1376 1584 1472 1584
        BEGIN BRANCH Q(26:0)
            WIRE 1472 1584 1488 1584
        END BRANCH
        IOMARKER 208 1808 startsynch R180 28
        BEGIN BRANCH load(7:0)
            WIRE 480 592 960 592
            WIRE 960 592 960 1248
            WIRE 960 1248 960 1280
            WIRE 960 1280 960 1312
            WIRE 960 1312 960 1344
            WIRE 960 1344 960 1392
            WIRE 960 1392 960 1424
            WIRE 960 1424 960 1456
            WIRE 960 1456 960 1488
            WIRE 960 1488 960 1520
        END BRANCH
        IOMARKER 480 592 load(7:0) R180 28
        BUSTAP 960 1248 1056 1248
        BUSTAP 960 1280 1056 1280
        BUSTAP 960 1312 1056 1312
        BUSTAP 960 1344 1056 1344
        BUSTAP 960 1456 1056 1456
        BUSTAP 960 1488 1056 1488
        BEGIN BRANCH load(0)
            WIRE 1056 1248 1488 1248
        END BRANCH
        BEGIN BRANCH load(1)
            WIRE 1056 1280 1488 1280
        END BRANCH
        BEGIN BRANCH load(2)
            WIRE 1056 1312 1488 1312
        END BRANCH
        BEGIN BRANCH load(3)
            WIRE 1056 1344 1488 1344
        END BRANCH
        BEGIN BRANCH load(4)
            WIRE 1056 1392 1488 1392
        END BRANCH
        BEGIN BRANCH load(5)
            WIRE 1056 1424 1488 1424
        END BRANCH
        BEGIN BRANCH load(6)
            WIRE 1056 1456 1488 1456
        END BRANCH
        BEGIN BRANCH load(7)
            WIRE 1056 1488 1488 1488
        END BRANCH
        BUSTAP 960 1424 1056 1424
        BUSTAP 960 1392 1056 1392
        BEGIN BRANCH sel_cntr_tbuf(31:0)
            WIRE 480 512 2064 512
            WIRE 2064 512 2064 592
            WIRE 2064 592 2064 656
            WIRE 2064 656 2064 720
            WIRE 2064 720 2064 784
            WIRE 2064 784 2064 848
            WIRE 2064 848 2064 912
            WIRE 2064 912 2064 976
            WIRE 2064 976 2064 1040
            WIRE 2064 1040 2064 1072
        END BRANCH
        INSTANCE XLXI_5 1504 2192 R0
        INSTANCE XLXI_6 1408 1888 R0
        BEGIN BRANCH XLXN_9
            WIRE 1472 1888 1472 1936
            WIRE 1472 1936 1504 1936
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1328 2000 1504 2000
        END BRANCH
        BEGIN BRANCH startsynch
            WIRE 208 1808 352 1808
        END BRANCH
        INSTANCE XLXI_4 352 1936 R0
        BEGIN BRANCH XLXN_17
            WIRE 608 1840 768 1840
            WIRE 768 1808 768 1840
            WIRE 768 1808 944 1808
        END BRANCH
        INSTANCE XLXI_9 2096 2288 R0
        BEGIN BRANCH XLXN_13
            WIRE 272 1872 352 1872
            WIRE 272 1872 272 2272
            WIRE 272 2272 1904 2272
            WIRE 1888 1936 1904 1936
            WIRE 1904 1936 1904 2272
            WIRE 1904 1936 2000 1936
            WIRE 2000 1936 2000 2096
            WIRE 2000 2096 2096 2096
        END BRANCH
        INSTANCE XLXI_10 1984 1968 R0
        BEGIN BRANCH XLXN_20
            WIRE 2048 1968 2048 2032
            WIRE 2048 2032 2096 2032
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 2480 2032 2544 2032
        END BRANCH
        BEGIN BRANCH ovf24_intr
            WIRE 2768 2032 2800 2032
        END BRANCH
        INSTANCE XLXI_7 2544 2064 R0
        IOMARKER 2800 2032 ovf24_intr R0 28
    END SHEET
END SCHEMATIC
