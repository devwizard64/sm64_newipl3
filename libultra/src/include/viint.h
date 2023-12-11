#define VI_STATE_NORMAL         0x00
#define VI_STATE_MODE           0x01
#define VI_STATE_X_SCALE        0x02
#define VI_STATE_Y_SCALE        0x04
#define VI_STATE_CONTROL        0x08
#define VI_STATE_FRAME          0x10
#define VI_STATE_BLACK          0x20
#define VI_STATE_REPEAT_LINE    0x40
#define VI_STATE_FADE           0x80

typedef struct
{
	f32 factor;
	u16 offset;
	u32 scale;
}
__OSViScale;

typedef struct
{
	u16 state;
	u16 retraceCount;
	void *framep;
	OSViMode *modep;
	u32 control;
	OSMesgQueue *msgq;
	OSMesg msg;
	__OSViScale x;
	__OSViScale y;
}
__OSViContext;

extern OSDevMgr __osViDevMgr;
extern __OSViContext *__osViCurr;
extern __OSViContext *__osViNext;

extern void __osViInit(void);
extern __OSViContext *__osViGetCurrentContext(void);
extern __OSViContext *__osViGetNextContext(void);
extern void __osViSwapContext(void);
