VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL dout(7:0)
        SIGNAL resdac
        SIGNAL clkdiv
        SIGNAL DAC1
        SIGNAL XLXN_38
        SIGNAL loaddac1
        SIGNAL sel_dac1
        PORT Output dout(7:0)
        PORT Input resdac
        PORT Input clkdiv
        PORT Output DAC1
        PORT Input loaddac1
        PORT Input sel_dac1
        BEGIN BLOCKDEF dacsimple
            TIMESTAMP 2011 3 4 10 30 28
            LINE N 64 96 0 96 
            LINE N 320 32 384 32 
            RECTANGLE N 320 20 384 44 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 64 -192 320 320 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf_f_24
            TIMESTAMP 2001 2 2 12 53 1
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_9 dacsimple
            PIN Clk clkdiv
            PIN loaddac loaddac1
            PIN resdac resdac
            PIN sel_dac sel_dac1
            PIN DACout XLXN_38
            PIN dac_val(7:0) dout(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 obuf_f_24
            PIN I XLXN_38
            PIN O DAC1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH DAC1
            WIRE 2144 1296 2176 1296
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1888 1280 1904 1280
            WIRE 1904 1280 1904 1296
            WIRE 1904 1296 1920 1296
        END BRANCH
        BEGIN BRANCH clkdiv
            WIRE 1136 1280 1488 1280
            WIRE 1488 1280 1504 1280
        END BRANCH
        BEGIN BRANCH loaddac1
            WIRE 1168 1344 1456 1344
            WIRE 1456 1344 1504 1344
            BEGIN DISPLAY 1456 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH resdac
            WIRE 1152 1408 1472 1408
            WIRE 1472 1408 1504 1408
            BEGIN DISPLAY 1472 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_dac1
            WIRE 1152 1536 1472 1536
            WIRE 1472 1536 1504 1536
            BEGIN DISPLAY 1472 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 1888 1472 1904 1472
            WIRE 1904 1472 2112 1472
            BEGIN DISPLAY 1904 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_9 1504 1440 R0
        END INSTANCE
        INSTANCE XLXI_13 1920 1328 R0
        IOMARKER 2176 1296 DAC1 R0 28
        IOMARKER 2112 1472 dout(7:0) R0 28
        IOMARKER 1136 1280 clkdiv R180 28
        IOMARKER 1168 1344 loaddac1 R180 28
        IOMARKER 1152 1408 resdac R180 28
        IOMARKER 1152 1536 sel_dac1 R180 28
    END SHEET
END SCHEMATIC
