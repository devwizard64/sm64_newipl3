#include "face.h"

const char str_face_stdio_801B82F0[] = "Unable to make memtracker '%s'";
const char str_face_stdio_801B8310[] = "too many memtracker calls";
const char str_face_stdio_801B832C[] = "%s\n";
const char str_face_stdio_801B8330[] = "bad mem tracker count";
const char str_face_stdio_801B8348[] = "memtracker '%s' not found";
const char str_face_stdio_801B8364[] = "'%s' = %dk\n";
const char str_face_stdio_801B8370[] = "\nTimers:\n";
const char str_face_stdio_801B837C[] = "'%s' = %f (%d)\n";
const char str_face_stdio_801B838C[] = "Timer '%s' not found";
const char str_face_stdio_801B83A4[] = "get_timernum(): Timer number %d out of range (MAX %d)";
const char str_face_stdio_801B83DC[] = "start_timer(): Unable to make timer '%s'";
const char str_face_stdio_801B8408[] = "restart_timer(): Unable to make timer '%s'";
const char str_face_stdio_801B8434[] = "\tIn: '%s'\n";
const char str_face_stdio_801B8440[] = "%d";
const char str_face_stdio_801B8444[] = "%f";
const char str_face_stdio_801B8448[] = "%s";
const char str_face_stdio_801B844C[] = "%c";
const char str_face_stdio_801B8450[] = "%x";
const char str_face_stdio_801B8454[] = "%c";
const char str_face_stdio_801B8458[] = "\\";
const char str_face_stdio_801B845C[] = "\n";
const char str_face_stdio_801B8460[] = "%c";
const char str_face_stdio_801B8464[] = "\n";
const char str_face_stdio_801B8468[] = "\n";
const char str_face_stdio_801B846C[] = "You're in too many routines";
const char str_face_stdio_801B8488[] = " - %s\n";
const char str_face_stdio_801B8490[] = "imout() - imout() called too many times";
const char str_face_stdio_801B84B8[] = "gd_atoi() bad number '%s'";
const char str_face_stdio_801B84D4[] = "<BAD TYPE>";
const char str_face_stdio_801B84E0[] = "gd_strdup(): out of memory";
const char str_face_stdio_801B84FC[] = "gd_fopen() File not found '%s'";
const char str_face_stdio_801B851C[] = "gd_fopen() Out of memory loading '%s'";
const char str_face_stdio_801B8544[] = "w";
const char str_face_stdio_801B8548[] = "b";

extern void L8018D358(void);
extern void L8018D38C(void);
extern void L8018D410(void);
extern void L8018D444(void);
extern void L8018D478(void);
extern void L8018D4AC(void);

void (*const face_stdio_801B854C[])(void) =
{
	L8018D444,
	L8018D358,
	L8018D4AC,
	L8018D38C,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D410,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D4AC,
	L8018D478,
};

const double face_stdio_801B85A8 = 65535;

BALIGN char _face_stdio_bss[0x1040-0x870];

int face_stdio_801A8410 = 0;

int face_stdio_801A8414[] =
{
	2,
	1,
	3,
	4,
	5,
	8,
	9,
};

int face_stdio_801A8430 = 0;
unsigned int face_stdio_801A8434 = 0x12345678;
unsigned int face_stdio_801A8438 = 0x58374895;
char face_stdio_801A843C[] = "0123456789ABCDEF";
int face_stdio_801A8450 = 0;
