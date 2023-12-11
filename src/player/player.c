#ifndef SCRIPT

static void player_copyinfo(void)
{
	int i = 0;
	if (object != mario_obj) i++;
	object->o_vel_x = player_data[i].vel[0];
	object->o_vel_y = player_data[i].vel[1];
	object->o_vel_z = player_data[i].vel[2];
	object->o_pos_x = player_data[i].pos[0];
	object->o_pos_y = player_data[i].pos[1];
	object->o_pos_z = player_data[i].pos[2];
	object->o_ang_x = object->s.ang[0];
	object->o_ang_y = object->s.ang[1];
	object->o_ang_z = object->s.ang[2];
	object->o_shape_ang_x = object->s.ang[0];
	object->o_shape_ang_y = object->s.ang[1];
	object->o_shape_ang_z = object->s.ang[2];
	object->o_ang_vel_x = player_data[i].ang_vel[0];
	object->o_ang_vel_y = player_data[i].ang_vel[1];
	object->o_ang_vel_z = player_data[i].ang_vel[2];
}

typedef struct pl_effect
{
	u32 code;
	u32 flag;
	u8 shape;
	O_SCRIPT *script;
}
PL_EFFECT;

extern O_SCRIPT o_130002B8[];
extern O_SCRIPT o_13000428[];
extern O_SCRIPT o_13000A54[];
extern O_SCRIPT o_13000A98[];
extern O_SCRIPT o_13000AD8[];
extern O_SCRIPT o_13000D98[];
extern O_SCRIPT o_13000E24[];
extern O_SCRIPT o_13000E3C[];
extern O_SCRIPT o_13000E58[];
extern O_SCRIPT o_130011EC[];
extern O_SCRIPT o_13001390[];
extern O_SCRIPT o_130024AC[];
extern O_SCRIPT o_13002B08[];
extern O_SCRIPT o_13002C14[];
extern O_SCRIPT o_13002CE0[];
extern O_SCRIPT o_13002D50[];
extern O_SCRIPT o_13002D7C[];
extern O_SCRIPT o_13002DC0[];

static PL_EFFECT pl_effect[] =
{
	{0x00000001, 0x00000001, S_WHITEPUFF, o_130024AC},
	{0x00000002, 0x00040000, S_NULL, o_13000A54},
	{0x00000010, 0x00000010, S_NULL, o_13000A98},
	{0x00000008, 0x00000008, S_SPARKLE, o_13002B08},
	{0x00000020, 0x00000020, S_BUBBLE_A, o_130002B8},
	{0x00000040, 0x00000040, S_SPLASH, o_13002C14},
	{0x00000080, 0x00000080, S_RIPPLE_STOP, o_13002CE0},
	{0x00000200, 0x00000200, S_DROPLET, o_13000428},
	{0x00000400, 0x00000400, S_RIPPLE_MOVE, o_13002DC0},
	{0x00000800, 0x00000800, S_FLAME, o_130011EC},
	{0x00000100, 0x00000100, S_NULL, o_13002D50},
	{0x00001000, 0x00001000, S_NULL, o_13002D7C},
	{0x00002000, 0x00002000, S_NULL, o_13001390},
	{0x00004000, 0x00010000, S_NULL, o_13000E58},
	{0x00020000, 0x00020000, S_NULL, o_13000D98},
	{0x00008000, 0x00004000, S_NULL, o_13000E3C},
	{0x00010000, 0x00008000, S_NULL, o_13000E24},
	{0x00040000, 0x00080000, S_NULL, o_13000AD8},
	{0},
};

static void player_seteffect(u32 flag, SHORT shape, O_SCRIPT *script)
{
	if (!(object->o_effect & flag))
	{
		OBJECT *obj;
		object->o_effect |= flag;
		obj = obj_make(object, 0, shape, script);
		objlib_8029F0E0(obj, object);
	}
}

void mario_proc(void)
{
	u32 flag = 0;
	int i;
	flag = mario_exec(object);
	object->o_v0 = flag;
	player_copyinfo();
	i = 0;
	while (pl_effect[i].code != 0)
	{
		if (pl_effect[i].code & flag) player_seteffect(
			pl_effect[i].flag,
			pl_effect[i].shape,
			pl_effect[i].script
		);
		i++;
	}
}

#else /* SCRIPT */

.globl o_mario
o_mario:
	oInit(OT_PLAYER)
	oSetI(O_HIT_TIMER, 0)
	oSetFlag(O_FLAG, OF_0100)
	oSetFlag(3, 0x0001)
	oHit(37, 160)
	oWhile()
		oCallback(debug_player)
		oCallback(mario_proc)
		oCallback(debug_proc)
	oWend()

#endif /* SCRIPT */
