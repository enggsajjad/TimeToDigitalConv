VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL CO
        SIGNAL CI
        SIGNAL C1
        SIGNAL C2
        SIGNAL C3
        SIGNAL C4
        SIGNAL TQ5
        SIGNAL C5
        SIGNAL TQ6
        SIGNAL C6
        SIGNAL TQ7
        SIGNAL C7
        SIGNAL TQ3
        SIGNAL TQ4
        SIGNAL TQ2
        SIGNAL TQ1
        SIGNAL CLR
        SIGNAL C
        SIGNAL TQ0
        SIGNAL CE
        SIGNAL Q(0)
        SIGNAL Q(1)
        SIGNAL Q(2)
        SIGNAL Q(3)
        SIGNAL Q(4)
        SIGNAL Q(5)
        SIGNAL Q(6)
        SIGNAL Q(7)
        SIGNAL Q(7:0)
        SIGNAL XLXN_3
        PORT Output CO
        PORT Input CI
        PORT Output C2
        PORT Input CLR
        PORT Input C
        PORT Input CE
        PORT Output Q(7:0)
        BEGIN BLOCKDEF muxcy_l
            TIMESTAMP 2001 5 4 10 15 14
            LINE N 192 0 192 -64 
            LINE N 128 -224 128 -160 
            LINE N 96 -160 32 -64 
            LINE N 224 -160 96 -160 
            LINE N 288 -64 224 -160 
            LINE N 32 -64 288 -64 
            LINE N 128 0 128 -64 
            LINE N 0 -96 56 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2001 5 4 10 15 14
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2001 5 4 10 15 14
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF muxcy
            TIMESTAMP 2001 5 4 10 15 14
            LINE N 192 0 192 -64 
            LINE N 192 -224 192 -160 
            LINE N 96 -160 32 -64 
            LINE N 224 -160 96 -160 
            LINE N 288 -64 224 -160 
            LINE N 32 -64 288 -64 
            LINE N 128 0 128 -64 
            LINE N 0 -96 56 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF xorcy
            TIMESTAMP 2001 5 4 10 15 14
            ARC N 44 -224 220 -48 128 -48 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            ARC N 44 -144 220 32 208 -96 128 -144 
            LINE N 128 -144 64 -144 
            LINE N 0 -128 60 -128 
            LINE N 0 -64 64 -64 
            LINE N 128 -48 64 -48 
            LINE N 256 -96 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF title
            TIMESTAMP 2001 5 4 10 15 14
            LINE N -764 -288 -796 -256 
            LINE N -732 -256 -764 -288 
            LINE N -776 -256 -732 -256 
            LINE N -788 -264 -776 -256 
            LINE N -840 -256 -796 -256 
            LINE N -804 -256 -836 -288 
            LINE N -800 -256 -832 -288 
            LINE N -796 -256 -828 -288 
            LINE N -832 -288 -800 -320 
            LINE N -828 -288 -796 -320 
            LINE N -828 -352 -796 -384 
            LINE N -840 -384 -796 -384 
            LINE N -796 -384 -764 -352 
            LINE N -800 -320 -832 -352 
            LINE N -796 -320 -828 -352 
            LINE N -804 -320 -836 -352 
            LINE N -832 -352 -800 -384 
            LINE N -836 -352 -804 -384 
            LINE N -872 -352 -840 -384 
            LINE N -868 -352 -836 -384 
            LINE N -732 -384 -764 -352 
            LINE N -776 -384 -732 -384 
            LINE N -788 -376 -776 -384 
            LINE N -764 -356 -736 -384 
            LINE N -768 -360 -740 -384 
            LINE N -768 -356 -740 -384 
            LINE N -772 -360 -744 -384 
            LINE N -772 -360 -748 -384 
            LINE N -772 -360 -752 -384 
            LINE N -840 -352 -808 -384 
            LINE N -844 -352 -812 -384 
            LINE N -848 -352 -816 -384 
            LINE N -852 -352 -820 -384 
            LINE N -816 -256 -848 -288 
            LINE N -820 -256 -852 -288 
            LINE N -872 -352 -828 -352 
            LINE N -836 -320 -868 -352 
            LINE N -832 -320 -864 -352 
            LINE N -828 -320 -860 -352 
            LINE N -824 -320 -856 -352 
            LINE N -872 -288 -840 -320 
            LINE N -872 -288 -828 -288 
            LINE N -860 -352 -828 -384 
            LINE N -864 -352 -832 -384 
            LINE N -856 -352 -824 -384 
            LINE N -856 -288 -824 -320 
            LINE N -852 -288 -820 -320 
            LINE N -848 -288 -816 -320 
            LINE N -844 -288 -812 -320 
            LINE N -840 -288 -808 -320 
            LINE N -836 -288 -804 -320 
            LINE N -868 -288 -836 -320 
            LINE N -864 -288 -832 -320 
            LINE N -860 -288 -828 -320 
            LINE N -840 -320 -872 -352 
            LINE N -820 -320 -852 -352 
            LINE N -816 -320 -848 -352 
            LINE N -812 -320 -844 -352 
            LINE N -808 -320 -840 -352 
            LINE N -808 -256 -840 -288 
            LINE N -812 -256 -844 -288 
            LINE N -836 -256 -868 -288 
            LINE N -840 -256 -872 -288 
            LINE N -824 -256 -856 -288 
            LINE N -828 -256 -860 -288 
            LINE N -832 -256 -864 -288 
            LINE N -772 -364 -756 -384 
            LINE N -776 -364 -756 -384 
            LINE N -776 -368 -760 -384 
            LINE N -780 -368 -764 -384 
            LINE N -780 -372 -768 -384 
            LINE N -784 -372 -772 -384 
            LINE N -784 -376 -772 -384 
            LINE N -612 -272 -612 -368 
            LINE N -616 -272 -616 -368 
            LINE N -620 -272 -620 -368 
            LINE N -564 -276 -612 -276 
            LINE N -456 -272 -456 -368 
            LINE N -460 -272 -460 -368 
            LINE N -640 -272 -640 -368 
            LINE N -392 -272 -444 -368 
            LINE N -392 -368 -444 -272 
            LINE N -660 -272 -712 -368 
            LINE N -660 -368 -716 -272 
            LINE N -544 -272 -544 -368 
            LINE N -644 -272 -644 -368 
            LINE N -636 -272 -636 -368 
            LINE N -656 -272 -708 -368 
            LINE N -468 -272 -520 -368 
            LINE N -660 -272 -716 -368 
            LINE N -664 -272 -720 -368 
            LINE N -524 -272 -524 -368 
            LINE N -528 -272 -528 -368 
            LINE N -632 -272 -632 -368 
            LINE N -468 -272 -524 -368 
            LINE N -540 -272 -540 -368 
            LINE N -464 -272 -516 -368 
            LINE N -460 -272 -516 -368 
            LINE N -548 -272 -548 -368 
            LINE N -388 -272 -440 -368 
            LINE N -564 -272 -612 -272 
            LINE N -664 -368 -720 -272 
            LINE N -772 -256 -784 -264 
            LINE N -784 -268 -772 -256 
            LINE N -768 -256 -780 -268 
            LINE N -780 -272 -764 -256 
            LINE N -760 -256 -776 -272 
            LINE N -776 -276 -756 -256 
            LINE N -756 -256 -772 -276 
            LINE N -772 -280 -752 -256 
            LINE N -748 -256 -772 -280 
            LINE N -772 -280 -744 -256 
            LINE N -740 -256 -768 -280 
            LINE N -768 -284 -740 -256 
            LINE N -736 -256 -764 -284 
            LINE N -388 -272 -436 -368 
            LINE N -384 -272 -436 -368 
            LINE N -388 -368 -440 -272 
            LINE N -112 -176 -1140 -176 
            BEGIN LINE W -1136 -416 -1136 -212 
            END LINE
            BEGIN LINE W -80 -416 -80 -220 
            END LINE
            BEGIN LINE W -1136 -416 -80 -416 
            END LINE
            LINE N -1136 -128 -80 -128 
            LINE N -1132 -220 -80 -220 
            BEGIN LINE W -80 -80 -352 -80 
            END LINE
            BEGIN LINE W -1136 -80 -352 -80 
            END LINE
            BEGIN LINE W -1136 -224 -1136 -80 
            END LINE
            BEGIN LINE W -144 -80 -152 -80 
            END LINE
            BEGIN LINE W -80 -224 -80 -80 
            END LINE
            LINE N -780 -128 -780 -80 
            LINE N -112 -176 -80 -176 
            LINE N -176 -128 -144 -128 
        END BLOCKDEF
        BEGIN BLOCK I_36_4 muxcy_l
            BEGIN ATTR RLOC "R3C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI CI
            PIN DI XLXN_1
            PIN S Q(0)
            PIN LO C1
        END BLOCK
        BEGIN BLOCK I_36_26 muxcy_l
            BEGIN ATTR RLOC "R3C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI C1
            PIN DI XLXN_1
            PIN S Q(1)
            PIN LO C2
        END BLOCK
        BEGIN BLOCK I_36_233 muxcy_l
            BEGIN ATTR RLOC "R2C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI C2
            PIN DI XLXN_1
            PIN S Q(2)
            PIN LO C3
        END BLOCK
        BEGIN BLOCK I_36_246 muxcy_l
            BEGIN ATTR RLOC "R2C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI C3
            PIN DI XLXN_1
            PIN S Q(3)
            PIN LO C4
        END BLOCK
        BEGIN BLOCK I_36_285 muxcy_l
            BEGIN ATTR RLOC "R0C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI C6
            PIN DI XLXN_1
            PIN S Q(6)
            PIN LO C7
        END BLOCK
        BEGIN BLOCK I_36_272 muxcy_l
            BEGIN ATTR RLOC "R1C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI C5
            PIN DI XLXN_1
            PIN S Q(5)
            PIN LO C6
        END BLOCK
        BEGIN BLOCK I_36_259 muxcy_l
            BEGIN ATTR RLOC "R1C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI C4
            PIN DI XLXN_1
            PIN S Q(4)
            PIN LO C5
        END BLOCK
        BEGIN BLOCK I_36_263 fdce
            BEGIN ATTR RLOC "R1C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D TQ5
            PIN Q Q(5)
        END BLOCK
        BEGIN BLOCK I_36_276 fdce
            BEGIN ATTR RLOC "R0C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D TQ6
            PIN Q Q(6)
        END BLOCK
        BEGIN BLOCK I_36_289 fdce
            BEGIN ATTR RLOC "R0C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D TQ7
            PIN Q Q(7)
        END BLOCK
        BEGIN BLOCK I_36_237 fdce
            BEGIN ATTR RLOC "R2C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D TQ3
            PIN Q Q(3)
        END BLOCK
        BEGIN BLOCK I_36_250 fdce
            BEGIN ATTR RLOC "R1C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D TQ4
            PIN Q Q(4)
        END BLOCK
        BEGIN BLOCK I_36_224 fdce
            BEGIN ATTR RLOC "R2C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D TQ2
            PIN Q Q(2)
        END BLOCK
        BEGIN BLOCK I_36_35 fdce
            BEGIN ATTR RLOC "R3C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D TQ1
            PIN Q Q(1)
        END BLOCK
        BEGIN BLOCK I_36_36 fdce
            BEGIN ATTR RLOC "R3C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D TQ0
            PIN Q Q(0)
        END BLOCK
        BEGIN BLOCK I_36_886 gnd
            PIN G XLXN_1
        END BLOCK
        BEGIN BLOCK I_36_298 muxcy
            BEGIN ATTR RLOC "R0C0.S0"
                VERILOG all:0 wsynop:1 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI C7
            PIN DI XLXN_1
            PIN S Q(7)
            PIN O CO
        END BLOCK
        BEGIN BLOCK I_36_6 xorcy
            PIN CI CI
            PIN LI Q(0)
            PIN O TQ0
        END BLOCK
        BEGIN BLOCK I_36_28 xorcy
            PIN CI C1
            PIN LI Q(1)
            PIN O TQ1
        END BLOCK
        BEGIN BLOCK I_36_226 xorcy
            PIN CI C2
            PIN LI Q(2)
            PIN O TQ2
        END BLOCK
        BEGIN BLOCK I_36_239 xorcy
            PIN CI C3
            PIN LI Q(3)
            PIN O TQ3
        END BLOCK
        BEGIN BLOCK I_36_252 xorcy
            PIN CI C4
            PIN LI Q(4)
            PIN O TQ4
        END BLOCK
        BEGIN BLOCK I_36_265 xorcy
            PIN CI C5
            PIN LI Q(5)
            PIN O TQ5
        END BLOCK
        BEGIN BLOCK I_36_278 xorcy
            PIN CI C6
            PIN LI Q(6)
            PIN O TQ6
        END BLOCK
        BEGIN BLOCK I_36_291 xorcy
            PIN CI C7
            PIN LI Q(7)
            PIN O TQ7
        END BLOCK
        BLOCK I1 title
        BLOCK I2 title
    END NETLIST
    BEGIN SHEET 1 7360 5760
        INSTANCE I_36_4 2880 4512 R0
        INSTANCE I_36_26 2880 4032 R0
        INSTANCE I_36_233 2880 3520 R0
        INSTANCE I_36_246 2880 3040 R0
        INSTANCE I_36_285 2880 1536 R0
        INSTANCE I_36_272 2880 2048 R0
        INSTANCE I_36_259 2880 2528 R0
        INSTANCE I_36_263 4112 2400 R0
        INSTANCE I_36_276 4112 1888 R0
        BEGIN INSTANCE I_36_289 4112 1408 R0
            BEGIN DISPLAY 0 -404 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        INSTANCE I_36_237 4112 3392 R0
        INSTANCE I_36_250 4112 2880 R0
        INSTANCE I_36_224 4112 3872 R0
        INSTANCE I_36_35 4112 4384 R0
        INSTANCE I_36_36 4112 4864 R0
        INSTANCE I_36_886 2656 4752 R0
        INSTANCE I_36_298 2880 1056 R0
        INSTANCE I_36_6 3456 4704 R0
        INSTANCE I_36_28 3456 4224 R0
        INSTANCE I_36_226 3456 3712 R0
        INSTANCE I_36_239 3456 3232 R0
        INSTANCE I_36_252 3456 2720 R0
        INSTANCE I_36_265 3456 2240 R0
        INSTANCE I_36_278 3456 1728 R0
        INSTANCE I_36_291 3456 1248 R0
        BEGIN INSTANCE I1 7360 5760 R0
        END INSTANCE
        BEGIN INSTANCE I2 7360 5760 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 2720 1168 2720 1664
            WIRE 2720 1664 2720 2160
            WIRE 2720 2160 2720 2656
            WIRE 2720 2656 2720 3152
            WIRE 2720 3152 2720 3648
            WIRE 2720 3648 2720 4144
            WIRE 2720 4144 2720 4608
            WIRE 2720 4608 2720 4624
            WIRE 2720 4608 3008 4608
            WIRE 2720 4144 3008 4144
            WIRE 2720 3648 3008 3648
            WIRE 2720 3152 3008 3152
            WIRE 2720 2656 3008 2656
            WIRE 2720 2160 3008 2160
            WIRE 2720 1664 3008 1664
            WIRE 2720 1168 3008 1168
            WIRE 3008 1056 3008 1168
            WIRE 3008 1536 3008 1664
            WIRE 3008 2048 3008 2160
            WIRE 3008 2528 3008 2656
            WIRE 3008 3040 3008 3152
            WIRE 3008 3520 3008 3648
            WIRE 3008 4032 3008 4144
            WIRE 3008 4512 3008 4608
        END BRANCH
        IOMARKER 5184 320 CO R0 28
        BEGIN BRANCH CI
            WIRE 2544 4880 3072 4880
            WIRE 3072 4512 3072 4640
            WIRE 3072 4640 3072 4832
            WIRE 3072 4832 3072 4880
            WIRE 3072 4640 3456 4640
            BEGIN DISPLAY 3072 4832 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C1
            WIRE 3008 4192 3008 4272
            WIRE 3008 4272 3008 4288
            WIRE 3008 4192 3072 4192
            WIRE 3072 4032 3072 4160
            WIRE 3072 4160 3072 4192
            WIRE 3072 4160 3456 4160
            BEGIN DISPLAY 3008 4272 ATTR Name
                ALIGNMENT TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C2
            WIRE 3008 3712 3008 3776
            WIRE 3008 3776 3008 3808
            WIRE 3008 3776 3536 3776
            WIRE 3536 3776 3536 3840
            WIRE 3008 3712 3072 3712
            WIRE 3072 3520 3072 3648
            WIRE 3072 3648 3072 3712
            WIRE 3072 3648 3456 3648
            BEGIN DISPLAY 3008 3776 ATTR Name
                ALIGNMENT SOFT-BVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C3
            WIRE 3008 3200 3008 3264
            WIRE 3008 3264 3008 3296
            WIRE 3008 3200 3072 3200
            WIRE 3072 3040 3072 3168
            WIRE 3072 3168 3072 3200
            WIRE 3072 3168 3456 3168
            BEGIN DISPLAY 3008 3264 ATTR Name
                ALIGNMENT TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C4
            WIRE 3008 2720 3008 2784
            WIRE 3008 2784 3008 2816
            WIRE 3008 2720 3072 2720
            WIRE 3072 2528 3072 2656
            WIRE 3072 2656 3072 2720
            WIRE 3072 2656 3456 2656
            BEGIN DISPLAY 3008 2784 ATTR Name
                ALIGNMENT TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH TQ5
            WIRE 3712 2144 3728 2144
            WIRE 3728 2144 4112 2144
            BEGIN DISPLAY 3728 2144 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C5
            WIRE 3008 2208 3008 2272
            WIRE 3008 2272 3008 2304
            WIRE 3008 2208 3072 2208
            WIRE 3072 2048 3072 2176
            WIRE 3072 2176 3072 2208
            WIRE 3072 2176 3456 2176
            BEGIN DISPLAY 3008 2272 ATTR Name
                ALIGNMENT TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH TQ6
            WIRE 3712 1632 3728 1632
            WIRE 3728 1632 4112 1632
            BEGIN DISPLAY 3728 1632 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C6
            WIRE 3008 1728 3008 1792
            WIRE 3008 1792 3008 1824
            WIRE 3008 1728 3072 1728
            WIRE 3072 1536 3072 1664
            WIRE 3072 1664 3072 1728
            WIRE 3072 1664 3456 1664
            BEGIN DISPLAY 3008 1792 ATTR Name
                ALIGNMENT TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH TQ7
            WIRE 3712 1152 3728 1152
            WIRE 3728 1152 4112 1152
            BEGIN DISPLAY 3728 1152 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C7
            WIRE 3008 1216 3008 1280
            WIRE 3008 1280 3008 1312
            WIRE 3008 1216 3072 1216
            WIRE 3072 1056 3072 1184
            WIRE 3072 1184 3072 1216
            WIRE 3072 1184 3456 1184
            BEGIN DISPLAY 3008 1280 ATTR Name
                ALIGNMENT TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH TQ3
            WIRE 3712 3136 3728 3136
            WIRE 3728 3136 4112 3136
            BEGIN DISPLAY 3728 3136 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH TQ4
            WIRE 3712 2624 3728 2624
            WIRE 3728 2624 4112 2624
            BEGIN DISPLAY 3728 2624 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH TQ2
            WIRE 3712 3616 3744 3616
            WIRE 3744 3616 4112 3616
            BEGIN DISPLAY 3744 3616 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH TQ1
            WIRE 3712 4128 3744 4128
            WIRE 3744 4128 4112 4128
            BEGIN DISPLAY 3744 4128 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 2080 5248 2096 5248
            WIRE 2096 5248 4032 5248
            WIRE 4032 1376 4032 1856
            WIRE 4032 1856 4032 2368
            WIRE 4032 2368 4032 2848
            WIRE 4032 2848 4032 3360
            WIRE 4032 3360 4032 3840
            WIRE 4032 3840 4032 4352
            WIRE 4032 4352 4032 4832
            WIRE 4032 4832 4032 5248
            WIRE 4032 4832 4112 4832
            WIRE 4032 4352 4112 4352
            WIRE 4032 3840 4112 3840
            WIRE 4032 3360 4112 3360
            WIRE 4032 2848 4112 2848
            WIRE 4032 2368 4112 2368
            WIRE 4032 1856 4112 1856
            WIRE 4032 1376 4112 1376
            BEGIN DISPLAY 2096 5248 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2080 5248 CLR R180 28
        BEGIN BRANCH C
            WIRE 2080 5184 2112 5184
            WIRE 2112 5184 3968 5184
            WIRE 3968 1280 3968 1760
            WIRE 3968 1760 3968 2272
            WIRE 3968 2272 3968 2752
            WIRE 3968 2752 3968 3264
            WIRE 3968 3264 3968 3744
            WIRE 3968 3744 3968 4256
            WIRE 3968 4256 3968 4736
            WIRE 3968 4736 3968 5184
            WIRE 3968 4736 4112 4736
            WIRE 3968 4256 4112 4256
            WIRE 3968 3744 4112 3744
            WIRE 3968 3264 4112 3264
            WIRE 3968 2752 4112 2752
            WIRE 3968 2272 4112 2272
            WIRE 3968 1760 4112 1760
            WIRE 3968 1280 4112 1280
            BEGIN DISPLAY 2112 5184 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2080 5184 C R180 28
        BEGIN BRANCH TQ0
            WIRE 3712 4608 3728 4608
            WIRE 3728 4608 4112 4608
            BEGIN DISPLAY 3728 4608 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2080 5120 2112 5120
            WIRE 2112 5120 3904 5120
            WIRE 3904 480 3904 1216
            WIRE 3904 1216 3904 1696
            WIRE 3904 1696 3904 2208
            WIRE 3904 2208 3904 2688
            WIRE 3904 2688 3904 3200
            WIRE 3904 3200 3904 3680
            WIRE 3904 3680 3904 4192
            WIRE 3904 4192 3904 4672
            WIRE 3904 4672 3904 5120
            WIRE 3904 4672 4112 4672
            WIRE 3904 4192 4112 4192
            WIRE 3904 3680 4112 3680
            WIRE 3904 3200 4112 3200
            WIRE 3904 2688 4112 2688
            WIRE 3904 2208 4112 2208
            WIRE 3904 1696 4112 1696
            WIRE 3904 1216 4112 1216
            BEGIN DISPLAY 2112 5120 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2080 5120 CE R180 28
        BEGIN BRANCH Q(0)
            WIRE 4496 4608 4720 4608
            WIRE 4720 4608 4816 4608
            BEGIN DISPLAY 4720 4608 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4832 4608 4816 4608
        BEGIN BRANCH Q(0)
            WIRE 2544 4416 2560 4416
            WIRE 2560 4416 2784 4416
            WIRE 2784 4416 2784 4576
            WIRE 2784 4576 3456 4576
            WIRE 2784 4416 2880 4416
            BEGIN DISPLAY 2560 4416 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 4416 2544 4416
        BEGIN BRANCH Q(1)
            WIRE 4496 4128 4720 4128
            WIRE 4720 4128 4816 4128
            BEGIN DISPLAY 4720 4128 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4832 4128 4816 4128
        BEGIN BRANCH Q(1)
            WIRE 2544 3936 2560 3936
            WIRE 2560 3936 2816 3936
            WIRE 2816 3936 2816 4096
            WIRE 2816 4096 3456 4096
            WIRE 2816 3936 2880 3936
            BEGIN DISPLAY 2560 3936 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 3936 2544 3936
        BEGIN BRANCH Q(2)
            WIRE 2544 3424 2560 3424
            WIRE 2560 3424 2816 3424
            WIRE 2816 3424 2816 3584
            WIRE 2816 3584 3456 3584
            WIRE 2816 3424 2880 3424
            BEGIN DISPLAY 2560 3424 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 3424 2544 3424
        BEGIN BRANCH Q(2)
            WIRE 4496 3616 4720 3616
            WIRE 4720 3616 4816 3616
            BEGIN DISPLAY 4720 3616 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4832 3616 4816 3616
        BEGIN BRANCH Q(3)
            WIRE 4496 3136 4720 3136
            WIRE 4720 3136 4816 3136
            BEGIN DISPLAY 4720 3136 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4832 3136 4816 3136
        BEGIN BRANCH Q(3)
            WIRE 2544 2944 2560 2944
            WIRE 2560 2944 2816 2944
            WIRE 2816 2944 2816 3104
            WIRE 2816 3104 3456 3104
            WIRE 2816 2944 2880 2944
            BEGIN DISPLAY 2560 2944 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 2944 2544 2944
        BEGIN BRANCH Q(4)
            WIRE 4496 2624 4720 2624
            WIRE 4720 2624 4816 2624
            BEGIN DISPLAY 4720 2624 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4832 2624 4816 2624
        BEGIN BRANCH Q(4)
            WIRE 2544 2432 2560 2432
            WIRE 2560 2432 2816 2432
            WIRE 2816 2432 2816 2592
            WIRE 2816 2592 3456 2592
            WIRE 2816 2432 2880 2432
            BEGIN DISPLAY 2560 2432 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 2432 2544 2432
        BEGIN BRANCH Q(5)
            WIRE 4496 2144 4720 2144
            WIRE 4720 2144 4816 2144
            BEGIN DISPLAY 4720 2144 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4832 2144 4816 2144
        BEGIN BRANCH Q(5)
            WIRE 2544 1952 2560 1952
            WIRE 2560 1952 2784 1952
            WIRE 2784 1952 2784 2112
            WIRE 2784 2112 3456 2112
            WIRE 2784 1952 2880 1952
            BEGIN DISPLAY 2560 1952 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 1952 2544 1952
        BEGIN BRANCH Q(6)
            WIRE 4496 1632 4720 1632
            WIRE 4720 1632 4816 1632
            BEGIN DISPLAY 4720 1632 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4832 1632 4816 1632
        BEGIN BRANCH Q(6)
            WIRE 2544 1440 2560 1440
            WIRE 2560 1440 2784 1440
            WIRE 2784 1440 2784 1600
            WIRE 2784 1600 3456 1600
            WIRE 2784 1440 2880 1440
            BEGIN DISPLAY 2560 1440 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 1440 2544 1440
        BEGIN BRANCH Q(7)
            WIRE 4496 1152 4720 1152
            WIRE 4720 1152 4816 1152
            BEGIN DISPLAY 4720 1152 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4832 1152 4816 1152
        BEGIN BRANCH Q(7)
            WIRE 2544 960 2560 960
            WIRE 2560 960 2752 960
            WIRE 2752 960 2752 1120
            WIRE 2752 1120 3456 1120
            WIRE 2752 960 2880 960
            BEGIN DISPLAY 2560 960 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 960 2544 960
        BEGIN BRANCH Q(7:0)
            WIRE 2528 608 2528 960
            WIRE 2528 960 2528 1440
            WIRE 2528 1440 2528 1952
            WIRE 2528 1952 2528 2432
            WIRE 2528 2432 2528 2944
            WIRE 2528 2944 2528 3424
            WIRE 2528 3424 2528 3936
            WIRE 2528 3936 2528 4416
            WIRE 2528 608 4832 608
            WIRE 4832 608 4832 1152
            WIRE 4832 1152 4832 1632
            WIRE 4832 1632 4832 2144
            WIRE 4832 2144 4832 2624
            WIRE 4832 2624 4832 3136
            WIRE 4832 3136 4832 3616
            WIRE 4832 3616 4832 4128
            WIRE 4832 4128 4832 4608
            WIRE 4832 608 5024 608
            WIRE 5024 608 5200 608
            BEGIN DISPLAY 5024 608 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 5200 608 Q(7:0) R0 28
        BEGIN BRANCH CO
            WIRE 3072 320 3072 832
            WIRE 3072 320 3904 320
            WIRE 3904 320 5088 320
            WIRE 5088 320 5184 320
            BEGIN DISPLAY 5088 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2544 4880 CI R180 28
        IOMARKER 3536 3840 C2 R90 28
    END SHEET
END SCHEMATIC
