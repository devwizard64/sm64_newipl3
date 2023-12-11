#include <ultra64.h>

s32 __osSpSetPc(u32 data)
{
	register u32 stat;
	stat = IO_READ(SP_STATUS_REG);
	if (!(stat & SP_STATUS_HALT)) return -1;
	IO_WRITE(SP_PC_REG, data);
	return 0;
}
