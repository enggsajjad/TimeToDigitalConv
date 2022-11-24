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
        SIGNAL Counter1(26:0)
        SIGNAL Counter2(26:0)
        SIGNAL Counter3(26:0)
        SIGNAL Counter4(26:0)
        SIGNAL load3
        SIGNAL din(26:0)
        SIGNAL load6
        SIGNAL load8
        SIGNAL load5
        SIGNAL Counter5(26:0)
        SIGNAL Counter6(26:0)
        SIGNAL Counter7(26:0)
        SIGNAL Counter8(26:0)
        SIGNAL load7
        PORT Input reset
        PORT Input load2
        PORT Input clk
        PORT Input load4
        PORT Input load1
        PORT Output Counter1(26:0)
        PORT Output Counter2(26:0)
        PORT Output Counter3(26:0)
        PORT Output Counter4(26:0)
        PORT Input load3
        PORT Input din(26:0)
        PORT Input load6
        PORT Input load8
        PORT Input load5
        PORT Output Counter5(26:0)
        PORT Output Counter6(26:0)
        PORT Output Counter7(26:0)
        PORT Output Counter8(26:0)
        PORT Input load7
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
            PIN dout(26:0) Counter1(26:0)
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
            PIN dout(26:0) Counter2(26:0)
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
            PIN dout(26:0) Counter3(26:0)
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
            PIN dout(26:0) Counter4(26:0)
        END BLOCK
        BEGIN BLOCK XLXI_41 dff_26bits
            BEGIN ATTR RLOC "R4C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN load load5
            PIN clock clk
            PIN reset reset
            PIN din(26:0) din(26:0)
            PIN dout(26:0) Counter5(26:0)
        END BLOCK
        BEGIN BLOCK XLXI_42 dff_26bits
            BEGIN ATTR RLOC "R5C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN load load6
            PIN clock clk
            PIN reset reset
            PIN din(26:0) din(26:0)
            PIN dout(26:0) Counter6(26:0)
        END BLOCK
        BEGIN BLOCK XLXI_43 dff_26bits
            BEGIN ATTR RLOC "R6C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN load load7
            PIN clock clk
            PIN reset reset
            PIN din(26:0) din(26:0)
            PIN dout(26:0) Counter7(26:0)
        END BLOCK
        BEGIN BLOCK XLXI_44 dff_26bits
            BEGIN ATTR RLOC "R7C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN load load8
            PIN clock clk
            PIN reset reset
            PIN din(26:0) din(26:0)
            PIN dout(26:0) Counter8(26:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH load2
            WIRE 320 976 1008 976
            WIRE 1008 976 1008 992
            WIRE 1008 992 1024 992
        END BRANCH
        BEGIN BRANCH clk
            WIRE 272 544 624 544
            WIRE 624 544 992 544
            WIRE 624 544 624 720
            WIRE 624 720 624 1056
            WIRE 624 1056 1024 1056
            WIRE 624 1056 624 1504
            WIRE 624 1504 992 1504
            WIRE 624 1504 624 1904
            WIRE 624 1904 976 1904
            WIRE 624 720 2272 720
            WIRE 2272 720 2640 720
            WIRE 2272 720 2272 1232
            WIRE 2272 1232 2672 1232
            WIRE 2272 1232 2272 1696
            WIRE 2272 1696 2272 2080
            WIRE 2272 2080 2624 2080
            WIRE 2272 1696 2640 1696
        END BRANCH
        BEGIN BRANCH load4
            WIRE 336 1840 976 1840
        END BRANCH
        BEGIN BRANCH load1
            WIRE 304 480 992 480
        END BRANCH
        BEGIN BRANCH Counter1(26:0)
            WIRE 1360 480 1376 480
            WIRE 1376 480 1456 480
        END BRANCH
        BEGIN BRANCH Counter2(26:0)
            WIRE 1408 992 1440 992
        END BRANCH
        BEGIN BRANCH Counter3(26:0)
            WIRE 1376 1440 1440 1440
        END BRANCH
        BEGIN BRANCH Counter4(26:0)
            WIRE 1360 1840 1408 1840
        END BRANCH
        BEGIN BRANCH load3
            WIRE 304 1440 304 1488
            WIRE 304 1440 992 1440
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
        IOMARKER 304 1488 load3 R180 28
        IOMARKER 320 976 load2 R180 28
        IOMARKER 336 1840 load4 R180 28
        IOMARKER 272 544 clk R180 28
        IOMARKER 304 480 load1 R180 28
        IOMARKER 160 608 reset R180 28
        IOMARKER 272 672 din(26:0) R180 28
        BEGIN BRANCH reset
            WIRE 160 608 816 608
            WIRE 816 608 992 608
            WIRE 816 608 816 784
            WIRE 816 784 816 1120
            WIRE 816 1120 1024 1120
            WIRE 816 1120 816 1568
            WIRE 816 1568 816 1968
            WIRE 816 1968 976 1968
            WIRE 816 1568 992 1568
            WIRE 816 784 2464 784
            WIRE 2464 784 2640 784
            WIRE 2464 784 2464 1296
            WIRE 2464 1296 2672 1296
            WIRE 2464 1296 2464 1760
            WIRE 2464 1760 2464 2144
            WIRE 2464 2144 2624 2144
            WIRE 2464 1760 2640 1760
        END BRANCH
        IOMARKER 1440 992 Counter2(26:0) R0 28
        IOMARKER 1440 1440 Counter3(26:0) R0 28
        IOMARKER 1408 1840 Counter4(26:0) R0 28
        BEGIN BRANCH load6
            WIRE 1968 1152 2656 1152
            WIRE 2656 1152 2656 1168
            WIRE 2656 1168 2672 1168
        END BRANCH
        BEGIN BRANCH load8
            WIRE 1984 2016 2624 2016
        END BRANCH
        BEGIN BRANCH load5
            WIRE 1952 656 2640 656
        END BRANCH
        BEGIN BRANCH Counter5(26:0)
            WIRE 3008 656 3024 656
            WIRE 3024 656 3072 656
        END BRANCH
        BEGIN BRANCH Counter6(26:0)
            WIRE 3056 1168 3088 1168
        END BRANCH
        BEGIN BRANCH Counter7(26:0)
            WIRE 3024 1632 3072 1632
            WIRE 3072 1616 3088 1616
            WIRE 3072 1616 3072 1632
        END BRANCH
        BEGIN BRANCH Counter8(26:0)
            WIRE 3008 2016 3056 2016
        END BRANCH
        BEGIN BRANCH load7
            WIRE 1920 1616 1936 1616
            WIRE 1936 1616 1936 1632
            WIRE 1936 1632 2640 1632
        END BRANCH
        BEGIN INSTANCE XLXI_41 2640 880 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_42 2672 1392 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_44 2624 2240 R0
            BEGIN DISPLAY 152 -148 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        IOMARKER 1968 1152 load6 R180 28
        IOMARKER 1984 2016 load8 R180 28
        IOMARKER 1952 656 load5 R180 28
        IOMARKER 3072 656 Counter5(26:0) R0 28
        IOMARKER 3088 1168 Counter6(26:0) R0 28
        IOMARKER 3088 1616 Counter7(26:0) R0 28
        IOMARKER 3056 2016 Counter8(26:0) R0 28
        IOMARKER 1920 1616 load7 R180 28
        BEGIN INSTANCE XLXI_43 2640 1856 R0
            BEGIN DISPLAY 0 -376 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH din(26:0)
            WIRE 272 672 496 672
            WIRE 496 672 992 672
            WIRE 496 672 496 848
            WIRE 496 848 496 1184
            WIRE 496 1184 1024 1184
            WIRE 496 1184 496 1632
            WIRE 496 1632 992 1632
            WIRE 496 1632 496 2032
            WIRE 496 2032 976 2032
            WIRE 496 848 2176 848
            WIRE 2176 848 2640 848
            WIRE 2176 848 2176 1360
            WIRE 2176 1360 2672 1360
            WIRE 2176 1360 2176 1824
            WIRE 2176 1824 2176 2208
            WIRE 2176 2208 2624 2208
            WIRE 2176 1824 2640 1824
        END BRANCH
        IOMARKER 1456 480 Counter1(26:0) R0 28
    END SHEET
END SCHEMATIC
