#include <ultra64.h>

s32 osPiRawReadIo(u32 devAddr, u32 *data)
{
	register u32 stat;
	stat = IO_READ(PI_STATUS_REG);
	while (stat & (PI_STATUS_IO_BUSY|PI_STATUS_DMA_BUSY))
	{
		stat = IO_READ(PI_STATUS_REG);
	}
	*data = IO_READ((u32)osRomBase | devAddr);
	return 0;
}
