#include <sm64.h>

long long entry_stack[BOOT_STACK_LEN];
long long idle_stack[IDLE_STACK_LEN];
long long sched_stack[MAIN_STACK_LEN];
long long aud_stack[MAIN_STACK_LEN];
long long gfx_stack[MAIN_STACK_LEN];

u64 gfx_sp_yield[OS_YIELD_DATA_SIZE/8];
SAVE save;
u64 gfx_sp_stack[SP_DRAM_STACK_SIZE64];
FRAME frame_data[2];
