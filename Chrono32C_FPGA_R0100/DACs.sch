VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_97
        SIGNAL dout(7:0)
        SIGNAL DAC2_start
        SIGNAL sel_dac2
        SIGNAL resdac
        SIGNAL loaddac2
        SIGNAL clkdiv
        SIGNAL DAC1_stop
        SIGNAL XLXN_38
        SIGNAL loaddac1
        SIGNAL sel_dac1
        PORT Output dout(7:0)
        PORT Output DAC2_start
        PORT Input sel_dac2
        PORT Input resdac
        PORT Input loaddac2
        PORT Input clkdiv
        PORT Output DAC1_stop
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
        BEGIN BLOCK XLXI_27 obuf_f_24
            PIN I XLXN_97
            PIN O DAC2_start
        END BLOCK
        BEGIN BLOCK XLXI_26 dacsimple
            PIN Clk clkdiv
            PIN loaddac loaddac2
            PIN resdac resdac
            PIN sel_dac sel_dac2
            PIN DACout XLXN_97
            PIN dac_val(7:0) dout(7:0)
        END BLOCK
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
            PIN O DAC1_stop
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_97
            WIRE 2192 1888 2240 1888
        END BRANCH
        BEGIN BRANCH dout(7:0)
            WIRE 2192 2080 2240 2080
            WIRE 2240 2080 2256 2080
            BEGIN DISPLAY 2240 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DAC2_start
            WIRE 2464 1888 2496 1888
        END BRANCH
        BEGIN BRANCH sel_dac2
            WIRE 1200 2144 1792 2144
            WIRE 1792 2144 1808 2144
        END BRANCH
        BEGIN BRANCH resdac
            WIRE 1744 2016 1808 2016
            BEGIN DISPLAY 1744 2016 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH loaddac2
            WIRE 1200 1952 1744 1952
            WIRE 1744 1952 1808 1952
            BEGIN DISPLAY 1744 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkdiv
            WIRE 1744 1888 1808 1888
            BEGIN DISPLAY 1744 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DAC1_stop
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
        INSTANCE XLXI_27 2240 1920 R0
        BEGIN INSTANCE XLXI_26 1808 2048 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 1504 1440 R0
        END INSTANCE
        INSTANCE XLXI_13 1920 1328 R0
        IOMARKER 2496 1888 DAC2_start R0 28
        IOMARKER 2176 1296 DAC1_stop R0 28
        IOMARKER 2112 1472 dout(7:0) R0 28
        IOMARKER 1136 1280 clkdiv R180 28
        IOMARKER 1168 1344 loaddac1 R180 28
        IOMARKER 1152 1408 resdac R180 28
        IOMARKER 1152 1536 sel_dac1 R180 28
        IOMARKER 1200 1952 loaddac2 R180 28
        IOMARKER 1200 2144 sel_dac2 R180 28
    END SHEET
END SCHEMATIC
