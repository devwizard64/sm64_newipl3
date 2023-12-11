#ifndef __SM64_OBJECT_C_H__
#define __SM64_OBJECT_C_H__

struct object_c_0
{
	s16 msg_start;
	s16 msg_win;
	PATH *path;
	VECS star;
};

struct object_c_1
{
	float scale;
	Na_Se se;
	short dist;
	s8 damage;
};

struct object_c_2
{
	MAP *map;
	MAP *p_map;
	s16 p_shape;
};

struct object_c_3
{
	MAP *map;
	s16 shape;
};

struct object_c_4
{
	s16 msg;
	float radius;
	float height;
};

struct object_c_5
{
	int shape;
	O_SCRIPT *script;
	float scale;
};

extern s32 object_c_80361460;
extern s32 object_c_80361464;
extern f32 object_c_80361468;
extern f32 object_c_8036146C;
extern f32 object_c_80361470;
extern OBJECT *object_c_80361474;
extern s32 object_c_80361478;
extern f32 object_c_8036147C;
extern f32 object_c_80361480;
extern f32 object_c_80361484;
extern OBJECT *object_c_80361488;
extern OBJ_HIT object_c_80332840;
extern u8 object_c_80332850[6];
extern u8 object_c_80332858[6];
extern struct object_c_0 object_c_80332860[];
extern OBJ_HIT object_c_80332880;
extern u8 object_c_80332890[6];
extern OBJ_HIT object_c_80332898;
extern OBJ_HIT object_c_803328A8;
extern s16 object_c_803328B8[];
extern OBJ_HIT object_c_803328C0;
extern struct object_c_1 object_c_803328D0[];
extern u8 object_c_803328F4[][6];
extern OBJ_HIT object_c_80332900;
extern OBJ_HIT object_c_80332910;
extern OBJ_HIT object_c_80332920;
extern u8 object_c_80332930[6];
extern f32 object_c_80332938[];
extern int object_c_80332948[];
extern OBJ_HIT object_c_80332954;
extern u8 object_c_80332964[6];
extern OBJ_HIT object_c_8033296C;
extern s8 object_c_8033297C[];
extern OBJ_EFFECT object_c_80332984;
extern OBJ_HIT object_c_80332998;
extern OBJ_HIT object_c_803329A8;
extern OBJ_EFFECT object_c_803329B8;
extern MAP *object_c_803329CC[];
extern PATH *object_c_803329DC[];
extern MAP *object_c_80332A00[];
extern struct object_c_2 object_c_80332A20[];
extern OBJ_HIT object_c_80332A38;
extern OBJ_EFFECT object_c_80332A48;
extern OBJ_EFFECT object_c_80332A5C;
extern MAP *object_c_80332A70[];
extern u8 object_c_80332A78[];
extern f32 object_c_80332A7C[];
extern MAP *object_c_80332A8C[];
extern s16 object_c_80332A94[];
extern s16 object_c_80332A9C[];
extern s8 object_c_80332AA4[];
extern MAP *object_c_80332AA8[];
extern s8 object_c_80332AB0[];
extern s16 object_c_80332AB4[];
extern MAP *object_c_80332AB8[];
extern s16 object_c_80332AC0[][2][2];
extern s8 object_c_80332AE0[];
extern s16 object_c_80332AE4[];
extern s16 object_c_80332AE8[][4];
extern s16 object_c_80332AF8[];
extern OBJ_HIT object_c_80332B00;
extern OBJ_EFFECT object_c_80332B10;
extern OBJ_HIT object_c_80332B24;
extern MAP *object_c_80332B34[];
extern MAP *object_c_80332B54[];
extern s16 object_c_80332B5C[];
extern struct object_c_3 object_c_80332B64[][5];
extern s16 object_c_80332BDC[];
extern MAP *object_c_80332BE4[];
extern OBJ_HIT object_c_80332BF0;
extern OBJ_HIT object_c_80332C00;
extern OBJ_HIT object_c_80332C10;
extern OBJ_HIT object_c_80332C20;
extern OBJ_HIT object_c_80332C30;
extern s16 object_c_80332C40[][2];
extern OBJ_HIT object_c_80332C4C;
extern OBJ_HIT object_c_80332C5C;
extern f32 object_c_80332C6C[];
extern OBJ_HIT object_c_80332C74;
extern OBJ_HIT object_c_80332C84;
extern OBJ_HIT object_c_80332C94;
extern OBJ_HIT object_c_80332CA4;
extern s8 object_c_80332CB4[];
extern OBJ_HIT object_c_80332CBC;
extern VECF object_c_80332CCC[];
extern u8 object_c_80332CF0[6];
extern struct object_c_4 object_c_80332CF8[];
extern s16 object_c_80332D10[][2];
extern OBJ_HIT object_c_80332D28;
extern OBJ_HIT object_c_80332D38;
extern s16 object_c_80332D48[][2];
extern VECS object_c_80332D58[];
extern OBJ_HIT object_c_80332E14;
extern struct object_c_5 object_c_80332E24[];
extern OBJ_HIT object_c_80332E3C;

#endif /* __SM64_OBJECT_C_H__ */
