#ifndef __SM64_MAIN_H__
#define __SM64_MAIN_H__

#define SCREEN_WD               320
#define SCREEN_HT               240
#define BORDER_HT               8

#define SC_AUDCLIENT            1
#define SC_GFXCLIENT            2

typedef struct sctask
{
	OSTask task;
	OSMesgQueue *mq;
	OSMesg msg;
	int status;
}
SCTASK;

typedef struct scclient
{
	OSMesgQueue *mq;
	OSMesg msg;
}
SCCLIENT;

extern OSIoMesg dma_mb;
extern OSMesg null_msg;
extern OSMesgQueue dma_mq;
extern OSMesgQueue si_mq;
extern s8 reset_timer;
extern s8 reset_frame;
extern char debug_stage;
extern char debug_thread;
extern char debug_time;
extern char debug_mem;

extern void debug_check(void);
extern void sc_setclient(int i, SCCLIENT *client, OSMesgQueue *mq, OSMesg msg);
extern void sc_queue_task(SCTASK *task);
extern void sc_queue_audtask(SCTASK *task);
extern void sc_queue_gfxtask(SCTASK *task);
extern void sc_aud_enable(void);
extern void sc_aud_disable(void);
extern void entry(void);

#endif /* __SM64_MAIN_H__ */
