VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL reset
        SIGNAL Din(7:0)
        SIGNAL Qout(7:0)
        SIGNAL Qout(0)
        SIGNAL Qout(1)
        SIGNAL Qout(2)
        SIGNAL Qout(3)
        SIGNAL Qout(4)
        SIGNAL Qout(5)
        SIGNAL Qout(6)
        SIGNAL Qout(7)
        SIGNAL Din(0)
        SIGNAL Din(1)
        SIGNAL Din(2)
        SIGNAL Din(3)
        SIGNAL Din(4)
        SIGNAL Din(5)
        SIGNAL Din(6)
        SIGNAL Din(7)
        SIGNAL Gbar
        SIGNAL GE(7:0)
        SIGNAL GE(0)
        SIGNAL GE(1)
        SIGNAL GE(2)
        SIGNAL GE(3)
        SIGNAL GE(4)
        SIGNAL GE(5)
        SIGNAL GE(6)
        SIGNAL GE(7)
        PORT Input reset
        PORT Input Din(7:0)
        PORT Output Qout(7:0)
        PORT Input Gbar
        PORT Input GE(7:0)
        BEGIN BLOCKDEF ldce_1
            TIMESTAMP 2001 2 2 12 53 38
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 0 -32 64 -32 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK latch_0 ldce_1
            BEGIN ATTR RLOC "R0C0.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CLR reset
            PIN D Din(0)
            PIN G Gbar
            PIN GE GE(0)
            PIN Q Qout(0)
        END BLOCK
        BEGIN BLOCK latch_1 ldce_1
            BEGIN ATTR RLOC "R0C0.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CLR reset
            PIN D Din(1)
            PIN G Gbar
            PIN GE GE(1)
            PIN Q Qout(1)
        END BLOCK
        BEGIN BLOCK latch_2 ldce_1
            BEGIN ATTR RLOC "R0C1.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CLR reset
            PIN D Din(2)
            PIN G Gbar
            PIN GE GE(2)
            PIN Q Qout(2)
        END BLOCK
        BEGIN BLOCK latch_3 ldce_1
            BEGIN ATTR RLOC "R0C1.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CLR reset
            PIN D Din(3)
            PIN G Gbar
            PIN GE GE(3)
            PIN Q Qout(3)
        END BLOCK
        BEGIN BLOCK latch_4 ldce_1
            BEGIN ATTR RLOC "R0C2.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CLR reset
            PIN D Din(4)
            PIN G Gbar
            PIN GE GE(4)
            PIN Q Qout(4)
        END BLOCK
        BEGIN BLOCK latch_5 ldce_1
            BEGIN ATTR RLOC "R0C2.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CLR reset
            PIN D Din(5)
            PIN G Gbar
            PIN GE GE(5)
            PIN Q Qout(5)
        END BLOCK
        BEGIN BLOCK latch_6 ldce_1
            BEGIN ATTR RLOC "R0C3.S1"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CLR reset
            PIN D Din(6)
            PIN G Gbar
            PIN GE GE(6)
            PIN Q Qout(6)
        END BLOCK
        BEGIN BLOCK latch_7 ldce_1
            BEGIN ATTR RLOC "R0C3.S0"
                VERILOG all:0 wsynth:1
            END ATTR
            PIN CLR reset
            PIN D Din(7)
            PIN G Gbar
            PIN GE GE(7)
            PIN Q Qout(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 9600 3200
        BEGIN BRANCH reset
            WIRE 816 1280 992 1280
            WIRE 992 1280 992 1296
            WIRE 992 1280 1472 1280
            WIRE 1472 1280 1472 1296
            WIRE 1472 1280 1952 1280
            WIRE 1952 1280 1952 1296
            WIRE 1952 1280 2432 1280
            WIRE 2432 1280 2432 1296
            WIRE 2432 1280 2912 1280
            WIRE 2912 1280 2912 1296
            WIRE 2912 1280 3360 1280
            WIRE 3360 1280 3360 1296
            WIRE 3360 1280 3872 1280
            WIRE 3872 1280 3872 1296
            WIRE 3872 1280 4352 1280
            WIRE 4352 1280 4352 1296
            WIRE 4352 1280 4832 1280
            WIRE 4832 1280 4832 1296
            WIRE 4832 1280 5312 1280
            WIRE 5312 1280 5312 1296
            WIRE 5312 1280 5792 1280
            WIRE 5792 1280 5792 1296
            WIRE 5792 1280 6272 1280
            WIRE 6272 1280 6272 1296
            WIRE 6272 1280 6752 1280
            WIRE 6752 1280 6752 1296
            WIRE 6752 1280 7232 1280
            WIRE 7232 1280 7232 1312
            WIRE 7232 1280 7712 1280
            WIRE 7712 1280 7712 1296
            WIRE 7712 1280 8160 1280
            WIRE 8160 1280 8160 1296
        END BRANCH
        BEGIN BRANCH Qout(7:0)
            WIRE 800 2400 1216 2400
            WIRE 1216 2400 1696 2400
            WIRE 1696 2400 2176 2400
            WIRE 2176 2400 2656 2400
            WIRE 2656 2400 3136 2400
            WIRE 3136 2400 3584 2400
            WIRE 3584 2400 4096 2400
            WIRE 4096 2400 4576 2400
            WIRE 4576 2400 5056 2400
            WIRE 5056 2400 5536 2400
            WIRE 5536 2400 6016 2400
            WIRE 6016 2400 6496 2400
            WIRE 6496 2400 6976 2400
            WIRE 6976 2400 7456 2400
            WIRE 7456 2400 7936 2400
            WIRE 7936 2400 8384 2400
            WIRE 8384 2400 9104 2400
            WIRE 1216 2016 1216 2400
            WIRE 1696 2016 1696 2400
            WIRE 2176 2016 2176 2400
            WIRE 2656 2000 2656 2400
            WIRE 3136 2016 3136 2400
            WIRE 3584 2016 3584 2400
            WIRE 4096 2016 4096 2400
            WIRE 4576 2016 4576 2400
            WIRE 5056 2016 5056 2400
            WIRE 5536 2016 5536 2400
            WIRE 6016 2016 6016 2400
            WIRE 6496 2016 6496 2400
            WIRE 6976 2032 6976 2400
            WIRE 7456 2016 7456 2400
            WIRE 7936 2016 7936 2400
            WIRE 8384 2016 8384 2400
        END BRANCH
        IOMARKER 800 656 Din(7:0) R180 28
        IOMARKER 9104 2400 Qout(7:0) R0 28
        BUSTAP 1216 2016 1216 1920
        BUSTAP 1696 2016 1696 1920
        BUSTAP 2176 2016 2176 1920
        BUSTAP 2656 2000 2656 1904
        BUSTAP 3136 2016 3136 1920
        BUSTAP 3584 2016 3584 1920
        BUSTAP 4096 2016 4096 1920
        BUSTAP 4576 2016 4576 1920
        BEGIN BRANCH Qout(0)
            WIRE 1216 1680 1216 1920
        END BRANCH
        BEGIN BRANCH Qout(1)
            WIRE 1696 1680 1696 1920
        END BRANCH
        BEGIN BRANCH Qout(2)
            WIRE 2176 1680 2176 1920
        END BRANCH
        BEGIN BRANCH Qout(3)
            WIRE 2656 1680 2656 1904
        END BRANCH
        BEGIN BRANCH Qout(4)
            WIRE 3136 1680 3136 1920
        END BRANCH
        BEGIN BRANCH Qout(5)
            WIRE 3584 1680 3584 1920
        END BRANCH
        BEGIN BRANCH Qout(6)
            WIRE 4096 1680 4096 1920
        END BRANCH
        BEGIN BRANCH Qout(7)
            WIRE 4576 1680 4576 1920
        END BRANCH
        BUSTAP 1216 944 1216 1040
        BUSTAP 1696 960 1696 1056
        BUSTAP 2176 960 2176 1056
        BUSTAP 2656 960 2656 1056
        BUSTAP 3136 960 3136 1056
        BUSTAP 3584 960 3584 1056
        BUSTAP 4096 960 4096 1056
        BUSTAP 4576 960 4576 1056
        BEGIN BRANCH Din(7:0)
            WIRE 800 656 1216 656
            WIRE 1216 656 1696 656
            WIRE 1696 656 2176 656
            WIRE 2176 656 2192 656
            WIRE 2192 656 2656 656
            WIRE 2656 656 3136 656
            WIRE 3136 656 3584 656
            WIRE 3584 656 4096 656
            WIRE 4096 656 4576 656
            WIRE 4576 656 5056 656
            WIRE 5056 656 5536 656
            WIRE 5536 656 6016 656
            WIRE 6016 656 6480 656
            WIRE 6480 656 6960 656
            WIRE 6960 656 7456 656
            WIRE 7456 656 7936 656
            WIRE 7936 656 8368 656
            WIRE 8368 656 8368 960
            WIRE 7936 656 7936 960
            WIRE 7456 656 7456 960
            WIRE 6960 656 6960 960
            WIRE 6480 656 6480 960
            WIRE 6016 656 6016 960
            WIRE 5536 656 5536 960
            WIRE 5056 656 5056 960
            WIRE 4576 656 4576 960
            WIRE 4096 656 4096 960
            WIRE 3584 656 3584 960
            WIRE 3136 656 3136 960
            WIRE 2656 656 2656 960
            WIRE 2176 656 2176 960
            WIRE 1696 656 1696 960
            WIRE 1216 656 1216 944
            WIRE 8368 640 8368 656
        END BRANCH
        BEGIN BRANCH Din(0)
            WIRE 1216 1040 1216 1296
        END BRANCH
        BEGIN BRANCH Din(1)
            WIRE 1696 1056 1696 1296
        END BRANCH
        BEGIN BRANCH Din(2)
            WIRE 2176 1056 2176 1296
        END BRANCH
        BEGIN BRANCH Din(3)
            WIRE 2656 1056 2656 1296
        END BRANCH
        BEGIN BRANCH Din(4)
            WIRE 3136 1056 3136 1296
        END BRANCH
        BEGIN BRANCH Din(5)
            WIRE 3584 1056 3584 1296
        END BRANCH
        BEGIN BRANCH Din(6)
            WIRE 4096 1056 4096 1296
        END BRANCH
        BEGIN BRANCH Din(7)
            WIRE 4576 1056 4576 1296
        END BRANCH
        IOMARKER 816 1280 reset R180 28
        BEGIN INSTANCE latch_0 960 1296 R90
            BEGIN DISPLAY 0 -424 ATTR RLOC
                ALIGNMENT VLEFT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE latch_1 1440 1296 R90
            BEGIN DISPLAY 0 -424 ATTR RLOC
                ALIGNMENT VLEFT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE latch_2 1920 1296 R90
            BEGIN DISPLAY 0 -424 ATTR RLOC
                ALIGNMENT VLEFT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE latch_3 2400 1296 R90
            BEGIN DISPLAY 0 -424 ATTR RLOC
                ALIGNMENT VLEFT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE latch_4 2880 1296 R90
            BEGIN DISPLAY 0 -424 ATTR RLOC
                ALIGNMENT VLEFT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE latch_5 3328 1296 R90
            BEGIN DISPLAY 0 -424 ATTR RLOC
                ALIGNMENT VLEFT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE latch_6 3840 1296 R90
            BEGIN DISPLAY 0 -424 ATTR RLOC
                ALIGNMENT VLEFT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE latch_7 4320 1296 R90
            BEGIN DISPLAY 0 -424 ATTR RLOC
                ALIGNMENT VLEFT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Gbar
            WIRE 944 1200 1088 1200
            WIRE 1088 1200 1088 1264
            WIRE 1088 1264 1088 1296
            WIRE 1088 1264 1568 1264
            WIRE 1568 1264 1568 1296
            WIRE 1568 1264 2048 1264
            WIRE 2048 1264 2048 1296
            WIRE 2048 1264 2528 1264
            WIRE 2528 1264 2528 1296
            WIRE 2528 1264 3008 1264
            WIRE 3008 1264 3008 1296
            WIRE 3008 1264 3456 1264
            WIRE 3456 1264 3456 1296
            WIRE 3456 1264 3968 1264
            WIRE 3968 1264 3968 1296
            WIRE 3968 1264 4048 1264
            WIRE 4048 1264 4448 1264
            WIRE 4448 1264 4448 1296
            WIRE 4448 1264 4928 1264
            WIRE 4928 1264 4928 1296
            WIRE 4928 1264 5408 1264
            WIRE 5408 1264 5408 1296
            WIRE 5408 1264 5872 1264
            WIRE 5872 1264 5888 1264
            WIRE 5888 1264 5888 1296
            WIRE 5888 1264 6368 1264
            WIRE 6368 1264 6368 1296
            WIRE 6368 1264 6848 1264
            WIRE 6848 1264 6848 1296
            WIRE 6848 1264 7328 1264
            WIRE 7328 1264 7328 1312
            WIRE 7328 1264 7808 1264
            WIRE 7808 1264 7808 1296
            WIRE 7808 1264 8256 1264
            WIRE 8256 1264 8256 1296
        END BRANCH
        IOMARKER 944 1200 Gbar R180 28
        BEGIN BRANCH GE(7:0)
            WIRE 640 1072 1152 1072
            WIRE 1152 1072 1632 1072
            WIRE 1632 1072 2112 1072
            WIRE 2112 1072 2592 1072
            WIRE 2592 1072 3072 1072
            WIRE 3072 1072 3520 1072
            WIRE 3520 1072 4032 1072
            WIRE 4032 1072 4512 1072
            WIRE 4512 1072 4992 1072
            WIRE 4992 1072 5472 1072
            WIRE 5472 1072 5952 1072
            WIRE 5952 1072 6432 1072
            WIRE 6432 1072 6912 1072
            WIRE 6912 1072 7392 1072
            WIRE 7392 1072 7872 1072
            WIRE 7872 1072 8272 1072
            WIRE 8272 1072 8320 1072
            WIRE 8320 1072 8320 1104
            WIRE 7872 1072 7872 1104
            WIRE 7392 1072 7392 1104
            WIRE 6912 1072 6912 1104
            WIRE 6432 1072 6432 1104
            WIRE 5952 1072 5952 1104
            WIRE 5472 1072 5472 1104
            WIRE 4992 1072 4992 1104
            WIRE 4512 1072 4512 1104
            WIRE 4032 1072 4032 1104
            WIRE 3520 1072 3520 1104
            WIRE 3072 1072 3072 1104
            WIRE 2592 1072 2592 1104
            WIRE 2112 1072 2112 1104
            WIRE 1632 1072 1632 1104
            WIRE 1152 1072 1152 1104
        END BRANCH
        IOMARKER 640 1072 GE(7:0) R180 28
        BUSTAP 1152 1104 1152 1200
        BUSTAP 1632 1104 1632 1200
        BUSTAP 2112 1104 2112 1200
        BUSTAP 2592 1104 2592 1200
        BUSTAP 3072 1104 3072 1200
        BUSTAP 3520 1104 3520 1200
        BUSTAP 4032 1104 4032 1200
        BUSTAP 4512 1104 4512 1200
        BEGIN BRANCH GE(0)
            WIRE 1152 1200 1152 1296
        END BRANCH
        BEGIN BRANCH GE(1)
            WIRE 1632 1200 1632 1296
        END BRANCH
        BEGIN BRANCH GE(2)
            WIRE 2112 1200 2112 1296
        END BRANCH
        BEGIN BRANCH GE(3)
            WIRE 2592 1200 2592 1296
        END BRANCH
        BEGIN BRANCH GE(4)
            WIRE 3072 1200 3072 1296
        END BRANCH
        BEGIN BRANCH GE(5)
            WIRE 3520 1200 3520 1296
        END BRANCH
        BEGIN BRANCH GE(6)
            WIRE 4032 1200 4032 1296
        END BRANCH
        BEGIN BRANCH GE(7)
            WIRE 4512 1200 4512 1296
        END BRANCH
    END SHEET
END SCHEMATIC
