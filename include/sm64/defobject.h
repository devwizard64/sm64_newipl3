#ifndef __SM64_DEFOBJECT_H__
#define __SM64_DEFOBJECT_H__

#define OBJECT_01           0x01
#define OBJECT_FREEZE       0x02
#define OBJECT_04           0x04
#define OBJECT_FREEZEPLAYER 0x08
#define OBJECT_FREEZEALL    0x10
#define OBJECT_20           0x20
#define OBJECT_FROZEN       0x40

#define OBJ_0001            0x0001
#define OBJ_0002            0x0002
#define OBJ_0008            0x0008
#define OBJ_0010            0x0010
#define OBJ_0020            0x0020
#define OBJ_0040            0x0040
#define OBJ_0100            0x0100
#define OBJ_0200            0x0200

#define OT_PLAYER           0
#define OT_ATTACK           2
#define OT_ENEMYA           4
#define OT_ENEMYB           5
#define OT_ITEM             6
#define OT_DEFAULT          8
#define OT_MOVEBG           9
#define OT_ATTACH           10
#define OT_SYSTEM           11
#define OT_EFFECT           12
#define OT_MAX              13

#define ACTORTYPE_NULL      0
#define ACTORTYPE_32        1
#define ACTORTYPE_16        2

#define ACTOR_MARIO         1

#define OF_0001             0x0001
#define OF_0002             0x0002
#define OF_0004             0x0004
#define OF_0008             0x0008
#define OF_0010             0x0010
#define OF_0020             0x0020
#define OF_0040             0x0040
#define OF_0080             0x0080
#define OF_0100             0x0100
#define OF_0200             0x0200
#define OF_0400             0x0400
#define OF_0800             0x0800
#define OF_2000             0x2000
#define OF_4000             0x4000

#define OM_BOUND            0x001
#define OM_TOUCH            0x002
#define OM_TAKEOFF          0x004
#define OM_DIVE             0x008
#define OM_S_WATER          0x010
#define OM_U_WATER          0x020
#define OM_B_WATER          0x040
#define OM_SKY              0x080
#define OM_OUT_SCOPE        0x100

#define O_VAR               0
#define O_FLAG              1
#define O_MSG               2
#define O_HIT_TIMER         5
#define O_POS_X             6
#define O_POS_Y             7
#define O_POS_Z             8
#define O_VEL_X             9
#define O_VEL_Y             10
#define O_VEL_Z             11
#define O_VEL_F             12
#define O_VEL_L             13
#define O_VEL_U             14
#define O_ANG_X             15
#define O_ANG_Y             16
#define O_ANG_Z             17
#define O_SHAPE_ANG_X       18
#define O_SHAPE_ANG_Y       19
#define O_SHAPE_ANG_Z       20
#define O_SHAPE_OFFSET      21
#define O_EFFECT            22
#define O_GRAVITY           23
#define O_GROUND_Y          24
#define O_MOVE_STATUS       25
#define O_SHAPE_CODE        26
#define O_V0                27
#define O_V1                28
#define O_V2                29
#define O_V3                30
#define O_V4                31
#define O_V5                32
#define O_V6                33
#define O_V7                34
#define O_ANG_VEL_X         35
#define O_ANG_VEL_Y         36
#define O_ANG_VEL_Z         37
#define O_ANIME             38
#define O_HOLD              39
#define O_WALL_R            40
#define O_DRAG              41
#define O_HIT_CODE          42
#define O_HIT_RESULT        43
#define O_OFF_X             44
#define O_OFF_Y             45
#define O_OFF_Z             46
#define O_CODE              47
#define O_STATE             49
#define O_MODE              50
#define O_TIMER             51
#define O_BOUNCE            52
#define O_PL_DIST           53
#define O_PL_ANG            54
#define O_SAVE_X            55
#define O_SAVE_Y            56
#define O_SAVE_Z            57
#define O_FRICTION          58
#define O_DENSITY           59
#define O_ANIME_INDEX       60
#define O_ALPHA             61
#define O_AP                62
#define O_HP                63
#define O_ACTOR_INFO        64
#define O_PREVSTATE         65
#define O_HIT_FLAG          66
#define O_CHECK_DIST        67
#define O_NCOIN             68
#define O_SHAPE_DIST        69
#define O_AREA              70
#define O_TAG_INFO          72
#define O_V8                73
#define O_V9                74
#define O_WALL_ANG          75
#define O_BG_INFO           76
#define O_SAVE_ANG          77
#define O_GROUND            78
#define O_DIE_SE            79

#define /* 0x08C */ o_flag              mem[O_FLAG].i
#define /* 0x090 */ o_msg_code          mem[O_MSG].s[0]
#define /* 0x092 */ o_msg_state         mem[O_MSG].s[1]
#define /* 0x09C */ o_hit_timer         mem[O_HIT_TIMER].i
#define /* 0x0A0 */ o_pos_x             mem[O_POS_X].f
#define /* 0x0A4 */ o_pos_y             mem[O_POS_Y].f
#define /* 0x0A8 */ o_pos_z             mem[O_POS_Z].f
#define /* 0x0AC */ o_vel_x             mem[O_VEL_X].f
#define /* 0x0B0 */ o_vel_y             mem[O_VEL_Y].f
#define /* 0x0B4 */ o_vel_z             mem[O_VEL_Z].f
#define /* 0x0B8 */ o_vel_f             mem[O_VEL_F].f
#define /* 0x0BC */ o_vel_l             mem[O_VEL_L].f
#define /* 0x0C0 */ o_vel_u             mem[O_VEL_U].f
#define /* 0x0C4 */ o_ang_x             mem[O_ANG_X].i
#define /* 0x0C8 */ o_ang_y             mem[O_ANG_Y].i
#define /* 0x0CC */ o_ang_z             mem[O_ANG_Z].i
#define /* 0x0D0 */ o_shape_ang_x       mem[O_SHAPE_ANG_X].i
#define /* 0x0D4 */ o_shape_ang_y       mem[O_SHAPE_ANG_Y].i
#define /* 0x0D8 */ o_shape_ang_z       mem[O_SHAPE_ANG_Z].i
#define /* 0x0DC */ o_shape_offset      mem[O_SHAPE_OFFSET].f
#define /* 0x0E0 */ o_effect            mem[O_EFFECT].i
#define /* 0x0E4 */ o_gravity           mem[O_GRAVITY].f
#define /* 0x0E8 */ o_ground_y          mem[O_GROUND_Y].f
#define /* 0x0EC */ o_move_status       mem[O_MOVE_STATUS].i
#define /* 0x0F0 */ o_shape_code        mem[O_SHAPE_CODE].i
#define /* 0x0F4 */ o_v0                mem[O_V0].i
#define /* 0x0F4 */ o_f0                mem[O_V0].f
#define /* 0x0F8 */ o_v1                mem[O_V1].i
#define /* 0x0F8 */ o_f1                mem[O_V1].f
#define /* 0x0FC */ o_v2                mem[O_V2].i
#define /* 0x0FC */ o_f2                mem[O_V2].f
#define /* 0x100 */ o_v3                mem[O_V3].i
#define /* 0x100 */ o_f3                mem[O_V3].f
#define /* 0x104 */ o_v4                mem[O_V4].i
#define /* 0x104 */ o_f4                mem[O_V4].f
#define /* 0x108 */ o_v5                mem[O_V5].i
#define /* 0x108 */ o_f5                mem[O_V5].f
#define /* 0x10C */ o_v6                mem[O_V6].i
#define /* 0x10C */ o_f6                mem[O_V6].f
#define /* 0x110 */ o_v7                mem[O_V7].i
#define /* 0x110 */ o_f7                mem[O_V7].f
#define /* 0x114 */ o_ang_vel_x         mem[O_ANG_VEL_X].i
#define /* 0x118 */ o_ang_vel_y         mem[O_ANG_VEL_Y].i
#define /* 0x11C */ o_ang_vel_z         mem[O_ANG_VEL_Z].i
#define /* 0x120 */ o_anime             mem[O_ANIME].p
#define /* 0x124 */ o_hold              mem[O_HOLD].i
#define /* 0x128 */ o_wall_r            mem[O_WALL_R].f
#define /* 0x12C */ o_drag              mem[O_DRAG].f
#define /* 0x130 */ o_hit_code          mem[O_HIT_CODE].i
#define /* 0x134 */ o_hit_result        mem[O_HIT_RESULT].i
#define /* 0x138 */ o_off_x             mem[O_OFF_X].f
#define /* 0x13C */ o_off_y             mem[O_OFF_Y].f
#define /* 0x140 */ o_off_z             mem[O_OFF_Z].f
#define /* 0x144 */ o_code              mem[O_CODE].i
#define /* 0x14C */ o_state             mem[O_STATE].i
#define /* 0x150 */ o_mode              mem[O_MODE].i
#define /* 0x154 */ o_timer             mem[O_TIMER].i
#define /* 0x158 */ o_bounce            mem[O_BOUNCE].f
#define /* 0x15C */ o_pl_dist           mem[O_PL_DIST].f
#define /* 0x160 */ o_pl_ang            mem[O_PL_ANG].i
#define /* 0x164 */ o_save_x            mem[O_SAVE_X].f
#define /* 0x168 */ o_save_y            mem[O_SAVE_Y].f
#define /* 0x16C */ o_save_z            mem[O_SAVE_Z].f
#define /* 0x170 */ o_friction          mem[O_FRICTION].f
#define /* 0x174 */ o_density           mem[O_DENSITY].f
#define /* 0x178 */ o_anime_index       mem[O_ANIME_INDEX].i
#define /* 0x17C */ o_alpha             mem[O_ALPHA].i
#define /* 0x180 */ o_ap                mem[O_AP].i
#define /* 0x184 */ o_hp                mem[O_HP].i
#define /* 0x188 */ o_actor_info        mem[O_ACTOR_INFO].i
#define /* 0x18C */ o_prevstate         mem[O_PREVSTATE].i
#define /* 0x190 */ o_hit_flag          mem[O_HIT_FLAG].i
#define /* 0x194 */ o_check_dist        mem[O_CHECK_DIST].f
#define /* 0x198 */ o_ncoin             mem[O_NCOIN].i
#define /* 0x19C */ o_shape_dist        mem[O_SHAPE_DIST].f
#define /* 0x1A0 */ o_area              mem[O_AREA].i
#define /* 0x1A8 */ o_tag_info          mem[O_TAG_INFO].i
#define /* 0x1AC */ o_v8                mem[O_V8].i
#define /* 0x1AC */ o_f8                mem[O_V8].f
#define /* 0x1B0 */ o_v9                mem[O_V9].i
#define /* 0x1B0 */ o_f9                mem[O_V9].f
#define /* 0x1B4 */ o_wall_ang          mem[O_WALL_ANG].i
#define /* 0x1B8 */ o_bg_code           mem[O_BG_INFO].s[0]
#define /* 0x1BA */ o_bg_area           mem[O_BG_INFO].s[1]
#define /* 0x1BC */ o_save_ang          mem[O_SAVE_ANG].i
#define /* 0x1C0 */ o_ground            mem[O_GROUND].p
#define /* 0x1C4 */ o_die_se            mem[O_DIE_SE].i

#endif /* __SM64_DEFOBJECT_H__ */
