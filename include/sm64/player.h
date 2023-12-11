#ifndef __SM64_PLAYER_H__
#define __SM64_PLAYER_H__

typedef struct pl_shape
{
	u32 state;
	s8 head;
	s8 eyes;
	s8 hand;
	s8 wing;
	s16 cap;
	s8 hold;
	u8 punch;
	VECS torso_ang;
	VECS head_ang;
	VECF hand_pos;
	OBJECT *obj;
}
PL_SHAPE;

typedef struct player
{
	u16 index;
	u16 status;
	u32 flag;
	u32 effect;
	u32 state;
	u32 prevstate;
	u32 ground_se;
	u16 mode;
	u16 timer;
	u32 code;
	float stick_dist;
	short stick_ang;
	s16 invincible;
	u8 a_timer;
	u8 b_timer;
	u8 w_timer;
	u8 g_timer;
	VECS ang;
	VECS ang_vel;
	short slide_ang;
	short twirl_ang;
	VECF pos;
	VECF vel;
	float speed;
	float slide_x;
	float slide_z;
	BGFACE *wall;
	BGFACE *roof;
	BGFACE *ground;
	float roof_y;
	float ground_y;
	short ground_ang;
	short water;
	OBJECT *collide;
	OBJECT *hold;
	OBJECT *attach;
	OBJECT *ride;
	OBJECT *obj;
	ACTOR *actor;
	SCENE *scene;
	PL_CAMERA *camera;
	PL_SHAPE *shape;
	CONTROLLER *cont;
	BANK *anime;
	u32 hitresult;
	s16 coin;
	s16 star;
	s8 key;
	s8 life;
	s16 power;
	short waist;
	u8 hurt;
	u8 heal;
	u8 squish;
	u8 alpha;
	u16 cap_timer;
	s16 prevstar;
	float peak;
	float sink;
	float gravity;
}
PLAYER;

typedef struct pl_move
{
	s16 time;
	s16 timer_ground;
	u32 state_slip;
	u32 state_next;
	u32 state_jump;
	u32 state_fall;
	u32 state_slide;
}
PL_MOVE;

extern s32 player_8033B280;
extern s32 physics_8033B290;
extern OBJECT *pl_demo_8033B2A0;
extern OBJECT *pl_demo_8033B2A4;
extern OBJECT *pl_demo_8033B2A8;
extern OBJECT *pl_demo_8033B2AC;
extern OBJECT *pl_demo_8033B2B0;
extern OBJECT *pl_demo_8033B2B4;
extern s16 pl_demo_8033B2B8;
extern s16 pl_demo_8033B2BC[2];
extern MTXF pl_move_8033B2C0[2];
extern s16 pl_swim_8033B340;
extern s16 pl_swim_8033B342;
extern f32 pl_swim_8033B344;
extern PL_SHAPE pl_shape_data[2];
extern s8 player_8032DAA0[][6];
extern u8 player_8032DACC[];
extern u64 player_8032DAE0;
extern s16 physics_8032DAF0[];
extern BGFACE physics_8032DAF8;
extern Vp vp_pl_demo;
extern STAFF *pl_demo_staff;
extern s8 pl_demo_8032DB44;
extern s8 pl_demo_8032DB48;
extern s8 pl_demo_8032DB4C[];
extern u8 pl_demo_8032DB54[];
extern BSPLINE pl_demo_8032DB5C[];
extern s32 pl_demo_8032DC34;
extern s32 pl_demo_8032DC38;
extern u8 pl_demo_8032DC3C[];
extern PL_MOVE pl_move_8032DC50;
extern PL_MOVE pl_move_8032DC68;
extern PL_MOVE pl_move_8032DC80;
extern PL_MOVE pl_move_8032DC98;
extern PL_MOVE pl_move_8032DCB0;
extern PL_MOVE pl_move_8032DCC8;
extern PL_MOVE pl_move_8032DCE0;
extern PL_MOVE pl_move_8032DCF8;
extern PL_MOVE pl_move_8032DD10;
extern s16 pl_swim_8032DD30;
extern s16 pl_swim_8032DD34;
extern s16 pl_swim_8032DD38[];
extern s8 pl_hold_8032DD40[];

extern int pl_set_state(PLAYER *pl, u32 state, u32 code);
extern u32 mario_exec(OBJECT *obj);
extern void player_80254B20(void);
extern void player_80254F44(void);
extern void staff_draw(void);
extern void *s_stage_weather(int code, SHAPE *shape, void *data);
extern void *s_stage_back(int code, SHAPE *shape, void *data);
extern void *s_face_proc(int code, SHAPE *shape, void *data);
extern void callback_8027684C(void);
extern void callback_80276910(void);
extern void callback_80276BB8(void);
extern void callback_80276CCC(void);
extern void *s_player_alpha(int code, SHAPE *shape, void *data);
extern void *s_player_select_lod(int code, SHAPE *shape, void *data);
extern void *s_player_select_eyes(int code, SHAPE *shape, void *data);
extern void *s_player_torso(int code, SHAPE *shape, void *data);
extern void *s_player_head(int code, SHAPE *shape, void *data);
extern void *s_mario_select_hand(int code, SHAPE *shape, void *data);
extern void *s_mario_punch(int code, SHAPE *shape, void *data);
extern void *s_player_select_cap(int code, SHAPE *shape, void *data);
extern void *s_player_select_head(int code, SHAPE *shape, void *data);
extern void *s_player_wing(int code, SHAPE *shape, void *data);
extern void *s_player_hand(int code, SHAPE *shape, void *data);
extern void *s_inside_mirror(int code, SHAPE *shape, void *data);
extern void *s_mario_mirror(int code, SHAPE *shape, void *data);

#endif /* __SM64_PLAYER_H__ */
