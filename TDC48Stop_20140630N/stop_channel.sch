VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL sel_ver
        SIGNAL logic0
        SIGNAL stop_pulse
        SIGNAL ver_out(39:0)
        SIGNAL clk
        SIGNAL reset
        SIGNAL start_pulse
        SIGNAL load_reg
        SIGNAL pulse_clk_sync
        SIGNAL test_stop
        SIGNAL XLXN_10
        SIGNAL XLXN_12
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        PORT Input sel_ver
        PORT Input stop_pulse
        PORT Output ver_out(39:0)
        PORT Input clk
        PORT Input reset
        PORT Input start_pulse
        PORT Output load_reg
        PORT Output pulse_clk_sync
        PORT Input test_stop
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
        BEGIN BLOCKDEF synclogic
            TIMESTAMP 2014 6 26 6 53 31
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF vernier_40_gates
            TIMESTAMP 2014 6 26 7 33 55
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
        END BLOCKDEF
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
            PIN D pulse_clk_sync
            PIN Q XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_18 synclogic
            BEGIN ATTR RLOC "R1C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN clk clk
            PIN reset reset
            PIN pulse XLXN_10
            PIN test_pulse test_stop
            PIN pulse_sync XLXN_16
            PIN pulse_clk_sync pulse_clk_sync
        END BLOCK
        BEGIN BLOCK XLXI_19 vernier_40_gates
            BEGIN ATTR RLOC "R0C1"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN logic0 logic0
            PIN reset reset
            PIN pulse_clk_sync pulse_clk_sync
            PIN sel_ver sel_ver
            PIN pulse_sync XLXN_16
            PIN Qout(39:0) ver_out(39:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        IOMARKER 336 816 reset R180 28
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
        IOMARKER 1936 448 pulse_clk_sync R0 28
        IOMARKER 416 1408 start_pulse R180 28
        BEGIN BRANCH test_stop
            WIRE 352 944 1376 944
        END BRANCH
        IOMARKER 352 944 test_stop R180 28
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
            WIRE 1200 880 1200 1232
            WIRE 1200 880 1376 880
        END BRANCH
        IOMARKER 2288 1376 load_reg R0 28
        INSTANCE XLXI_17 944 1888 R0
        BEGIN BRANCH XLXN_12
            WIRE 1328 1632 1376 1632
            WIRE 1376 1344 1376 1632
            WIRE 1376 1344 1440 1344
        END BRANCH
        BEGIN INSTANCE XLXI_18 1376 976 R0
            BEGIN DISPLAY 168 -100 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_19 1984 928 R0
            BEGIN DISPLAY 168 20 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH logic0
            WIRE 1680 528 1680 544
            WIRE 1680 528 1968 528
            WIRE 1968 528 1968 640
            WIRE 1968 640 1984 640
        END BRANCH
        BEGIN BRANCH pulse_clk_sync
            WIRE 864 1344 864 1632
            WIRE 864 1632 944 1632
            WIRE 864 1344 1232 1344
            WIRE 1232 1248 1232 1344
            WIRE 1232 1248 1792 1248
            WIRE 1760 944 1792 944
            WIRE 1792 944 1792 1248
            WIRE 1792 944 1904 944
            WIRE 1904 448 1936 448
            WIRE 1904 448 1904 768
            WIRE 1904 768 1904 944
            WIRE 1904 768 1984 768
        END BRANCH
        BEGIN BRANCH sel_ver
            WIRE 1584 1152 1968 1152
            WIRE 1968 832 1984 832
            WIRE 1968 832 1968 1152
        END BRANCH
        IOMARKER 1584 1152 sel_ver R180 28
        INSTANCE XLXI_9 1616 672 R0
        BEGIN BRANCH XLXN_16
            WIRE 1760 752 1872 752
            WIRE 1872 752 1872 896
            WIRE 1872 896 1984 896
        END BRANCH
        BEGIN BRANCH ver_out(39:0)
            WIRE 2368 640 2384 640
            WIRE 2384 640 2496 640
        END BRANCH
        IOMARKER 2496 640 ver_out(39:0) R0 28
    END SHEET
END SCHEMATIC
