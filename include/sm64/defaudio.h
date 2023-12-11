#ifndef __SM64_DEFAUDIO_H__
#define __SM64_DEFAUDIO_H__

#define NA_MODE_DEFAULT         0
#define NA_MODE_CASTLE          1
#define NA_MODE_ARENA           2
#define NA_MODE_WATER           3
#define NA_MODE_DUNGEON         4
#define NA_MODE_FIELD           5
#define NA_MODE_GHOST           6
#define NA_MODE_STAFF           7

#define NA_SEQ_SE               0
#define NA_SEQ_STARCATCH        1
#define NA_SEQ_TITLE            2
#define NA_SEQ_FIELD            3
#define NA_SEQ_CASTLE           4
#define NA_SEQ_WATER            5
#define NA_SEQ_FIRE             6
#define NA_SEQ_ARENA            7
#define NA_SEQ_SNOW             8
#define NA_SEQ_SLIDER           9
#define NA_SEQ_GHOST            10
#define NA_SEQ_LULLABY          11
#define NA_SEQ_DUNGEON          12
#define NA_SEQ_STARSELECT       13
#define NA_SEQ_SPECIAL          14
#define NA_SEQ_METAL            15
#define NA_SEQ_BOWSERMSG        16
#define NA_SEQ_BOWSER           17
#define NA_SEQ_HISCORE          18
#define NA_SEQ_MERRYGOROUND     19
#define NA_SEQ_FANFARE          20
#define NA_SEQ_STARAPPEAR       21
#define NA_SEQ_BATTLE           22
#define NA_SEQ_ARENACLEAR       23
#define NA_SEQ_ENDLESS          24
#define NA_SEQ_FINAL            25
#define NA_SEQ_STAFF            26
#define NA_SEQ_SOLUTION         27
#define NA_SEQ_TOADMSG          28
#define NA_SEQ_PEACHMSG         29
#define NA_SEQ_INTRO            30
#define NA_SEQ_FINALCLEAR       31
#define NA_SEQ_ENDING           32
#define NA_SEQ_FILESELECT       33
#define NA_SEQ_LAKITUMSG        34

#define NA_BGM_NULL             0
/* #define NA_BGM_STARCATCH        NA_SEQ_STARCATCH */
#define NA_BGM_TITLE            NA_SEQ_TITLE
#define NA_BGM_GAMEOVER         (NA_SEQ_TITLE | 0x80)
#define NA_BGM_FIELD            NA_SEQ_FIELD
#define NA_BGM_CASTLE           NA_SEQ_CASTLE
#define NA_BGM_WATER            NA_SEQ_WATER
#define NA_BGM_AQUARIUM         (NA_SEQ_WATER | 0x80)
#define NA_BGM_FIRE             NA_SEQ_FIRE
#define NA_BGM_ARENA            NA_SEQ_ARENA
#define NA_BGM_SNOW             NA_SEQ_SNOW
#define NA_BGM_SLIDER           NA_SEQ_SLIDER
#define NA_BGM_RACE             (NA_SEQ_SLIDER | 0x400)
#define NA_BGM_GHOST            NA_SEQ_GHOST
/* #define NA_BGM_LULLABY          NA_SEQ_LULLABY */
#define NA_BGM_DUNGEON          NA_SEQ_DUNGEON
#define NA_BGM_STARSELECT       NA_SEQ_STARSELECT
#define NA_BGM_SPECIAL          (NA_SEQ_SPECIAL | 0x400)
#define NA_BGM_SHELL            (NA_SEQ_SPECIAL | 0x80 | 0x400)
#define NA_BGM_METAL            (NA_SEQ_METAL | 0x400)
/* #define NA_BGM_BOWSERMSG        NA_SEQ_BOWSERMSG */
#define NA_BGM_BOWSER           NA_SEQ_BOWSER
/* #define NA_BGM_HISCORE          NA_SEQ_HISCORE */
/* #define NA_BGM_MERRYGOROUND     NA_SEQ_MERRYGOROUND */
/* #define NA_BGM_FANFARE          NA_SEQ_FANFARE */
/* #define NA_BGM_STARAPPEAR       NA_SEQ_STARAPPEAR */
#define NA_BGM_BATTLE           (NA_SEQ_BATTLE | 0x400)
/* #define NA_BGM_ARENACLEAR       NA_SEQ_ARENACLEAR */
#define NA_BGM_ENDLESS          NA_SEQ_ENDLESS
#define NA_BGM_FINAL            NA_SEQ_FINAL
/* #define NA_BGM_STAFF            NA_SEQ_STAFF */
/* #define NA_BGM_SOLUTION         NA_SEQ_SOLUTION */
/* #define NA_BGM_TOADMSG          NA_SEQ_TOADMSG */
/* #define NA_BGM_PEACHMSG         NA_SEQ_PEACHMSG */
/* #define NA_BGM_INTRO            NA_SEQ_INTRO */
/* #define NA_BGM_FINALCLEAR       NA_SEQ_FINALCLEAR */
/* #define NA_BGM_ENDING           NA_SEQ_ENDING */
#define NA_BGM_FILESELECT       NA_SEQ_FILESELECT
/* #define NA_BGM_LAKITUMSG       NA_SEQ_LAKITUMSG */

#define NA_SE_NULL              0x00000000

#define NA_SE1_00               0x14000001
#define NA_SE1_10               0x14100001
#define NA_SE1_11               0x14110001
#define NA_SE1_12               0x14128001
#define NA_SE1_14               0x14140001
#define NA_SE1_19               0x1D192001
#define NA_SE1_20               0x14200001

#define NA_SE2_10               0x2410C081
#define NA_SE2_31               0x2431FF81
#define NA_SE2_32               0x2432FF81
#define NA_SE2_33               0x2433FFA1

#define NA_SE3_04               0x3004C081
#define NA_SE3_05               0x3005C081
#define NA_SE3_06               0x3006C081
#define NA_SE3_07               0x3007C081
#define NA_SE3_11               0x38118081
#define NA_SE3_12               0x38128081
#define NA_SE3_16               0x30160091
#if REVISION <= 199606
#define NA_SE3_28               0x38280081
#else
#define NA_SE3_28               0x39280081
#endif
#define NA_SE3_2B               0x302B0081
#define NA_SE3_58               0x3058FF81
#define NA_SE3_70               0x30703081

#define NA_SE4_00               0x40000001
#define NA_SE4_01               0x40010001
#define NA_SE4_02               0x40020001
#define NA_SE4_03               0x41030001
#define NA_SE4_04               0x40040001
#define NA_SE4_05               0x40050001
#define NA_SE4_08               0x40080001
#define NA_SE4_09               0x40090001
#define NA_SE4_0A               0x400A0001
#define NA_SE4_0B               0x400B0001
#define NA_SE4_0C               0x400C0001
#define NA_SE4_0D_0             0x400D0001
#define NA_SE4_0D_1             0x400D1001

#define NA_SE5_03               0x50030081
#define NA_SE5_05               0x50050081
#define NA_SE5_06               0x50060081
#define NA_SE5_15_50            0x50155081
#define NA_SE5_15_80            0x50158081
#define NA_SE5_21               0x50210081
#define NA_SE5_2D               0x502D0081
#define NA_SE5_38               0x50388081
#define NA_SE5_39               0x50390081
#define NA_SE5_3A               0x503A0081
#define NA_SE5_3B               0x503B0081
#define NA_SE5_3C               0x503C0081
#define NA_SE5_3D               0x503DA081
#define NA_SE5_41               0x50410081
#define NA_SE5_48               0x50480081
#define NA_SE5_51               0x50514001
#define NA_SE5_55               0x50558081
#define NA_SE5_58               0x50584081
#define NA_SE5_5F               0x505F8091
#define NA_SE5_60               0x5060B081
#define NA_SE5_61               0x5061B081
#define NA_SE5_6F               0x506F0081

#define NA_SE6_00               0x60000001
#define NA_SE6_02_80            0x60028001
#define NA_SE6_02_FF            0x6002FF01
#define NA_SE6_03               0x60034001
#define NA_SE6_04_40            0x60044001
#define NA_SE6_04_80            0x60048001
#define NA_SE6_10               0x60104001

#define NA_SE7_00               0x7000F881
#define NA_SE7_02               0x7002FF81
#define NA_SE7_03               0x7003FF81
#define NA_SE7_04               0x70040081
#define NA_SE7_05               0x70050081
#define NA_SE7_06               0x70060081
#define NA_SE7_07               0x70070081
#define NA_SE7_08               0x70080081
#define NA_SE7_09               0x70090081
#define NA_SE7_0A               0x700A0081
#define NA_SE7_0B               0x700B0081
#define NA_SE7_0C               0x700C0081
#define NA_SE7_0D               0x700D0081
#define NA_SE7_0E               0x700E0081
#define NA_SE7_11               0x70110081
#define NA_SE7_13               0x70130081
#define NA_SE7_14               0x70140081
#define NA_SE7_15               0x70150081
#define NA_SE7_18               0x70188081
#define NA_SE7_1D               0x701DB081
#define NA_SE7_1E               0x701EFF81
#define NA_SE7_1F               0x701FFF81
#define NA_SE7_22               0x70222081
#define NA_SE7_23               0x7023FF81
#define NA_SE7_24               0x7024FF81

#define NA_SE8_50               0x80504001

#define NA_SE9_04               0x90040081
#define NA_SE9_52               0x90524001
#define NA_SE9_69               0x90694081

#define NA_TIME(x)              (8*(x)-2)

#endif /* __SM64_DEFAUDIO_H__ */
