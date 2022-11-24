VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL sel_fpgasel
        SIGNAL sel_dac1
        SIGNAL sel_vers(4:0)
        SIGNAL sel_counters(15:0)
        SIGNAL sel_pencoder
        SIGNAL XLXN_8(31:0)
        SIGNAL address(4:0)
        PORT Output sel_fpgasel
        PORT Output sel_dac1
        PORT Output sel_vers(4:0)
        PORT Output sel_counters(15:0)
        PORT Output sel_pencoder
        PORT Input address(4:0)
        BEGIN BLOCKDEF select_out
            TIMESTAMP 2014 6 24 7 34 27
            LINE N 320 32 384 32 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
            RECTANGLE N 64 -384 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF drom2
            TIMESTAMP 2014 6 25 11 12 56
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 select_out
            PIN sel_in(31:0) XLXN_8(31:0)
            PIN sel_fpgasel sel_fpgasel
            PIN sel_dac1 sel_dac1
            PIN sel_pencoder sel_pencoder
            PIN sel_vers(4:0) sel_vers(4:0)
            PIN sel_counters(15:0) sel_counters(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 drom2
            PIN addr(4:0) address(4:0)
            PIN selout(31:0) XLXN_8(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1920 1312 R0
        END INSTANCE
        BEGIN BRANCH sel_fpgasel
            WIRE 2304 960 2336 960
        END BRANCH
        IOMARKER 2336 960 sel_fpgasel R0 28
        BEGIN BRANCH sel_dac1
            WIRE 2304 1024 2336 1024
        END BRANCH
        IOMARKER 2336 1024 sel_dac1 R0 28
        BEGIN BRANCH sel_vers(4:0)
            WIRE 2304 1216 2336 1216
        END BRANCH
        IOMARKER 2336 1216 sel_vers(4:0) R0 28
        BEGIN BRANCH sel_counters(15:0)
            WIRE 2304 1280 2336 1280
        END BRANCH
        IOMARKER 2336 1280 sel_counters(15:0) R0 28
        BEGIN BRANCH sel_pencoder
            WIRE 2304 1344 2336 1344
        END BRANCH
        IOMARKER 2336 1344 sel_pencoder R0 28
        BEGIN BRANCH XLXN_8(31:0)
            WIRE 1808 960 1920 960
        END BRANCH
        BEGIN INSTANCE XLXI_4 1424 992 R0
        END INSTANCE
        BEGIN BRANCH address(4:0)
            WIRE 1376 960 1424 960
        END BRANCH
        IOMARKER 1376 960 address(4:0) R180 28
    END SHEET
END SCHEMATIC
