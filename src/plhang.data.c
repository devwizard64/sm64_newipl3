#include <sm64.h>

const float pl_hang_80336940 = 0.4F;
const float pl_hang_80336944 = 0.9063078F;
const float pl_hang_80336948 = 0.95F;
const float pl_hang_8033694C = 0.95F;

extern void L80260748(void);
extern void L8026075C(void);
extern void L80260770(void);
extern void L80260784(void);
extern void L80260798(void);

void (*const pl_hang_80336950[])(void) =
{
	L80260748,
	L8026075C,
	L80260770,
	L80260784,
	L80260798,
};
