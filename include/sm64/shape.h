#ifndef __SM64_SHAPE_H__
#define __SM64_SHAPE_H__

#define SF_CALLBACK             0x100

#define ST_SCENE                (1)
#define ST_ORTHO                (2)
#define ST_PERSP                (3 | SF_CALLBACK)
#define ST_LAYER                (4)

#define ST_EMPTY                (10)
#define ST_LOD                  (11)
#define ST_SELECT               (12 | SF_CALLBACK)

#define ST_CAMERA               (20 | SF_CALLBACK)
#define ST_COORD                (21)
#define ST_POS                  (22)
#define ST_ANG                  (23)
#define ST_OBJECT               (24)
#define ST_JOINT                (25)
#define ST_BILLBOARD            (26)
#define ST_GFX                  (27)
#define ST_SCALE                (28)

#define ST_SHADOW               (40)
#define ST_LIST                 (41)
#define ST_CALLBACK             (42 | SF_CALLBACK)
#define ST_BACK                 (44 | SF_CALLBACK)
#define ST_HAND                 (46 | SF_CALLBACK)
#define ST_CULL                 (47)

#define SHP_ACTIVE              0x0001
#define SHP_HIDE                0x0002
#define SHP_BILLBOARD           0x0004
#define SHP_ZBUFFER             0x0008
#define SHP_OBJHIDE             0x0010
#define SHP_ANIME               0x0020

#define SC_INIT                 0
#define SC_DRAW                 1
#define SC_CLOSE                2
#define SC_OPEN                 3
#define SC_EXIT                 4
#define SC_MTX                  5

#define shape_get_layer(shp)  ((shp)->flag >> 8)
#define shape_set_layer(shp, layer) \
	((shp)->flag = (layer) << 8 | ((shp)->flag & 0xFF))

typedef struct anime
{
	s16 flag;
	short waist;
	s16 start;
	s16 loop;
	s16 frame;
	s16 joint;
	short *val;
	u16 *tbl;
	size_t size;
}
ANIME;

typedef struct skeleton
{
	s16 index;
	short waist;
	ANIME *anime;
	s16 frame;
	u16 stamp;
	s32 vframe;
	s32 vspeed;
}
SKELETON;

typedef struct shape
{
	s16 type;
	s16 flag;
	struct shape *prev;
	struct shape *next;
	struct shape *parent;
	struct shape *child;
}
SHAPE;

typedef void *SHPCALL(int code, SHAPE *shape, void *data);

typedef struct s_callback
{
	SHAPE s;
	SHPCALL *callback;
	unsigned long arg;
}
S_CALLBACK;

typedef struct s_gfx
{
	SHAPE s;
	Gfx *gfx;
}
S_GFX;

typedef struct s_scene
{
	SHAPE s;
	u8 index;
	u8 screen;
	short x;
	short y;
	short w;
	short h;
	u16 count;
	SHAPE **table;
}
S_SCENE;

typedef struct s_ortho
{
	SHAPE s;
	float scale;
}
S_ORTHO;

typedef struct s_persp
{
	S_CALLBACK s;
	float fovy;
	short near;
	short far;
}
S_PERSP;

typedef struct layer_list
{
	Mtx *mtx;
	Gfx *gfx;
	struct layer_list *next;
}
LAYER_LIST;

typedef struct s_layer
{
	SHAPE s;
	LAYER_LIST *list[LAYER_MAX];
	LAYER_LIST *next[LAYER_MAX];
}
S_LAYER;

typedef struct s_lod
{
	SHAPE s;
	short min;
	short max;
}
S_LOD;

typedef struct s_select
{
	S_CALLBACK s;
	s16 code;
	s16 index;
}
S_SELECT;

typedef struct s_camera
{
	S_CALLBACK s;
	VECF eye;
	VECF look;
	MTXF *mf;
	short angz_m;
	short angz_p;
}
S_CAMERA;

typedef struct s_coord
{
	S_GFX s;
	VECS pos;
	VECS ang;
}
S_COORD;

typedef struct s_pos
{
	S_GFX s;
	VECS pos;
}
S_POS;

typedef struct s_ang
{
	S_GFX s;
	VECS ang;
}
S_ANG;

typedef struct s_scale
{
	S_GFX s;
	float scale;
}
S_SCALE;

typedef struct actor
{
	VECS pos;
	VECS ang;
	s8 scene;
	s8 group;
	u32 info;
	O_SCRIPT *script;
	SHAPE *shape;
	struct actor *next;
}
ACTOR;

typedef struct s_object
{
	SHAPE s;
	SHAPE *shape;
	s8 scene;
	s8 group;
	VECS ang;
	VECF pos;
	VECF scale;
	SKELETON skel;
	ACTOR *actor;
	MTXF *mf;
	VECF view;
}
S_OBJECT;

typedef struct s_cull
{
	SHAPE s;
	short dist;
}
S_CULL;

typedef struct s_joint
{
	S_GFX s;
	VECS pos;
}
S_JOINT;

typedef struct s_billboard
{
	S_GFX s;
	VECS pos;
}
S_BILLBOARD;

typedef struct s_shadow
{
	SHAPE s;
	short size;
	u8 alpha;
	u8 type;
}
S_SHADOW;

typedef struct s_list
{
	SHAPE s;
	SHAPE *shape;
}
S_LIST;

typedef struct s_back
{
	S_CALLBACK s;
	u32 code;
}
S_BACK;

typedef struct s_hand
{
	S_CALLBACK s;
	S_OBJECT *obj;
	VECS pos;
}
S_HAND;

extern S_SCENE *s_create_scene(
	ARENA *arena,
	S_SCENE *shp,
	SHORT index,
	SHORT x,
	SHORT y,
	SHORT w,
	SHORT h
);
extern S_ORTHO *s_create_ortho(ARENA *arena, S_ORTHO *shp, float scale);
extern S_PERSP *s_create_persp(
	ARENA *arena,
	S_PERSP *shp,
	float fovy,
	SHORT near,
	SHORT far,
	SHPCALL *callback,
	unsigned long arg
);
extern SHAPE *s_create_empty(ARENA *arena, SHAPE *shp);
extern S_LAYER *s_create_layer(ARENA *arena, S_LAYER *shp, SHORT zb);
extern S_LOD *s_create_lod(ARENA *arena, S_LOD *shp, SHORT min, SHORT max);
extern S_SELECT *s_create_select(
	ARENA *arena,
	S_SELECT *shp,
	SHORT code,
	SHORT index,
	SHPCALL *callback,
	unsigned long arg
);
extern S_CAMERA *s_create_camera(
	ARENA *arena,
	S_CAMERA *shp,
	VECF eye,
	VECF look,
	SHPCALL *callback,
	unsigned long arg
);
extern S_COORD *s_create_coord(
	ARENA *arena,
	S_COORD *shp,
	int layer,
	Gfx *gfx,
	VECS pos,
	VECS ang
);
extern S_POS *s_create_pos(
	ARENA *arena,
	S_POS *shp,
	int layer,
	Gfx *gfx,
	VECS pos
);
extern S_ANG *s_create_ang(
	ARENA *arena,
	S_ANG *shp,
	int layer,
	Gfx *gfx,
	VECS ang
);
extern S_SCALE *s_create_scale(
	ARENA *arena,
	S_SCALE *shp,
	int layer,
	Gfx *gfx,
	float scale
);
extern S_OBJECT *s_create_object(
	ARENA *arena,
	S_OBJECT *shp,
	SHAPE *shape,
	VECF pos,
	VECS ang,
	VECF scale
);
extern S_CULL *s_create_cull(ARENA *arena, S_CULL *shp, SHORT dist);
extern S_JOINT *s_create_joint(
	ARENA *arena,
	S_JOINT *shp,
	int layer,
	Gfx *gfx,
	VECS pos
);
extern S_BILLBOARD *s_create_billboard(
	ARENA *arena,
	S_BILLBOARD *shp,
	int layer,
	Gfx *gfx,
	VECS pos
);
extern S_GFX *s_create_gfx(ARENA *arena, S_GFX *shp, int layer, Gfx *gfx);
extern S_SHADOW *s_create_shadow(
	ARENA *arena,
	S_SHADOW *shp,
	SHORT size,
	UCHAR alpha,
	UCHAR type
);
extern S_LIST *s_create_list(ARENA *arena, S_LIST *shp, SHAPE *shape);
extern S_CALLBACK *s_create_callback(
	ARENA *arena,
	S_CALLBACK *shp,
	SHPCALL *callback,
	unsigned long arg
);
extern S_BACK *s_create_back(
	ARENA *arena,
	S_BACK *shp,
	USHORT code,
	SHPCALL *callback,
	unsigned long arg
);
extern S_HAND *s_create_hand(
	ARENA *arena,
	S_HAND *shp,
	S_OBJECT *obj,
	VECS pos,
	SHPCALL *callback,
	unsigned long arg
);
extern SHAPE *shape_link(SHAPE *parent, SHAPE *shape);
extern SHAPE *shape_unlink(SHAPE *shape);
extern SHAPE *shape_makefirst(SHAPE *shape);
extern void s_scene_notify(S_SCENE *shp, int code);
extern void sobj_init(S_OBJECT *shp);
extern void sobj_enter(S_OBJECT *shp, SHAPE *shape, VECF pos, VECS ang);
extern void sobj_actor(S_OBJECT *shp, ACTOR *actor);
extern void sobj_set_anime(S_OBJECT *shp, ANIME **animep);
extern void sobj_set_animev(S_OBJECT *shp, ANIME **animep, int speed);
extern int anime_index(int frame, u16 **tbl);
extern int skel_step(SKELETON *skel, s32 *vframe);

#endif /* __SM64_SHAPE_H__ */
