#ifndef __SM64_SHADOW_H__
#define __SM64_SHADOW_H__

extern char shadow_onwater;
extern char shadow_ondecal;

extern Gfx *shadow_draw(
	float x,
	float y,
	float z,
	SHORT size,
	UCHAR alpha,
	CHAR type
);

#endif /* __SM64_SHADOW_H__ */
