#ifndef __SM64_MAP_H__
#define __SM64_MAP_H__

#define BG_GROUND               0
#define BG_ROOF                 1
#define BG_WALL                 2

#define BG_MOVE                 1
#define BG_0002                 2
#define BG_WALL_Z               8

#define BGAREA_SIZE             1024
#define BGAREA_N                16
#define BGAREA_MASK             15

#define MAP_SIZE                (BGAREA_SIZE*BGAREA_N)
#define MAP_HALF                (MAP_SIZE/2)

#define BGAREA_FUZZ             50

typedef struct plane
{
	short _00;
	short _02;
	short _04;
	short _06;
	short _08;
	short _0A;
	short _0C;
	short _0E;
	float nx;
	float ny;
	float nz;
	float nw;
	short _20;
	short _22;
	short _24;
	short _26;
}
PLANE;

typedef struct bgface
{
	short code;
	short attr;
	char flag;
	AREA area;
	short yl;
	short yh;
	VECS v0;
	VECS v1;
	VECS v2;
	float nx;
	float ny;
	float nz;
	float nw;
	OBJECT *obj;
}
BGFACE;

typedef struct bglist
{
	struct bglist *next;
	BGFACE *face;
}
BGLIST;

typedef struct bgroot
{
	BGLIST list[3];
}
BGROOT;

typedef struct wallcheck
{
	float x;
	float y;
	float z;
	float offset;
	float radius;
	s16 flag;
	s16 count;
	BGFACE *wall[4];
}
WALLCHECK;

extern int bgload_8038BE90;
extern BGROOT statbg_root[16][16];
extern BGROOT movebg_root[16][16];
extern BGLIST *bglist_data;
extern BGFACE *bgface_data;
extern s16 bgface_max;
extern int bgload_8038EEA4[12];

extern int bg_hit_wall(
	float *x,
	float *y,
	float *z,
	float offset,
	float radius
);
extern int bg_check_wall(WALLCHECK *check);
extern float bg_check_roof(float x, float y, float z, BGFACE **roof);
extern float bg_check_plane(float x, float y, float z, PLANE **plane);
extern float bg_check_ground_y(float x, float y, float z);
extern float bg_check_ground(float x, float y, float z, BGFACE **ground);
extern float bg_check_water(float x, float z);
extern float bg_check_gas(float x, float z);
extern void bgcheck_debug(float x, float z);
extern void map_init(void);
extern void map_load(SHORT scene, MAP *map, AREA *area, TAG *tag);
extern void movebg_clear(void);
extern void object_map_load(void);

#endif /* __SM64_MAP_H__ */
