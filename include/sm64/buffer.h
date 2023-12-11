#ifndef __SM64_BUFFER_H__
#define __SM64_BUFFER_H__

extern long long entry_stack[BOOT_STACK_LEN];
extern long long idle_stack[IDLE_STACK_LEN];
extern long long sched_stack[MAIN_STACK_LEN];
extern long long aud_stack[MAIN_STACK_LEN];
extern long long gfx_stack[MAIN_STACK_LEN];
extern u64 gfx_sp_yield[OS_YIELD_DATA_SIZE/8];
extern SAVE save;
extern u64 gfx_sp_stack[SP_DRAM_STACK_SIZE64];
extern FRAME frame_data[2];

#endif /* __SM64_BUFFER_H__ */
