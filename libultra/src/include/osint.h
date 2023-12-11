extern u32 __osGetCause(void);
extern void __osSetCause(u32);
extern u32 __osGetCompare(void);
extern void __osSetCompare(u32);
extern u32 __osGetConfig(void);
extern void __osSetConfig(u32);
extern void __osSetCount(u32);
extern u32 __osGetSR(void);
extern void __osSetSR(u32);
extern u32 __osDisableInt(void);
extern void __osRestoreInt(u32);
extern u32 __osSetFpcCsr(u32);
extern u32 __osGetFpcCsr(void);

extern u32 __osGetTLBASID(void);
extern u32 __osGetTLBPageMask(s32);
extern u32 __osGetTLBHi(s32);
extern u32 __osGetTLBLo0(s32);
extern u32 __osGetTLBLo1(s32);

extern u32 __osSiGetStatus(void);
extern s32 __osSiRawWriteIo(u32, u32);
extern s32 __osSiRawReadIo(u32, u32 *);
extern s32 __osSiRawStartDma(s32, void *);

extern u32 __osSpGetStatus(void);
extern void __osSpSetStatus(u32);
extern s32 __osSpSetPc(u32);
extern s32 __osSpRawWriteIo(u32, u32);
extern s32 __osSpRawReadIo(u32, u32 *);
extern s32 __osSpRawStartDma(s32, u32, void *, u32);

extern void __osGIOInit(s32);
extern void __osGIOInterrupt(s32);
extern void __osGIORawInterrupt(s32);

extern OSThread *__osGetActiveQueue(void);

extern void __osSyncPutChars(int, int, const char *);
extern int __osAtomicDec(unsigned int *p);

extern u32 __osRdbSend(u8 *buf, u32 size, u32 type);

extern int __osAiDeviceBusy(void);

extern void __osDevMgrMain(void *);
extern int __osPiDeviceBusy(void);

extern int __osDpDeviceBusy(void);

extern void __osViInit(void);

extern int __osSiDeviceBusy(void);

extern int __osSpDeviceBusy(void);

extern OSTime __osCurrentTime;
extern u32 __osBaseCounter;
extern u32 __osViIntrCount;
extern u32 __osTimerCounter;
extern OSTimer *__osTimerList;
extern void __osTimerInterrupt(void);
extern void __osTimerServicesInit(void);
extern void __osSetTimerIntr(OSTime);
extern OSTime __osInsertTimer(OSTimer *);

extern u32 __osProbeTLB(void *);

typedef struct
{
	OSThread *next;
	OSPri priority;
}
__OSThreadTail;
extern __OSThreadTail __osThreadTail;
extern OSThread *__osRunningThread;
extern OSThread *__osRunQueue;
extern OSThread *__osActiveQueue;
extern OSThread *__osFaultedThread;
extern void __osDequeueThread(OSThread **, OSThread *);
extern void __osEnqueueThread(OSThread **, OSThread *);
extern OSThread *__osPopThread(OSThread **);
extern void __osCleanupThread(void);
extern void __osDispatchThread(void);
extern void __osEnqueueAndYield(OSThread **);

typedef s32 (*__OSIntrRoutine)(void);
extern int __osExceptionPreamble[];
extern void __osPanic(void);
extern __OSIntrRoutine __osHwIntTable[];

typedef struct
{
	OSMesgQueue *messageQueue;
	OSMesg message;
}
__OSEventState;
extern __OSEventState __osEventStateTab[];
