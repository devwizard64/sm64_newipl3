#include <sm64.h>

#define SC_EVENT_SP             100
#define SC_EVENT_DP             101
#define SC_EVENT_VI             102
#define SC_EVENT_GFXTASK        103
#define SC_EVENT_PRENMI         104

#define SC_WAITING              0
#define SC_RUNNING              1
#define SC_YIELDED              2
#define SC_RSPDONE              3
#define SC_RDPDONE              4

UNUSED static OSThread rmon_thread;
static OSThread idle_thread;
static OSThread sched_thread;
static OSThread gfx_thread;
static OSThread aud_thread;

static OSMesgQueue pi_mq;
static OSMesgQueue sched_mq;
static OSMesgQueue sctask_mq;

static OSMesg dma_mbox;
static OSMesg pi_mbox[32];
static OSMesg si_mbox;
static OSMesg sched_mbox[16];
static OSMesg sctask_mbox[16];

static SCCLIENT *sc_audclient = NULL;
static SCCLIENT *sc_gfxclient = NULL;
static SCTASK *sc_task    = NULL;
static SCTASK *sc_audtask = NULL;
static SCTASK *sc_gfxtask = NULL;
static SCTASK *sc_audtask_next = NULL;
static SCTASK *sc_gfxtask_next = NULL;
static char sc_aud = TRUE;
static u32 sc_vi = 0;

OSIoMesg dma_mb;
OSMesg null_msg;
OSMesgQueue dma_mq;
OSMesgQueue si_mq;

s8 reset_timer = 0;
s8 reset_frame = 0;

#ifdef GATEWAY
char sys_halt = FALSE;
#endif

char debug_stage  = FALSE;
char debug_thread = FALSE;
char debug_time   = FALSE;
char debug_mem    = FALSE;

void debug_check(void)
{
	static u16 time_seq[] =
		{U_JPAD, U_JPAD, D_JPAD, D_JPAD, L_JPAD, R_JPAD, L_JPAD, R_JPAD};
	static u16 mem_seq[] =
		{D_JPAD, D_JPAD, U_JPAD, U_JPAD, L_JPAD, R_JPAD, L_JPAD, R_JPAD};
	static s16 time_idx = 0;
	static s16 mem_idx = 0;
	if (contp->down != 0)
	{
		if (time_seq[time_idx++] == contp->down)
		{
			if (time_idx == 8) time_idx = 0, debug_time ^= TRUE;
		}
		else
		{
			time_idx = 0;
		}
		if (mem_seq[mem_idx++] == contp->down)
		{
			if (mem_idx == 8) mem_idx = 0, debug_mem ^= TRUE;
		}
		else
		{
			mem_idx = 0;
		}
	}
}

void dummy(void)
{
#ifdef __GNUC__
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wuninitialized"
#pragma GCC diagnostic ignored "-Wnonnull"
#pragma GCC diagnostic ignored "-Wformat-overflow"
#endif
	OSTime time;
	OSPageMask pm;
	osSetTime(time);
	osMapTLB(0, pm, NULL, 0, 0, 0);
	osUnmapTLBAll();
	sprintf(NULL, NULL);
#ifdef __GNUC__
#pragma GCC diagnostic pop
#endif
}

static void debug_entry(void)
{
}

static void debug_sched_proc(void)
{
}

static void debug_sched_vi(void)
{
}

static void sched_init(void)
{
	osCreateMesgQueue(&dma_mq, &dma_mbox, 1);
	osCreateMesgQueue(&si_mq, &si_mbox, 1);
	osSetEventMesg(OS_EVENT_SI, &si_mq, (OSMesg)0);
	osCreateMesgQueue(&sctask_mq, sctask_mbox, 16);
	osCreateMesgQueue(&sched_mq, sched_mbox, 16);
	osViSetEvent(&sched_mq, (OSMesg)SC_EVENT_VI, 1);
	osSetEventMesg(OS_EVENT_SP, &sched_mq, (OSMesg)SC_EVENT_SP);
	osSetEventMesg(OS_EVENT_DP, &sched_mq, (OSMesg)SC_EVENT_DP);
	osSetEventMesg(OS_EVENT_PRENMI, &sched_mq, (OSMesg)SC_EVENT_PRENMI);
}

static void sched_init_mem(void)
{
	void *start = (void *)ADDRESS_MEM_START;
	void *end   = (void *)ADDRESS_MEM_END;
	mem_init(start, end);
	mem_heap = heap_create(16384, MEM_ALLOC_L);
}

static void create_thread(
	OSThread *t, OSId id, void (*entry)(void *), void *arg, void *sp, OSPri pri
)
{
	t->next  = NULL;
	t->queue = NULL;
	osCreateThread(t, id, entry, arg, sp, pri);
}

static void sc_event_prenmi(void)
{
	reset_timer = 1;
	reset_frame = 0;
	Na_SeClear();
	Na_LockSe();
	aud_fadeout(90);
}

static void sc_task_flush(void)
{
	SCTASK *task;
	while (osRecvMesg(&sctask_mq, (OSMesg *)&task, OS_MESG_NOBLOCK) != -1)
	{
		task->status = SC_WAITING;
		switch (task->task.t.type)
		{
		case M_AUDTASK: sc_audtask_next = task; break;
		case M_GFXTASK: sc_gfxtask_next = task; break;
		}
	}
	if (!sc_audtask && sc_audtask_next)
	{
		sc_audtask = sc_audtask_next;
		sc_audtask_next = NULL;
	}
	if (!sc_gfxtask && sc_gfxtask_next)
	{
		sc_gfxtask = sc_gfxtask_next;
		sc_gfxtask_next = NULL;
	}
}

static void sc_task_start(int type)
{
	UNUSED int i;
	if (type == M_AUDTASK)  sc_task = sc_audtask;
	else                    sc_task = sc_gfxtask;
	osSpTaskStart(&sc_task->task);
	sc_task->status = SC_RUNNING;
}

static void sc_task_yield(void)
{
	if (sc_task->task.t.type == M_GFXTASK)
	{
		sc_task->status = SC_YIELDED;
		osSpTaskYield();
	}
}

static void sc_event_gfxtask(void)
{
	if (!sc_task)
	{
		if (sc_gfxtask && sc_gfxtask->status == SC_WAITING)
		{
			time_gfxrcp(TIME_GFXRCP_START);
			sc_task_start(M_GFXTASK);
		}
	}
}

static void sc_audtask_skip(void)
{
	sc_task = sc_audtask;
	sc_task->status = SC_RUNNING;
	osSendMesg(&sched_mq, (OSMesg)SC_EVENT_SP, OS_MESG_NOBLOCK);
}

static void sc_event_vi(void)
{
	UNUSED int i;
	debug_sched_vi();
	sc_vi++;
	if (reset_timer > 0) reset_timer++;
	sc_task_flush();
	if (sc_audtask)
	{
		if (sc_task)
		{
			sc_task_yield();
		}
		else
		{
			time_audrcp();
			if (sc_aud) sc_task_start(M_AUDTASK);
			else        sc_audtask_skip();
		}
	}
	else if (!sc_task)
	{
		if (sc_gfxtask && sc_gfxtask->status != SC_RSPDONE)
		{
			time_gfxrcp(TIME_GFXRCP_START);
			sc_task_start(M_GFXTASK);
		}
	}
#ifdef GATEWAY
	if (sc_audclient && !sys_halt)
#else
	if (sc_audclient)
#endif
	{
		osSendMesg(sc_audclient->mq, sc_audclient->msg, OS_MESG_NOBLOCK);
	}
	if (sc_gfxclient)
	{
		osSendMesg(sc_gfxclient->mq, sc_gfxclient->msg, OS_MESG_NOBLOCK);
	}
}

static void sc_event_sp(void)
{
	SCTASK *task = sc_task;
	sc_task = NULL;
	if (task->status == SC_YIELDED)
	{
		if (!osSpTaskYielded(&task->task))
		{
			task->status = SC_RSPDONE;
			time_gfxrcp(TIME_GFXRCP_ENDRSP);
		}
		time_audrcp();
		if (sc_aud) sc_task_start(M_AUDTASK);
		else        sc_audtask_skip();
	}
	else
	{
		task->status = SC_RSPDONE;
		if (task->task.t.type == M_AUDTASK)
		{
			time_audrcp();
			if (sc_gfxtask && sc_gfxtask->status != SC_RSPDONE)
			{
				if (sc_gfxtask->status != SC_YIELDED)
				{
					time_gfxrcp(TIME_GFXRCP_START);
				}
				sc_task_start(M_GFXTASK);
			}
			sc_audtask = NULL;
			if (task->mq) osSendMesg(task->mq, task->msg, OS_MESG_NOBLOCK);
		}
		else
		{
			time_gfxrcp(TIME_GFXRCP_ENDRSP);
		}
	}
}

static void sc_event_dp(void)
{
	if (sc_gfxtask->mq)
	{
		osSendMesg(sc_gfxtask->mq, sc_gfxtask->msg, OS_MESG_NOBLOCK);
	}
	time_gfxrcp(TIME_GFXRCP_ENDRDP);
	sc_gfxtask->status = SC_RDPDONE;
	sc_gfxtask = NULL;
}

static void sched_proc(UNUSED void *arg)
{
	sched_init();
	sched_init_mem();
	mem_load_ulib();
	create_thread(&aud_thread, 4, aud_proc, NULL, aud_stack+MAIN_STACK_LEN, 20);
	osStartThread(&aud_thread);
	create_thread(&gfx_thread, 5, gfx_proc, NULL, gfx_stack+MAIN_STACK_LEN, 10);
	osStartThread(&gfx_thread);
	for (;;)
	{
		OSMesg msg;
		osRecvMesg(&sched_mq, &msg, OS_MESG_BLOCK);
		switch ((int)msg)
		{
		case SC_EVENT_VI:       sc_event_vi();      break;
		case SC_EVENT_SP:       sc_event_sp();      break;
		case SC_EVENT_DP:       sc_event_dp();      break;
		case SC_EVENT_GFXTASK:  sc_event_gfxtask(); break;
		case SC_EVENT_PRENMI:   sc_event_prenmi();  break;
		}
		debug_sched_proc();
	}
}

void sc_setclient(int i, SCCLIENT *client, OSMesgQueue *mq, OSMesg msg)
{
	client->mq  = mq;
	client->msg = msg;
	switch (i)
	{
	case SC_AUDCLIENT: sc_audclient = client; break;
	case SC_GFXCLIENT: sc_gfxclient = client; break;
	}
}

void sc_queue_task(SCTASK *task)
{
	osWritebackDCacheAll();
	osSendMesg(&sctask_mq, task, OS_MESG_NOBLOCK);
}

void sc_queue_audtask(SCTASK *task)
{
	if (sc_aud)
	{
		if (task)
		{
			osWritebackDCacheAll();
			osSendMesg(&sctask_mq, task, OS_MESG_NOBLOCK);
		}
	}
}

void sc_queue_gfxtask(SCTASK *task)
{
	if (task)
	{
		osWritebackDCacheAll();
		task->status = SC_WAITING;
		if (!sc_gfxtask)
		{
			sc_gfxtask = task;
			sc_gfxtask_next = NULL;
			osSendMesg(&sched_mq, (OSMesg)SC_EVENT_GFXTASK, OS_MESG_NOBLOCK);
		}
		else
		{
			sc_gfxtask_next = task;
		}
	}
}

void sc_aud_enable(void)
{
	sc_aud = TRUE;
}

void sc_aud_disable(void)
{
	sc_aud = FALSE;
	while (sc_audtask);
}

static void idle_proc(UNUSED void *arg)
{
#if REVISION > 199606
	int tv_type = osTvType;
#endif
	osCreateViManager(OS_PRIORITY_VIMGR);
#if REVISION > 199606
	if (tv_type == OS_TV_NTSC)  osViSetMode(&osViModeTable[OS_VI_NTSC_LAN1]);
	else                        osViSetMode(&osViModeTable[OS_VI_PAL_LAN1]);
#else
	osViSetMode(&osViModeTable[OS_VI_NTSC_LAN1]);
#endif
	osViBlack(TRUE);
	osViSetSpecialFeatures(OS_VI_DITHER_FILTER_ON);
	osViSetSpecialFeatures(OS_VI_GAMMA_OFF);
	osCreatePiManager(OS_PRIORITY_PIMGR, &pi_mq, pi_mbox, 32);
	create_thread(
		&sched_thread, 3, sched_proc, NULL, sched_stack+MAIN_STACK_LEN, 100
	);
	if (!debug_thread) osStartThread(&sched_thread);
	osSetThreadPri(NULL, OS_PRIORITY_IDLE);
	for (;;);
}

void entry(void)
{
	UNUSED char buf[64];
	osInitialize();
	debug_entry();
	create_thread(
		&idle_thread, 1, idle_proc, NULL, idle_stack+IDLE_STACK_LEN, 100
	);
	osStartThread(&idle_thread);
}
