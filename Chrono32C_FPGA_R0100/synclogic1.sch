VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL reset
        SIGNAL startsync
        SIGNAL XLXN_15
        SIGNAL clk_sync1
        SIGNAL start
        SIGNAL test_pulse
        SIGNAL out_pulse
        PORT Input clk
        PORT Input reset
        PORT Output startsync
        PORT Output clk_sync1
        PORT Input start
        PORT Input test_pulse
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2001 2 2 12 52 25
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 2 2 12 52 44
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
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
        BEGIN BLOCKDEF fmap
            TIMESTAMP 2001 2 2 12 54 15
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCK supply_sync vcc
            PIN P XLXN_15
        END BLOCK
        BEGIN BLOCK ff_clksyn fdc
            BEGIN ATTR rloc "R0C0.S0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C clk
            PIN CLR reset
            PIN D startsync
            PIN Q clk_sync1
        END BLOCK
        BEGIN BLOCK XLXI_4 fdc
            BEGIN ATTR rloc "R0C0.S1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C out_pulse
            PIN CLR reset
            PIN D XLXN_15
            PIN Q startsync
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 test_pulse
            PIN I1 start
            PIN O out_pulse
        END BLOCK
        BEGIN BLOCK XLXI_6 fmap
            BEGIN ATTR RLOC "R0C0.S1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN I1 test_pulse
            PIN I2 start
            PIN I3
            PIN I4
            PIN O out_pulse
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE supply_sync 368 688 R0
        BEGIN BRANCH startsync
            WIRE 1152 800 1296 800
            WIRE 1296 800 1520 800
            WIRE 1296 448 2688 448
            WIRE 1296 448 1296 800
        END BRANCH
        BEGIN INSTANCE ff_clksyn 1520 1056 R0
            BEGIN DISPLAY 120 -396 ATTR rloc
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 136 -436 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 336 1360 1504 1360
            WIRE 1504 928 1520 928
            WIRE 1504 928 1504 1360
        END BRANCH
        BEGIN BRANCH reset
            WIRE 304 1136 576 1136
            WIRE 576 1040 768 1040
            WIRE 576 1040 576 1120
            WIRE 576 1120 1216 1120
            WIRE 576 1120 576 1136
            WIRE 768 1024 768 1040
            WIRE 1216 1024 1216 1120
            WIRE 1216 1024 1520 1024
        END BRANCH
        IOMARKER 2688 448 startsync R0 28
        IOMARKER 336 1360 clk R180 28
        IOMARKER 2768 608 clk_sync1 R0 28
        BEGIN BRANCH XLXN_15
            WIRE 432 688 432 800
            WIRE 432 800 768 800
        END BRANCH
        BEGIN BRANCH clk_sync1
            WIRE 1904 800 1968 800
            WIRE 1968 608 2768 608
            WIRE 1968 608 1968 800
        END BRANCH
        BEGIN INSTANCE XLXI_4 768 1056 R0
            BEGIN DISPLAY 120 -396 ATTR rloc
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 304 1136 reset R180 28
        BEGIN BRANCH test_pulse
            WIRE 192 960 320 960
            WIRE 320 960 336 960
        END BRANCH
        BEGIN BRANCH start
            WIRE 112 896 320 896
            WIRE 320 896 336 896
        END BRANCH
        INSTANCE XLXI_5 336 1024 R0
        IOMARKER 192 960 test_pulse R180 28
        IOMARKER 112 896 start R180 28
        BEGIN BRANCH out_pulse
            WIRE 592 928 656 928
            WIRE 656 928 768 928
            BEGIN DISPLAY 656 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH out_pulse
            WIRE 960 400 992 400
            WIRE 992 400 1072 400
            BEGIN DISPLAY 992 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 576 624 R0
            BEGIN DISPLAY 0 -480 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH start
            WIRE 416 432 480 432
            WIRE 480 432 576 432
            BEGIN DISPLAY 480 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH test_pulse
            WIRE 416 496 448 496
            WIRE 448 496 576 496
            BEGIN DISPLAY 448 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
