#include <sm64.h>

u64 Na_Heap[0x31200/8];
#if REVISION <= 199606
u64 Na_SpYield[OS_YIELD_AUDIO_SIZE/8];
#endif
u64 Na_SpStack[4096/8];
