#ifndef __SM64_WATER_H__
#define __SM64_WATER_H__

typedef struct water
{
	int index;
	int texture;
	int len;
	short *data;
	Gfx *start;
	Gfx *end;
	Gfx *draw;
	u8 r;
	u8 g;
	u8 b;
	u8 a;
	int layer;
}
WATER;

extern s16 water_803612E0;
extern s16 water_80330F30;
extern s16 water_80330F34;
extern s8 water_80330F38;
extern f32 water_80330F3C;
extern s32 water_80330F40;
extern u16 *txt_water[];
extern WATER water_table_a[];
extern WATER water_table_b[];
extern WATER water_table_c[];
extern s8 water_803312E8[];

#endif /* __SM64_WATER_H__ */
