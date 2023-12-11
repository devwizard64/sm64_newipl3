#include <ultra64.h>
#ifdef sgi
#include <bstring.h>
#else
#include <string.h>
#endif
#include "osint.h"

typedef struct
{
	unsigned int inst1;
	unsigned int inst2;
	unsigned int inst3;
	unsigned int inst4;
}
__osExceptionVector;

u64 osClockRate = 62500000LL;
s32 __osShutdown = 0;

#ifdef _FINALROM
s32 __osFinalrom;
#endif

void osInitialize(void)
{
	u32 pifdata;
	u32 clock = 0;
#ifdef _FINALROM
	__osFinalrom = 1;
#endif
	__osSetSR(__osGetSR() | SR_CU1);
	__osSetFpcCsr(FPCSR_FS|FPCSR_EV);
	while (__osSiRawReadIo(PIF_RAM_START+0x3C, &pifdata));
	while (__osSiRawWriteIo(PIF_RAM_START+0x3C, pifdata|8));
	*(__osExceptionVector *)UT_VEC =
		*(__osExceptionVector *)__osExceptionPreamble;
	*(__osExceptionVector *)XUT_VEC =
		*(__osExceptionVector *)__osExceptionPreamble;
	*(__osExceptionVector *)ECC_VEC =
		*(__osExceptionVector *)__osExceptionPreamble;
	*(__osExceptionVector *)E_VEC =
		*(__osExceptionVector *)__osExceptionPreamble;
	osWritebackDCache((void *)UT_VEC, E_VEC-UT_VEC+sizeof(__osExceptionVector));
	osInvalICache((void *)UT_VEC, E_VEC-UT_VEC+sizeof(__osExceptionVector));
	osMapTLBRdb();
	osPiRawReadIo(4, &clock);
	clock &= ~0xF;
	if (clock) osClockRate = clock;
	osClockRate = osClockRate * 3/4;
	if (osResetType == 0) bzero(osAppNMIBuffer, OS_APP_NMI_BUFSIZE);
}
