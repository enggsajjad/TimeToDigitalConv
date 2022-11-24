VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Q(31:0)
        SIGNAL Q(26:0)
        SIGNAL start_sync
        SIGNAL load(3)
        SIGNAL load(2)
        SIGNAL load(0)
        SIGNAL load(1)
        SIGNAL XLXN_37(26:0)
        SIGNAL XLXN_38(26:0)
        SIGNAL XLXN_39(26:0)
        SIGNAL XLXN_40(26:0)
        SIGNAL count(7:0)
        SIGNAL sel_cntr_bytes(15:0)
        SIGNAL sel_cntr_bytes(3:0)
        SIGNAL sel_cntr_bytes(7:4)
        SIGNAL sel_cntr_bytes(11:8)
        SIGNAL sel_cntr_bytes(15:12)
        SIGNAL reset
        SIGNAL clk
        SIGNAL ovf24_intr
        SIGNAL load(3:0)
        PORT Input start_sync
        PORT Output count(7:0)
        PORT Input sel_cntr_bytes(15:0)
        PORT Input reset
        PORT Input clk
        PORT Output ovf24_intr
        PORT Input load(3:0)
        BEGIN BLOCKDEF cntr_registers
            TIMESTAMP 2014 6 26 11 27 7
            RECTANGLE N 64 -448 320 0 
            LINE N 64 -416 0 -416 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 64 -272 0 -272 
            LINE N 64 -368 0 -368 
            LINE N 64 -304 0 -304 
            LINE N 64 -240 0 -240 
            LINE N 64 -208 0 -208 
            LINE N 64 -112 0 -112 
            RECTANGLE N 0 -124 64 -100 
            LINE N 320 -384 384 -384 
            RECTANGLE N 320 -396 384 -372 
        END BLOCKDEF
        BEGIN BLOCKDEF cntr_reg_interface
            TIMESTAMP 2014 6 26 11 40 33
            RECTANGLE N 64 -512 448 0 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 448 -480 512 -480 
            RECTANGLE N 448 -492 512 -468 
            LINE N 448 -336 512 -336 
            RECTANGLE N 448 -348 512 -324 
            LINE N 448 -192 512 -192 
            RECTANGLE N 448 -204 512 -180 
            LINE N 448 -48 512 -48 
            RECTANGLE N 448 -60 512 -36 
        END BLOCKDEF
        BEGIN BLOCKDEF counter32bit
            TIMESTAMP 2014 7 2 3 53 21
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -192 320 8 
            LINE N 320 -16 384 -16 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCK XLXI_11 cntr_registers
            BEGIN ATTR RLOC "R5C3"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN reset reset
            PIN cntr2_val_reg(26:0) XLXN_38(26:0)
            PIN cntr3_val_reg(26:0) XLXN_39(26:0)
            PIN cntr4_val_reg(26:0) XLXN_40(26:0)
            PIN load2 load(1)
            PIN clk clk
            PIN load1 load(0)
            PIN load3 load(2)
            PIN load4 load(3)
            PIN din(26:0) Q(26:0)
            PIN cntr1_val_reg(26:0) XLXN_37(26:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 cntr_reg_interface
            PIN sel_cntr_bytes1(3:0) sel_cntr_bytes(3:0)
            PIN sel_cntr_bytes2(3:0) sel_cntr_bytes(7:4)
            PIN sel_cntr_bytes3(3:0) sel_cntr_bytes(11:8)
            PIN sel_cntr_bytes4(3:0) sel_cntr_bytes(15:12)
            PIN cntr1_val_reg(26:0) XLXN_37(26:0)
            PIN cntr2_val_reg(26:0) XLXN_38(26:0)
            PIN cntr3_val_reg(26:0) XLXN_39(26:0)
            PIN cntr4_val_reg(26:0) XLXN_40(26:0)
            PIN cntr1_in_byte(7:0) count(7:0)
            PIN cntr2_in_byte(7:0) count(7:0)
            PIN cntr3_in_byte(7:0) count(7:0)
            PIN cntr4_in_byte(7:0) count(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 counter32bit
            PIN reset reset
            PIN clk clk
            PIN enb start_sync
            PIN ovf24_intr ovf24_intr
            PIN cntr(31:0) Q(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Q(31:0)
            WIRE 1376 1568 1376 1584
            WIRE 1376 1584 1376 1680
            WIRE 1376 1680 1472 1680
            WIRE 1472 1680 1472 1808
            WIRE 1408 1808 1472 1808
        END BRANCH
        BUSTAP 1376 1584 1472 1584
        BEGIN BRANCH Q(26:0)
            WIRE 1472 1584 1488 1584
        END BRANCH
        BEGIN INSTANCE XLXI_11 1488 1696 R0
            BEGIN DISPLAY 132 20 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH load(3)
            WIRE 1312 1488 1488 1488
        END BRANCH
        BEGIN BRANCH load(2)
            WIRE 1312 1456 1488 1456
        END BRANCH
        BEGIN BRANCH load(0)
            WIRE 1312 1392 1488 1392
        END BRANCH
        BEGIN BRANCH load(1)
            WIRE 1312 1424 1488 1424
        END BRANCH
        BEGIN BRANCH XLXN_37(26:0)
            WIRE 1872 1312 1888 1312
            WIRE 1888 1200 2000 1200
            WIRE 1888 1200 1888 1312
        END BRANCH
        BEGIN BRANCH XLXN_38(26:0)
            WIRE 1872 1408 1936 1408
            WIRE 1936 1264 1936 1408
            WIRE 1936 1264 2000 1264
        END BRANCH
        BEGIN BRANCH XLXN_39(26:0)
            WIRE 1872 1536 1952 1536
            WIRE 1952 1328 1952 1536
            WIRE 1952 1328 2000 1328
        END BRANCH
        BEGIN BRANCH XLXN_40(26:0)
            WIRE 1872 1664 1968 1664
            WIRE 1968 1392 1968 1664
            WIRE 1968 1392 2000 1392
        END BRANCH
        BEGIN BRANCH count(7:0)
            WIRE 2512 944 2560 944
            WIRE 2560 944 2560 1088
            WIRE 2560 1088 2560 1232
            WIRE 2560 1232 2560 1376
            WIRE 2560 944 2672 944
            WIRE 2512 1088 2560 1088
            WIRE 2512 1232 2560 1232
            WIRE 2512 1376 2560 1376
        END BRANCH
        BEGIN BRANCH sel_cntr_bytes(15:0)
            WIRE 1504 928 1680 928
            WIRE 1680 928 1680 944
            WIRE 1680 944 1680 1008
            WIRE 1680 1008 1680 1072
            WIRE 1680 1072 1680 1136
            WIRE 1680 1136 1680 1152
        END BRANCH
        BEGIN BRANCH sel_cntr_bytes(3:0)
            WIRE 1776 944 2000 944
        END BRANCH
        BUSTAP 1680 944 1776 944
        BEGIN BRANCH sel_cntr_bytes(7:4)
            WIRE 1776 1008 2000 1008
        END BRANCH
        BUSTAP 1680 1008 1776 1008
        BUSTAP 1680 1072 1776 1072
        BEGIN BRANCH sel_cntr_bytes(11:8)
            WIRE 1776 1072 2000 1072
        END BRANCH
        BEGIN BRANCH sel_cntr_bytes(15:12)
            WIRE 1776 1136 2000 1136
        END BRANCH
        BUSTAP 1680 1136 1776 1136
        BEGIN BRANCH clk
            WIRE 752 1328 848 1328
            WIRE 848 1328 1488 1328
            WIRE 848 1328 848 1872
            WIRE 848 1872 1024 1872
        END BRANCH
        BEGIN BRANCH reset
            WIRE 768 1280 896 1280
            WIRE 896 1280 1488 1280
            WIRE 896 1280 896 1808
            WIRE 896 1808 1024 1808
        END BRANCH
        BEGIN BRANCH ovf24_intr
            WIRE 1408 1952 1424 1952
        END BRANCH
        IOMARKER 1424 1952 ovf24_intr R0 28
        BEGIN BRANCH start_sync
            WIRE 864 1936 1024 1936
        END BRANCH
        IOMARKER 864 1936 start_sync R180 28
        IOMARKER 1504 928 sel_cntr_bytes(15:0) R180 28
        BEGIN INSTANCE XLXI_12 2000 1424 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_13 1024 1968 R0
        END INSTANCE
        BEGIN BRANCH load(3:0)
            WIRE 800 1376 1216 1376
            WIRE 1216 1376 1216 1392
            WIRE 1216 1392 1216 1424
            WIRE 1216 1424 1216 1456
            WIRE 1216 1456 1216 1488
            WIRE 1216 1488 1216 1520
        END BRANCH
        BUSTAP 1216 1488 1312 1488
        BUSTAP 1216 1456 1312 1456
        BUSTAP 1216 1392 1312 1392
        BUSTAP 1216 1424 1312 1424
        IOMARKER 768 1280 reset R180 28
        IOMARKER 752 1328 clk R180 28
        IOMARKER 800 1376 load(3:0) R180 28
        IOMARKER 2672 944 count(7:0) R0 28
    END SHEET
END SCHEMATIC
