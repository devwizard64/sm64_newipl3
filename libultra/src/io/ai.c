#include <ultra64.h>

int __osAiDeviceBusy(void)
{
	register u32 stat;
	stat = IO_READ(AI_STATUS_REG);
	if (stat & AI_STATUS_FIFO_FULL) return 1;
	else return 0;
}
