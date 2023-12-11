#include <ultra64.h>
#include "osint.h"
#include "controller.h"
#include "siint.h"

OSPifRam __osContPifRam;
u8 __osContLastCmd;
u8 __osMaxControllers;
OSTimer __osEepromTimer;
OSMesgQueue __osEepromTimerQ;
OSMesg __osEepromTimerMsg;
int __osContinitialized = 0;

s32 osContInit(OSMesgQueue *mq, u8 *bitpattern, OSContStatus *data)
{
	OSMesg dummy;
	s32 ret = 0;
	OSTime t;
	OSTimer mytimer;
	OSMesgQueue timerMesgQueue;
	if (__osContinitialized) return 0;
	__osContinitialized = 1;
	t = osGetTime();
	if (t < OS_USEC_TO_CYCLES(500000))
	{
		osCreateMesgQueue(&timerMesgQueue, &dummy, 1);
		osSetTimer(
			&mytimer, OS_USEC_TO_CYCLES(500000)-t, 0, &timerMesgQueue, &dummy
		);
		osRecvMesg(&timerMesgQueue, &dummy, OS_MESG_BLOCK);
	}
	__osMaxControllers = MAXCONTROLLERS;
	__osPackRequestData(CONT_RESET);
	ret = __osSiRawStartDma(OS_WRITE, &__osContPifRam);
	osRecvMesg(mq, &dummy, OS_MESG_BLOCK);
	ret = __osSiRawStartDma(OS_READ, &__osContPifRam);
	osRecvMesg(mq, &dummy, OS_MESG_BLOCK);
	__osContGetInitData(bitpattern, data);
	__osContLastCmd = CONT_RESET;
	__osSiCreateAccessQueue();
	osCreateMesgQueue(&__osEepromTimerQ, &__osEepromTimerMsg, 1);
	return ret;
}

void __osContGetInitData(u8 *pattern, OSContStatus *data)
{
	u8 *ptr;
	__OSContRequesFormat requestformat;
	int i;
	u8 bits = 0;
	ptr = (u8 *)&__osContPifRam;
	for (
		i = 0; i < __osMaxControllers;
		i++, ptr += sizeof(__OSContRequesFormat), data++
	)
	{
		requestformat = *(__OSContRequesFormat *)ptr;
		data->errno = (requestformat.rxsize & CON_ERR_MASK) >> 4;
		if (data->errno) continue;
		data->type = requestformat.typel << 8 | requestformat.typeh;
		data->status = requestformat.status;
		bits |= 1 << i;
	}
	*pattern = bits;
}

void __osPackRequestData(u8 cmd)
{
	u8 *ptr;
	__OSContRequesFormat requestformat;
	int i;
#ifdef sgi
	for (i = 0; i < PIFRAMSIZE; i++) __osContPifRam.ramarray[i] = 0;
#else
	for (i = 0; i < PIFRAMSIZE-1; i++) __osContPifRam.ramarray[i] = 0;
#endif
	__osContPifRam.pifstatus = CONT_FORMAT;
	ptr = (u8 *)&__osContPifRam;
	requestformat.dummy = 0xFF;
	requestformat.txsize = 1;
	requestformat.rxsize = 3;
	requestformat.cmd = cmd;
	requestformat.typeh = 0xFF;
	requestformat.typel = 0xFF;
	requestformat.status = 0xFF;
	requestformat.dummy1 = 0xFF;
	for (i = 0; i < __osMaxControllers; i++)
	{
		*(__OSContRequesFormat *)ptr = requestformat;
		ptr += sizeof(__OSContRequesFormat);
	}
	*ptr = FORMAT_END;
}
