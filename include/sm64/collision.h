#ifndef __SM64_COLLISION_H__
#define __SM64_COLLISION_H__

typedef struct collision
{
	u32 type;
	int (*callback)(PLAYER *pl, u32 flag, OBJECT *obj);
}
COLLISION;

extern u8 collision_8033B270;
extern s16 collision_8033B272;
extern COLLISION collision_table[];
extern u32 collision_8032DA48[];
extern u32 collision_8032DA6C[];
extern u8 collision_8032DA90;
extern u8 collision_8032DA94;
extern u8 collision_8032DA98;

extern int collision_8024DB2C(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024DBF0(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024DC28(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024DE4C(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024DF10(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024E0C4(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024E420(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024E6EC(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024E778(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024E7D4(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024E8F0(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024E9D0(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024EAD8(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024EC54(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024ED84(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024EE44(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024EFF8(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024F170(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024F1E0(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024F354(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024F4AC(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024F55C(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024F5CC(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024F6A4(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024F8BC(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024FA60(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024FB30(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_8024FD2C(PLAYER *pl, u32 flag, OBJECT *obj);
extern int collision_80250198(PLAYER *pl, u32 flag, OBJECT *obj);

#endif /* __SM64_COLLISION_H__ */
