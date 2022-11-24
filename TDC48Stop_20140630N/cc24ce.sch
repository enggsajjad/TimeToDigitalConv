VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Q(31:0)
        SIGNAL Q(23:16)
        SIGNAL Q(15:8)
        SIGNAL Q(7:0)
        SIGNAL res
        SIGNAL clk
        SIGNAL ce
        SIGNAL ovf24
        SIGNAL XLXN_16
        SIGNAL CO
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL Q(31:24)
        SIGNAL ovf26
        PORT Output Q(31:0)
        PORT Input res
        PORT Input clk
        PORT Input ce
        PORT Output ovf24
        PORT Output CO
        BEGIN BLOCKDEF cc8ce1
            TIMESTAMP 2011 3 4 5 4 36
            LINE N 320 96 384 96 
            LINE N 64 32 0 32 
            LINE N 320 32 384 32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
            RECTANGLE N 64 -192 320 128 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 2 2 12 52 44
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 cc8ce1
            BEGIN ATTR RLOC "R0C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI ovf24
            PIN CLR res
            PIN C clk
            PIN CE ce
            PIN CO CO
            PIN Q(7:0) Q(31:24)
            PIN C2 ovf26
        END BLOCK
        BEGIN BLOCK XLXI_3 cc8ce1
            BEGIN ATTR RLOC "R4C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI XLXN_16
            PIN CLR res
            PIN C clk
            PIN CE ce
            PIN CO ovf24
            PIN Q(7:0) Q(23:16)
            PIN C2
        END BLOCK
        BEGIN BLOCK XLXI_4 cc8ce1
            BEGIN ATTR RLOC "R8C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI XLXN_17
            PIN CLR res
            PIN C clk
            PIN CE ce
            PIN CO XLXN_16
            PIN Q(7:0) Q(15:8)
            PIN C2
        END BLOCK
        BEGIN BLOCK XLXI_7 cc8ce1
            BEGIN ATTR RLOC "R12C0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN CI XLXN_18
            PIN CLR res
            PIN C clk
            PIN CE ce
            PIN CO XLXN_17
            PIN Q(7:0) Q(7:0)
            PIN C2
        END BLOCK
        BEGIN BLOCK XLXI_8 vcc
            PIN P XLXN_18
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1200 848 R0
            BEGIN DISPLAY 0 -312 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1200 1216 R0
            BEGIN DISPLAY 136 -136 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1216 1632 R0
            BEGIN DISPLAY 128 -96 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Q(31:0)
            WIRE 1920 640 2064 640
            WIRE 1920 640 1920 816
            WIRE 1920 816 1920 1184
            WIRE 1920 1184 1920 1600
            WIRE 1920 1600 1920 2000
            WIRE 1920 2000 1920 2064
        END BRANCH
        IOMARKER 2064 640 Q(31:0) R0 28
        BUSTAP 1920 816 1824 816
        BUSTAP 1920 1184 1824 1184
        BUSTAP 1920 1600 1824 1600
        BEGIN BRANCH Q(31:24)
            WIRE 1584 816 1728 816
            WIRE 1728 816 1824 816
            BEGIN DISPLAY 1728 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(23:16)
            WIRE 1584 1184 1776 1184
            WIRE 1776 1184 1824 1184
            BEGIN DISPLAY 1776 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(15:8)
            WIRE 1600 1600 1744 1600
            WIRE 1744 1600 1824 1600
            BEGIN DISPLAY 1744 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH res
            WIRE 928 688 1104 688
            WIRE 1104 688 1200 688
            WIRE 1104 688 1104 1056
            WIRE 1104 1056 1200 1056
            WIRE 1104 1056 1104 1472
            WIRE 1104 1472 1216 1472
            WIRE 1104 1472 1104 1872
            WIRE 1104 1872 1216 1872
        END BRANCH
        BEGIN BRANCH clk
            WIRE 960 752 1184 752
            WIRE 1184 752 1200 752
            WIRE 1184 752 1184 1120
            WIRE 1184 1120 1200 1120
            WIRE 1184 1120 1184 1536
            WIRE 1184 1536 1216 1536
            WIRE 1184 1536 1184 1936
            WIRE 1184 1936 1216 1936
        END BRANCH
        BEGIN BRANCH ce
            WIRE 928 816 1168 816
            WIRE 1168 816 1200 816
            WIRE 1168 816 1168 1184
            WIRE 1168 1184 1200 1184
            WIRE 1168 1184 1168 1600
            WIRE 1168 1600 1216 1600
            WIRE 1168 1600 1168 2000
            WIRE 1168 2000 1216 2000
        END BRANCH
        BEGIN BRANCH ovf24
            WIRE 1024 512 1024 880
            WIRE 1024 880 1184 880
            WIRE 1184 880 1200 880
            WIRE 1024 512 1648 512
            WIRE 1648 512 1648 1248
            WIRE 1648 1248 2000 1248
            WIRE 2000 1248 2128 1248
            WIRE 1584 1248 1648 1248
            BEGIN DISPLAY 2000 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1152 1248 1200 1248
            WIRE 1152 1248 1152 1360
            WIRE 1152 1360 1680 1360
            WIRE 1680 1360 1680 1664
            WIRE 1600 1664 1616 1664
            WIRE 1616 1664 1680 1664
        END BRANCH
        BEGIN BRANCH CO
            WIRE 1584 880 1728 880
        END BRANCH
        IOMARKER 1728 880 CO R0 28
        IOMARKER 928 688 res R180 28
        IOMARKER 960 752 clk R180 28
        IOMARKER 928 816 ce R180 28
        BEGIN INSTANCE XLXI_7 1216 2032 R0
            BEGIN DISPLAY 128 -120 ATTR RLOC
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH XLXN_17
            WIRE 1136 1664 1216 1664
            WIRE 1136 1664 1136 1712
            WIRE 1136 1712 1664 1712
            WIRE 1664 1712 1664 2064
            WIRE 1600 2064 1664 2064
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1072 2064 1216 2064
        END BRANCH
        INSTANCE XLXI_8 1008 2064 R0
        BEGIN BRANCH Q(7:0)
            WIRE 1600 2000 1760 2000
            WIRE 1760 2000 1824 2000
            WIRE 1824 2000 1840 2000
            BEGIN DISPLAY 1760 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 2000 1824 2000
        BEGIN BRANCH ovf26
            WIRE 1584 944 2000 944
            WIRE 2000 944 2112 944
            BEGIN DISPLAY 2000 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2128 1248 ovf24 R0 28
    END SHEET
END SCHEMATIC
