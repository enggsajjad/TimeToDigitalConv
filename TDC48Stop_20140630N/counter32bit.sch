VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL reset
        SIGNAL clk
        SIGNAL enb
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_13
        SIGNAL XLXN_17
        SIGNAL XLXN_20
        SIGNAL XLXN_25
        SIGNAL ovf24_intr
        SIGNAL cntr(31:0)
        SIGNAL XLXN_27
        PORT Input reset
        PORT Input clk
        PORT Input enb
        PORT Output ovf24_intr
        PORT Output cntr(31:0)
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
            PIN Q(31:0) cntr(31:0)
            PIN CO
            PIN ovf24 XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_4 and2b1
            PIN I0 XLXN_13
            PIN I1 enb
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
        BEGIN INSTANCE XLXI_1 944 1968 R0
            BEGIN DISPLAY 0 -312 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 208 1808 enb R180 28
        INSTANCE XLXI_5 1504 2192 R0
        INSTANCE XLXI_6 1408 1888 R0
        BEGIN BRANCH XLXN_9
            WIRE 1472 1888 1472 1936
            WIRE 1472 1936 1504 1936
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1328 2000 1504 2000
        END BRANCH
        BEGIN BRANCH enb
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
        BEGIN BRANCH clk
            WIRE 784 1664 848 1664
            WIRE 848 1664 848 1872
            WIRE 848 1872 944 1872
            WIRE 848 1872 848 2064
            WIRE 848 2064 1472 2064
            WIRE 1472 2064 1504 2064
            WIRE 1472 2064 1472 2224
            WIRE 1472 2224 1968 2224
            WIRE 1968 2160 2096 2160
            WIRE 1968 2160 1968 2224
        END BRANCH
        BEGIN BRANCH reset
            WIRE 784 1712 896 1712
            WIRE 896 1712 896 1936
            WIRE 896 1936 944 1936
            WIRE 896 1936 896 2160
            WIRE 896 2160 1424 2160
            WIRE 1424 2160 1504 2160
            WIRE 1424 2160 1424 2256
            WIRE 1424 2256 2096 2256
        END BRANCH
        IOMARKER 784 1664 clk R180 28
        IOMARKER 784 1712 reset R180 28
        BEGIN BRANCH cntr(31:0)
            WIRE 1328 1808 1344 1808
            WIRE 1344 1696 1360 1696
            WIRE 1344 1696 1344 1808
        END BRANCH
        IOMARKER 1360 1696 cntr(31:0) R0 28
    END SHEET
END SCHEMATIC
