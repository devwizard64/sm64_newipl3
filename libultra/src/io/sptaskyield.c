#include <ultra64.h>
#include "osint.h"

void osSpTaskYield(void)
{
	__osSpSetStatus(SP_SET_YIELD);
}
