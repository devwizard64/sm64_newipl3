#include <ultra64.h>

int __osSpDeviceBusy(void)
{
	register u32 stat;
	stat = IO_READ(SP_STATUS_REG);
	if (stat & (SP_STATUS_DMA_FULL|SP_STATUS_DMA_BUSY|SP_STATUS_IO_FULL))
	{
		return 1;
	}
	else
	{
		return 0;
	}
}
