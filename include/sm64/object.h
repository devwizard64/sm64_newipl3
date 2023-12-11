#ifndef __SM64_OBJECT_H__
#define __SM64_OBJECT_H__

#define DEBUG_SHOW              1
#define DEBUG_2                 2
#define DEBUG_ALL               0xFF

#define OBJECT_MAX              240

#define OBJ_HIT_MAX             4
#define OBJ_MEM_MAX             80

#define obj_get_code(obj)       (((obj)->o_actor_info & 0x00FF0000) >> 16)

typedef struct list
{
	struct list *next;
	struct list *prev;
}
LIST;

typedef struct objlist
{
	S_OBJECT s;
	struct object *next;
	struct object *prev;
}
OBJLIST;

typedef struct object
{
	S_OBJECT s;
	struct object *next;
	struct object *prev;
	struct object *parent;
	struct object *child;
	u32 hit_status;
	s16 flag;
	s16 hit_count;
	struct object *hit[OBJ_HIT_MAX];
	union
	{
		s16 s[2];
		s32 i;
		f32 f;
		void *p;
	}
	mem[OBJ_MEM_MAX];
	void *_1C8;
	O_SCRIPT *pc;
	unsigned int sp;
	unsigned long stack[8];
	s16 sleep;
	s16 actor_type;
	float hit_r;
	float hit_h;
	float dmg_r;
	float dmg_h;
	float hit_offset;
	O_SCRIPT *script;
	struct object *_210;
	struct object *ride;
	MAP *map;
	MTXF mf;
	void *actor_flag;
}
OBJECT;

typedef struct bgdebug
{
	s16 ground;
	s16 roof;
	s16 wall;
}
BGDEBUG;

typedef struct obj_splash
{
	s16 flag;
	s16 shape;
	O_SCRIPT *script;
	short ay_mul;
	short p_mul;
	float vf_add;
	float vf_mul;
	float vy_add;
	float vy_mul;
	float s_add;
	float s_mul;
}
OBJ_SPLASH;

typedef struct obj_effect
{
	s8 code;
	s8 count;
	u8 shape;
	s8 offset;
	s8 vf_add;
	s8 vf_mul;
	s8 vy_add;
	s8 vy_mul;
	s8 gravity;
	s8 drag;
	float s_add;
	float s_mul;
}
OBJ_EFFECT;

typedef struct obj_hit
{
	u32 code;
	u8 offset;
	s8 ap;
	s8 hp;
	s8 coin;
	short hit_r;
	short hit_h;
	short dmg_r;
	short dmg_h;
}
OBJ_HIT;

typedef struct stepsound
{
	s16 flag;
	s8 l;
	s8 r;
	Na_Se se;
}
STEPSOUND;

typedef struct debug
{
	short flag;
	short x;
	short y;
	short min_y;
	short max_y;
	short height;
}
DEBUG;

extern int debug_flag;
extern int nullbg_count;
extern int nullroof_count;
extern int wall_count;
extern int obj_count;
extern BGDEBUG bgdebug;
extern short db_work[16][8];
extern short db_save[16][8];
extern int object_flag;
extern OBJECT object_data[OBJECT_MAX];
extern OBJECT object_dummy;
extern OBJLIST *obj_rootlist;
extern OBJLIST obj_freelist;
extern OBJECT *mario_obj;
extern OBJECT *luigi_obj;
extern OBJECT *object;
extern O_SCRIPT *object_pc;
extern s16 obj_prevcount;
extern int bglist_count;
extern int bgface_count;
extern int bglist_static;
extern int bgface_static;
extern HEAP *object_heap;
extern s16 object_80361180;
extern s16 object_80361182;
extern MAP *waterp;
extern int water_table[20];
extern AREA area_table[60][2];
extern s16 object_80361250;
extern s16 object_80361252;
extern s16 object_80361254;
extern s16 object_80361256;
extern s16 object_80361258;
extern s16 object_8036125A;
extern s16 object_8036125C;
extern s16 object_8036125E;
extern s16 object_80361260;
extern s16 object_80361262;
extern s16 object_80361264;
extern s32 objlib_80361270;
extern s8 objlib_80330000[];
extern s16 objlib_80330004[];
extern s8 objlib_80330014[];

extern void mario_proc(void);
extern void obj_set_actorflag(OBJECT *obj, UCHAR flag);
extern void object_close(int screen, int group);
extern void object_open(int screen, ACTOR *actor);
extern void object_init(void);
extern void object_proc(int screen);
extern void objlib_8029DDA8(OBJECT *obj, MTXF a, MTXF b);
extern float objlib_8029E2F8(OBJECT *obj, OBJECT *o);
extern int objlib_8029E694(OBJECT *, OBJECT *);
extern OBJECT *obj_make_abs(
	OBJECT *parent,
	SHORT arg,
	int shape,
	O_SCRIPT *script,
	SHORT posx,
	SHORT posy,
	SHORT posz,
	SHORT angx,
	SHORT angy,
	SHORT angz
);
extern OBJECT *obj_make_rel(
	OBJECT *parent,
	int shape,
	O_SCRIPT *script,
	SHORT posx,
	SHORT posy,
	SHORT posz,
	SHORT angx,
	SHORT angy,
	SHORT angz
);
extern void objlib_8029EB04(OBJECT *, OBJ_SPLASH *);
extern OBJECT *obj_make(OBJECT *parent, SHORT arg, int shape, O_SCRIPT *script);
extern OBJECT *obj_make_here(OBJECT *parent, int shape, O_SCRIPT *script);
extern OBJECT *obj_make_off(
	SHORT code,
	SHORT ox,
	SHORT oy,
	SHORT oz,
	OBJECT *parent,
	int shape,
	O_SCRIPT *script
);
extern void objlib_8029F0E0(OBJECT *obj, OBJECT *o);
extern void objlib_8029F200(MTXF mf, VECF dst, VECF src);
extern void objlib_8029F274(MTXF mf, VECF dst, VECF src);
extern void obj_set_scale(OBJECT *obj, float scale);
extern void object_set_scale(float scale);
extern void objlib_8029F6BC(void);
extern void objlib_8029F8EC(OBJECT *);
extern OBJECT *objlib_8029FB1C(void);
extern int objlib_802A0008(int);
extern void objlib_802A0568(OBJECT *obj);
extern void objlib_802A120C(void);
extern void objlib_802A12A4(void);
extern int objlib_802A14FC(O_SCRIPT *);
extern void objlib_802A2930(OBJECT *obj, int pos, int ang);
extern void objlib_802A2A18(OBJECT *);
extern void objlib_802A2A84(OBJECT *);
extern float objlib_802A3634(float);
extern void objlib_802A4120(void);
extern void objlib_802A4210(void);
extern int objlib_802A4BE4(int, int, int, int);
extern void plride_find(void);
extern void mario_get_pos(float *x, float *y, float *z);
extern void mario_set_pos(float x, float y, float z);
extern void ride_proc(int ismario, OBJECT *obj);
extern void plride_proc(void);
extern void plride_clear(void);
extern void hit_check(void);
extern void obj_freelist_init(void);
extern void obj_rootlist_init(OBJLIST *root);
extern void obj_free(OBJECT *obj);
extern OBJECT *obj_create(O_SCRIPT *script);
extern void obj_destroy(OBJECT *obj);
extern void object_stepsound(STEPSOUND *ss);
extern void object_makesound(Na_Se se);
extern void object_levelsound(Na_Se se);
extern void object_playsound(Na_Se se);
extern OSTime db_time_start(void);
extern OSTime db_time_count(OSTime start);
extern void db_offset(int off_x, int off_ln);
extern void db_put_err(const char *fmt, int value);
extern void db_put(const char *fmt, int value);
extern void db_put_info(const char *fmt, int value);
extern void db_put_title(const char *fmt, int value);
extern void debug_init(void);
extern void debug_clear(void);
extern void debug_exec(void);
extern void debug_result(void);
extern void debug_player(void);
extern void debug_proc(void);

#endif /* __SM64_OBJECT_H__ */
