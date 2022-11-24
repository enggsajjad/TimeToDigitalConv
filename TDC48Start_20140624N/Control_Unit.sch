VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clkdiv
        SIGNAL reset
        SIGNAL restest
        SIGNAL fpga_sel
        SIGNAL fpgasel(2:0)
        SIGNAL count_sel(4:0)
        SIGNAL rx
        SIGNAL tx
        SIGNAL rx_pc
        SIGNAL rx_uc
        SIGNAL sel0
        SIGNAL sel1
        SIGNAL rx_pr
        SIGNAL tx_pr
        SIGNAL tx_uc
        SIGNAL tx_pc
        SIGNAL rst
        SIGNAL d(7:0)
        SIGNAL loaddac1
        SIGNAL resdac
        SIGNAL data_in(7:0)
        SIGNAL doutrdy
        SIGNAL rx1out
        SIGNAL sel_ver(4:0)
        SIGNAL sel_fpga
        SIGNAL sel_pencoder
        SIGNAL sel_counts(15:0)
        SIGNAL sel_dac1
        SIGNAL start_pulse
        SIGNAL startout2
        SIGNAL startout1
        SIGNAL StartSync
        SIGNAL clk
        SIGNAL clk2x
        SIGNAL clkout1
        SIGNAL clkout2
        SIGNAL teststart
        SIGNAL teststop
        SIGNAL start_pulse_buf
        SIGNAL XLXN_17
        SIGNAL XLXN_23
        SIGNAL testing
        SIGNAL startup
        PORT Output clkdiv
        PORT Output reset
        PORT Input fpgasel(2:0)
        PORT Input rx_pc
        PORT Input rx_uc
        PORT Input sel0
        PORT Input sel1
        PORT Input rx_pr
        PORT Output tx_pr
        PORT Output tx_uc
        PORT Output tx_pc
        PORT Output d(7:0)
        PORT Output loaddac1
        PORT Output resdac
        PORT Input data_in(7:0)
        PORT Output sel_ver(4:0)
        PORT Output sel_fpga
        PORT Output sel_pencoder
        PORT Output sel_counts(15:0)
        PORT Output sel_dac1
        PORT Input start_pulse
        PORT Output startout2
        PORT Output startout1
        PORT Input StartSync
        PORT Input clk
        PORT Output clk2x
        PORT Output clkout1
        PORT Output clkout2
        PORT Output teststart
        PORT Output teststop
        PORT Output start_pulse_buf
        BEGIN BLOCKDEF ibuf
            TIMESTAMP 2001 2 2 12 53 1
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
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
        BEGIN BLOCKDEF top_drom
            TIMESTAMP 2014 6 24 7 41 49
            LINE N 320 32 384 32 
            LINE N 64 -352 0 -352 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 64 -128 0 -128 
            RECTANGLE N 0 -140 64 -116 
            RECTANGLE N 64 -384 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF ir_decoder
            TIMESTAMP 2014 6 24 6 10 30
            LINE N 320 224 384 224 
            LINE N 320 96 384 96 
            LINE N 320 32 384 32 
            RECTANGLE N 320 20 384 44 
            LINE N 64 -544 0 -544 
            LINE N 64 -416 0 -416 
            LINE N 64 -288 0 -288 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -544 384 -544 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 160 384 160 
            RECTANGLE N 64 -576 320 248 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf
            TIMESTAMP 2001 2 2 12 53 1
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF router
            TIMESTAMP 2011 2 15 8 45 46
            LINE N 64 224 0 224 
            LINE N 64 288 0 288 
            RECTANGLE N 0 276 64 300 
            LINE N 320 224 384 224 
            LINE N 64 160 0 160 
            LINE N 320 160 384 160 
            LINE N 64 96 0 96 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -256 384 -256 
            LINE N 320 -160 384 -160 
            RECTANGLE N 64 -384 320 320 
        END BLOCKDEF
        BEGIN BLOCKDEF testcounter
            TIMESTAMP 2011 5 11 5 59 12
            LINE N 64 288 0 288 
            LINE N 64 352 0 352 
            LINE N 320 224 384 224 
            LINE N 64 160 0 160 
            LINE N 64 -96 0 -96 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -128 320 448 
        END BLOCKDEF
        BEGIN BLOCKDEF clk_mul
            TIMESTAMP 2009 7 30 4 8 42
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
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
        BEGIN BLOCK XLXI_50 router
            PIN rx_pc rx_pc
            PIN rx_uc rx_uc
            PIN rx_pr rx_pr
            PIN rx_fpga tx
            PIN sel0 sel0
            PIN sel1 sel1
            PIN selfpga fpga_sel
            PIN fpga_addr(2:0) fpgasel(2:0)
            PIN tx_fpga rx
            PIN tx_pc tx_pc
            PIN tx_uc tx_uc
            PIN tx_pr tx_pr
        END BLOCK
        BEGIN BLOCK XLXI_41 ir_decoder
            PIN clk clkdiv
            PIN rst rst
            PIN rx rx
            PIN data_in(7:0) data_in(7:0)
            PIN sel_val(2:0) fpgasel(2:0)
            PIN res reset
            PIN fpga_sel fpga_sel
            PIN res_dac resdac
            PIN inc_dac1 loaddac1
            PIN tx tx
            PIN uart_ready
            PIN read
            PIN restest restest
            PIN startup startup
            PIN doutrdy doutrdy
            PIN address(4:0) count_sel(4:0)
            PIN fpga_sel_status(7:0) d(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_43 gnd
            PIN G rst
        END BLOCK
        BEGIN BLOCK XLXI_48 obuf
            PIN I rx
            PIN O rx1out
        END BLOCK
        BEGIN BLOCK XLXI_40 top_drom
            PIN clk clkdiv
            PIN address(4:0) count_sel(4:0)
            PIN sel_fpgasel sel_fpga
            PIN sel_dac1 sel_dac1
            PIN sel_vers(4:0) sel_ver(4:0)
            PIN sel_counters(15:0) sel_counts(15:0)
            PIN sel_pencoder sel_pencoder
        END BLOCK
        BEGIN BLOCK XLXI_10 ibuf
            PIN I start_pulse
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_89 obuf
            PIN I XLXN_23
            PIN O startout2
        END BLOCK
        BEGIN BLOCK XLXI_88 obuf
            PIN I XLXN_23
            PIN O startout1
        END BLOCK
        BEGIN BLOCK Clock_Mul clk_mul
            PIN clk clk
            PIN clk4x clk2x
            PIN clkdiv clkdiv
        END BLOCK
        BEGIN BLOCK XLXI_55 obuf
            PIN I clkdiv
            PIN O clkout2
        END BLOCK
        BEGIN BLOCK XLXI_54 obuf
            PIN I clkdiv
            PIN O clkout1
        END BLOCK
        BEGIN BLOCK XLXI_85 testcounter
            PIN clk clkdiv
            PIN reset reset
            PIN teststart teststart
            PIN teststop teststop
            PIN testing testing
            PIN res_test restest
            PIN startup startup
        END BLOCK
        BEGIN BLOCK XLXI_95 or2
            PIN I0 teststart
            PIN I1 XLXN_17
            PIN O start_pulse_buf
        END BLOCK
        BEGIN BLOCK XLXI_96 and2b1
            PIN I0 testing
            PIN I1 StartSync
            PIN O XLXN_23
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH fpga_sel
            WIRE 352 2256 368 2256
            WIRE 368 2256 416 2256
            BEGIN DISPLAY 368 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rx_pc
            WIRE 384 1808 416 1808
        END BRANCH
        BEGIN BRANCH rx_uc
            WIRE 384 1872 416 1872
        END BRANCH
        BEGIN BRANCH sel0
            WIRE 384 2064 416 2064
        END BRANCH
        BEGIN BRANCH sel1
            WIRE 384 2128 416 2128
        END BRANCH
        BEGIN BRANCH rx_pr
            WIRE 384 2320 416 2320
        END BRANCH
        BEGIN BRANCH tx_pr
            WIRE 800 2320 832 2320
        END BRANCH
        BEGIN BRANCH tx_uc
            WIRE 800 2000 832 2000
        END BRANCH
        BEGIN BRANCH tx_pc
            WIRE 800 1904 832 1904
        END BRANCH
        BEGIN BRANCH tx
            WIRE 368 2384 384 2384
            WIRE 384 2384 416 2384
            BEGIN DISPLAY 384 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rx
            WIRE 800 2384 832 2384
            WIRE 832 2384 864 2384
            BEGIN DISPLAY 832 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_50 416 2160 R0
        END INSTANCE
        BEGIN BRANCH fpgasel(2:0)
            WIRE 336 2448 352 2448
            WIRE 352 2448 416 2448
            BEGIN DISPLAY 352 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 384 1808 rx_pc R180 28
        IOMARKER 384 1872 rx_uc R180 28
        IOMARKER 384 2064 sel0 R180 28
        IOMARKER 384 2128 sel1 R180 28
        IOMARKER 384 2320 rx_pr R180 28
        IOMARKER 832 2320 tx_pr R0 28
        IOMARKER 832 2000 tx_uc R0 28
        IOMARKER 832 1904 tx_pc R0 28
        BEGIN BRANCH rst
            WIRE 1456 1872 1456 1888
            WIRE 1456 1872 1488 1872
            WIRE 1488 1872 1488 1888
            WIRE 1488 1888 1520 1888
            BEGIN DISPLAY 1488 1888 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH restest
            WIRE 1904 2400 1952 2400
            WIRE 1952 2400 1984 2400
            BEGIN DISPLAY 1952 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(7:0)
            WIRE 1904 2336 1952 2336
            WIRE 1952 2336 2304 2336
            BEGIN DISPLAY 1952 2336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fpga_sel
            WIRE 1904 1824 1936 1824
            WIRE 1936 1824 2208 1824
            BEGIN DISPLAY 1936 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fpgasel(2:0)
            WIRE 1280 2272 1520 2272
        END BRANCH
        BEGIN BRANCH count_sel(4:0)
            WIRE 1904 2272 2080 2272
            WIRE 2080 2272 2112 2272
            BEGIN DISPLAY 2080 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH loaddac1
            WIRE 1904 1952 1984 1952
            WIRE 1984 1952 2208 1952
            BEGIN DISPLAY 1984 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH resdac
            WIRE 1904 1888 1952 1888
            WIRE 1952 1888 2224 1888
            BEGIN DISPLAY 1952 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH reset
            WIRE 1904 1760 1952 1760
            WIRE 1952 1760 2240 1760
            BEGIN DISPLAY 1952 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH data_in(7:0)
            WIRE 1392 2144 1520 2144
        END BRANCH
        BEGIN BRANCH clkdiv
            WIRE 1424 1760 1440 1760
            WIRE 1440 1760 1520 1760
            BEGIN DISPLAY 1440 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_41 1520 2304 R0
        END INSTANCE
        BEGIN BRANCH doutrdy
            WIRE 1904 2464 2128 2464
            WIRE 2128 2464 2256 2464
            BEGIN DISPLAY 2128 2464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rx
            WIRE 1344 2032 1504 2032
            WIRE 1504 2016 1520 2016
            WIRE 1504 2016 1504 2032
        END BRANCH
        BEGIN BRANCH tx
            WIRE 1904 2080 2064 2080
        END BRANCH
        INSTANCE XLXI_43 1392 2016 R0
        INSTANCE XLXI_48 1344 2000 R180
        BEGIN BRANCH rx1out
            WIRE 1072 2032 1104 2032
            WIRE 1104 2032 1120 2032
            BEGIN DISPLAY 1104 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2304 2336 d(7:0) R0 28
        IOMARKER 2208 1952 loaddac1 R0 28
        IOMARKER 2224 1888 resdac R0 28
        IOMARKER 2240 1760 reset R0 28
        IOMARKER 1392 2144 data_in(7:0) R180 28
        BEGIN BRANCH count_sel(4:0)
            WIRE 2560 2096 2592 2096
            BEGIN DISPLAY 2560 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_ver(4:0)
            WIRE 2976 2128 3008 2128
            WIRE 3008 2128 3104 2128
            BEGIN DISPLAY 3008 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_fpga
            WIRE 2976 1872 3008 1872
            WIRE 3008 1872 3200 1872
            BEGIN DISPLAY 3008 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkdiv
            WIRE 2512 1872 2544 1872
            WIRE 2544 1872 2592 1872
            BEGIN DISPLAY 2544 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_pencoder
            WIRE 2976 2256 3120 2256
            WIRE 3120 2256 3184 2256
            BEGIN DISPLAY 3120 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel_counts(15:0)
            WIRE 2976 2192 3104 2192
        END BRANCH
        BEGIN BRANCH sel_dac1
            WIRE 2976 1936 3232 1936
        END BRANCH
        BEGIN INSTANCE XLXI_40 2592 2224 R0
        END INSTANCE
        IOMARKER 3232 1936 sel_dac1 R0 28
        IOMARKER 3200 1872 sel_fpga R0 28
        IOMARKER 3104 2192 sel_counts(15:0) R0 28
        IOMARKER 3184 2256 sel_pencoder R0 28
        IOMARKER 3104 2128 sel_ver(4:0) R0 28
        BEGIN BRANCH start_pulse
            WIRE 1136 912 1232 912
        END BRANCH
        IOMARKER 1280 2272 fpgasel(2:0) R180 28
        BEGIN BRANCH startout2
            WIRE 2272 528 2288 528
            WIRE 2288 528 2368 528
            BEGIN DISPLAY 2288 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH startout1
            WIRE 2240 384 2304 384
            WIRE 2304 384 2336 384
            BEGIN DISPLAY 2304 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_89 2048 560 R0
        INSTANCE XLXI_88 2016 416 R0
        IOMARKER 2368 528 startout2 R0 28
        IOMARKER 2336 384 startout1 R0 28
        BEGIN BRANCH clk
            WIRE 304 496 480 496
        END BRANCH
        BEGIN INSTANCE Clock_Mul 480 592 R0
        END INSTANCE
        BEGIN BRANCH clk2x
            WIRE 864 448 864 496
            WIRE 864 448 880 448
            WIRE 880 448 1200 448
            BEGIN DISPLAY 880 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkdiv
            WIRE 864 560 880 560
            WIRE 880 560 1008 560
            WIRE 1008 560 1200 560
            WIRE 1008 224 1152 224
            WIRE 1008 224 1008 304
            WIRE 1008 304 1168 304
            WIRE 1008 304 1008 560
            BEGIN DISPLAY 880 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 304 496 clk R180 28
        IOMARKER 1200 560 clkdiv R0 28
        BEGIN BRANCH clkout1
            WIRE 1376 224 1424 224
        END BRANCH
        BEGIN BRANCH clkout2
            WIRE 1392 304 1424 304
        END BRANCH
        INSTANCE XLXI_55 1168 336 R0
        INSTANCE XLXI_54 1152 256 R0
        IOMARKER 1200 448 clk2x R0 28
        IOMARKER 1424 304 clkout2 R0 28
        IOMARKER 1424 224 clkout1 R0 28
        BEGIN INSTANCE XLXI_85 2480 992 R0
        END INSTANCE
        BEGIN BRANCH teststart
            WIRE 2864 896 3040 896
        END BRANCH
        BEGIN BRANCH teststop
            WIRE 2864 960 3056 960
        END BRANCH
        BEGIN BRANCH clkdiv
            WIRE 2320 896 2416 896
            WIRE 2416 896 2480 896
            BEGIN DISPLAY 2416 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH start_pulse_buf
            WIRE 1792 960 1936 960
        END BRANCH
        IOMARKER 1936 960 start_pulse_buf R0 28
        INSTANCE XLXI_10 1232 944 R0
        IOMARKER 1136 912 start_pulse R180 28
        BEGIN BRANCH XLXN_17
            WIRE 1456 912 1488 912
            WIRE 1488 912 1488 928
            WIRE 1488 928 1536 928
        END BRANCH
        BEGIN BRANCH teststart
            WIRE 976 992 1088 992
            WIRE 1088 992 1536 992
            BEGIN DISPLAY 1088 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 1544 304 TEXT "Clock For Next FPGA"
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 1548 216 TEXT "Clock For Next Board"
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 1296 464 TEXT 100MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 1304 572 TEXT 25MHz
            FONT 20 "Arial"
        END DISPLAY
        BEGIN DISPLAY 260 532 TEXT 25MHz
            FONT 20 "Arial"
        END DISPLAY
        INSTANCE XLXI_95 1536 1056 R0
        IOMARKER 3056 960 teststop R0 28
        BEGIN BRANCH reset
            WIRE 2384 1152 2448 1152
            WIRE 2448 1152 2480 1152
            BEGIN DISPLAY 2448 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH StartSync
            WIRE 1632 384 1712 384
        END BRANCH
        INSTANCE XLXI_96 1712 512 R0
        IOMARKER 1632 384 StartSync R180 28
        BEGIN BRANCH XLXN_23
            WIRE 1968 416 1984 416
            WIRE 1984 416 1984 528
            WIRE 1984 528 2048 528
            WIRE 1984 384 1984 416
            WIRE 1984 384 2016 384
        END BRANCH
        BEGIN BRANCH testing
            WIRE 1616 448 1632 448
            WIRE 1632 448 1712 448
            BEGIN DISPLAY 1632 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH testing
            WIRE 2864 1216 2960 1216
            WIRE 2960 1216 3056 1216
            BEGIN DISPLAY 2960 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3040 896 teststart R0 28
        BEGIN BRANCH startup
            WIRE 1904 2528 2064 2528
            WIRE 2064 2528 2208 2528
            BEGIN DISPLAY 2064 2528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH startup
            WIRE 2256 1344 2272 1344
            WIRE 2272 1344 2480 1344
            BEGIN DISPLAY 2272 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH restest
            WIRE 2256 1280 2304 1280
            WIRE 2304 1280 2480 1280
            BEGIN DISPLAY 2304 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
