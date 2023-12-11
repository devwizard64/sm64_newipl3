#ifndef __SM64_SEGMENT_H__
#define __SM64_SEGMENT_H__

#define BOOT_STACK_SIZE         1024
#define IDLE_STACK_SIZE         2048
#define MAIN_STACK_SIZE         8192
#define BOOT_STACK_LEN          (BOOT_STACK_SIZE/8)
#define IDLE_STACK_LEN          (IDLE_STACK_SIZE/8)
#define MAIN_STACK_LEN          (MAIN_STACK_SIZE/8)

#define ADDRESS_CIMG            0x8038F800
#define ADDRESS_ZIMG            0x80000400
#define ADDRESS_MEM_START       0x8005C000
#define ADDRESS_MEM_END         0x801C1000
#define ADDRESS_TIMG            0x801C1000
#define ADDRESS_BUFFER          0x801CE000
#define ADDRESS_FIFO            0x80227000
#define ADDRESS_CODE            0x80246000
#define ADDRESS_ULIB            0x80378800
#define ADDRESS_MENU            0x8016F000

#define ADDRESS_FACEDATA        0x04000000

#define ADDRESS_FRAME           0x01000000
#define ADDRESS_GFX             0x02000000
#define ADDRESS_GLOBAL_GFX      0x03000000
#define ADDRESS_PLAYER_GFX      0x04000000
#define ADDRESS_SHAPE1_GFX      0x05000000
#define ADDRESS_SHAPE2_GFX      0x06000000
#define ADDRESS_STAGE_GFX       0x07000000
#define ADDRESS_SHAPE3_GFX      0x08000000
#define ADDRESS_TEXTURE         0x09000000
#define ADDRESS_BACK            0x0A000000
#define ADDRESS_WEATHER         0x0B000000
#define ADDRESS_SHAPE1_SHP      0x0C000000
#define ADDRESS_SHAPE2_SHP      0x0D000000
#define ADDRESS_STAGE_DATA      0x0E000000
#define ADDRESS_SHAPE3_SHP      0x0F000000
#define ADDRESS_MAIN            0x10000000
#define ADDRESS_MARIO_ANIME     0x11000000
#define ADDRESS_LUIGI_ANIME     0x12000000
#define ADDRESS_OBJECT          0x13000000
#define ADDRESS_MENU_DATA       0x14000000
#define ADDRESS_GAME            0x15000000
#define ADDRESS_GLOBAL_SHP      0x16000000
#define ADDRESS_PLAYER_SHP      0x17000000
#define ADDRESS_DEMO            0x18000000

#define SEG_FRAME               0x01
#define SEG_GFX                 0x02
#define SEG_GLOBAL_GFX          0x03
#define SEG_PLAYER_GFX          0x04
#define SEG_SHAPE1_GFX          0x05
#define SEG_SHAPE2_GFX          0x06
#define SEG_STAGE_GFX           0x07
#define SEG_SHAPE3_GFX          0x08
#define SEG_TEXTURE             0x09
#define SEG_BACK                0x0A
#define SEG_WEATHER             0x0B
#define SEG_SHAPE1_SHP          0x0C
#define SEG_SHAPE2_SHP          0x0D
#define SEG_STAGE_DATA          0x0E
#define SEG_SHAPE3_SHP          0x0F
#define SEG_MAIN                0x10
#define SEG_MARIO_ANIME         0x11
#define SEG_LUIGI_ANIME         0x12
#define SEG_OBJECT              0x13
#define SEG_MENU_DATA           0x14
#define SEG_GAME                0x15
#define SEG_GLOBAL_SHP          0x16
#define SEG_PLAYER_SHP          0x17
#define SEG_DEMO                0x18

#endif /* __SM64_SEGMENT_H__ */
