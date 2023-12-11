#ifndef __SM64_SAVE_H__
#define __SM64_SAVE_H__

#define stage_to_course(stage)  course_table[(stage)-1]

#define save_hiscore_coin(course)   ((u16)(save_hiscore_get(course) & 0xFFFF))
#define save_hiscore_file(course)   ((u16)(save_hiscore_get(course) >> 16))

#define save_file_star_total(file)  save_file_star_range(file, 0, COURSE_MAX-1)
#define save_file_star_extra(file)  \
	save_file_star_range(file, COURSE_EXTRA-1, COURSE_MAX-1)

#define save_write()                save_file_write(file_index-1)
#define save_erase()                save_file_erase(file_index-1)
#define save_isactive()             save_file_isactive(file_index-1)
#define save_star_count(course)     save_file_star_count(file_index-1, course)
#define save_star_range(min, max)   save_file_star_range(file_index-1, min, max)
#define save_star_extra()           save_file_star_extra(file_index-1)
#define save_star_total()           save_file_star_total(file_index-1)
#define save_get_star(course)       save_file_get_star(file_index-1, course)
#define save_set_star(course, flag) \
	save_file_set_star(file_index-1, course, flag)
#define save_get_coin(course)       save_file_get_coin(file_index-1, course)

typedef struct save_check
{
	u16 key;
	u16 sum;
}
SAVE_CHECK;

typedef struct save_data
{
	u32 time[4];
	u16 sound;
	char pad[10];
	SAVE_CHECK check;
}
SAVE_DATA;

typedef struct save_file
{
	u8 stage;
	u8 scene;
	VECS pos;
	u32 flag;
	u8 star[25];
	u8 coin[15];
	SAVE_CHECK check;
}
SAVE_FILE;

typedef struct save
{
	SAVE_FILE file[4][2];
	SAVE_DATA data[2];
}
SAVE;

extern u8 save_course;
extern u8 save_level;
extern u8 save_hiscore;
extern u8 save_myscore;
extern u8 save_star;
extern u8 save_jump;
extern s8 course_table[];

extern void save_file_write(int file);
extern void save_file_erase(int file);
extern void save_file_copy(int src, int dst);
extern void save_init(void);
extern void save_reset(void);
extern void save_set(SHORT coin, SHORT level);
extern int save_file_isactive(int file);
extern u32 save_hiscore_get(int course);
extern int save_file_star_count(int file, int course);
extern int save_file_star_range(int file, int min, int max);
extern void save_set_flag(unsigned int flag);
extern void save_clr_flag(unsigned int flag);
extern unsigned int save_get_flag(void);
extern int save_file_get_star(int file, int course);
extern void save_file_set_star(int file, int course, int flag);
extern int save_file_get_coin(int file, int course);
extern int save_get_cannon(void);
extern void save_set_cannon(void);
extern void save_set_cap(SHORT x, SHORT y, SHORT z);
extern int save_get_cap(VECS pos);
extern void save_set_sound(USHORT sound);
extern USHORT save_get_sound(void);
extern void save_init_cap(void);
extern void save_clr_mid(void);
extern void save_set_mid(PORTINFO *p);
extern int save_get_mid(PORTINFO *p);

#endif /* __SM64_SAVE_H__ */
