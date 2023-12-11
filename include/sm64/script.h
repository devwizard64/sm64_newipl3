#ifndef __SM64_SCRIPT_H__
#define __SM64_SCRIPT_H__

extern SHAPE sobj_list;
extern u16 rand_seed;

extern SHAPE *s_process(ARENA *arena, S_SCRIPT *script);
extern P_SCRIPT *p_execute(P_SCRIPT *pc);
extern u16 rand(void);
extern float randf(void);
extern int randsign(void);
extern void o_init(void);
extern void o_execute(void);

#endif /* __SM64_SCRIPT_H__ */
