VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL reset
        SIGNAL load2
        SIGNAL clk
        SIGNAL load4
        SIGNAL load1
        SIGNAL cntr1_val_reg(26:0)
        SIGNAL cntr2_val_reg(26:0)
        SIGNAL cntr3_val_reg(26:0)
        SIGNAL cntr4_val_reg(26:0)
        SIGNAL load3
        SIGNAL din(26:0)
        PORT Input reset
        PORT Input load2
        PORT Input clk
        PORT Input load4
        PORT Input load1
        PORT Output cntr1_val_reg(26:0)
        PORT Output cntr2_val_reg(26:0)
        PORT Output cntr3_val_reg(26:0)
        PORT Output cntr4_val_reg(26:0)
        PORT Input load3
        PORT Input din(26:0)
        BEGIN BLOCKDEF dff_26bits
            TIMESTAMP 2011 3 4 4 53 44
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCK XLXI_37 dff_26bits
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN load load1
            PIN clock clk
            PIN reset reset
            PIN din(26:0) din(26:0)
            PIN dout(26:0) cntr1_val_reg(26:0)
        END BLOCK
        BEGIN BLOCK XLXI_38 dff_26bits
            BEGIN ATTR RLOC "R1C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN load load2
            PIN clock clk
            PIN reset reset
            PIN din(26:0) din(26:0)
            PIN dout(26:0) cntr2_val_reg(26:0)
        END BLOCK
        BEGIN BLOCK XLXI_39 dff_26bits
            BEGIN ATTR RLOC "R2C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN load load3
            PIN clock clk
            PIN reset reset
            PIN din(26:0) din(26:0)
            PIN dout(26:0) cntr3_val_reg(26:0)
        END BLOCK
        BEGIN BLOCK XLXI_40 dff_26bits
            BEGIN ATTR RLOC "R3C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN load load4
            PIN clock clk
            PIN reset reset
            PIN din(26:0) din(26:0)
            PIN dout(26:0) cntr4_val_reg(26:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH load2
            WIRE 320 992 1024 992
        END BRANCH
        BEGIN BRANCH load4
            WIRE 336 1840 976 1840
        END BRANCH
        BEGIN BRANCH load1
            WIRE 304 480 992 480
        END BRANCH
        BEGIN BRANCH cntr1_val_reg(26:0)
            WIRE 1360 480 1376 480
            WIRE 1376 480 1520 480
        END BRANCH
        BEGIN BRANCH cntr2_val_reg(26:0)
            WIRE 1408 992 1440 992
        END BRANCH
        BEGIN BRANCH cntr3_val_reg(26:0)
            WIRE 1376 1440 1440 1440
        END BRANCH
        BEGIN BRANCH cntr4_val_reg(26:0)
            WIRE 1360 1840 1408 1840
        END BRANCH
        BEGIN BRANCH load3
            WIRE 320 1440 976 1440
            WIRE 976 1440 992 1440
        END BRANCH
        BEGIN INSTANCE XLXI_37 992 704 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_38 1024 1216 R0
            BEGIN DISPLAY -64 -284 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_39 992 1664 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_40 976 2064 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 336 1840 load4 R180 28
        IOMARKER 272 544 clk R180 28
        IOMARKER 304 480 load1 R180 28
        IOMARKER 1440 992 cntr2_val_reg(26:0) R0 28
        IOMARKER 1440 1440 cntr3_val_reg(26:0) R0 28
        IOMARKER 1408 1840 cntr4_val_reg(26:0) R0 28
        BEGIN BRANCH din(26:0)
            WIRE 336 672 496 672
            WIRE 496 672 992 672
            WIRE 496 672 496 1184
            WIRE 496 1184 1024 1184
            WIRE 496 1184 496 1632
            WIRE 496 1632 992 1632
            WIRE 496 1632 496 2032
            WIRE 496 2032 976 2032
        END BRANCH
        BEGIN BRANCH reset
            WIRE 304 608 816 608
            WIRE 816 608 992 608
            WIRE 816 608 816 1120
            WIRE 816 1120 1024 1120
            WIRE 816 1120 816 1568
            WIRE 816 1568 816 1968
            WIRE 816 1968 976 1968
            WIRE 816 1568 992 1568
        END BRANCH
        BEGIN BRANCH clk
            WIRE 272 544 624 544
            WIRE 624 544 992 544
            WIRE 624 544 624 1056
            WIRE 624 1056 1024 1056
            WIRE 624 1056 624 1504
            WIRE 624 1504 992 1504
            WIRE 624 1504 624 1904
            WIRE 624 1904 976 1904
        END BRANCH
        IOMARKER 320 1440 load3 R180 28
        IOMARKER 320 992 load2 R180 28
        IOMARKER 304 608 reset R180 28
        IOMARKER 336 672 din(26:0) R180 28
        IOMARKER 1520 480 cntr1_val_reg(26:0) R0 28
    END SHEET
END SCHEMATIC
