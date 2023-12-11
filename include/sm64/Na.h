#ifndef __SM64_NA_H__
#define __SM64_NA_H__

#define NA_OUTPUT_WIDE          0
#define NA_OUTPUT_PHONE         1
#define NA_OUTPUT_STEREO        2
#define NA_OUTPUT_MONO          3

#define NA_HANDLE_BGM           0
#define NA_HANDLE_FGM           1
#define NA_HANDLE_SE            2

#define Na_FixSePlay(se)        Na_SePlay(se, Na_0)
#define Na_ObjSePlay(se, obj)   Na_SePlay(se, (obj)->s.view)
#define Na_ObjSeStop(se, obj)   Na_SeStop(se, (obj)->s.view)
#define Na_ObjSeKill(obj)       Na_SeKill((obj)->s.view)

#define Na_LockSe()             Na_PortLock(NA_HANDLE_SE, 0x037A)
#define Na_UnlockSe()           Na_PortUnlock(NA_HANDLE_SE, 0x037A)
#define Na_StaffLockSe()        Na_PortLock(NA_HANDLE_SE, 0x03FF)
#define Na_StaffUnlockSe()      Na_PortUnlock(NA_HANDLE_SE, 0x03FF)
#define Na_EndingLockSe()       Na_PortLock(NA_HANDLE_SE, 0x03F0)
#define Na_EndingUnlockSe()     Na_PortUnlock(NA_HANDLE_SE, 0x03F0)
#define Na_OpeningLockSe()      Na_PortLock(NA_HANDLE_SE, 0x0330)
#define Na_OpeningUnlockSe()    Na_PortUnlock(NA_HANDLE_SE, 0x0330)

typedef u32 Na_Se;

typedef struct Na_BgmCtl
{
	s16 a_voice;
	s16 a_vol;
	s16 a_time;
	s16 b_voice;
	s16 b_vol;
	s16 b_time;
}
Na_BgmCtl;

typedef struct Na_Cfg
{
	u32 freq;
	u8 voice;
	u8 e_filt;
	u16 e_size;
	u16 e_vol;
	u16 vol;
	size_t _0C;
	size_t _10;
	size_t _14;
	size_t _18;
}
Na_Cfg;

extern u64 Na_Heap[0x31200/8];
extern u64 Na_SpStack[4096/8];

extern s32 Na_game_80332E50;
extern s32 Na_game_80332E54;
extern u8 Na_MsgSeTable[];
extern Na_Se Na_MsgSeData[15];
extern u8 Na_game_80332F40;
extern u8 Na_game_80332F44;
extern u8 Na_game_80332FBC;
extern u8 Na_game_80332FC0;
extern s16 *Na_BgmCtlTable[];
extern Na_BgmCtl Na_BgmCtlData[];
extern u8 Na_game_803330C0[][3];
extern u16 Na_game_80333138[];
extern u8 Na_BgmVolTable[];
extern u8 Na_game_803331AC;
extern u8 Na_game_803331B0;
extern u8 Na_game_803331B4[];
extern u8 Na_game_803331C0[];
extern u8 Na_game_803331CC[];
extern u8 Na_game_803331D8[];
extern u8 Na_game_803331E4[];
extern VECF Na_0;
extern VECF Na_1;
extern u8 Na_PortStatus[];
extern u8 Na_game_80333214;
extern u8 Na_game_80333218;
extern u8 Na_game_8033321C;
extern u16 Na_game_80333220;
extern u8 Na_game_80333224;
extern u16 Na_game_80333228;
extern u8 Na_game_8033322C;
extern u8 Na_game_80333230;
extern u8 Na_game_80333234;
extern u8 Na_game_80333238;
extern u8 Na_game_8033323C;
extern Na_Se Na_game_80333240[];
extern u8 Na_game_80333280[];
extern u8 Na_game_80333290[];
extern Na_Cfg Na_CfgTable[];
extern s16 Na_data_80333498[];
extern f32 Na_data_80333598[];
extern f32 Na_FreqTable[];
extern u8 Na_data_80333B94[];
extern u8 Na_data_80333BA4[];
extern s8 Na_data_80333BB4[];
extern s16 Na_DefaultEnv[];
extern s16 *Na_WaveTable[];
extern u16 Na_data_80333DE0[];
extern f32 Na_PhonePan[];
extern f32 Na_WidePan[];
extern f32 Na_StereoPan[];
extern f32 Na_rate_136A[];
extern f32 Na_rate_136B[];
extern f32 Na_rate_144A[];
extern f32 Na_rate_144B[];
extern f32 Na_rate_128A[];
extern f32 Na_rate_128B[];
extern s16 Na_TickRate;
extern s8 Na_data_80334FF8;
extern size_t Na_HeapSize;
extern size_t Na_data_80335000;
extern volatile u32 Na_data_80335004;
extern s8 Na_data_80335008;

extern void Na_Load(void);
extern SCTASK *Na_Main(void);
extern void Na_SePlay(Na_Se se, f32 *pos);
extern void Na_Tick(void);
extern void Na_SeqFadeout(u8, u16);
extern void Na_game_803206BC(u8, u8, u16);
extern void Na_SeqMute(u8, u16, u8);
extern void Na_SeqUnmute(u8, u16);
extern void Na_Pause(u8);
extern void Na_Init(void);
extern void Na_SeStop(u32, f32 *);
extern void Na_SeKill(f32 *);
extern void Na_SeClear(void);
extern void Na_PortLock(u8, u16);
extern void Na_PortUnlock(u8, u16);
extern void Na_game_803218D8(u8, u8);
extern void Na_MessageSound(u8);
extern void Na_BgmPlay(u8, u16, u16);
extern void Na_BgmStop(u16);
extern void Na_BgmFadeout(u16, u16);
extern void Na_game_80321D38(void);
extern u16 Na_BgmGet(void);
extern void Na_SeqPush(u8, u8, u8, u16);
extern void Na_SeqPull(u16);
extern void Na_Fadeout(u16);
extern void Na_StarCatch(void);
extern void Na_PeachMessage(void);
extern void Na_Solution(void);
extern void Na_HiScore(void);
extern void Na_StarAppear(u8);
extern void Na_Fanfare(void);
extern void Na_ToadMessage(void);
extern void Na_Mode(u8);
extern void Na_Output(int);

#endif /* __SM64_NA_H__ */
