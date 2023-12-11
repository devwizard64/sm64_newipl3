#include <sm64.h>

#define SAVE_DATA_KEY   0x4849  /* HI */
#define SAVE_FILE_KEY   0x4441  /* DA */

static u8 save_mid_level;
static u8 save_mid_course;
static u8 save_mid_stage;
static u8 save_mid_scene;
static u8 save_mid_port;

static char save_data_dirty;
static char save_file_dirty;

u8 save_course = 0;
u8 save_level = 0;
u8 save_hiscore = FALSE;
u8 save_myscore = FALSE;
u8 save_star = 0;
u8 save_jump = FALSE;

s8 course_table[] =
{
	COURSE_NULL,
	COURSE_NULL,
	COURSE_NULL,
	COURSE_BBH,
	COURSE_CCM,
	COURSE_NULL,
	COURSE_HMC,
	COURSE_SSL,
	COURSE_BOB,
	COURSE_SL,
	COURSE_WDW,
	COURSE_JRB,
	COURSE_THI,
	COURSE_TTC,
	COURSE_RR,
	COURSE_NULL,
	COURSE_BITDW,
	COURSE_VCUTM,
	COURSE_BITFS,
	COURSE_SA,
	COURSE_BITS,
	COURSE_LLL,
	COURSE_DDD,
	COURSE_WF,
	COURSE_ENDING,
	COURSE_NULL,
	COURSE_PSS,
	COURSE_COTMC,
	COURSE_TOTWC,
	COURSE_BITDW,
	COURSE_WMOTR,
	COURSE_NULL,
	COURSE_BITFS,
	COURSE_BITS,
	COURSE_NULL,
	COURSE_TTM,
	COURSE_NULL,
	COURSE_NULL,
};

static void save_init_debug(void)
{
	UNUSED int i;
}

static int save_rd(void *data, int size)
{
	int code = 0;
	if (eeprom_status != 0)
	{
		int n = 4;
		int address = ((unsigned long)data-(unsigned long)&save) / 8;
		do
		{
			n--;
			code = osEepromLongRead(&si_mq, address, data, size);
		}
		while (n > 0 && code != 0);
	}
	return code;
}

static int save_wr(void *data, int size)
{
	int code = 1;
	if (eeprom_status != 0)
	{
		int n = 4;
		int address = ((unsigned long)data-(unsigned long)&save) / 8;
		do
		{
			n--;
			code = osEepromLongWrite(&si_mq, address, data, size);
		}
		while (n > 0 && code != 0);
	}
	return code;
}

static u16 save_check_sum(unsigned char *data, int size)
{
	USHORT sum = 0;
	while (size-- > 2) sum += *data++;
	return sum;
}

static int save_check(void *data, int size, USHORT key)
{
	SAVE_CHECK *check = (SAVE_CHECK *)((size-sizeof(SAVE_CHECK))+(char *)data);
	if (check->key != key) return FALSE;
	if (save_check_sum(data, size) != check->sum) return FALSE;
	return TRUE;
}

static void save_check_set(void *data, int size, USHORT key)
{
	SAVE_CHECK *check = (SAVE_CHECK *)((size-sizeof(SAVE_CHECK))+(char *)data);
	check->key = key;
	check->sum = save_check_sum(data, size);
}

static void save_data_recover(int src)
{
	int dst = src ^ 1;
	save_check_set(&save.data[src], sizeof(SAVE_DATA), SAVE_DATA_KEY);
	bcopy(&save.data[src], &save.data[dst], sizeof(SAVE_DATA));
	save_wr(&save.data[dst], sizeof(SAVE_DATA));
}

static void save_data_write(void)
{
	if (save_data_dirty)
	{
		save_check_set(&save.data[0], sizeof(SAVE_DATA), SAVE_DATA_KEY);
		bcopy(&save.data[0], &save.data[1], sizeof(SAVE_DATA));
		save_wr(&save.data, sizeof(SAVE_DATA)*2);
		save_data_dirty = FALSE;
	}
}

static void save_data_erase(void)
{
	bzero(&save.data[0], sizeof(SAVE_DATA));
	save.data[0].time[0] = 0x15555555*3;
	save.data[0].time[1] = 0x15555555*2;
	save.data[0].time[2] = 0x15555555*1;
	save_data_dirty = TRUE;
	save_data_write();
}

static int save_get_time(int file, int course)
{
	return save.data[0].time[file] >> (2*course) & 3;
}

static void save_set_time(int file, int course, int time)
{
	unsigned int mask = 3 << (2*course);
	save.data[0].time[file] &= ~mask;
	save.data[0].time[file] |= time << (2*course);
}

static void save_update_time(int file, int course)
{
	int i;
	unsigned int t;
	unsigned int time = save_get_time(file, course);
	if (time > 0)
	{
		for (i = 0; i < 4; i++)
		{
			t = save_get_time(i, course);
			if (t < time) save_set_time(i, course, t+1);
		}
		save_set_time(file, course, 0);
		save_data_dirty = TRUE;
	}
}

static void save_update_time_all(int file)
{
	int i;
	for (i = 0; i < 15; i++) save_update_time(file, i);
}

static void save_file_recover(int file, int src)
{
	int dst = src ^ 1;
	save_check_set(&save.file[file][src], sizeof(SAVE_FILE), SAVE_FILE_KEY);
	bcopy(&save.file[file][src], &save.file[file][dst], sizeof(SAVE_FILE));
	save_wr(&save.file[file][dst], sizeof(SAVE_FILE));
}

void save_file_write(int file)
{
	if (save_file_dirty)
	{
		save_check_set(&save.file[file][0], sizeof(SAVE_FILE), SAVE_FILE_KEY);
		bcopy(&save.file[file][0], &save.file[file][1], sizeof(SAVE_FILE));
		save_wr(&save.file[file], sizeof(SAVE_FILE)*2);
		save_file_dirty = FALSE;
	}
	save_data_write();
}

void save_file_erase(int file)
{
	save_update_time_all(file);
	bzero(&save.file[file][0], sizeof(SAVE_FILE));
	save_file_dirty = TRUE;
	save_file_write(file);
}

void save_file_copy(int src, int dst)
{
	UNUSED int i;
	save_update_time_all(dst);
	bcopy(&save.file[src][0], &save.file[dst][0], sizeof(SAVE_FILE));
	save_file_dirty = TRUE;
	save_file_write(dst);
}

void save_init(void)
{
	int i;
	int x;
	save_data_dirty = FALSE;
	save_file_dirty = FALSE;
	bzero(&save, sizeof(SAVE));
	save_rd(&save, sizeof(SAVE));
	x  = save_check(&save.data[0], sizeof(SAVE_DATA), SAVE_DATA_KEY)<<0;
	x |= save_check(&save.data[1], sizeof(SAVE_DATA), SAVE_DATA_KEY)<<1;
	switch (x)
	{
	case FALSE<<0 | FALSE<<1: save_data_erase();       break;
	case TRUE <<0 | FALSE<<1: save_data_recover(0);    break;
	case FALSE<<0 | TRUE <<1: save_data_recover(1);    break;
	}
	for (i = 0; i < 4; i++)
	{
		x  = save_check(&save.file[i][0], sizeof(SAVE_FILE), SAVE_FILE_KEY)<<0;
		x |= save_check(&save.file[i][1], sizeof(SAVE_FILE), SAVE_FILE_KEY)<<1;
		switch (x)
		{
		case FALSE<<0 | FALSE<<1: save_file_erase(i);       break;
		case TRUE <<0 | FALSE<<1: save_file_recover(i, 0);  break;
		case FALSE<<0 | TRUE <<1: save_file_recover(i, 1);  break;
		}
	}
	save_init_debug();
}

void save_reset(void)
{
	bcopy(
		&save.file[file_index-1][1], &save.file[file_index-1][0],
		sizeof(SAVE_FILE)
	);
	bcopy(&save.data[1], &save.data[0], sizeof(SAVE_DATA));
	save_data_dirty = FALSE;
	save_file_dirty = FALSE;
}

void save_set(SHORT coin, SHORT level)
{
	int file = file_index-1;
	int course = course_index-1;
	int mask = 1 << level;
	UNUSED unsigned int flag = save_get_flag();
	save_course = course+1;
	save_level  = level+1;
	save_hiscore = FALSE;
	save_myscore = FALSE;
	if (course >= 0 && course < 15)
	{
		if (coin > save_hiscore_coin(course))
		{
			save_hiscore = TRUE;
		}
		if (save_file_get_coin(file, course) < coin)
		{
			save.file[file][0].coin[course] = coin;
			save_update_time(file, course);
			save_myscore = TRUE;
			save_file_dirty = TRUE;
		}
	}
	switch (stage_index)
	{
	case STAGE_BITDWA:
		if (!(save_get_flag() & (SAVE_KEY1|SAVE_KEYDOOR1)))
		{
			save_set_flag(SAVE_KEY1);
		}
		break;
	case STAGE_BITFSA:
		if (!(save_get_flag() & (SAVE_KEY2|SAVE_KEYDOOR2)))
		{
			save_set_flag(SAVE_KEY2);
		}
		break;
	case STAGE_BITSA:
		break;
	default:
		if (!(save_file_get_star(file, course) & mask))
		{
			save_file_set_star(file, course, mask);
		}
		break;
	}
}

int save_file_isactive(int file)
{
	return (save.file[file][0].flag & SAVE_ACTIVE) != 0;
}

u32 save_hiscore_get(int course)
{
	int i;
	int max_coin = -1;
	int max_time = -1;
	int file = 0;
	for (i = 0; i < 4; i++)
	{
		if (save_file_get_star(i, course) != 0)
		{
			int coin = save_file_get_coin(i, course);
			int time = save_get_time(i, course);
			if (coin > max_coin || (coin == max_coin && time > max_time))
			{
				max_coin = coin;
				max_time = time;
				file = i+1;
			}
		}
	}
	return (file << 16) + MAX(max_coin, 0);
}

int save_file_star_count(int file, int course)
{
	int i;
	int n = 0;
	UCHAR mask = 1;
	UCHAR star = save_file_get_star(file, course);
	for (i = 0; i < 7; i++, mask <<= 1) if (star & mask) n++;
	return n;
}

int save_file_star_range(int file, int min, int max)
{
	int n = 0;
	for (; min <= max; min++) n += save_file_star_count(file, min);
	return n + save_file_star_count(file, -1);
}

void save_set_flag(unsigned int flag)
{
	save.file[file_index-1][0].flag |= SAVE_ACTIVE | flag;
	save_file_dirty = TRUE;
}

void save_clr_flag(unsigned int flag)
{
	save.file[file_index-1][0].flag &= ~flag;
	save.file[file_index-1][0].flag |= SAVE_ACTIVE;
	save_file_dirty = TRUE;
}

unsigned int save_get_flag(void)
{
	if (staffp || demop) return 0;
	return save.file[file_index-1][0].flag;
}

int save_file_get_star(int file, int course)
{
	int flag;
	if (course == -1)   flag = save.file[file][0].flag >> 24 & 0x7F;
	else                flag = save.file[file][0].star[course] & 0x7F;
	return flag;
}

void save_file_set_star(int file, int course, int flag)
{
	if (course == -1)   save.file[file][0].flag |= flag << 24;
	else                save.file[file][0].star[course] |= flag;
	save.file[file][0].flag |= SAVE_ACTIVE;
	save_file_dirty = TRUE;
}

int save_file_get_coin(int file, int course)
{
	return save.file[file][0].coin[course];
}

int save_get_cannon(void)
{
	return (save.file[file_index-1][0].star[course_index] & 0x80) != 0;
}

void save_set_cannon(void)
{
	save.file[file_index-1][0].star[course_index] |= 0x80;
	save.file[file_index-1][0].flag |= SAVE_ACTIVE;
	save_file_dirty = TRUE;
}

void save_set_cap(SHORT x, SHORT y, SHORT z)
{
	SAVE_FILE *file = &save.file[file_index-1][0];
	file->stage = stage_index;
	file->scene = scene_index;
	vecs_set(file->pos, x, y, z);
	save_set_flag(SAVE_LOSTCAP);
}

int save_get_cap(VECS pos)
{
	SAVE_FILE *file = &save.file[file_index-1][0];
	unsigned int flag = save_get_flag();
	if (
		file->stage == stage_index &&
		file->scene == scene_index &&
		(flag & SAVE_LOSTCAP)
	)
	{
		vecs_cpy(pos, file->pos);
		return TRUE;
	}
	return FALSE;
}

void save_set_sound(USHORT sound)
{
	aud_sound_mode(sound);
	save.data[0].sound = sound;
	save_data_dirty = TRUE;
	save_data_write();
}

USHORT save_get_sound(void)
{
	return save.data[0].sound;
}

void save_init_cap(void)
{
	if (save_get_flag() & SAVE_LOSTCAP)
	{
		switch (save.file[file_index-1][0].stage)
		{
		case STAGE_SSL: save_set_flag(SAVE_CONDORCAP);  break;
		case STAGE_SL:  save_set_flag(SAVE_SNOWMANCAP);  break;
		case STAGE_TTM: save_set_flag(SAVE_MONKEYCAP); break;
		}
		save_clr_flag(SAVE_LOSTCAP);
	}
}

void save_clr_mid(void)
{
	save_mid_course = COURSE_NULL;
}

void save_set_mid(PORTINFO *p)
{
	if (p->stage & 0x80)
	{
		save_mid_level  = level_index;
		save_mid_course = course_index;
		save_mid_stage  = p->stage & 0x7F;
		save_mid_scene  = p->scene;
		save_mid_port   = p->port;
	}
}

int save_get_mid(PORTINFO *p)
{
	short result = FALSE;
	SHORT course = stage_to_course(p->stage & 0x7F);
	if (
		save_mid_course != COURSE_NULL &&
		prev_course == course &&
		save_mid_level == level_index
	)
	{
		p->stage = save_mid_stage;
		p->scene = save_mid_scene;
		p->port  = save_mid_port;
		result = TRUE;
	}
	else
	{
		save_mid_course = 0;
	}
	return result;
}
