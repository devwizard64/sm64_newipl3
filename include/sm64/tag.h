#ifndef __SM64_TAG_H__
#define __SM64_TAG_H__

#define TAG_START               31
#define TAG_END                 (TAG_START+(-1))

#define MAP_EXT_NULL            0
#define MAP_EXT_ANG             1
#define MAP_EXT_ANG_CODE        2
#define MAP_EXT_XYZ             3
#define MAP_EXT_ANG_ARG         4

#define TAG(tag, angy, posx, posy, posz, code) \
	(TAG)((TAG_START+TAG_##tag) | (angy) << 9), posx, posy, posz, (u8)(code)

typedef struct tag_obj
{
	O_SCRIPT *script;
	s16 shape;
	s16 code;
}
TAG_OBJ;

typedef struct map_obj
{
	u8 index;
	u8 ext;
	u8 arg;
	u8 shape;
	O_SCRIPT *script;
}
MAP_OBJ;

extern void tag_obj_load(SHORT scene, TAG *tag);
extern void tag_load(SHORT scene, TAG *tag);
extern void map_obj_load(SHORT scene, MAP **map);

#endif /* __SM64_TAG_H__ */
