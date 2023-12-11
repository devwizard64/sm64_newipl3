#include <ultra64.h>
#include "osint.h"
#include "controller.h"
#include "siint.h"

static void __osPackReadData(void);

s32 osContStartReadData(OSMesgQueue *mq)
{
	s32 ret = 0;
	int i;
	__osSiGetAccess();
	if (__osContLastCmd != CONT_READ)
	{
		__osPackReadData();
		ret = __osSiRawStartDma(OS_WRITE, &__osContPifRam);
		osRecvMesg(mq, NULL, OS_MESG_BLOCK);
	}
#ifdef sgi
	for (i = 0; i < PIFRAMSIZE; i++) __osContPifRam.ramarray[i] = 0xFF;
#else
	for (i = 0; i < PIFRAMSIZE-1; i++) __osContPifRam.ramarray[i] = 0xFF;
#endif
	__osContPifRam.pifstatus = 0;
	ret = __osSiRawStartDma(OS_READ, &__osContPifRam);
	__osContLastCmd = CONT_READ;
	__osSiRelAccess();
	return ret;
}

void osContGetReadData(OSContPad *data)
{
	u8 *ptr = (u8 *)&__osContPifRam;
	__OSContReadFormat readformat;
	int i;
	for (
		i = 0; i < __osMaxControllers;
		i++, ptr += sizeof(__OSContReadFormat), data++
	)
	{
		readformat = *(__OSContReadFormat *)ptr;
		data->errno = (readformat.rxsize & CON_ERR_MASK) >> 4;
		if (data->errno) continue;
		data->button = readformat.button;
		data->stick_x = readformat.stick_x;
		data->stick_y = readformat.stick_y;
	}
}

static void __osPackReadData(void)
{
	u8 *ptr = (u8 *)&__osContPifRam;
	__OSContReadFormat readformat;
	int i;
#ifdef sgi
	for (i = 0; i < PIFRAMSIZE; i++) __osContPifRam.ramarray[i] = 0;
#else
	for (i = 0; i < PIFRAMSIZE-1; i++) __osContPifRam.ramarray[i] = 0;
#endif
	__osContPifRam.pifstatus = CONT_FORMAT;
	readformat.dummy = 0xFF;
	readformat.txsize = 1;
	readformat.rxsize = 4;
	readformat.cmd = CONT_READ;
	readformat.button = 0xFFFF;
	readformat.stick_x = (s8)0xFF;
	readformat.stick_y = (s8)0xFF;
	for (i = 0; i < __osMaxControllers; i++)
	{
		*(__OSContReadFormat *)ptr = readformat;
		ptr += sizeof(__OSContReadFormat);
	}
	*ptr = FORMAT_END;
}
