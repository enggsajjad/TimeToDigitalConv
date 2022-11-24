VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL clk2x
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL clkdiv
        SIGNAL clk4x
        SIGNAL XLXN_25
        SIGNAL XLXN_27
        SIGNAL XLXN_26
        SIGNAL XLXN_31
        PORT Input clk
        PORT Output clkdiv
        PORT Output clk4x
        BEGIN BLOCKDEF clkdll
            TIMESTAMP 2001 5 5 15 22 1
            LINE N 384 -512 320 -512 
            LINE N 384 -448 320 -448 
            LINE N 384 -384 320 -384 
            LINE N 0 -448 64 -448 
            LINE N 0 -512 64 -512 
            LINE N 0 -128 64 -128 
            LINE N 384 -128 320 -128 
            LINE N 384 -192 320 -192 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
            LINE N 64 -432 80 -448 
            LINE N 80 -448 64 -464 
            LINE N 64 -496 80 -512 
            LINE N 80 -512 64 -528 
            RECTANGLE N 64 -576 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF ibufg
            TIMESTAMP 2001 2 2 12 53 1
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF bufg
            TIMESTAMP 2001 2 2 12 51 12
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 64 0 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 clkdll
            BEGIN ATTR LOC "dll0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            BEGIN ATTR CLKDV_DIVIDE 16
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE Float
            END ATTR
            PIN CLKFB clk2x
            PIN CLKIN clkdiv
            PIN RST XLXN_26
            PIN CLK0
            PIN CLK180
            PIN CLK270
            PIN CLK2X XLXN_5
            PIN CLK90
            PIN CLKDV
            PIN LOCKED XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_2 clkdll
            BEGIN ATTR LOC "dll1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            BEGIN ATTR CLKDV_DIVIDE 16
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE Float
            END ATTR
            PIN CLKFB clk4x
            PIN CLKIN clk2x
            PIN RST XLXN_27
            PIN CLK0
            PIN CLK180
            PIN CLK270
            PIN CLK2X XLXN_6
            PIN CLK90
            PIN CLKDV
            PIN LOCKED
        END BLOCK
        BEGIN BLOCK XLXI_3 ibufg
            PIN I clk
            PIN O clkdiv
        END BLOCK
        BEGIN BLOCK XLXI_4 bufg
            BEGIN ATTR LOC "gclkbuf0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN I XLXN_5
            PIN O clk2x
        END BLOCK
        BEGIN BLOCK XLXI_5 bufg
            BEGIN ATTR LOC "gclkbuf1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN I XLXN_6
            PIN O clk4x
        END BLOCK
        BEGIN BLOCK XLXI_6 gnd
            PIN G XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I XLXN_25
            PIN O XLXN_27
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 960 1392 R0
            BEGIN DISPLAY 152 -632 ATTR LOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 60 -704 ATTR CLKDV_DIVIDE
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1984 1392 R0
            BEGIN DISPLAY 120 -664 ATTR LOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 16 -736 ATTR CLKDV_DIVIDE
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        INSTANCE XLXI_3 528 912 R0
        BEGIN INSTANCE XLXI_4 1472 1168 R0
            BEGIN DISPLAY 0 -64 ATTR LOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 496 880 528 880
        END BRANCH
        IOMARKER 496 880 clk R180 28
        BEGIN BRANCH XLXN_5
            WIRE 1344 1136 1472 1136
        END BRANCH
        INSTANCE XLXI_6 736 1440 R0
        BEGIN BRANCH clk2x
            WIRE 896 944 960 944
            WIRE 896 944 896 1408
            WIRE 896 1408 1744 1408
            WIRE 1696 1136 1744 1136
            WIRE 1744 1136 1744 1408
            WIRE 1744 880 1984 880
            WIRE 1744 880 1744 1136
        END BRANCH
        BEGIN BRANCH clkdiv
            WIRE 736 976 816 976
            WIRE 736 976 736 1680
            WIRE 736 1680 1104 1680
            WIRE 752 880 816 880
            WIRE 816 880 960 880
            WIRE 816 880 816 976
        END BRANCH
        IOMARKER 1104 1680 clkdiv R0 28
        BEGIN INSTANCE XLXI_5 2432 1184 R0
            BEGIN DISPLAY 0 -64 ATTR LOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH XLXN_6
            WIRE 2368 1136 2384 1136
            WIRE 2384 1136 2384 1152
            WIRE 2384 1152 2432 1152
        END BRANCH
        INSTANCE XLXI_9 1424 1312 R0
        BEGIN BRANCH XLXN_25
            WIRE 1344 1264 1376 1264
            WIRE 1376 1264 1376 1280
            WIRE 1376 1280 1424 1280
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1648 1280 1808 1280
            WIRE 1808 1264 1808 1280
            WIRE 1808 1264 1984 1264
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 800 1264 800 1312
            WIRE 800 1264 960 1264
        END BRANCH
        BEGIN BRANCH clk4x
            WIRE 1904 944 1984 944
            WIRE 1904 944 1904 1408
            WIRE 1904 1408 2720 1408
            WIRE 2656 1152 2720 1152
            WIRE 2720 1152 2720 1408
            WIRE 2720 1152 3056 1152
        END BRANCH
        IOMARKER 3056 1152 clk4x R0 28
    END SHEET
END SCHEMATIC
