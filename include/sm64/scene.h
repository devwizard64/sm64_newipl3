#ifndef __SM64_SCENE_H__
#define __SM64_SCENE_H__

#define SCENE_MAX               8
#define SHAPE_MAX               256

#define SN_ACTIVE               1

#define STAFF_L                 0x00
#define STAFF_R                 0x10
#define STAFF_T                 0x00
#define STAFF_B                 0x20
#define STAFF_TL                (STAFF_T|STAFF_L)
#define STAFF_TR                (STAFF_T|STAFF_R)
#define STAFF_BL                (STAFF_B|STAFF_L)
#define STAFF_BR                (STAFF_B|STAFF_R)

typedef struct staff
{
	u8 stage;
	u8 scene;
	u8 flag;
	s8 angy;
	short posx;
	short posy;
	short posz;
	const char **str;
}
STAFF;

typedef struct portinfo
{
	u8 attr;
	u8 stage;
	u8 scene;
	u8 port;
}
PORTINFO;

typedef struct port
{
	PORTINFO p;
	OBJECT *obj;
	struct port *next;
}
PORT;

typedef struct bgport
{
	PORTINFO p;
}
BGPORT;

typedef struct connect
{
	u8 flag;
	u8 scene;
	VECS offset;
}
CONNECT;

typedef struct scene28
{
	short _00;
	short _02;
	short _04;
	short _06;
	short _08;
}
SCENE28;

typedef struct jet
{
	VECS pos;
	short attr;
}
JET;

typedef struct scene
{
	s8 index;
	s8 flag;
	u16 env;
	S_SCENE *shp;
	MAP *map;
	AREA *area;
	TAG *tag;
	PORT *port;
	BGPORT *bgport;
	CONNECT *connect;
	ACTOR *actor;
	CAMERA *cam;
	SCENE28 *_28;
	JET *jet[2];
	u8 msg[2];
	u16 bgm_mode;
	u16 bgm;
}
SCENE;

extern ACTOR player_actor[1];
extern SHAPE *shape_data[SHAPE_MAX];
extern SCENE scene_data[SCENE_MAX];
extern WIPE wipe;
extern s16 course_index;
extern s16 level_index;
extern s16 scene_index;
extern s16 prev_course;
extern s16 msg_status;
extern s16 msg_result;
extern ACTOR *mario_actor;
extern SHAPE **shape_table;
extern SCENE *scene_table;
extern SCENE *scenep;
extern STAFF *staffp;
extern s16 file_index;
extern s16 stage_index;

extern void scene_set_vp(Vp *viewport, Vp *scissor, UCHAR r, UCHAR g, UCHAR b);
extern void scene_demo(void);
extern int port_get_type(OBJECT *obj);
extern PORT *port_get(UCHAR index);
extern void scene_init(void);
extern void scene_exit(void);
extern void scene_open(int index);
extern void scene_close(void);
extern void scene_player_open(void);
extern void scene_player_close(void);
extern void scene_set(int index);
extern void scene_proc(void);
extern void scene_wipe(SHORT type, SHORT frame, UCHAR r, UCHAR g, UCHAR b);
extern void scene_wipe_delay(
	SHORT type,
	SHORT frame,
	UCHAR r,
	UCHAR g,
	UCHAR b,
	SHORT delay
);
extern void scene_draw(void);

#endif /* __SM64_SCENE_H__ */
