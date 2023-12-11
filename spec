#include <sm64/segment.h>

#ifdef NEWSPEC
#define MAXADDR(x) maxaddr x
#else
#define MAXADDR(x)
#endif

beginseg
	name    "code"
	flags   OBJECT BOOT
	address ADDRESS_CODE
	MAXADDR(ADDRESS_ULIB)
	entry   entry
	stack   entry_stack + BOOT_STACK_SIZE
	include "$(BUILD)/code.o"
	include "$(BUILD)/libultra/src/PR/rspboot.o"
	include "$(BUILD)/libultra/src/PR/gspFast3D.fifo.o"
	include "$(BUILD)/libultra/src/PR/aspMain.o"
endseg

beginseg
	name    "ulib"
	flags   OBJECT
	address ADDRESS_ULIB
	MAXADDR(ADDRESS_CIMG)
	include "$(BUILD)/ulib.o"
endseg

beginseg
	name    "cimg"
	flags   OBJECT
	address ADDRESS_CIMG
	MAXADDR(0x80400000)
	include "$(BUILD)/data/cimg.o"
endseg

beginseg
	name    "zimg"
	flags   OBJECT
	address ADDRESS_ZIMG
	MAXADDR(ADDRESS_MEM_START)
	include "$(BUILD)/data/zimg.o"
endseg

beginseg
	name    "timg"
	flags   OBJECT
	address ADDRESS_TIMG
	MAXADDR(ADDRESS_BUFFER)
	include "$(BUILD)/data/timg.o"
endseg

beginseg
	name    "buffer"
	flags   OBJECT
	address ADDRESS_BUFFER
	MAXADDR(ADDRESS_FIFO)
	include "$(BUILD)/src/audio/heap.o"
	include "$(BUILD)/data/buffer.o"
	include "$(BUILD)/src/audio/work.o"
endseg

beginseg
	name    "fifo"
	flags   OBJECT
	address ADDRESS_FIFO
	MAXADDR(ADDRESS_CODE)
	include "$(BUILD)/data/fifo.o"
endseg

beginseg
	name    "Main"
	flags   OBJECT
	address ADDRESS_MAIN
	include "$(BUILD)/data/main.o"
endseg

beginseg
	name    "Gfx"
	flags   OBJECT
	number  SEG_GFX
	include "$(BUILD)/data/gfx.szp.o"
endseg

beginseg
	name    "PlayerGfx"
	flags   OBJECT
	number  SEG_PLAYER_GFX
	include "$(BUILD)/shape/player/gfx.szp.o"
endseg

beginseg
	name    "PlayerShp"
	flags   OBJECT
	address ADDRESS_PLAYER_SHP
	include "$(BUILD)/shape/player/shp.o"
endseg

beginseg
	name    "Shape1AGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1a/gfx.szp.o"
endseg

beginseg
	name    "Shape1AShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1a/shp.o"
endseg

beginseg
	name    "Shape1BGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1b/gfx.szp.o"
endseg

beginseg
	name    "Shape1BShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1b/shp.o"
endseg

beginseg
	name    "Shape1CGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1c/gfx.szp.o"
endseg

beginseg
	name    "Shape1CShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1c/shp.o"
endseg

beginseg
	name    "Shape1DGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1d/gfx.szp.o"
endseg

beginseg
	name    "Shape1DShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1d/shp.o"
endseg

beginseg
	name    "Shape1EGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1e/gfx.szp.o"
endseg

beginseg
	name    "Shape1EShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1e/shp.o"
endseg

beginseg
	name    "Shape1FGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1f/gfx.szp.o"
endseg

beginseg
	name    "Shape1FShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1f/shp.o"
endseg

beginseg
	name    "Shape1GGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1g/gfx.szp.o"
endseg

beginseg
	name    "Shape1GShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1g/shp.o"
endseg

beginseg
	name    "Shape1HGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1h/gfx.szp.o"
endseg

beginseg
	name    "Shape1HShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1h/shp.o"
endseg

beginseg
	name    "Shape1IGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1i/gfx.szp.o"
endseg

beginseg
	name    "Shape1IShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1i/shp.o"
endseg

beginseg
	name    "Shape1JGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1j/gfx.szp.o"
endseg

beginseg
	name    "Shape1JShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1j/shp.o"
endseg

beginseg
	name    "Shape1KGfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1k/gfx.szp.o"
endseg

beginseg
	name    "Shape1KShp"
	flags   OBJECT
	address ADDRESS_SHAPE1_SHP
	include "$(BUILD)/shape/1k/shp.o"
endseg

beginseg
	name    "Shape2AGfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2a/gfx.szp.o"
endseg

beginseg
	name    "Shape2AShp"
	flags   OBJECT
	address ADDRESS_SHAPE2_SHP
	include "$(BUILD)/shape/2a/shp.o"
endseg

beginseg
	name    "Shape2BGfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2b/gfx.szp.o"
endseg

beginseg
	name    "Shape2BShp"
	flags   OBJECT
	address ADDRESS_SHAPE2_SHP
	include "$(BUILD)/shape/2b/shp.o"
endseg

beginseg
	name    "Shape2CGfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2c/gfx.szp.o"
endseg

beginseg
	name    "Shape2CShp"
	flags   OBJECT
	address ADDRESS_SHAPE2_SHP
	include "$(BUILD)/shape/2c/shp.o"
endseg

beginseg
	name    "Shape2DGfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2d/gfx.szp.o"
endseg

beginseg
	name    "Shape2DShp"
	flags   OBJECT
	address ADDRESS_SHAPE2_SHP
	include "$(BUILD)/shape/2d/shp.o"
endseg

beginseg
	name    "Shape2EGfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2e/gfx.szp.o"
endseg

beginseg
	name    "Shape2EShp"
	flags   OBJECT
	address ADDRESS_SHAPE2_SHP
	include "$(BUILD)/shape/2e/shp.o"
endseg

beginseg
	name    "Shape2FGfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2f/gfx.szp.o"
endseg

beginseg
	name    "Shape2FShp"
	flags   OBJECT
	address ADDRESS_SHAPE2_SHP
	include "$(BUILD)/shape/2f/shp.o"
endseg

beginseg
	name    "CommonGfx"
	flags   OBJECT
	number  SEG_SHAPE3_GFX
	include "$(BUILD)/shape/3common/gfx.szp.o"
endseg

beginseg
	name    "CommonShp"
	flags   OBJECT
	address ADDRESS_SHAPE3_SHP
	include "$(BUILD)/shape/3common/shp.o"
endseg

beginseg
	name    "GlobalGfx"
	flags   OBJECT
	number  SEG_GLOBAL_GFX
	include "$(BUILD)/shape/global/gfx.szp.o"
endseg

beginseg
	name    "GlobalShp"
	flags   OBJECT
	address ADDRESS_GLOBAL_SHP
	include "$(BUILD)/shape/global/shp.o"
endseg

beginseg
	name    "Object"
	flags   OBJECT
	address ADDRESS_OBJECT
	include "$(BUILD)/src/obj_a.o"
	include "$(BUILD)/src/obj_player.o"
	include "$(BUILD)/src/obj_b.o"
	include "$(BUILD)/src/obj_c.o"
	include "$(BUILD)/src/obj_camera.o"
endseg

beginseg
	name    "menu"
	flags   OBJECT
	address ADDRESS_MENU
	MAXADDR(ADDRESS_MEM_END-16)
	include "$(BUILD)/src/title.o"
	include "$(BUILD)/src/titlebg.o"
	include "$(BUILD)/src/fileselect.o"
	include "$(BUILD)/src/starselect.o"
	include "$(BUILD)/face.o"
endseg

beginseg
	name    "Title"
	flags   OBJECT
	address ADDRESS_MENU_DATA
	include "$(BUILD)/stage/title/prg.o"
	include "$(BUILD)/stage/title/shp.o"
endseg

beginseg
	name    "TitleLogo"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/title/logo.szp.o"
endseg

beginseg
	name    "TitleDebug"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/title/debug.szp.o"
endseg

beginseg
	name    "TitleBack"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/title.szp.o"
endseg

beginseg
	name    "FaceData"
	flags   OBJECT
	address ADDRESS_FACEDATA
	MAXADDR(ADDRESS_FACEDATA+0x70000)
	include "$(BUILD)/facedata.o"
endseg

beginseg
	name    "Select"
	flags   OBJECT
	address ADDRESS_MENU_DATA
	include "$(BUILD)/stage/select/prg.o"
	include "$(BUILD)/stage/select/shp.o"
endseg

beginseg
	name    "SelectGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/select/gfx.szp.o"
endseg

beginseg
	name    "Game"
	flags   OBJECT
	address ADDRESS_GAME
	include "$(BUILD)/data/game.o"
endseg

beginseg
	name    "BackA"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/a.szp.o"
endseg

beginseg
	name    "BackB"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/b.szp.o"
endseg

beginseg
	name    "BackC"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/c.szp.o"
endseg

beginseg
	name    "BackD"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/d.szp.o"
endseg

beginseg
	name    "BackE"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/e.szp.o"
endseg

beginseg
	name    "BackF"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/f.szp.o"
endseg

beginseg
	name    "BackG"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/g.szp.o"
endseg

beginseg
	name    "BackH"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/h.szp.o"
endseg

beginseg
	name    "BackI"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/i.szp.o"
endseg

beginseg
	name    "BackJ"
	flags   OBJECT
	number  SEG_BACK
	include "$(BUILD)/data/back/j.szp.o"
endseg

beginseg
	name    "TextureA"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/a.szp.o"
endseg

beginseg
	name    "TextureB"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/b.szp.o"
endseg

beginseg
	name    "TextureC"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/c.szp.o"
endseg

beginseg
	name    "TextureD"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/d.szp.o"
endseg

beginseg
	name    "TextureE"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/e.szp.o"
endseg

beginseg
	name    "TextureF"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/f.szp.o"
endseg

beginseg
	name    "TextureG"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/g.szp.o"
endseg

beginseg
	name    "TextureH"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/h.szp.o"
endseg

beginseg
	name    "TextureI"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/i.szp.o"
endseg

beginseg
	name    "TextureJ"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/j.szp.o"
endseg

beginseg
	name    "TextureK"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/k.szp.o"
endseg

beginseg
	name    "TextureL"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/l.szp.o"
endseg

beginseg
	name    "Weather"
	flags   OBJECT
	number  SEG_WEATHER
	include "$(BUILD)/data/weather/gfx.szp.o"
endseg

beginseg
	name    "BBHGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bbh/gfx.szp.o"
endseg

beginseg
	name    "BBH"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bbh/prg.o"
	include "$(BUILD)/stage/bbh/shp.o"
endseg

beginseg
	name    "CCMGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ccm/gfx.szp.o"
endseg

beginseg
	name    "CCM"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ccm/prg.o"
	include "$(BUILD)/stage/ccm/shp.o"
endseg

beginseg
	name    "InsideGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/inside/gfx.szp.o"
endseg

beginseg
	name    "Inside"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/inside/prg.o"
	include "$(BUILD)/stage/inside/shp.o"
endseg

beginseg
	name    "HMCGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/hmc/gfx.szp.o"
endseg

beginseg
	name    "HMC"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/hmc/prg.o"
	include "$(BUILD)/stage/hmc/shp.o"
endseg

beginseg
	name    "SSLGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ssl/gfx.szp.o"
endseg

beginseg
	name    "SSL"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ssl/prg.o"
	include "$(BUILD)/stage/ssl/shp.o"
endseg

beginseg
	name    "BoBGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bob/gfx.szp.o"
endseg

beginseg
	name    "BoB"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bob/prg.o"
	include "$(BUILD)/stage/bob/shp.o"
endseg

beginseg
	name    "SLGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/sl/gfx.szp.o"
endseg

beginseg
	name    "SL"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/sl/prg.o"
	include "$(BUILD)/stage/sl/shp.o"
endseg

beginseg
	name    "WDWGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/wdw/gfx.szp.o"
endseg

beginseg
	name    "WDW"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/wdw/prg.o"
	include "$(BUILD)/stage/wdw/shp.o"
endseg

beginseg
	name    "JRBGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/jrb/gfx.szp.o"
endseg

beginseg
	name    "JRB"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/jrb/prg.o"
	include "$(BUILD)/stage/jrb/shp.o"
endseg

beginseg
	name    "THIGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/thi/gfx.szp.o"
endseg

beginseg
	name    "THI"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/thi/prg.o"
	include "$(BUILD)/stage/thi/shp.o"
endseg

beginseg
	name    "TTCGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ttc/gfx.szp.o"
endseg

beginseg
	name    "TTC"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ttc/prg.o"
	include "$(BUILD)/stage/ttc/shp.o"
endseg

beginseg
	name    "RRGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/rr/gfx.szp.o"
endseg

beginseg
	name    "RR"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/rr/prg.o"
	include "$(BUILD)/stage/rr/shp.o"
endseg

beginseg
	name    "GroundsGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/grounds/gfx.szp.o"
endseg

beginseg
	name    "Grounds"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/grounds/prg.o"
	include "$(BUILD)/stage/grounds/shp.o"
endseg

beginseg
	name    "BitDWGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitdw/gfx.szp.o"
endseg

beginseg
	name    "BitDW"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitdw/prg.o"
	include "$(BUILD)/stage/bitdw/shp.o"
endseg

beginseg
	name    "VCutMGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/vcutm/gfx.szp.o"
endseg

beginseg
	name    "VCutM"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/vcutm/prg.o"
	include "$(BUILD)/stage/vcutm/shp.o"
endseg

beginseg
	name    "BitFSGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitfs/gfx.szp.o"
endseg

beginseg
	name    "BitFS"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitfs/prg.o"
	include "$(BUILD)/stage/bitfs/shp.o"
endseg

beginseg
	name    "SAGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/sa/gfx.szp.o"
endseg

beginseg
	name    "SA"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/sa/prg.o"
	include "$(BUILD)/stage/sa/shp.o"
endseg

beginseg
	name    "BitSGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bits/gfx.szp.o"
endseg

beginseg
	name    "BitS"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bits/prg.o"
	include "$(BUILD)/stage/bits/shp.o"
endseg

beginseg
	name    "LLLGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/lll/gfx.szp.o"
endseg

beginseg
	name    "LLL"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/lll/prg.o"
	include "$(BUILD)/stage/lll/shp.o"
endseg

beginseg
	name    "DDDGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ddd/gfx.szp.o"
endseg

beginseg
	name    "DDD"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ddd/prg.o"
	include "$(BUILD)/stage/ddd/shp.o"
endseg

beginseg
	name    "WFGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/wf/gfx.szp.o"
endseg

beginseg
	name    "WF"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/wf/prg.o"
	include "$(BUILD)/stage/wf/shp.o"
endseg

beginseg
	name    "EndingGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ending/gfx.szp.o"
endseg

beginseg
	name    "Ending"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ending/prg.o"
	include "$(BUILD)/stage/ending/shp.o"
endseg

beginseg
	name    "CourtyardGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/courtyard/gfx.szp.o"
endseg

beginseg
	name    "Courtyard"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/courtyard/prg.o"
	include "$(BUILD)/stage/courtyard/shp.o"
endseg

beginseg
	name    "PSSGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/pss/gfx.szp.o"
endseg

beginseg
	name    "PSS"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/pss/prg.o"
	include "$(BUILD)/stage/pss/shp.o"
endseg

beginseg
	name    "CotMCGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/cotmc/gfx.szp.o"
endseg

beginseg
	name    "CotMC"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/cotmc/prg.o"
	include "$(BUILD)/stage/cotmc/shp.o"
endseg

beginseg
	name    "TotWCGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/totwc/gfx.szp.o"
endseg

beginseg
	name    "TotWC"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/totwc/prg.o"
	include "$(BUILD)/stage/totwc/shp.o"
endseg

beginseg
	name    "BitDWAGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitdwa/gfx.szp.o"
endseg

beginseg
	name    "BitDWA"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitdwa/prg.o"
	include "$(BUILD)/stage/bitdwa/shp.o"
endseg

beginseg
	name    "WMotRGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/wmotr/gfx.szp.o"
endseg

beginseg
	name    "WMotR"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/wmotr/prg.o"
	include "$(BUILD)/stage/wmotr/shp.o"
endseg

beginseg
	name    "BitFSAGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitfsa/gfx.szp.o"
endseg

beginseg
	name    "BitFSA"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitfsa/prg.o"
	include "$(BUILD)/stage/bitfsa/shp.o"
endseg

beginseg
	name    "BitSAGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitsa/gfx.szp.o"
endseg

beginseg
	name    "BitSA"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitsa/prg.o"
	include "$(BUILD)/stage/bitsa/shp.o"
endseg

beginseg
	name    "TTMGfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ttm/gfx.szp.o"
endseg

beginseg
	name    "TTM"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ttm/prg.o"
	include "$(BUILD)/stage/ttm/shp.o"
endseg

beginseg
	name    "Anime"
	flags   OBJECT
	address 0
	include "$(BUILD)/data/anime.o"
endseg

beginseg
	name    "Demo"
	flags   OBJECT
	address 0
	include "$(BUILD)/data/demo.o"
endseg

beginseg
	name    "Audioctl"
	flags   OBJECT
	address 0
	include "$(BUILD)/audio/ctl.o"
endseg

beginseg
	name    "Audiotbl"
	flags   OBJECT
	address 0
	include "$(BUILD)/audio/tbl.o"
endseg

beginseg
	name    "Audioseq"
	flags   OBJECT
	address 0
	include "$(BUILD)/audio/seq.o"
endseg

beginseg
	name    "Audiobnk"
	flags   OBJECT
	address 0
	include "$(BUILD)/audio/bnk.o"
endseg
