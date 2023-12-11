#include <ultra64.h>
#include "osint.h"

u32 osVirtualToPhysical(void *virtualAddress)
{
	if      (IS_KSEG0(virtualAddress))  return K0_TO_PHYS(virtualAddress);
	else if (IS_KSEG1(virtualAddress))  return K1_TO_PHYS(virtualAddress);
	else                                return __osProbeTLB(virtualAddress);
}
