VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_6
        SIGNAL sel_ver
        SIGNAL logic0
        SIGNAL stop_pulse
        SIGNAL ver_out_10bits(39:0)
        SIGNAL clk
        SIGNAL reset
        SIGNAL start_pulse
        SIGNAL load_reg
        SIGNAL PulseSyncOut
        SIGNAL teststop
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        PORT Input sel_ver
        PORT Input stop_pulse
        PORT Output ver_out_10bits(39:0)
        PORT Input clk
        PORT Input reset
        PORT Input start_pulse
        PORT Output load_reg
        PORT Output PulseSyncOut
        PORT Input teststop
        BEGIN BLOCKDEF vernier40
            TIMESTAMP 2007 6 4 11 3 2
            LINE N 64 352 0 352 
            LINE N 64 96 0 96 
            LINE N 64 -224 0 -224 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 400 -224 464 -224 
            RECTANGLE N 400 -236 464 -212 
            RECTANGLE N 64 -256 400 384 
        END BLOCKDEF
        BEGIN BLOCKDEF synclogic1
            TIMESTAMP 2011 3 7 4 23 46
            LINE N 64 96 0 96 
            LINE N 352 32 416 32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 352 -160 416 -160 
            RECTANGLE N 64 -192 352 192 
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
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
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
        BEGIN BLOCK ver_stop3 vernier40
            BEGIN ATTR RLOC "R0C1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN startsync XLXN_6
            PIN logic0 logic0
            PIN reset reset
            PIN clksync PulseSyncOut
            PIN Qout(39:0) ver_out_10bits(39:0)
            PIN sel_ver sel_ver
        END BLOCK
        BEGIN BLOCK synclogic_stop3 synclogic1
            BEGIN ATTR RLOC "R1C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN clk clk
            PIN reset reset
            PIN start XLXN_10
            PIN startsync XLXN_6
            PIN clk_sync1 PulseSyncOut
            PIN test_pulse teststop
        END BLOCK
        BEGIN BLOCK XLXI_9 gnd
            PIN G logic0
        END BLOCK
        BEGIN BLOCK XLXI_15 xor2
            PIN I0 start_pulse
            PIN I1 XLXN_12
            PIN O load_reg
        END BLOCK
        BEGIN BLOCK XLXI_16 and2
            PIN I0 start_pulse
            PIN I1 stop_pulse
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_17 fdc
            PIN C clk
            PIN CLR reset
            PIN D PulseSyncOut
            PIN Q XLXN_12
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE synclogic_stop3 1376 848 R0
            BEGIN DISPLAY 144 -112 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
            BEGIN DISPLAY 120 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH sel_ver
            WIRE 1616 1136 1968 1136
            WIRE 1968 1136 1968 1152
            WIRE 1968 1152 1984 1152
        END BRANCH
        BEGIN BRANCH ver_out_10bits(39:0)
            WIRE 2448 576 2624 576
        END BRANCH
        IOMARKER 336 816 reset R180 28
        BEGIN INSTANCE ver_stop3 1984 800 R0
            BEGIN DISPLAY 172 -352 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH XLXN_6
            WIRE 1792 688 1808 688
            WIRE 1808 576 1984 576
            WIRE 1808 576 1808 688
        END BRANCH
        IOMARKER 2624 576 ver_out_10bits(39:0) R0 28
        BEGIN BRANCH logic0
            WIRE 1920 896 1920 944
            WIRE 1920 896 1984 896
        END BRANCH
        INSTANCE XLXI_9 1856 1072 R0
        IOMARKER 416 672 stop_pulse R180 28
        IOMARKER 320 752 clk R180 28
        BEGIN BRANCH reset
            WIRE 336 816 416 816
            WIRE 416 816 1312 816
            WIRE 1312 816 1376 816
            WIRE 1312 816 1312 1072
            WIRE 1312 1072 1824 1072
            WIRE 416 816 416 832
            WIRE 416 832 496 832
            WIRE 496 832 496 1856
            WIRE 496 1856 944 1856
            WIRE 1824 704 1984 704
            WIRE 1824 704 1824 1072
        END BRANCH
        BEGIN BRANCH clk
            WIRE 320 752 656 752
            WIRE 656 752 1376 752
            WIRE 656 752 656 1760
            WIRE 656 1760 944 1760
        END BRANCH
        BEGIN BRANCH load_reg
            WIRE 1696 1376 2288 1376
        END BRANCH
        INSTANCE XLXI_15 1440 1472 R0
        IOMARKER 1616 1136 sel_ver R180 28
        IOMARKER 1936 448 PulseSyncOut R0 28
        IOMARKER 416 1408 start_pulse R180 28
        BEGIN BRANCH teststop
            WIRE 352 944 1376 944
        END BRANCH
        IOMARKER 352 944 teststop R180 28
        INSTANCE XLXI_16 768 1328 R0
        BEGIN BRANCH start_pulse
            WIRE 416 1408 528 1408
            WIRE 528 1408 1440 1408
            WIRE 528 1264 768 1264
            WIRE 528 1264 528 1408
        END BRANCH
        BEGIN BRANCH stop_pulse
            WIRE 416 672 528 672
            WIRE 528 672 528 1200
            WIRE 528 1200 768 1200
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1024 1232 1200 1232
            WIRE 1200 688 1200 1232
            WIRE 1200 688 1376 688
        END BRANCH
        IOMARKER 2288 1376 load_reg R0 28
        BEGIN BRANCH PulseSyncOut
            WIRE 864 1344 864 1632
            WIRE 864 1632 944 1632
            WIRE 864 1344 1232 1344
            WIRE 1232 1248 1232 1344
            WIRE 1232 1248 1776 1248
            WIRE 1776 880 1792 880
            WIRE 1792 880 1904 880
            WIRE 1904 880 1920 880
            WIRE 1776 880 1776 1248
            WIRE 1904 448 1936 448
            WIRE 1904 448 1904 880
            WIRE 1920 768 1984 768
            WIRE 1920 768 1920 880
        END BRANCH
        INSTANCE XLXI_17 944 1888 R0
        BEGIN BRANCH XLXN_12
            WIRE 1328 1632 1376 1632
            WIRE 1376 1344 1376 1632
            WIRE 1376 1344 1440 1344
        END BRANCH
    END SHEET
END SCHEMATIC
