#include <sm64.h>

extern void L80274F90(void);
extern void L80274FA8(void);
extern void L80275050(void);
extern void L802750CC(void);
extern void L802750E4(void);
extern void L80275170(void);
extern void L802751EC(void);
extern void L80275280(void);
extern void L80275308(void);

void (*const pl_hold_80336ED0[])(void) =
{
	L80274F90,
	L80274FA8,
	L80275050,
	L802750CC,
	L802750E4,
	L80275170,
	L802751EC,
	L80275308,
	L80275308,
	L80275280,
};

extern void L802760C8(void);
extern void L802760DC(void);
extern void L802760F0(void);
extern void L80276104(void);
extern void L80276140(void);
extern void L80276154(void);
extern void L80276168(void);
extern void L8027617C(void);

void (*const pl_hold_80336EF8[])(void) =
{
	L802760C8,
	L8027617C,
	L802760DC,
	L802760F0,
	L80276104,
	L8027617C,
	L8027617C,
	L8027617C,
	L8027617C,
	L8027617C,
	L8027617C,
	L8027617C,
	L8027617C,
	L80276140,
	L80276154,
	L80276168,
};

s8 pl_hold_8032DD40[] = {0, 1, 1, 2, 3, 5, 7, 10};
