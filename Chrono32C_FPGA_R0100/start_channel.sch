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
        SIGNAL start_pulse
        SIGNAL ver_out_10bits(39:0)
        SIGNAL clk
        SIGNAL reset
        SIGNAL star_sync_out
        SIGNAL start_clk_sync
        SIGNAL teststart
        PORT Input sel_ver
        PORT Input start_pulse
        PORT Output ver_out_10bits(39:0)
        PORT Input clk
        PORT Input reset
        PORT Output star_sync_out
        PORT Output start_clk_sync
        PORT Input teststart
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
        BEGIN BLOCK XLXI_1 vernier40
            BEGIN ATTR RLOC "R0C2"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN startsync star_sync_out
            PIN logic0 logic0
            PIN reset reset
            PIN clksync start_clk_sync
            PIN Qout(39:0) ver_out_10bits(39:0)
            PIN sel_ver sel_ver
        END BLOCK
        BEGIN BLOCK XLXI_2 synclogic1
            BEGIN ATTR RLOC "R1C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN clk clk
            PIN reset reset
            PIN start start_pulse
            PIN startsync star_sync_out
            PIN clk_sync1 start_clk_sync
            PIN test_pulse teststart
        END BLOCK
        BEGIN BLOCK XLXI_3 gnd
            PIN G logic0
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1376 848 R0
            BEGIN DISPLAY 144 -112 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH sel_ver
            WIRE 1392 1072 1744 1072
            WIRE 1744 1072 1744 1136
            WIRE 1744 1136 1968 1136
        END BRANCH
        BEGIN BRANCH start_pulse
            WIRE 416 672 1360 672
            WIRE 1360 672 1360 688
            WIRE 1360 688 1376 688
        END BRANCH
        BEGIN BRANCH ver_out_10bits(39:0)
            WIRE 2432 560 2784 560
        END BRANCH
        IOMARKER 336 816 reset R180 28
        IOMARKER 416 672 start_pulse R180 28
        IOMARKER 320 752 clk R180 28
        BEGIN BRANCH reset
            WIRE 336 816 1312 816
            WIRE 1312 816 1376 816
            WIRE 1312 528 1312 816
            WIRE 1312 528 1872 528
            WIRE 1872 528 1872 688
            WIRE 1872 688 1968 688
        END BRANCH
        BEGIN BRANCH clk
            WIRE 320 752 1376 752
        END BRANCH
        IOMARKER 2784 560 ver_out_10bits(39:0) R0 28
        BEGIN INSTANCE XLXI_1 1968 784 R0
            BEGIN DISPLAY 172 -352 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH logic0
            WIRE 560 992 560 1008
            WIRE 560 992 1952 992
            WIRE 1952 880 1968 880
            WIRE 1952 880 1952 992
        END BRANCH
        IOMARKER 1392 1072 sel_ver R180 28
        IOMARKER 2064 1312 star_sync_out R0 28
        BEGIN BRANCH start_clk_sync
            WIRE 1792 880 1872 880
            WIRE 1872 880 1872 1232
            WIRE 1872 1232 2032 1232
            WIRE 1872 752 1872 880
            WIRE 1872 752 1968 752
        END BRANCH
        BEGIN BRANCH star_sync_out
            WIRE 1792 688 1824 688
            WIRE 1824 688 1856 688
            WIRE 1824 688 1824 1040
            WIRE 1824 1040 1888 1040
            WIRE 1888 1040 1888 1312
            WIRE 1888 1312 2064 1312
            WIRE 1856 560 1968 560
            WIRE 1856 560 1856 688
        END BRANCH
        IOMARKER 2032 1232 start_clk_sync R0 28
        INSTANCE XLXI_3 496 1136 R0
        BEGIN BRANCH teststart
            WIRE 368 944 1376 944
        END BRANCH
        IOMARKER 368 944 teststart R180 28
    END SHEET
END SCHEMATIC
