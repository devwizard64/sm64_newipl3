#ifndef __SM64_AUDIO_H__
#define __SM64_AUDIO_H__

#define AUD_PAUSE               1
#define AUD_QUIET               2

extern void aud_reset_mute(void);
extern void aud_set_mute(int flag);
extern void aud_clr_mute(int flag);
extern void aud_lock(void);
extern void aud_unlock(void);
extern void aud_sound_mode(USHORT mode);
extern void aud_face_sound(SHORT flag);
extern void aud_wave_sound(void);
extern void aud_endless_music(void);
extern void bgm_play(USHORT mode, USHORT bgm, SHORT fadein);
extern void aud_fadeout(SHORT fadeout);
extern void bgm_fadeout(SHORT fadeout);
extern void bgm_stage_play(USHORT bgm);
extern void bgm_shell_play(void);
extern void bgm_shell_stop(void);
extern void bgm_special_play(USHORT bgm);
extern void bgm_special_fadeout(void);
extern void bgm_special_stop(void);
extern void aud_levelse_play(int se, VECF pos);
extern void aud_tick(void);
extern void aud_proc(void *arg);

#endif /* __SM64_AUDIO_H__ */
