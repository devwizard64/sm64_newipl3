#ifndef __SM64_OBJSHAPE_H__
#define __SM64_OBJSHAPE_H__

extern s8 objshape_803612F0;

extern void vtx_set(
	Vtx *vtx,
	int i,
	SHORT x,
	SHORT y,
	SHORT z,
	SHORT s,
	SHORT t,
	UCHAR r,
	UCHAR g,
	UCHAR b,
	UCHAR a
);
extern SHORT roundftos(float x);
extern void *s_objshape_802D2360(int code, SHAPE *shape, void *data);
extern void *s_objshape_802D2470(int code, SHAPE *shape, void *data);
extern void *s_objshape_802D2520(int code, SHAPE *shape, void *data);
extern void *ending_draw(int code, SHAPE *shape, void *data);

#endif /* __SM64_OBJSHAPE_H__ */
