VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL address(5:0)
        SIGNAL XLXN_5(63:0)
        SIGNAL sel_fpgasel
        SIGNAL sel_dac1
        SIGNAL sel_dac2
        SIGNAL sel_status
        SIGNAL sel_vers(8:0)
        SIGNAL sel_counters(31:0)
        SIGNAL sel_pencoder
        PORT Input clk
        PORT Input address(5:0)
        PORT Output sel_fpgasel
        PORT Output sel_dac1
        PORT Output sel_dac2
        PORT Output sel_status
        PORT Output sel_vers(8:0)
        PORT Output sel_counters(31:0)
        PORT Output sel_pencoder
        BEGIN BLOCKDEF drom
            TIMESTAMP 2008 7 24 7 9 44
            RECTANGLE N 32 0 320 272 
            BEGIN LINE W 0 48 32 48 
            END LINE
            LINE N 0 240 32 240 
            BEGIN LINE W 320 48 352 48 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF select_out
            TIMESTAMP 2008 9 17 6 26 22
            LINE N 320 32 384 32 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
            RECTANGLE N 64 -384 320 64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 drom
            PIN addr(5:0) address(5:0)
            PIN clk clk
            PIN dout(63:0) XLXN_5(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 select_out
            PIN sel_in(63:0) XLXN_5(63:0)
            PIN sel_fpgasel sel_fpgasel
            PIN sel_dac1 sel_dac1
            PIN sel_dac2 sel_dac2
            PIN sel_status sel_status
            PIN sel_pencoder sel_pencoder
            PIN sel_vers(8:0) sel_vers(8:0)
            PIN sel_counters(31:0) sel_counters(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1280 928 R0
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 1248 1168 1280 1168
        END BRANCH
        IOMARKER 1248 1168 clk R180 28
        BEGIN BRANCH address(5:0)
            WIRE 1248 976 1280 976
        END BRANCH
        IOMARKER 1248 976 address(5:0) R180 28
        BEGIN INSTANCE XLXI_2 1920 1312 R0
        END INSTANCE
        BEGIN BRANCH XLXN_5(63:0)
            WIRE 1632 976 1776 976
            WIRE 1776 960 1776 976
            WIRE 1776 960 1920 960
        END BRANCH
        BEGIN BRANCH sel_fpgasel
            WIRE 2304 960 2336 960
        END BRANCH
        IOMARKER 2336 960 sel_fpgasel R0 28
        BEGIN BRANCH sel_dac1
            WIRE 2304 1024 2336 1024
        END BRANCH
        IOMARKER 2336 1024 sel_dac1 R0 28
        BEGIN BRANCH sel_dac2
            WIRE 2304 1088 2336 1088
        END BRANCH
        IOMARKER 2336 1088 sel_dac2 R0 28
        BEGIN BRANCH sel_status
            WIRE 2304 1152 2336 1152
        END BRANCH
        IOMARKER 2336 1152 sel_status R0 28
        BEGIN BRANCH sel_vers(8:0)
            WIRE 2304 1216 2336 1216
        END BRANCH
        IOMARKER 2336 1216 sel_vers(8:0) R0 28
        BEGIN BRANCH sel_counters(31:0)
            WIRE 2304 1280 2336 1280
        END BRANCH
        IOMARKER 2336 1280 sel_counters(31:0) R0 28
        BEGIN BRANCH sel_pencoder
            WIRE 2304 1344 2336 1344
        END BRANCH
        IOMARKER 2336 1344 sel_pencoder R0 28
    END SHEET
END SCHEMATIC
