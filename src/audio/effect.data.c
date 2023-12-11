#include <sm64.h>

extern void L8031B5D8(void);
extern void L8031B5E0(void);
extern void L8031B604(void);
extern void L8031B61C(void);
extern void L8031B700(void);
extern void L8031B734(void);
extern void L8031B73C(void);
extern void L8031B7BC(void);

void (*const Na_effect_80338E30[])(void) =
{
	L8031B5D8,
	L8031B5E0,
	L8031B604,
	L8031B61C,
	L8031B700,
	L8031B734,
	L8031B73C,
	L8031B73C,
	L8031B7BC,
};
