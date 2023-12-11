CODE_OBJ := \
	$(BUILD)/src/main.o \
	$(BUILD)/src/graphics.o \
	$(BUILD)/src/audio.o \
	$(BUILD)/src/game.o \
	$(BUILD)/src/collision.o $(BUILD)/src/collision.data.o \
	$(BUILD)/src/player.o $(BUILD)/src/player.data.o \
	$(BUILD)/src/physics.o $(BUILD)/src/physics.data.o \
	$(BUILD)/src/pldemo.o $(BUILD)/src/pldemo.data.o \
	$(BUILD)/src/plhang.o $(BUILD)/src/plhang.data.o \
	$(BUILD)/src/plwait.o $(BUILD)/src/plwait.data.o \
	$(BUILD)/src/plmove.o $(BUILD)/src/plmove.data.o \
	$(BUILD)/src/pljump.o $(BUILD)/src/pljump.data.o \
	$(BUILD)/src/plswim.o $(BUILD)/src/plswim.data.o \
	$(BUILD)/src/plhold.o $(BUILD)/src/plhold.data.o \
	$(BUILD)/src/callback.o \
	$(BUILD)/src/memory.o \
	$(BUILD)/src/save.o \
	$(BUILD)/src/scene.o \
	$(BUILD)/src/draw.o \
	$(BUILD)/src/time.o \
	$(BUILD)/src/slidec.o \
	$(BUILD)/src/camera.o $(BUILD)/src/camera.data.o \
	$(BUILD)/src/course.o \
	$(BUILD)/src/object.o \
	$(BUILD)/src/objlib.o $(BUILD)/src/objlib.data.o \
	$(BUILD)/src/object_a.o $(BUILD)/src/object_a.data.o \
	$(BUILD)/src/ride.o \
	$(BUILD)/src/hitcheck.o \
	$(BUILD)/src/objlist.o \
	$(BUILD)/src/objsound.o \
	$(BUILD)/src/debug.o \
	$(BUILD)/src/wipe.o \
	$(BUILD)/src/shadow.o \
	$(BUILD)/src/back.o \
	$(BUILD)/src/water.o $(BUILD)/src/water.data.o \
	$(BUILD)/src/objshape.o \
	$(BUILD)/src/wave.o $(BUILD)/src/wave.data.o \
	$(BUILD)/src/dprint.o \
	$(BUILD)/src/message.o \
	$(BUILD)/src/weather.o $(BUILD)/src/weather.data.o \
	$(BUILD)/src/lava.o $(BUILD)/src/lava.data.o \
	$(BUILD)/src/tag.o \
	$(BUILD)/src/hud.o \
	$(BUILD)/src/object_b.o $(BUILD)/src/object_b.data.o \
	$(BUILD)/src/object_c.o $(BUILD)/src/object_c.data.o

ULIB_OBJ := \
	$(BUILD)/src/math.o \
	$(BUILD)/src/mathtbl.o \
	$(BUILD)/src/shape.o \
	$(BUILD)/src/shplang.o \
	$(BUILD)/src/prglang.o \
	$(BUILD)/src/bgcheck.o \
	$(BUILD)/src/bgload.o \
	$(BUILD)/src/objlang.o

MENU_OBJ := \
	$(BUILD)/src/title.o \
	$(BUILD)/src/titlebg.o \
	$(BUILD)/src/fileselect.o \
	$(BUILD)/src/starselect.o

AUDIO_OBJ := \
	$(BUILD)/src/audio/driver.o $(BUILD)/src/audio/driver.data.o \
	$(BUILD)/src/audio/memory.o $(BUILD)/src/audio/memory.data.o \
	$(BUILD)/src/audio/system.o \
	$(BUILD)/src/audio/voice.o $(BUILD)/src/audio/voice.data.o \
	$(BUILD)/src/audio/effect.o $(BUILD)/src/audio/effect.data.o \
	$(BUILD)/src/audio/sequence.o $(BUILD)/src/audio/sequence.data.o \
	$(BUILD)/src/audio/game.o $(BUILD)/src/audio/game.data.o \
	$(BUILD)/src/audio/data.o

FACE_OBJ := \
	$(BUILD)/src/face/main.o \
	$(BUILD)/src/face/memory.o $(BUILD)/src/face/memory.data.o \
	$(BUILD)/src/face/sound.o \
	$(BUILD)/src/face/draw.o $(BUILD)/src/face/draw.data.o \
	$(BUILD)/src/face/object.o $(BUILD)/src/face/object.data.o \
	$(BUILD)/src/face/skin.o $(BUILD)/src/face/skin.data.o \
	$(BUILD)/src/face/particle.o $(BUILD)/src/face/particle.data.o \
	$(BUILD)/src/face/dynlist.o $(BUILD)/src/face/dynlist.data.o \
	$(BUILD)/src/face/gadget.o $(BUILD)/src/face/gadget.data.o \
	$(BUILD)/src/face/stdio.o $(BUILD)/src/face/stdio.data.o \
	$(BUILD)/src/face/joint.o $(BUILD)/src/face/joint.data.o \
	$(BUILD)/src/face/net.o $(BUILD)/src/face/net.data.o \
	$(BUILD)/src/face/math.o $(BUILD)/src/face/math.data.o \
	$(BUILD)/src/face/shape.o $(BUILD)/src/face/shape.data.o \
	$(BUILD)/src/face/gfx.o $(BUILD)/src/face/gfx.data.o

FACEDATA_OBJ := \
	$(BUILD)/src/face/data/ico1.o \
	$(BUILD)/src/face/data/spot.o \
	$(BUILD)/src/face/data/mario.o \
	$(BUILD)/src/face/data/mario_anim.o

IDO_C := \
	$(BUILD)/src/main.o \
	$(BUILD)/src/graphics.o \
	$(BUILD)/src/audio.o \
	$(BUILD)/src/game.o \
	$(BUILD)/src/callback.o \
	$(BUILD)/src/memory.o \
	$(BUILD)/src/save.o \
	$(BUILD)/src/scene.o \
	$(BUILD)/src/draw.o \
	$(BUILD)/src/time.o \
	$(BUILD)/src/course.o \
	$(BUILD)/src/object.o \
	$(BUILD)/src/ride.o \
	$(BUILD)/src/hitcheck.o \
	$(BUILD)/src/objlist.o \
	$(BUILD)/src/objsound.o \
	$(BUILD)/src/debug.o \
	$(BUILD)/src/wipe.o \
	$(BUILD)/src/shadow.o \
	$(BUILD)/src/back.o \
	$(BUILD)/src/objshape.o \
	$(BUILD)/src/dprint.o \
	$(BUILD)/src/message.o \
	$(BUILD)/src/tag.o \
	$(BUILD)/src/hud.o \
	$(BUILD)/src/math.o \
	$(BUILD)/src/shape.o \
	$(BUILD)/src/shplang.o \
	$(BUILD)/src/prglang.o \
	$(BUILD)/src/bgcheck.o \
	$(BUILD)/src/bgload.o \
	$(BUILD)/src/objlang.o \
	$(BUILD)/src/title.o \
	$(BUILD)/src/titlebg.o \
	$(BUILD)/src/fileselect.o \
	$(BUILD)/src/starselect.o \
	$(BUILD)/data/buffer.o \
	$(BUILD)/src/audio/heap.o \
	$(BUILD)/src/face/main.o \
	$(BUILD)/src/face/sound.o \
	$(BUILD)/src/face/data/ico1.o \
	$(BUILD)/src/face/data/spot.o \
	$(BUILD)/src/face/data/mario.o \
	$(BUILD)/src/face/data/mario_anim.o

IDO_S := \
	$(BUILD)/src/slidec.o \
	$(BUILD)/src/mathtbl.o

OBJ := \
	$(BUILD)/libultra/src/PR/rspboot.o \
	$(BUILD)/libultra/src/PR/gspFast3D.fifo.o \
	$(BUILD)/libultra/src/PR/aspMain.o \
	$(BUILD)/code.o \
	$(BUILD)/ulib.o \
	$(BUILD)/face.o \
	$(BUILD)/facedata.o

DATA := \
	$(BUILD)/data/cimg.o \
	$(BUILD)/data/zimg.o \
	$(BUILD)/data/timg.o \
	$(BUILD)/data/buffer.o \
	$(BUILD)/data/fifo.o \
	$(BUILD)/src/obj_a.o \
	$(BUILD)/src/obj_player.o \
	$(BUILD)/src/obj_b.o \
	$(BUILD)/src/obj_c.o \
	$(BUILD)/src/obj_camera.o \
	$(BUILD)/data/main.o \
	$(BUILD)/data/game.o \
	$(BUILD)/data/anime.o \
	$(BUILD)/data/demo.o

SZP := \
	$(BUILD)/data/gfx.szp.o \
	$(BUILD)/data/weather/gfx.szp.o

SHAPE_SZP := \
	$(BUILD)/shape/player/gfx.szp.o \
	$(BUILD)/shape/1a/gfx.szp.o \
	$(BUILD)/shape/1b/gfx.szp.o \
	$(BUILD)/shape/1c/gfx.szp.o \
	$(BUILD)/shape/1d/gfx.szp.o \
	$(BUILD)/shape/1e/gfx.szp.o \
	$(BUILD)/shape/1f/gfx.szp.o \
	$(BUILD)/shape/1g/gfx.szp.o \
	$(BUILD)/shape/1h/gfx.szp.o \
	$(BUILD)/shape/1i/gfx.szp.o \
	$(BUILD)/shape/1j/gfx.szp.o \
	$(BUILD)/shape/1k/gfx.szp.o \
	$(BUILD)/shape/2a/gfx.szp.o \
	$(BUILD)/shape/2b/gfx.szp.o \
	$(BUILD)/shape/2c/gfx.szp.o \
	$(BUILD)/shape/2d/gfx.szp.o \
	$(BUILD)/shape/2e/gfx.szp.o \
	$(BUILD)/shape/2f/gfx.szp.o \
	$(BUILD)/shape/3common/gfx.szp.o \
	$(BUILD)/shape/global/gfx.szp.o

SHAPE_DATA := \
	$(BUILD)/shape/player/shp.o \
	$(BUILD)/shape/1a/shp.o \
	$(BUILD)/shape/1b/shp.o \
	$(BUILD)/shape/1c/shp.o \
	$(BUILD)/shape/1d/shp.o \
	$(BUILD)/shape/1e/shp.o \
	$(BUILD)/shape/1f/shp.o \
	$(BUILD)/shape/1g/shp.o \
	$(BUILD)/shape/1h/shp.o \
	$(BUILD)/shape/1i/shp.o \
	$(BUILD)/shape/1j/shp.o \
	$(BUILD)/shape/1k/shp.o \
	$(BUILD)/shape/2a/shp.o \
	$(BUILD)/shape/2b/shp.o \
	$(BUILD)/shape/2c/shp.o \
	$(BUILD)/shape/2d/shp.o \
	$(BUILD)/shape/2e/shp.o \
	$(BUILD)/shape/2f/shp.o \
	$(BUILD)/shape/3common/shp.o \
	$(BUILD)/shape/global/shp.o

BACK_SZP := \
	$(BUILD)/data/back/title.szp.o \
	$(BUILD)/data/back/a.szp.o \
	$(BUILD)/data/back/b.szp.o \
	$(BUILD)/data/back/c.szp.o \
	$(BUILD)/data/back/d.szp.o \
	$(BUILD)/data/back/e.szp.o \
	$(BUILD)/data/back/f.szp.o \
	$(BUILD)/data/back/g.szp.o \
	$(BUILD)/data/back/h.szp.o \
	$(BUILD)/data/back/i.szp.o \
	$(BUILD)/data/back/j.szp.o

TEXTURE_SZP := \
	$(BUILD)/data/texture/a.szp.o \
	$(BUILD)/data/texture/b.szp.o \
	$(BUILD)/data/texture/c.szp.o \
	$(BUILD)/data/texture/d.szp.o \
	$(BUILD)/data/texture/e.szp.o \
	$(BUILD)/data/texture/f.szp.o \
	$(BUILD)/data/texture/g.szp.o \
	$(BUILD)/data/texture/h.szp.o \
	$(BUILD)/data/texture/i.szp.o \
	$(BUILD)/data/texture/j.szp.o \
	$(BUILD)/data/texture/k.szp.o \
	$(BUILD)/data/texture/l.szp.o

STAGE_SZP := \
	$(BUILD)/stage/title/logo.szp.o \
	$(BUILD)/stage/title/debug.szp.o \
	$(BUILD)/stage/select/gfx.szp.o \
	$(BUILD)/stage/bbh/gfx.szp.o \
	$(BUILD)/stage/ccm/gfx.szp.o \
	$(BUILD)/stage/inside/gfx.szp.o \
	$(BUILD)/stage/hmc/gfx.szp.o \
	$(BUILD)/stage/ssl/gfx.szp.o \
	$(BUILD)/stage/bob/gfx.szp.o \
	$(BUILD)/stage/sl/gfx.szp.o \
	$(BUILD)/stage/wdw/gfx.szp.o \
	$(BUILD)/stage/jrb/gfx.szp.o \
	$(BUILD)/stage/thi/gfx.szp.o \
	$(BUILD)/stage/ttc/gfx.szp.o \
	$(BUILD)/stage/rr/gfx.szp.o \
	$(BUILD)/stage/grounds/gfx.szp.o \
	$(BUILD)/stage/bitdw/gfx.szp.o \
	$(BUILD)/stage/vcutm/gfx.szp.o \
	$(BUILD)/stage/bitfs/gfx.szp.o \
	$(BUILD)/stage/sa/gfx.szp.o \
	$(BUILD)/stage/bits/gfx.szp.o \
	$(BUILD)/stage/lll/gfx.szp.o \
	$(BUILD)/stage/ddd/gfx.szp.o \
	$(BUILD)/stage/wf/gfx.szp.o \
	$(BUILD)/stage/ending/gfx.szp.o \
	$(BUILD)/stage/courtyard/gfx.szp.o \
	$(BUILD)/stage/pss/gfx.szp.o \
	$(BUILD)/stage/cotmc/gfx.szp.o \
	$(BUILD)/stage/totwc/gfx.szp.o \
	$(BUILD)/stage/bitdwa/gfx.szp.o \
	$(BUILD)/stage/wmotr/gfx.szp.o \
	$(BUILD)/stage/bitfsa/gfx.szp.o \
	$(BUILD)/stage/bitsa/gfx.szp.o \
	$(BUILD)/stage/ttm/gfx.szp.o

STAGE_DATA := \
	$(BUILD)/stage/title/prg.o $(BUILD)/stage/title/shp.o \
	$(BUILD)/stage/select/prg.o $(BUILD)/stage/select/shp.o \
	$(BUILD)/stage/bbh/prg.o $(BUILD)/stage/bbh/shp.o \
	$(BUILD)/stage/ccm/prg.o $(BUILD)/stage/ccm/shp.o \
	$(BUILD)/stage/inside/prg.o $(BUILD)/stage/inside/shp.o \
	$(BUILD)/stage/hmc/prg.o $(BUILD)/stage/hmc/shp.o \
	$(BUILD)/stage/ssl/prg.o $(BUILD)/stage/ssl/shp.o \
	$(BUILD)/stage/bob/prg.o $(BUILD)/stage/bob/shp.o \
	$(BUILD)/stage/sl/prg.o $(BUILD)/stage/sl/shp.o \
	$(BUILD)/stage/wdw/prg.o $(BUILD)/stage/wdw/shp.o \
	$(BUILD)/stage/jrb/prg.o $(BUILD)/stage/jrb/shp.o \
	$(BUILD)/stage/thi/prg.o $(BUILD)/stage/thi/shp.o \
	$(BUILD)/stage/ttc/prg.o $(BUILD)/stage/ttc/shp.o \
	$(BUILD)/stage/rr/prg.o $(BUILD)/stage/rr/shp.o \
	$(BUILD)/stage/grounds/prg.o $(BUILD)/stage/grounds/shp.o \
	$(BUILD)/stage/bitdw/prg.o $(BUILD)/stage/bitdw/shp.o \
	$(BUILD)/stage/vcutm/prg.o $(BUILD)/stage/vcutm/shp.o \
	$(BUILD)/stage/bitfs/prg.o $(BUILD)/stage/bitfs/shp.o \
	$(BUILD)/stage/sa/prg.o $(BUILD)/stage/sa/shp.o \
	$(BUILD)/stage/bits/prg.o $(BUILD)/stage/bits/shp.o \
	$(BUILD)/stage/lll/prg.o $(BUILD)/stage/lll/shp.o \
	$(BUILD)/stage/ddd/prg.o $(BUILD)/stage/ddd/shp.o \
	$(BUILD)/stage/wf/prg.o $(BUILD)/stage/wf/shp.o \
	$(BUILD)/stage/ending/prg.o $(BUILD)/stage/ending/shp.o \
	$(BUILD)/stage/courtyard/prg.o $(BUILD)/stage/courtyard/shp.o \
	$(BUILD)/stage/pss/prg.o $(BUILD)/stage/pss/shp.o \
	$(BUILD)/stage/cotmc/prg.o $(BUILD)/stage/cotmc/shp.o \
	$(BUILD)/stage/totwc/prg.o $(BUILD)/stage/totwc/shp.o \
	$(BUILD)/stage/bitdwa/prg.o $(BUILD)/stage/bitdwa/shp.o \
	$(BUILD)/stage/wmotr/prg.o $(BUILD)/stage/wmotr/shp.o \
	$(BUILD)/stage/bitfsa/prg.o $(BUILD)/stage/bitfsa/shp.o \
	$(BUILD)/stage/bitsa/prg.o $(BUILD)/stage/bitsa/shp.o \
	$(BUILD)/stage/ttm/prg.o $(BUILD)/stage/ttm/shp.o

AUDIO_DATA := \
	$(BUILD)/src/audio/heap.o \
	$(BUILD)/src/audio/work.o \
	$(BUILD)/audio/ctl.o \
	$(BUILD)/audio/tbl.o \
	$(BUILD)/audio/seq.o \
	$(BUILD)/audio/bnk.o

AUDIO_INS := audio/se.ins audio/music.ins
AUDIO_SEQ := \
	audio/se/se.seq \
	audio/music/starcatch.seq \
	audio/music/title.seq \
	audio/music/field.seq \
	audio/music/castle.seq \
	audio/music/water.seq \
	audio/music/fire.seq \
	audio/music/arena.seq \
	audio/music/snow.seq \
	audio/music/slider.seq \
	audio/music/ghost.seq \
	audio/music/lullaby.seq \
	audio/music/dungeon.seq \
	audio/music/starselect.seq \
	audio/music/special.seq \
	audio/music/metal.seq \
	audio/music/bowsermsg.seq \
	audio/music/bowser.seq \
	audio/music/hiscore.seq \
	audio/music/merrygoround.seq \
	audio/music/fanfare.seq \
	audio/music/starappear.seq \
	audio/music/battle.seq \
	audio/music/arenaclear.seq \
	audio/music/endless.seq \
	audio/music/final.seq \
	audio/music/staff.seq \
	audio/music/solution.seq \
	audio/music/toadmsg.seq \
	audio/music/peachmsg.seq \
	audio/music/intro.seq \
	audio/music/finalclear.seq \
	audio/music/ending.seq \
	audio/music/fileselect.seq \
	audio/music/lakitumsg.seq

LIBULTRA_OBJ :=
ifeq ($(TARGET),E0)
	LIBULTRA_OBJ += $(BUILD)/libultra/src/os/parameters.o
endif
LIBULTRA_OBJ += \
	$(BUILD)/libultra/src/io/vitbl.o \
	$(BUILD)/libultra/src/os/settime.o \
	$(BUILD)/libultra/src/os/maptlb.o \
	$(BUILD)/libultra/src/os/unmaptlball.o \
	$(BUILD)/libultra/src/rmon/sprintf.o \
	$(BUILD)/libultra/src/os/createmesgqueue.o \
	$(BUILD)/libultra/src/os/seteventmesg.o \
	$(BUILD)/libultra/src/io/visetevent.o \
	$(BUILD)/libultra/src/os/createthread.o \
	$(BUILD)/libultra/src/os/recvmesg.o \
	$(BUILD)/libultra/src/io/sptask.o \
	$(BUILD)/libultra/src/io/sptaskyield.o \
	$(BUILD)/libultra/src/os/sendmesg.o \
	$(BUILD)/libultra/src/io/sptaskyielded.o \
	$(BUILD)/libultra/src/os/startthread.o \
	$(BUILD)/libultra/src/os/writebackdcacheall.o \
	$(BUILD)/libultra/src/io/vimgr.o \
	$(BUILD)/libultra/src/io/visetmode.o \
	$(BUILD)/libultra/src/io/viblack.o \
	$(BUILD)/libultra/src/io/visetspecial.o \
	$(BUILD)/libultra/src/io/pimgr.o \
	$(BUILD)/libultra/src/os/setthreadpri.o \
	$(BUILD)/libultra/src/os/initialize.o \
	$(BUILD)/libultra/src/io/viswapbuf.o \
	$(BUILD)/libultra/src/gu/sqrtf.o \
	$(BUILD)/libultra/src/io/contreaddata.o \
	$(BUILD)/libultra/src/io/controller.o \
	$(BUILD)/libultra/src/io/conteepprobe.o \
	$(BUILD)/libultra/src/libc/ll.o \
	$(BUILD)/libultra/src/os/invaldcache.o \
	$(BUILD)/libultra/src/io/pidma.o \
	$(BUILD)/libultra/src/libc/bzero.o \
	$(BUILD)/libultra/src/os/invalicache.o \
	$(BUILD)/libultra/src/io/conteeplongread.o \
	$(BUILD)/libultra/src/io/conteeplongwrite.o \
	$(BUILD)/libultra/src/libc/bcopy.o \
	$(BUILD)/libultra/src/gu/ortho.o \
	$(BUILD)/libultra/src/gu/perspective.o \
	$(BUILD)/libultra/src/os/gettime.o \
	$(BUILD)/libultra/src/libc/llcvt.o \
	$(BUILD)/libultra/src/gu/cosf.o \
	$(BUILD)/libultra/src/gu/sinf.o \
	$(BUILD)/libultra/src/gu/translate.o \
	$(BUILD)/libultra/src/gu/rotate.o \
	$(BUILD)/libultra/src/gu/scale.o \
	$(BUILD)/libultra/src/io/aisetfreq.o \
	$(BUILD)/libultra/src/audio/bnkf.o \
	$(BUILD)/libultra/src/os/writebackdcache.o \
	$(BUILD)/libultra/src/io/aigetlen.o \
	$(BUILD)/libultra/src/io/aisetnextbuf.o \
	$(BUILD)/libultra/src/os/timerintr.o \
	$(BUILD)/libultra/src/rmon/xprintf.o \
	$(BUILD)/libultra/src/libc/string.o \
	$(BUILD)/libultra/src/os/thread.o \
	$(BUILD)/libultra/src/os/interrupt.o \
	$(BUILD)/libultra/src/io/vi.o \
	$(BUILD)/libultra/src/os/exceptasm.o \
	$(BUILD)/libultra/src/gu/libm_vals.o \
	$(BUILD)/libultra/src/os/virtualtophysical.o \
	$(BUILD)/libultra/src/io/spsetstat.o \
	$(BUILD)/libultra/src/io/spsetpc.o \
	$(BUILD)/libultra/src/io/sprawdma.o \
	$(BUILD)/libultra/src/io/sp.o \
	$(BUILD)/libultra/src/io/spgetstat.o \
	$(BUILD)/libultra/src/os/getthreadpri.o \
	$(BUILD)/libultra/src/io/vigetcurrcontext.o \
	$(BUILD)/libultra/src/io/viswapcontext.o \
	$(BUILD)/libultra/src/os/getcount.o \
	$(BUILD)/libultra/src/io/piacs.o \
	$(BUILD)/libultra/src/io/pirawdma.o \
	$(BUILD)/libultra/src/io/devmgr.o \
	$(BUILD)/libultra/src/os/setsr.o \
	$(BUILD)/libultra/src/os/getsr.o \
	$(BUILD)/libultra/src/os/setfpccsr.o \
	$(BUILD)/libultra/src/io/sirawread.o \
	$(BUILD)/libultra/src/io/sirawwrite.o \
	$(BUILD)/libultra/src/os/maptlbrdb.o \
	$(BUILD)/libultra/src/io/pirawread.o
ifeq ($(TARGET),J0)
	LIBULTRA_OBJ += $(BUILD)/libultra/src/os/parameters.o
endif
LIBULTRA_OBJ += \
	$(BUILD)/libultra/src/io/siacs.o \
	$(BUILD)/libultra/src/io/sirawdma.o \
	$(BUILD)/libultra/src/os/settimer.o \
	$(BUILD)/libultra/src/io/conteepwrite.o \
	$(BUILD)/libultra/src/os/jammesg.o \
	$(BUILD)/libultra/src/io/pigetcmdq.o \
	$(BUILD)/libultra/src/io/conteepread.o \
	$(BUILD)/libultra/src/gu/mtxutil.o \
	$(BUILD)/libultra/src/gu/normalize.o \
	$(BUILD)/libultra/src/io/ai.o \
	$(BUILD)/libultra/src/os/setcompare.o \
	$(BUILD)/libultra/src/rmon/xlitob.o \
	$(BUILD)/libultra/src/rmon/xldtob.o \
	$(BUILD)/libultra/src/vimodentsclan1.o \
	$(BUILD)/libultra/src/vimodepallan1.o \
	$(BUILD)/libultra/src/os/kdebugserver.o \
	$(BUILD)/libultra/src/os/syncputchars.o \
	$(BUILD)/libultra/src/os/setintmask.o \
	$(BUILD)/libultra/src/os/destroythread.o \
	$(BUILD)/libultra/src/os/probetlb.o \
	$(BUILD)/libultra/src/io/si.o \
	$(BUILD)/libultra/src/libc/ldiv.o \
	$(BUILD)/libultra/src/os/getcause.o \
	$(BUILD)/libultra/src/os/atomic.o

LIBULTRA_CO3 := \
	$(BUILD)/libultra/src/gu/ortho.o \
	$(BUILD)/libultra/src/gu/perspective.o \
	$(BUILD)/libultra/src/gu/cosf.o \
	$(BUILD)/libultra/src/gu/sinf.o \
	$(BUILD)/libultra/src/gu/translate.o \
	$(BUILD)/libultra/src/gu/rotate.o \
	$(BUILD)/libultra/src/gu/scale.o \
	$(BUILD)/libultra/src/audio/bnkf.o \
	$(BUILD)/libultra/src/libc/string.o \
	$(BUILD)/libultra/src/gu/mtxutil.o \
	$(BUILD)/libultra/src/gu/normalize.o \
	$(BUILD)/libultra/src/libc/ldiv.o

LIBULTRA_CMIPS3 := \
	$(BUILD)/libultra/src/libc/ll.o \
	$(BUILD)/libultra/src/libc/llcvt.o

LIBULTRA_SMIPS3 := \
	$(BUILD)/libultra/src/os/exceptasm.o

################################################################################
# Face

FACE_DEP := \
	src/face/hand.0.rgba16.h \
	src/face/hand.1.rgba16.h \
	src/face/red_star.0.rgba16.h \
	src/face/red_star.1.rgba16.h \
	src/face/red_star.2.rgba16.h \
	src/face/red_star.3.rgba16.h \
	src/face/red_star.4.rgba16.h \
	src/face/red_star.5.rgba16.h \
	src/face/red_star.6.rgba16.h \
	src/face/red_star.7.rgba16.h \
	src/face/silver_star.0.rgba16.h \
	src/face/silver_star.1.rgba16.h \
	src/face/silver_star.2.rgba16.h \
	src/face/silver_star.3.rgba16.h \
	src/face/silver_star.4.rgba16.h \
	src/face/silver_star.5.rgba16.h \
	src/face/silver_star.6.rgba16.h \
	src/face/silver_star.7.rgba16.h \
	src/face/spark.0.rgba16.h \
	src/face/spark.1.rgba16.h \
	src/face/spark.2.rgba16.h \
	src/face/spark.3.rgba16.h \
	src/face/spark.4.rgba16.h \
	src/face/spark.5.rgba16.h \
	src/face/phong.ia8.h

################################################################################
# Player

MARIO_DEP := \
	shape/player/mario/h_waist.h \
	shape/player/mario/h_waist.blue.h \
	shape/player/mario/h_uarmL.h \
	shape/player/mario/h_uarmL.red.h \
	shape/player/mario/h_larmL.h \
	shape/player/mario/h_larmL.red.h \
	shape/player/mario/h_fistL.h \
	shape/player/mario/h_fistL.white.h \
	shape/player/mario/h_uarmR.h \
	shape/player/mario/h_uarmR.red.h \
	shape/player/mario/h_larmR.h \
	shape/player/mario/h_larmR.red.h \
	shape/player/mario/h_fistR.h \
	shape/player/mario/h_fistR.white.h \
	shape/player/mario/h_thighL.h \
	shape/player/mario/h_thighL.blue.h \
	shape/player/mario/h_shinL.h \
	shape/player/mario/h_shinL.blue.h \
	shape/player/mario/h_shoeL.h \
	shape/player/mario/h_shoeL.shoe.h \
	shape/player/mario/h_thighR.h \
	shape/player/mario/h_thighR.blue.h \
	shape/player/mario/h_shinR.h \
	shape/player/mario/h_shinR.blue.h \
	shape/player/mario/h_shoeR.h \
	shape/player/mario/h_shoeR.shoe.h \
	shape/player/mario/h_torso.h \
	shape/player/mario/h_torso.button.h \
	shape/player/mario/h_torso.red.h \
	shape/player/mario/h_torso.blue.h \
	shape/player/mario/h_cap.h \
	shape/player/mario/h_cap.logo.h \
	shape/player/mario/h_cap.eyes.h \
	shape/player/mario/h_cap.sideburn.h \
	shape/player/mario/h_cap.moustache.h \
	shape/player/mario/h_cap.red.h \
	shape/player/mario/h_cap.skin.h \
	shape/player/mario/h_cap.hair.h \
	shape/player/mario/h_hair.h \
	shape/player/mario/h_hair.eyes.h \
	shape/player/mario/h_hair.sideburn.h \
	shape/player/mario/h_hair.moustache.h \
	shape/player/mario/h_hair.skin.h \
	shape/player/mario/h_hair.hair.h \
	shape/player/mario/h_hair.001.h \
	shape/player/mario/h_hair.001.skin.h \
	shape/player/mario/m_waist.h \
	shape/player/mario/m_waist.blue.h \
	shape/player/mario/m_uarmL.h \
	shape/player/mario/m_uarmL.red.h \
	shape/player/mario/m_larmL.h \
	shape/player/mario/m_larmL.red.h \
	shape/player/mario/m_fistL.h \
	shape/player/mario/m_fistL.white.h \
	shape/player/mario/m_uarmR.h \
	shape/player/mario/m_uarmR.red.h \
	shape/player/mario/m_larmR.h \
	shape/player/mario/m_larmR.red.h \
	shape/player/mario/m_fistR.h \
	shape/player/mario/m_fistR.white.h \
	shape/player/mario/m_thighL.h \
	shape/player/mario/m_thighL.blue.h \
	shape/player/mario/m_shinL.h \
	shape/player/mario/m_shinL.blue.h \
	shape/player/mario/m_shoeL.h \
	shape/player/mario/m_shoeL.shoe.h \
	shape/player/mario/m_thighR.h \
	shape/player/mario/m_thighR.blue.h \
	shape/player/mario/m_shinR.h \
	shape/player/mario/m_shinR.blue.h \
	shape/player/mario/m_shoeR.h \
	shape/player/mario/m_shoeR.shoe.h \
	shape/player/mario/m_torso.h \
	shape/player/mario/m_torso.button.h \
	shape/player/mario/m_torso.red.h \
	shape/player/mario/m_torso.blue.h \
	shape/player/mario/l_waist.h \
	shape/player/mario/l_waist.blue.h \
	shape/player/mario/l_uarmL.h \
	shape/player/mario/l_uarmL.red.h \
	shape/player/mario/l_larmL.h \
	shape/player/mario/l_larmL.red.h \
	shape/player/mario/l_fistL.h \
	shape/player/mario/l_fistL.white.h \
	shape/player/mario/l_uarmR.h \
	shape/player/mario/l_uarmR.red.h \
	shape/player/mario/l_larmR.h \
	shape/player/mario/l_larmR.red.h \
	shape/player/mario/l_fistR.h \
	shape/player/mario/l_fistR.white.h \
	shape/player/mario/l_thighL.h \
	shape/player/mario/l_thighL.blue.h \
	shape/player/mario/l_shinL.h \
	shape/player/mario/l_shinL.blue.h \
	shape/player/mario/l_shoeL.h \
	shape/player/mario/l_shoeL.shoe.h \
	shape/player/mario/l_thighR.h \
	shape/player/mario/l_thighR.blue.h \
	shape/player/mario/l_shinR.h \
	shape/player/mario/l_shinR.blue.h \
	shape/player/mario/l_shoeR.h \
	shape/player/mario/l_shoeR.shoe.h \
	shape/player/mario/l_torso.h \
	shape/player/mario/l_torso.button.h \
	shape/player/mario/l_torso.blue.h \
	shape/player/mario/l_torso.red.h \
	shape/player/mario/l_cap.h \
	shape/player/mario/l_cap.logo.h \
	shape/player/mario/l_cap.eyes.h \
	shape/player/mario/l_cap.moustache.h \
	shape/player/mario/l_cap.red.h \
	shape/player/mario/l_cap.skin.h \
	shape/player/mario/l_cap.hair.h \
	shape/player/mario/l_hair.h \
	shape/player/mario/l_hair.eyes.h \
	shape/player/mario/l_hair.moustache.h \
	shape/player/mario/l_hair.skin.h \
	shape/player/mario/l_hair.hair.h \
	shape/player/mario/handL.h \
	shape/player/mario/handL.white.h \
	shape/player/mario/handR.h \
	shape/player/mario/handR.white.h \
	shape/player/mario/capR.h \
	shape/player/mario/capR.logo.h \
	shape/player/mario/capR.white.h \
	shape/player/mario/capR.red.h \
	shape/player/mario/capR.hair.h \
	shape/player/mario/wingsR.h \
	shape/player/mario/wingsR.wing_l.h \
	shape/player/mario/wingsR.wing_r.h \
	shape/player/mario/peaceR.h \
	shape/player/mario/peaceR.white.h \
	shape/player/mario/cap.h \
	shape/player/mario/cap.logo.h \
	shape/player/mario/cap.red.h \
	shape/player/mario/cap.hair.h \
	shape/player/mario/wings.h \
	shape/player/mario/wings.wing_l.h \
	shape/player/mario/wings.wing_r.h \
	shape/player/mario/wing.h \
	shape/player/mario/wing.wing_l.h \
	shape/player/mario/wing.wing_r.h

################################################################################
# Shape1B

BULLY_DEP := \
	shape/1b/bully/horn.h \
	shape/1b/bully/horn.horn.h \
	shape/1b/bully/shoeL.h \
	shape/1b/bully/shoeL.shoe.h \
	shape/1b/bully/shoeR.h \
	shape/1b/bully/shoeR.shoe.h \
	shape/1b/bully/eyes_old.h \
	shape/1b/bully/eyes_old.eye_old.h \
	shape/1b/bully/body_old.h \
	shape/1b/bully/body_old.body_old.h \
	shape/1b/bully/body.h \
	shape/1b/bully/body.body_l.h \
	shape/1b/bully/body.body_r.h \
	shape/1b/bully/body_big.h \
	shape/1b/bully/body_big.body_l.h \
	shape/1b/bully/body_big.body_r.h \
	shape/1b/bully/eyes.h \
	shape/1b/bully/eyes.eye.h

BLARGG_DEP := \
	shape/1b/blargg/upper_jaw.h \
	shape/1b/blargg/upper_jaw.teeth.h \
	shape/1b/blargg/upper_jaw.upper_jaw.h \
	shape/1b/blargg/lower_jaw.h \
	shape/1b/blargg/lower_jaw.teeth.h \
	shape/1b/blargg/lower_jaw.lower_jaw.h \
	shape/1b/blargg/body.h \
	shape/1b/blargg/body.body.h

################################################################################
# Shape2B

SKEETER_DEP := \
	shape/2b/skeeter/body.h \
	shape/2b/skeeter/body.sphere.h \
	shape/2b/skeeter/tail_end.h \
	shape/2b/skeeter/tail_end.sphere.h \
	shape/2b/skeeter/eye.h \
	shape/2b/skeeter/eye.sphere.h \
	shape/2b/skeeter/irisR.h \
	shape/2b/skeeter/irisR.iris.h \
	shape/2b/skeeter/irisL.h \
	shape/2b/skeeter/irisL.iris.h \
	shape/2b/skeeter/foot.h \
	shape/2b/skeeter/foot.foot.h \
	shape/2b/skeeter/footBR_old.h \
	shape/2b/skeeter/footBR_old.shade.h \
	shape/2b/skeeter/llegBR.h \
	shape/2b/skeeter/llegBR.shade.h \
	shape/2b/skeeter/ulegBR.h \
	shape/2b/skeeter/ulegBR.shade.h \
	shape/2b/skeeter/footFR_old.h \
	shape/2b/skeeter/footFR_old.shade.h \
	shape/2b/skeeter/llegFR.h \
	shape/2b/skeeter/llegFR.shade.h \
	shape/2b/skeeter/ulegFR.h \
	shape/2b/skeeter/ulegFR.shade.h \
	shape/2b/skeeter/footFL_old.h \
	shape/2b/skeeter/footFL_old.shade.h \
	shape/2b/skeeter/llegFL.h \
	shape/2b/skeeter/llegFL.shade.h \
	shape/2b/skeeter/ulegFL.h \
	shape/2b/skeeter/ulegFL.shade.h \
	shape/2b/skeeter/eyeR_old.h \
	shape/2b/skeeter/eyeR_old.shade.h \
	shape/2b/skeeter/footBL_old.h \
	shape/2b/skeeter/footBL_old.shade.h \
	shape/2b/skeeter/llegBL.h \
	shape/2b/skeeter/llegBL.shade.h \
	shape/2b/skeeter/ulegBL.h \
	shape/2b/skeeter/ulegBL.shade.h \
	shape/2b/skeeter/eyeL_old.h \
	shape/2b/skeeter/eyeL_old.shade.h \
	shape/2b/skeeter/tail_end_old.h \
	shape/2b/skeeter/tail_end_old.shade.h \
	shape/2b/skeeter/tail.h \
	shape/2b/skeeter/tail.shade.h \
	shape/2b/skeeter/body_old.h \
	shape/2b/skeeter/body_old.shade.h

KELP_DEP := \
	shape/2b/kelp/0.h \
	shape/2b/kelp/0.0.h \
	shape/2b/kelp/1.h \
	shape/2b/kelp/1.1.h \
	shape/2b/kelp/2.h \
	shape/2b/kelp/2.2.h \
	shape/2b/kelp/3.h \
	shape/2b/kelp/3.3.h

WATERMINE_DEP := \
	shape/2b/watermine/mine.h \
	shape/2b/watermine/mine.l.h \
	shape/2b/watermine/mine.r.h \
	shape/2b/watermine/spike.h \
	shape/2b/watermine/spike.spike.h

PIRANHA_DEP := \
	shape/2b/piranha/body.h \
	shape/2b/piranha/body.piranha.h \
	shape/2b/piranha/fin.h \
	shape/2b/piranha/fin.piranha.h \
	shape/2b/piranha/tail.h \
	shape/2b/piranha/tail.piranha.h

BUB_DEP := \
	shape/2b/bub/body.h \
	shape/2b/bub/body.goggles.h \
	shape/2b/bub/body.fin.h \
	shape/2b/bub/body.eyes.h \
	shape/2b/bub/body.scale.h \
	shape/2b/bub/body.mouth.h \
	shape/2b/bub/body.white.h \
	shape/2b/bub/tail.h \
	shape/2b/bub/tail.fin.h \
	shape/2b/bub/finL.h \
	shape/2b/bub/finL.fin.h \
	shape/2b/bub/finR.h \
	shape/2b/bub/finR.fin.h

WATERRING_DEP := \
	shape/2b/waterring/waterring.h \
	shape/2b/waterring/waterring.shade.h

CHEST_DEP := \
	shape/2b/chest/box.h \
	shape/2b/chest/box.keyhole.h \
	shape/2b/chest/box.latch.h \
	shape/2b/chest/box.inside.h \
	shape/2b/chest/box.outside.h \
	shape/2b/chest/lid.h \
	shape/2b/chest/lid.inside.h \
	shape/2b/chest/lid.latch.h \
	shape/2b/chest/lid.outside.h

################################################################################
# Shape2D

LAKITU2_DEP := \
	shape/2d/lakitu2/body.h \
	shape/2d/lakitu2/body.shell.h \
	shape/2d/lakitu2/body.skin.h \
	shape/2d/lakitu2/mouth.h \
	shape/2d/lakitu2/mouth.mouth.h \
	shape/2d/lakitu2/armR.h \
	shape/2d/lakitu2/armR.skin.h \
	shape/2d/lakitu2/armL.h \
	shape/2d/lakitu2/armL.skin.h \
	shape/2d/lakitu2/eyes.h \
	shape/2d/lakitu2/eyes.eyes.h \
	shape/2d/lakitu2/camera.h \
	shape/2d/lakitu2/camera.lens.h \
	shape/2d/lakitu2/camera.camera1.h \
	shape/2d/lakitu2/camera.camera2.h \
	shape/2d/lakitu2/camera.camera3.h \
	shape/2d/lakitu2/rod0.h \
	shape/2d/lakitu2/rod0.rod1.h \
	shape/2d/lakitu2/rod1.h \
	shape/2d/lakitu2/rod1.rod4.h \
	shape/2d/lakitu2/rod2.h \
	shape/2d/lakitu2/rod2.rod4.h

TOAD_DEP := \
	shape/2d/toad/head.h \
	shape/2d/toad/head.face.h \
	shape/2d/toad/head.spot.h \
	shape/2d/toad/head.white.h \
	shape/2d/toad/vest.h \
	shape/2d/toad/vest.vest.h \
	shape/2d/toad/body.h \
	shape/2d/toad/body.white.h \
	shape/2d/toad/body.skin.h \
	shape/2d/toad/armR.h \
	shape/2d/toad/armR.skin.h \
	shape/2d/toad/armL.h \
	shape/2d/toad/armL.skin.h \
	shape/2d/toad/shoeR.h \
	shape/2d/toad/shoeR.shoe.h \
	shape/2d/toad/shoeL.h \
	shape/2d/toad/shoeL.shoe.h

MIPS_DEP := \
	shape/2d/mips/0.h \
	shape/2d/mips/0.face.h \
	shape/2d/mips/0.light1.h \
	shape/2d/mips/0.white.h \
	shape/2d/mips/1.h \
	shape/2d/mips/1.face.h \
	shape/2d/mips/2.h \
	shape/2d/mips/2.face1.h \
	shape/2d/mips/2.face.h \
	shape/2d/mips/3.h \
	shape/2d/mips/3.face1.h \
	shape/2d/mips/3.face2.h \
	shape/2d/mips/3.face.h \
	shape/2d/mips/4.h \
	shape/2d/mips/4.face1.h \
	shape/2d/mips/4.face.h \
	shape/2d/mips/5.h \
	shape/2d/mips/5.face1.h \
	shape/2d/mips/5.face.h \
	shape/2d/mips/6.h \
	shape/2d/mips/6.face1.h \
	shape/2d/mips/6.face.h \
	shape/2d/mips/7.h \
	shape/2d/mips/7.face1.h \
	shape/2d/mips/7.face.h \
	shape/2d/mips/8.h \
	shape/2d/mips/8.face1.h \
	shape/2d/mips/8.face.h \
	shape/2d/mips/9.h \
	shape/2d/mips/9.face1.h \
	shape/2d/mips/9.face.h \
	shape/2d/mips/10.h \
	shape/2d/mips/10.light2.h \
	shape/2d/mips/11.h \
	shape/2d/mips/11.light2.h

BOO2_DEP := \
	shape/2d/boo2/boo.h \
	shape/2d/boo2/boo.mouth.h \
	shape/2d/boo2/boo.eyes.h \
	shape/2d/boo2/boo.shade.h

################################################################################
# Common

BLUECOINSW_DEP := \
	shape/3common/bluecoinsw/bluecoinsw.h \
	shape/3common/bluecoinsw/bluecoinsw.side.h \
	shape/3common/bluecoinsw/bluecoinsw.top.h

AMP_DEP := \
	shape/3common/amp/arc.h \
	shape/3common/amp/arc.arc.h \
	shape/3common/amp/eyes.h \
	shape/3common/amp/eyes.eyes.h \
	shape/3common/amp/mouth.h \
	shape/3common/amp/mouth.mouth.h \
	shape/3common/amp/body.h \
	shape/3common/amp/body.body.h \
	shape/3common/amp/arcA_old.h \
	shape/3common/amp/arcA_old.arc_old.h \
	shape/3common/amp/arcB_old.h \
	shape/3common/amp/arcB_old.arc_old.h \
	shape/3common/amp/arcC_old.h \
	shape/3common/amp/arcC_old.arc_old.h \
	shape/3common/amp/arcD_old.h \
	shape/3common/amp/arcD_old.arc_old.h \
	shape/3common/amp/body_old.h \
	shape/3common/amp/body_old.shade_old.h \
	shape/3common/amp/mouth_old.h \
	shape/3common/amp/mouth_old.shade_old.h \
	shape/3common/amp/anger_old.h \
	shape/3common/amp/anger_old.shade_old.h \
	shape/3common/amp/eyes_old.h \
	shape/3common/amp/eyes_old.shade_old.h

CANNONLID_DEP := \
	shape/3common/cannonlid/cannonlid.h \
	shape/3common/cannonlid/cannonlid.lid.h

CANNON_DEP := \
	shape/3common/cannon/cannon.h \
	shape/3common/cannon/cannon.side.h \
	shape/3common/cannon/cannon.shade.h

CANNONBARREL_DEP := \
	shape/3common/cannonbarrel/cannonbarrel.h \
	shape/3common/cannonbarrel/cannonbarrel.rim.h \
	shape/3common/cannonbarrel/cannonbarrel.shade.h

CHUCKYA_DEP := \
	shape/3common/chuckya/body.h \
	shape/3common/chuckya/body.purple_l.h \
	shape/3common/chuckya/body.purple_r.h \
	shape/3common/chuckya/armL.h \
	shape/3common/chuckya/armL.purple_l.h \
	shape/3common/chuckya/armL.purple_r.h \
	shape/3common/chuckya/armR.h \
	shape/3common/chuckya/armR.purple_l.h \
	shape/3common/chuckya/armR.purple_r.h \
	shape/3common/chuckya/handL.h \
	shape/3common/chuckya/handL.red.h \
	shape/3common/chuckya/handR.h \
	shape/3common/chuckya/handR.red.h \
	shape/3common/chuckya/antenna_end.h \
	shape/3common/chuckya/antenna_end.red.h \
	shape/3common/chuckya/eyes.h \
	shape/3common/chuckya/eyes.eyes.h \
	shape/3common/chuckya/base.h \
	shape/3common/chuckya/base.base.h \
	shape/3common/chuckya/antenna.h \
	shape/3common/chuckya/antenna.antenna.h \
	shape/3common/chuckya/back.h \
	shape/3common/chuckya/back.back.h

PURPLESW_DEP := \
	shape/3common/purplesw/purplesw.h \
	shape/3common/purplesw/purplesw.side.h \
	shape/3common/purplesw/purplesw.top.h

LIFT_DEP := \
	shape/3common/lift/lift.h \
	shape/3common/lift/lift.side.h \
	shape/3common/lift/lift.face.h

HEART_DEP := \
	shape/3common/heart/heart.h \
	shape/3common/heart/heart.heart.h

FLYGUY_DEP := \
	shape/3common/flyguy/footR.h \
	shape/3common/flyguy/footR.foot.h \
	shape/3common/flyguy/footL.h \
	shape/3common/flyguy/footL.foot.h \
	shape/3common/flyguy/shaft.h \
	shape/3common/flyguy/shaft.shaft.h \
	shape/3common/flyguy/propeller.h \
	shape/3common/flyguy/propeller.propeller.h \
	shape/3common/flyguy/body.h \
	shape/3common/flyguy/body.face.h \
	shape/3common/flyguy/body.cloth_black.h \
	shape/3common/flyguy/body.cloth_red.h \
	shape/3common/flyguy/body.black.h

BLOCK_DEP := \
	shape/3common/block/block.h \
	shape/3common/block/block.block.h

ITEMBOX_DEP := \
	shape/3common/itembox/32x64.h \
	shape/3common/itembox/32x64.32x64_face.h \
	shape/3common/itembox/32x64.32x64_side.h \
	shape/3common/itembox/64x32.h \
	shape/3common/itembox/64x32.64x32_face.h \
	shape/3common/itembox/64x32.64x32_side.h

GOOMBA_DEP := \
	shape/3common/goomba/head.h \
	shape/3common/goomba/head.head.h \
	shape/3common/goomba/body.h \
	shape/3common/goomba/body.body.h \
	shape/3common/goomba/footL.h \
	shape/3common/goomba/footL.footL.h \
	shape/3common/goomba/footR.h \
	shape/3common/goomba/footR.footR.h \
	shape/3common/goomba/head_old.h \
	shape/3common/goomba/head_old.head_old.h \
	shape/3common/goomba/body_old.h \
	shape/3common/goomba/body_old.body_old.h

BOBOMB_DEP := \
	shape/3common/bobomb/eyes.h \
	shape/3common/bobomb/eyes.eyes.h \
	shape/3common/bobomb/footR.h \
	shape/3common/bobomb/footR.foot.h \
	shape/3common/bobomb/footL.h \
	shape/3common/bobomb/footL.foot.h \
	shape/3common/bobomb/cap.h \
	shape/3common/bobomb/cap.cap.h

PUSHBLOCK_DEP := \
	shape/3common/pushblock/pushblock.h \
	shape/3common/pushblock/pushblock.pushblock.h

DOTBOX_DEP := \
	shape/3common/dotbox/box.h \
	shape/3common/dotbox/box.box.h \
	shape/3common/dotbox/dot.h \
	shape/3common/dotbox/dot.dot.h \
	shape/3common/dotbox/mark.h \
	shape/3common/dotbox/mark.mark.h

TESTLIFT_DEP := \
	shape/3common/testlift/testlift.h \
	shape/3common/testlift/testlift.shade.h

SHELL_OLD_DEP := \
	shape/3common/shell/shell_old.h \
	shape/3common/shell/shell_old.top.h \
	shape/3common/shell/shell_old.bottom.h \
	shape/3common/shell/shell_old.side.h

SHELL_DEP := \
	shape/3common/shell/shell.h \
	shape/3common/shell/shell.top.h \
	shape/3common/shell/shell.bottom.h \
	shape/3common/shell/shell.front.h \
	shape/3common/shell/shell.white.h

################################################################################
# Global

BUTTERFLY_DEP := \
	shape/global/butterfly/l.h \
	shape/global/butterfly/l.wing.h \
	shape/global/butterfly/r.h \
	shape/global/butterfly/r.wing.h

PIPE_DEP := \
	shape/global/pipe/side.h \
	shape/global/pipe/side.side.h \
	shape/global/pipe/end.h \
	shape/global/pipe/end.top.h \
	shape/global/pipe/end.bottom.h

DOOR_DEP := \
	shape/global/door/ah.h \
	shape/global/door/ah.a_side.h \
	shape/global/door/ah.a_face.h \
	shape/global/door/ahf.h \
	shape/global/door/ahf.knob.h \
	shape/global/door/ahb.h \
	shape/global/door/ahb.knob.h \
	shape/global/door/al.h \
	shape/global/door/al.a_face.h \
	shape/global/door/h.h \
	shape/global/door/h.knob.h \
	shape/global/door/h.b_side.h \
	shape/global/door/h.b_face.h \
	shape/global/door/l.h \
	shape/global/door/l.b_face.h \
	shape/global/door/l.knob.h

DOORKEY_DEP := \
	shape/global/doorkey/key.h \
	shape/global/doorkey/key.key.h

FISH_DEP := \
	shape/global/fish/body.h \
	shape/global/fish/body.fish.h \
	shape/global/fish/tail.h \
	shape/global/fish/tail.fish.h

CAP_DEP := \
	shape/global/cap/cap.h \
	shape/global/cap/cap.logo.h \
	shape/global/cap/cap.red.h \
	shape/global/cap/cap.hair.h \
	shape/global/cap/wing.h \
	shape/global/cap/wing.wing_l.h \
	shape/global/cap/wing.wing_r.h

POWERSTAR_DEP := \
	shape/global/powerstar/star.h \
	shape/global/powerstar/star.star.h \
	shape/global/powerstar/eyes.h \
	shape/global/powerstar/eyes.eye.h

SHADESTAR_DEP := \
	shape/global/shadestar/star.h \
	shape/global/shadestar/star.star.h

SIGNPOST_DEP := \
	shape/global/signpost/post.h \
	shape/global/signpost/post.wood.h \
	shape/global/signpost/sign.h \
	shape/global/signpost/sign.wood.h \
	shape/global/signpost/sign.face.h

TREE_DEP := \
	shape/global/tree/a.h \
	shape/global/tree/a.a_l.h \
	shape/global/tree/a.a_r.h \
	shape/global/tree/b.h \
	shape/global/tree/b.b.h \
	shape/global/tree/c.h \
	shape/global/tree/c.c.h \
	shape/global/tree/d.h \
	shape/global/tree/d.b.h \
	shape/global/tree/e.h \
	shape/global/tree/e.e.h

################################################################################
# Title

LOGO_DEP := \
	stage/title/logo.h \
	stage/title/logo.marble.h \
	stage/title/logo.wood.h \
	stage/title/logo.shade.h \
	stage/title/symbol.h \
	stage/title/symbol.copyright.h \
	stage/title/symbol.trademark.h

DEBUG_DEP := \
	stage/title/super_s.h \
	stage/title/super_s.super_s.h \
	stage/title/super_u.h \
	stage/title/super_u.super_u.h \
	stage/title/super_p.h \
	stage/title/super_p.super_p.h \
	stage/title/super_e.h \
	stage/title/super_e.super_e.h \
	stage/title/super_r.h \
	stage/title/super_r.super_r.h \
	stage/title/mario_m.h \
	stage/title/mario_m.mario_m.h \
	stage/title/mario_a.h \
	stage/title/mario_a.mario_a.h \
	stage/title/mario_r.h \
	stage/title/mario_r.mario_r.h \
	stage/title/mario_i.h \
	stage/title/mario_i.mario_i.h \
	stage/title/mario_o.h \
	stage/title/mario_o.mario_o.h

################################################################################
# Select

FILE_DEP := \
	stage/select/file/file.h \
	stage/select/file/file.edge.h \
	stage/select/file/file.face.h

TILE_DEP := \
	stage/select/tile/tile.h \
	stage/select/tile/tile.tile.h

################################################################################
# BoB

BATTLEFIELD_DEP := \
	stage/bob/battlefield/smooth.h \
	stage/bob/battlefield/smooth.c11.h \
	stage/bob/battlefield/smooth.c18.h \
	stage/bob/battlefield/smooth.c12.h \
	stage/bob/battlefield/flat.h \
	stage/bob/battlefield/flat.c7.h \
	stage/bob/battlefield/flat.c4.h \
	stage/bob/battlefield/flat.c3.h \
	stage/bob/battlefield/flat.c10.h \
	stage/bob/battlefield/flat.c9.h \
	stage/bob/battlefield/flat.c6.h \
	stage/bob/battlefield/flat.2.h \
	stage/bob/battlefield/flat.3.h \
	stage/bob/battlefield/flat.1.h \
	stage/bob/battlefield/flat.c12.h \
	stage/bob/battlefield/xlu_decal.h \
	stage/bob/battlefield/xlu_decal.c21.h \
	stage/bob/battlefield/tex_edge.h \
	stage/bob/battlefield/tex_edge.c16.h \
	stage/bob/battlefield/tex_edge.0.h \
	stage/bob/battlefield/shade.h \
	stage/bob/battlefield/shade.c17.h \
	stage/bob/battlefield/shade.c17_shade.h \
	stage/bob/battlefield/shade.c11.h \
	stage/bob/battlefield/shade.c18.h \
	stage/bob/battlefield/shade.4.h \
	stage/bob/battlefield/shade.c19.h \
	stage/bob/battlefield/shade.c12.h \
	stage/bob/battlefield/cave.h \
	stage/bob/battlefield/cave.c17_cave.h

BOB_54_DEP := \
	stage/bob/54/54.h \
	stage/bob/54/54.c16.h

BOB_55_DEP := \
	stage/bob/55/55.h \
	stage/bob/55/55.c12.h

BOB_56_DEP := \
	stage/bob/56/56.h \
	stage/bob/56/56.c16.h

################################################################################

GFX_DEP := \
	data/gfx/glbfont/0.rgba16.h \
	data/gfx/glbfont/1.rgba16.h \
	data/gfx/glbfont/2.rgba16.h \
	data/gfx/glbfont/3.rgba16.h \
	data/gfx/glbfont/4.rgba16.h \
	data/gfx/glbfont/5.rgba16.h \
	data/gfx/glbfont/6.rgba16.h \
	data/gfx/glbfont/7.rgba16.h \
	data/gfx/glbfont/8.rgba16.h \
	data/gfx/glbfont/9.rgba16.h \
	data/gfx/glbfont/a.rgba16.h \
	data/gfx/glbfont/b.rgba16.h \
	data/gfx/glbfont/c.rgba16.h \
	data/gfx/glbfont/d.rgba16.h \
	data/gfx/glbfont/e.rgba16.h \
	data/gfx/glbfont/f.rgba16.h \
	data/gfx/glbfont/g.rgba16.h \
	data/gfx/glbfont/h.rgba16.h \
	data/gfx/glbfont/i.rgba16.h \
	data/gfx/glbfont/k.rgba16.h \
	data/gfx/glbfont/l.rgba16.h \
	data/gfx/glbfont/m.rgba16.h \
	data/gfx/glbfont/n.rgba16.h \
	data/gfx/glbfont/o.rgba16.h \
	data/gfx/glbfont/p.rgba16.h \
	data/gfx/glbfont/r.rgba16.h \
	data/gfx/glbfont/s.rgba16.h \
	data/gfx/glbfont/t.rgba16.h \
	data/gfx/glbfont/u.rgba16.h \
	data/gfx/glbfont/w.rgba16.h \
	data/gfx/glbfont/y.rgba16.h \
	data/gfx/glbfont/squote.rgba16.h \
	data/gfx/glbfont/dquote.rgba16.h \
	data/gfx/glbfont/multiply.rgba16.h \
	data/gfx/glbfont/coin.rgba16.h \
	data/gfx/glbfont/mario.rgba16.h \
	data/gfx/glbfont/star.rgba16.h \
	data/gfx/staff/3.rgba16.h \
	data/gfx/staff/4.rgba16.h \
	data/gfx/staff/6.rgba16.h \
	data/gfx/staff/a.rgba16.h \
	data/gfx/staff/b.rgba16.h \
	data/gfx/staff/c.rgba16.h \
	data/gfx/staff/d.rgba16.h \
	data/gfx/staff/e.rgba16.h \
	data/gfx/staff/f.rgba16.h \
	data/gfx/staff/g.rgba16.h \
	data/gfx/staff/h.rgba16.h \
	data/gfx/staff/i.rgba16.h \
	data/gfx/staff/j.rgba16.h \
	data/gfx/staff/k.rgba16.h \
	data/gfx/staff/l.rgba16.h \
	data/gfx/staff/m.rgba16.h \
	data/gfx/staff/n.rgba16.h \
	data/gfx/staff/o.rgba16.h \
	data/gfx/staff/p.rgba16.h \
	data/gfx/staff/q.rgba16.h \
	data/gfx/staff/r.rgba16.h \
	data/gfx/staff/s.rgba16.h \
	data/gfx/staff/t.rgba16.h \
	data/gfx/staff/u.rgba16.h \
	data/gfx/staff/v.rgba16.h \
	data/gfx/staff/w.rgba16.h \
	data/gfx/staff/x.rgba16.h \
	data/gfx/staff/y.rgba16.h \
	data/gfx/staff/z.rgba16.h \
	data/gfx/staff/period.rgba16.h \
	data/gfx/lgfont/0.ia4.h \
	data/gfx/lgfont/1.ia4.h \
	data/gfx/lgfont/2.ia4.h \
	data/gfx/lgfont/3.ia4.h \
	data/gfx/lgfont/4.ia4.h \
	data/gfx/lgfont/5.ia4.h \
	data/gfx/lgfont/6.ia4.h \
	data/gfx/lgfont/7.ia4.h \
	data/gfx/lgfont/8.ia4.h \
	data/gfx/lgfont/9.ia4.h \
	data/gfx/lgfont/u_a.ia4.h \
	data/gfx/lgfont/u_b.ia4.h \
	data/gfx/lgfont/u_c.ia4.h \
	data/gfx/lgfont/u_d.ia4.h \
	data/gfx/lgfont/u_e.ia4.h \
	data/gfx/lgfont/u_f.ia4.h \
	data/gfx/lgfont/u_g.ia4.h \
	data/gfx/lgfont/u_h.ia4.h \
	data/gfx/lgfont/u_i.ia4.h \
	data/gfx/lgfont/u_j.ia4.h \
	data/gfx/lgfont/u_k.ia4.h \
	data/gfx/lgfont/u_l.ia4.h \
	data/gfx/lgfont/u_m.ia4.h \
	data/gfx/lgfont/u_n.ia4.h \
	data/gfx/lgfont/u_o.ia4.h \
	data/gfx/lgfont/u_p.ia4.h \
	data/gfx/lgfont/u_q.ia4.h \
	data/gfx/lgfont/u_r.ia4.h \
	data/gfx/lgfont/u_s.ia4.h \
	data/gfx/lgfont/u_t.ia4.h \
	data/gfx/lgfont/u_u.ia4.h \
	data/gfx/lgfont/u_v.ia4.h \
	data/gfx/lgfont/u_w.ia4.h \
	data/gfx/lgfont/u_x.ia4.h \
	data/gfx/lgfont/u_y.ia4.h \
	data/gfx/lgfont/u_z.ia4.h \
	data/gfx/lgfont/l_a.ia4.h \
	data/gfx/lgfont/l_b.ia4.h \
	data/gfx/lgfont/l_c.ia4.h \
	data/gfx/lgfont/l_d.ia4.h \
	data/gfx/lgfont/l_e.ia4.h \
	data/gfx/lgfont/l_f.ia4.h \
	data/gfx/lgfont/l_g.ia4.h \
	data/gfx/lgfont/l_h.ia4.h \
	data/gfx/lgfont/l_i.ia4.h \
	data/gfx/lgfont/l_j.ia4.h \
	data/gfx/lgfont/l_k.ia4.h \
	data/gfx/lgfont/l_l.ia4.h \
	data/gfx/lgfont/l_m.ia4.h \
	data/gfx/lgfont/l_n.ia4.h \
	data/gfx/lgfont/l_o.ia4.h \
	data/gfx/lgfont/l_p.ia4.h \
	data/gfx/lgfont/l_q.ia4.h \
	data/gfx/lgfont/l_r.ia4.h \
	data/gfx/lgfont/l_s.ia4.h \
	data/gfx/lgfont/l_t.ia4.h \
	data/gfx/lgfont/l_u.ia4.h \
	data/gfx/lgfont/l_v.ia4.h \
	data/gfx/lgfont/l_w.ia4.h \
	data/gfx/lgfont/l_x.ia4.h \
	data/gfx/lgfont/l_y.ia4.h \
	data/gfx/lgfont/l_z.ia4.h \
	data/gfx/lgfont/arrow.ia4.h \
	data/gfx/lgfont/exclaim.ia4.h \
	data/gfx/lgfont/coin.ia4.h \
	data/gfx/lgfont/multiply.ia4.h \
	data/gfx/lgfont/paren_l.ia4.h \
	data/gfx/lgfont/paren_rl.ia4.h \
	data/gfx/lgfont/paren_r.ia4.h \
	data/gfx/lgfont/tilde.ia4.h \
	data/gfx/lgfont/period.ia4.h \
	data/gfx/lgfont/percent.ia4.h \
	data/gfx/lgfont/bullet.ia4.h \
	data/gfx/lgfont/comma.ia4.h \
	data/gfx/lgfont/apostrophe.ia4.h \
	data/gfx/lgfont/question.ia4.h \
	data/gfx/lgfont/star.ia4.h \
	data/gfx/lgfont/star_outline.ia4.h \
	data/gfx/lgfont/quote_l.ia4.h \
	data/gfx/lgfont/quote_r.ia4.h \
	data/gfx/lgfont/colon.ia4.h \
	data/gfx/lgfont/hyphen.ia4.h \
	data/gfx/lgfont/ampersand.ia4.h \
	data/gfx/lgfont/button_a.ia4.h \
	data/gfx/lgfont/button_b.ia4.h \
	data/gfx/lgfont/button_c.ia4.h \
	data/gfx/lgfont/button_z.ia4.h \
	data/gfx/lgfont/button_r.ia4.h \
	data/gfx/lgfont/button_cu.ia4.h \
	data/gfx/lgfont/button_cd.ia4.h \
	data/gfx/lgfont/button_cl.ia4.h \
	data/gfx/lgfont/button_cr.ia4.h \
	data/gfx/camera/camera.rgba16.h \
	data/gfx/camera/lakitu.rgba16.h \
	data/gfx/camera/cross.rgba16.h \
	data/gfx/camera/up.rgba16.h \
	data/gfx/camera/down.rgba16.h \
	data/gfx/select.ja_jp.h \
	data/gfx/message.ja_jp.h data/gfx/message.en_us.h \
	data/gfx/course.ja_jp.h data/gfx/course.en_us.h \
	data/gfx/level.ja_jp.h data/gfx/level.en_us.h \
	data/gfx/shadow/circle.ia8.h \
	data/gfx/shadow/square.ia8.h \
	data/gfx/wipe/star.ia8.h \
	data/gfx/wipe/circle.ia8.h \
	data/gfx/wipe/mario.ia8.h \
	data/gfx/wipe/bowser.ia8.h \
	data/gfx/water/0.rgba16.h \
	data/gfx/water/1.rgba16.h \
	data/gfx/water/2.rgba16.h \
	data/gfx/water/mist.ia16.h \
	data/gfx/water/lava.rgba16.h \
	data/gfx/minimap/arrow.ia8.h

PLAYER_DEP := \
	shape/player/mario/metal.rgba16.h \
	shape/player/mario/button.rgba16.h \
	shape/player/mario/logo.rgba16.h \
	shape/player/mario/sideburn.rgba16.h \
	shape/player/mario/moustache.rgba16.h \
	shape/player/mario/eyes_open.rgba16.h \
	shape/player/mario/eyes_half.rgba16.h \
	shape/player/mario/eyes_closed.rgba16.h \
	shape/player/mario/eyes_left.rgba16.h \
	shape/player/mario/eyes_right.rgba16.h \
	shape/player/mario/eyes_up.rgba16.h \
	shape/player/mario/eyes_down.rgba16.h \
	shape/player/mario/eyes_dead.rgba16.h \
	shape/player/mario/wing_l.rgba16.h \
	shape/player/mario/wing_r.rgba16.h \
	shape/player/mario/metal_wing_l.rgba16.h \
	shape/player/mario/metal_wing_r.rgba16.h \
	$(MARIO_DEP) \
	shape/player/bubble/a.rgba16.h \
	shape/player/bubble/b.rgba16.h \
	shape/player/dust/0.ia16.h \
	shape/player/dust/1.ia16.h \
	shape/player/dust/2.ia16.h \
	shape/player/dust/3.ia16.h \
	shape/player/dust/4.ia16.h \
	shape/player/dust/5.ia16.h \
	shape/player/dust/6.ia16.h \
	shape/player/smoke/smoke.ia16.h \
	shape/player/wave/0.ia16.h \
	shape/player/wave/1.ia16.h \
	shape/player/wave/2.ia16.h \
	shape/player/wave/3.ia16.h \
	shape/player/wave/4.ia16.h \
	shape/player/wave/5.ia16.h \
	shape/player/ripple/0.ia16.h \
	shape/player/ripple/1.ia16.h \
	shape/player/ripple/2.ia16.h \
	shape/player/ripple/3.ia16.h \
	shape/player/sparkle/0.rgba16.h \
	shape/player/sparkle/1.rgba16.h \
	shape/player/sparkle/2.rgba16.h \
	shape/player/sparkle/3.rgba16.h \
	shape/player/sparkle/4.rgba16.h \
	shape/player/sparkle/5.rgba16.h \
	shape/player/splash/0.rgba16.h \
	shape/player/splash/1.rgba16.h \
	shape/player/splash/2.rgba16.h \
	shape/player/splash/3.rgba16.h \
	shape/player/splash/4.rgba16.h \
	shape/player/splash/5.rgba16.h \
	shape/player/splash/6.rgba16.h \
	shape/player/splash/7.rgba16.h \
	shape/player/droplet/droplet.rgba16.h \
	shape/player/glow/0.ia16.h \
	shape/player/glow/1.ia16.h \
	shape/player/glow/2.ia16.h \
	shape/player/glow/3.ia16.h \
	shape/player/glow/4.ia16.h

SHAPE_1A_DEP :=

SHAPE_1B_DEP := \
	shape/1b/bully/horn.rgba16.h \
	shape/1b/bully/body_l.rgba16.h \
	shape/1b/bully/body_r.rgba16.h \
	shape/1b/bully/eye.rgba16.h \
	$(BULLY_DEP) \
	$(BLARGG_DEP)

SHAPE_1C_DEP :=
SHAPE_1D_DEP :=
SHAPE_1E_DEP :=
SHAPE_1F_DEP :=
SHAPE_1G_DEP :=
SHAPE_1H_DEP :=
SHAPE_1I_DEP :=
SHAPE_1J_DEP :=
SHAPE_1K_DEP :=

SHAPE_2A_DEP :=

SHAPE_2B_DEP := \
	shape/2b/skeeter/sphere.rgba16.h \
	shape/2b/skeeter/iris.rgba16.h \
	$(SKEETER_DEP) \
	shape/2b/kelp/0.rgba16.h \
	shape/2b/kelp/1.rgba16.h \
	shape/2b/kelp/2.rgba16.h \
	shape/2b/kelp/3.rgba16.h \
	$(KELP_DEP) \
	shape/2b/watermine/l.rgba16.h \
	shape/2b/watermine/r.rgba16.h \
	shape/2b/watermine/spike.rgba16.h \
	$(WATERMINE_DEP) \
	shape/2b/piranha/piranha.rgba16.h \
	$(PIRANHA_DEP) \
	shape/2b/bub/goggles.rgba16.h \
	shape/2b/bub/fin.rgba16.h \
	shape/2b/bub/eyes.rgba16.h \
	shape/2b/bub/scale.rgba16.h \
	$(BUB_DEP) \
	shape/2b/waterring/waterring.rgba16.h \
	$(WATERRING_DEP) \
	shape/2b/chest/keyhole.rgba16.h \
	shape/2b/chest/inside.rgba16.h \
	shape/2b/chest/latch.rgba16.h \
	shape/2b/chest/outside.rgba16.h \
	$(CHEST_DEP)

SHAPE_2C_DEP :=

SHAPE_2D_DEP := \
	shape/2d/lakitu2/unused.rgba16.h \
	shape/2d/lakitu2/eyes_open.rgba16.h \
	shape/2d/lakitu2/eyes_closed.rgba16.h \
	shape/2d/lakitu2/shell.rgba16.h \
	shape/2d/lakitu2/mouth.rgba16.h \
	shape/2d/lakitu2/lens.rgba16.h \
	$(LAKITU2_DEP) \
	shape/2d/toad/face.rgba16.h \
	shape/2d/toad/spot.rgba16.h \
	$(TOAD_DEP) \
	shape/2d/mips/face.rgba16.h \
	$(MIPS_DEP) \
	shape/2d/boo2/eyes.rgba16.h \
	shape/2d/boo2/mouth.rgba16.h \
	$(BOO2_DEP)

SHAPE_2E_DEP :=
SHAPE_2F_DEP :=

COMMON_DEP := \
	shape/3common/bluecoinsw/side.rgba16.h \
	shape/3common/bluecoinsw/top.rgba16.h \
	$(BLUECOINSW_DEP) \
	shape/3common/bluecoinsw/map.h \
	shape/3common/amp/arc.rgba16.h \
	shape/3common/amp/eyes.rgba16.h \
	shape/3common/amp/body.rgba16.h \
	shape/3common/amp/mouth.rgba16.h \
	$(AMP_DEP) \
	shape/3common/cannonlid/lid.rgba16.h \
	$(CANNONLID_DEP) \
	shape/3common/cannonlid/map.h \
	shape/3common/cannon/side.rgba16.h \
	$(CANNON_DEP) \
	shape/3common/cannonbarrel/rim.rgba16.h \
	$(CANNONBARREL_DEP) \
	shape/3common/chuckya/eyes.rgba16.h \
	shape/3common/chuckya/purple.rgba16.h \
	shape/3common/chuckya/red.rgba16.h \
	shape/3common/chuckya/purple_l.rgba16.h \
	shape/3common/chuckya/purple_r.rgba16.h \
	$(CHUCKYA_DEP) \
	shape/3common/purplesw/side.rgba16.h \
	shape/3common/purplesw/top.rgba16.h \
	$(PURPLESW_DEP) \
	shape/3common/purplesw/map.h \
	shape/3common/lift/side.rgba16.h \
	shape/3common/lift/face.rgba16.h \
	$(LIFT_DEP) \
	shape/3common/lift/map.h \
	shape/3common/heart/heart.rgba16.h \
	$(HEART_DEP) \
	shape/3common/flyguy/cloth.rgba16.h \
	shape/3common/flyguy/face.rgba16.h \
	shape/3common/flyguy/propeller.ia16.h \
	$(FLYGUY_DEP) \
	shape/3common/block/0.rgba16.h \
	shape/3common/block/1.rgba16.h \
	$(BLOCK_DEP) \
	shape/3common/block/map.h \
	shape/3common/itembox/face_b.rgba16.h \
	shape/3common/itembox/side_b.rgba16.h \
	shape/3common/itembox/face_g.rgba16.h \
	shape/3common/itembox/side_g.rgba16.h \
	shape/3common/itembox/face_r.rgba16.h \
	shape/3common/itembox/side_r.rgba16.h \
	shape/3common/itembox/face_y.rgba16.h \
	shape/3common/itembox/side_y.rgba16.h \
	$(ITEMBOX_DEP) \
	shape/3common/goomba/body.rgba16.h \
	shape/3common/goomba/head_open.rgba16.h \
	shape/3common/goomba/head_closed.rgba16.h \
	$(GOOMBA_DEP) \
	shape/3common/bobomb/black_l.rgba16.h \
	shape/3common/bobomb/black_r.rgba16.h \
	shape/3common/bobomb/red_l.rgba16.h \
	shape/3common/bobomb/red_r.rgba16.h \
	shape/3common/bobomb/eyes_open.rgba16.h \
	shape/3common/bobomb/eyes_closed.rgba16.h \
	$(BOBOMB_DEP) \
	shape/3common/pushblock/pushblock.rgba16.h \
	$(PUSHBLOCK_DEP) \
	shape/3common/pushblock/map.h \
	shape/3common/dotbox/dot.rgba16.h \
	shape/3common/dotbox/mark.rgba16.h \
	$(DOTBOX_DEP) \
	shape/3common/dotbox/map.h \
	$(TESTLIFT_DEP) \
	shape/3common/testlift/map.h \
	$(SHELL_OLD_DEP) \
	shape/3common/shell/bottom.rgba16.h \
	shape/3common/shell/top.rgba16.h \
	$(SHELL_DEP)

GLOBAL_DEP := \
	shape/global/puff/puff.ia16.h \
	shape/global/explosion/0.rgba16.h \
	shape/global/explosion/1.rgba16.h \
	shape/global/explosion/2.rgba16.h \
	shape/global/explosion/3.rgba16.h \
	shape/global/explosion/4.rgba16.h \
	shape/global/explosion/5.rgba16.h \
	shape/global/explosion/6.rgba16.h \
	shape/global/butterfly/wing.rgba16.h \
	$(BUTTERFLY_DEP) \
	shape/global/coin/0.ia16.h \
	shape/global/coin/1.ia16.h \
	shape/global/coin/2.ia16.h \
	shape/global/coin/3.ia16.h \
	shape/global/pipe/side.rgba16.h \
	shape/global/pipe/top.rgba16.h \
	$(PIPE_DEP) \
	shape/global/pipe/map.h \
	shape/global/door/a_face.rgba16.h \
	shape/global/door/a_side.rgba16.h \
	shape/global/door/b_face.rgba16.h \
	shape/global/door/b_side.rgba16.h \
	shape/global/door/d_face.rgba16.h \
	shape/global/door/d_side.rgba16.h \
	shape/global/door/e_face.rgba16.h \
	shape/global/door/e_side.rgba16.h \
	shape/global/door/f_face.rgba16.h \
	shape/global/door/f_side.rgba16.h \
	shape/global/door/star.rgba16.h \
	shape/global/door/star1.rgba16.h \
	shape/global/door/star3.rgba16.h \
	shape/global/door/keyhole.rgba16.h \
	$(DOOR_DEP) \
	$(DOORKEY_DEP) \
	shape/global/flame/0.ia16.h \
	shape/global/flame/1.ia16.h \
	shape/global/flame/2.ia16.h \
	shape/global/flame/3.ia16.h \
	shape/global/flame/4.ia16.h \
	shape/global/flame/5.ia16.h \
	shape/global/flame/6.ia16.h \
	shape/global/flame/7.ia16.h \
	shape/global/fish/fish.rgba16.h \
	$(FISH_DEP) \
	shape/global/stone/stone.rgba16.h \
	shape/global/leaf/leaf.rgba16.h \
	shape/global/map/door.h \
	shape/global/map/13002018.h \
	shape/global/cap/metal.rgba16.h \
	shape/global/cap/logo.rgba16.h \
	shape/global/cap/wing_l.rgba16.h \
	shape/global/cap/wing_r.rgba16.h \
	shape/global/cap/metal_wing_l.rgba16.h \
	shape/global/cap/metal_wing_r.rgba16.h \
	$(CAP_DEP) \
	shape/global/meter/0_l.rgba16.h \
	shape/global/meter/0_r.rgba16.h \
	shape/global/meter/8.rgba16.h \
	shape/global/meter/7.rgba16.h \
	shape/global/meter/6.rgba16.h \
	shape/global/meter/5.rgba16.h \
	shape/global/meter/4.rgba16.h \
	shape/global/meter/3.rgba16.h \
	shape/global/meter/2.rgba16.h \
	shape/global/meter/1.rgba16.h \
	shape/global/1up/1up.rgba16.h \
	shape/global/powerstar/star.rgba16.h \
	shape/global/powerstar/eye.rgba16.h \
	$(POWERSTAR_DEP) \
	shape/global/sand/sand.rgba16.h \
	shape/global/shard/cork.rgba16.h \
	$(SHADESTAR_DEP) \
	shape/global/snow/snow.rgba16.h \
	shape/global/signpost/wood.rgba16.h \
	shape/global/signpost/face.rgba16.h \
	$(SIGNPOST_DEP) \
	shape/global/signpost/map.h \
	shape/global/tree/a_l.rgba16.h \
	shape/global/tree/a_r.rgba16.h \
	shape/global/tree/b.rgba16.h \
	shape/global/tree/c.rgba16.h \
	shape/global/tree/e.rgba16.h \
	$(TREE_DEP)

TITLE_LOGO_DEP := \
	stage/title/wood.rgba16.h \
	stage/title/marble.rgba16.h \
	stage/title/copyright.rgba16.h \
	stage/title/trademark.rgba16.h \
	$(LOGO_DEP)

TITLE_DEBUG_DEP := \
	$(DEBUG_DEP)

TITLE_BACK_DEP := \
	data/back/title/mario.0.rgba16.h \
	data/back/title/mario.1.rgba16.h \
	data/back/title/mario.2.rgba16.h \
	data/back/title/mario.3.rgba16.h \
	data/back/title/gameover.0.rgba16.h \
	data/back/title/gameover.1.rgba16.h \
	data/back/title/gameover.2.rgba16.h \
	data/back/title/gameover.3.rgba16.h

SELECT_DEP := \
	stage/select/file/light.rgba16.h \
	stage/select/file/shade.rgba16.h \
	stage/select/file/mario.rgba16.h \
	stage/select/file/new.rgba16.h \
	$(FILE_DEP) \
	stage/select/tile/erase.rgba16.h \
	stage/select/tile/copy.rgba16.h \
	stage/select/tile/main.rgba16.h \
	stage/select/tile/score.rgba16.h \
	stage/select/tile/sound.rgba16.h \
	$(TILE_DEP) \
	stage/select/cursor/0.rgba16.h \
	stage/select/cursor/1.rgba16.h \
	stage/select/selfont/k_hu.rgba16.h \
	stage/select/selfont/k_xa.rgba16.h \
	stage/select/selfont/k_i.rgba16.h \
	stage/select/selfont/k_ru.rgba16.h \
	stage/select/selfont/k_se.rgba16.h \
	stage/select/selfont/k_re.rgba16.h \
	stage/select/selfont/k_ku.rgba16.h \
	stage/select/selfont/k_to.rgba16.h \
	stage/select/selfont/h_wo.rgba16.h \
	stage/select/selfont/k_ko.rgba16.h \
	stage/select/selfont/k_pi.rgba16.h \
	stage/select/selfont/chouonpu.rgba16.h \
	stage/select/selfont/h_su.rgba16.h \
	stage/select/selfont/h_ru.rgba16.h \
	stage/select/selfont/h_ke.rgba16.h \
	stage/select/selfont/k_ma.rgba16.h \
	stage/select/selfont/k_ri.rgba16.h \
	stage/select/selfont/k_o.rgba16.h \
	stage/select/selfont/k_su.rgba16.h \
	stage/select/selfont/k_a.rgba16.h \
	stage/select/selfont/h_mi.rgba16.h \
	stage/select/selfont/h_do.rgba16.h \
	stage/select/selfont/h_no.rgba16.h \
	stage/select/selfont/question.rgba16.h \
	stage/select/selfont/k_sa.rgba16.h \
	stage/select/selfont/k_u.rgba16.h \
	stage/select/selfont/k_n.rgba16.h \
	stage/select/selfont/k_do.rgba16.h \
	stage/select/smfont/0.ia8.h \
	stage/select/smfont/1.ia8.h \
	stage/select/smfont/2.ia8.h \
	stage/select/smfont/3.ia8.h \
	stage/select/smfont/4.ia8.h \
	stage/select/smfont/5.ia8.h \
	stage/select/smfont/6.ia8.h \
	stage/select/smfont/7.ia8.h \
	stage/select/smfont/8.ia8.h \
	stage/select/smfont/9.ia8.h \
	stage/select/smfont/u_a.ia8.h \
	stage/select/smfont/u_b.ia8.h \
	stage/select/smfont/u_c.ia8.h \
	stage/select/smfont/u_d.ia8.h \
	stage/select/smfont/u_e.ia8.h \
	stage/select/smfont/u_f.ia8.h \
	stage/select/smfont/u_g.ia8.h \
	stage/select/smfont/u_h.ia8.h \
	stage/select/smfont/u_i.ia8.h \
	stage/select/smfont/u_j.ia8.h \
	stage/select/smfont/u_k.ia8.h \
	stage/select/smfont/u_l.ia8.h \
	stage/select/smfont/u_m.ia8.h \
	stage/select/smfont/u_n.ia8.h \
	stage/select/smfont/u_o.ia8.h \
	stage/select/smfont/u_p.ia8.h \
	stage/select/smfont/u_q.ia8.h \
	stage/select/smfont/u_r.ia8.h \
	stage/select/smfont/u_s.ia8.h \
	stage/select/smfont/u_t.ia8.h \
	stage/select/smfont/u_u.ia8.h \
	stage/select/smfont/u_v.ia8.h \
	stage/select/smfont/u_w.ia8.h \
	stage/select/smfont/u_x.ia8.h \
	stage/select/smfont/u_y.ia8.h \
	stage/select/smfont/u_z.ia8.h \
	stage/select/smfont/coin.ia8.h \
	stage/select/smfont/multiply.ia8.h \
	stage/select/smfont/star.ia8.h \
	stage/select/smfont/hyphen.ia8.h \
	stage/select/smfont/comma.ia8.h \
	stage/select/smfont/apostrophe.ia8.h \
	stage/select/smfont/exclaim.ia8.h \
	stage/select/smfont/question.ia8.h \
	stage/select/smfont/mario_l.ia8.h \
	stage/select/smfont/mario_r.ia8.h \
	stage/select/smfont/period.ia8.h \
	stage/select/smfont/ampersand.ia8.h \
	stage/select/course/h.rgba16.h \
	stage/select/course/l.rgba16.h \
	stage/select/map.h

BACK_A_DEP := \
	data/back/a/00.rgba16.h \
	data/back/a/01.rgba16.h \
	data/back/a/02.rgba16.h \
	data/back/a/03.rgba16.h \
	data/back/a/04.rgba16.h \
	data/back/a/05.rgba16.h \
	data/back/a/06.rgba16.h \
	data/back/a/07.rgba16.h \
	data/back/a/10.rgba16.h \
	data/back/a/11.rgba16.h \
	data/back/a/12.rgba16.h \
	data/back/a/13.rgba16.h \
	data/back/a/14.rgba16.h \
	data/back/a/15.rgba16.h \
	data/back/a/16.rgba16.h \
	data/back/a/17.rgba16.h \
	data/back/a/20.rgba16.h \
	data/back/a/21.rgba16.h \
	data/back/a/22.rgba16.h \
	data/back/a/23.rgba16.h \
	data/back/a/24.rgba16.h \
	data/back/a/25.rgba16.h \
	data/back/a/26.rgba16.h \
	data/back/a/27.rgba16.h \
	data/back/a/30.rgba16.h \
	data/back/a/31.rgba16.h \
	data/back/a/32.rgba16.h \
	data/back/a/33.rgba16.h \
	data/back/a/34.rgba16.h \
	data/back/a/35.rgba16.h \
	data/back/a/36.rgba16.h \
	data/back/a/37.rgba16.h \
	data/back/a/40.rgba16.h \
	data/back/a/41.rgba16.h \
	data/back/a/42.rgba16.h \
	data/back/a/43.rgba16.h \
	data/back/a/44.rgba16.h \
	data/back/a/45.rgba16.h \
	data/back/a/46.rgba16.h \
	data/back/a/47.rgba16.h \
	data/back/a/50.rgba16.h \
	data/back/a/51.rgba16.h \
	data/back/a/52.rgba16.h \
	data/back/a/53.rgba16.h \
	data/back/a/54.rgba16.h \
	data/back/a/55.rgba16.h \
	data/back/a/56.rgba16.h \
	data/back/a/57.rgba16.h \
	data/back/a/60.rgba16.h \
	data/back/a/61.rgba16.h \
	data/back/a/62.rgba16.h \
	data/back/a/63.rgba16.h \
	data/back/a/64.rgba16.h \
	data/back/a/65.rgba16.h \
	data/back/a/66.rgba16.h \
	data/back/a/67.rgba16.h \
	data/back/a/70.rgba16.h \
	data/back/a/71.rgba16.h \
	data/back/a/72.rgba16.h \
	data/back/a/73.rgba16.h \
	data/back/a/74.rgba16.h \
	data/back/a/75.rgba16.h \
	data/back/a/76.rgba16.h \
	data/back/a/77.rgba16.h

BACK_B_DEP := \
	data/back/b/00.rgba16.h \
	data/back/b/01.rgba16.h \
	data/back/b/02.rgba16.h \
	data/back/b/03.rgba16.h \
	data/back/b/04.rgba16.h \
	data/back/b/05.rgba16.h \
	data/back/b/06.rgba16.h \
	data/back/b/07.rgba16.h \
	data/back/b/10.rgba16.h \
	data/back/b/11.rgba16.h \
	data/back/b/12.rgba16.h \
	data/back/b/13.rgba16.h \
	data/back/b/14.rgba16.h \
	data/back/b/15.rgba16.h \
	data/back/b/16.rgba16.h \
	data/back/b/17.rgba16.h \
	data/back/b/20.rgba16.h \
	data/back/b/21.rgba16.h \
	data/back/b/22.rgba16.h \
	data/back/b/23.rgba16.h \
	data/back/b/24.rgba16.h \
	data/back/b/25.rgba16.h \
	data/back/b/26.rgba16.h \
	data/back/b/27.rgba16.h \
	data/back/b/30.rgba16.h \
	data/back/b/31.rgba16.h \
	data/back/b/32.rgba16.h \
	data/back/b/33.rgba16.h \
	data/back/b/34.rgba16.h \
	data/back/b/35.rgba16.h \
	data/back/b/36.rgba16.h \
	data/back/b/37.rgba16.h \
	data/back/b/40.rgba16.h \
	data/back/b/41.rgba16.h \
	data/back/b/42.rgba16.h \
	data/back/b/43.rgba16.h \
	data/back/b/44.rgba16.h \
	data/back/b/45.rgba16.h \
	data/back/b/46.rgba16.h \
	data/back/b/47.rgba16.h \
	data/back/b/50.rgba16.h \
	data/back/b/51.rgba16.h \
	data/back/b/52.rgba16.h \
	data/back/b/53.rgba16.h \
	data/back/b/54.rgba16.h \
	data/back/b/55.rgba16.h \
	data/back/b/56.rgba16.h \
	data/back/b/57.rgba16.h \
	data/back/b/60.rgba16.h \
	data/back/b/61.rgba16.h \
	data/back/b/62.rgba16.h \
	data/back/b/63.rgba16.h \
	data/back/b/64.rgba16.h \
	data/back/b/65.rgba16.h \
	data/back/b/66.rgba16.h \
	data/back/b/67.rgba16.h \
	data/back/b/70.rgba16.h \
	data/back/b/71.rgba16.h \
	data/back/b/72.rgba16.h \
	data/back/b/73.rgba16.h \
	data/back/b/74.rgba16.h \
	data/back/b/75.rgba16.h \
	data/back/b/76.rgba16.h \
	data/back/b/77.rgba16.h

BACK_C_DEP := \
	data/back/c/00.rgba16.h \
	data/back/c/01.rgba16.h \
	data/back/c/02.rgba16.h \
	data/back/c/03.rgba16.h \
	data/back/c/04.rgba16.h \
	data/back/c/05.rgba16.h \
	data/back/c/06.rgba16.h \
	data/back/c/07.rgba16.h \
	data/back/c/10.rgba16.h \
	data/back/c/11.rgba16.h \
	data/back/c/12.rgba16.h \
	data/back/c/13.rgba16.h \
	data/back/c/14.rgba16.h \
	data/back/c/15.rgba16.h \
	data/back/c/16.rgba16.h \
	data/back/c/17.rgba16.h \
	data/back/c/20.rgba16.h \
	data/back/c/21.rgba16.h \
	data/back/c/22.rgba16.h \
	data/back/c/23.rgba16.h \
	data/back/c/24.rgba16.h \
	data/back/c/25.rgba16.h \
	data/back/c/26.rgba16.h \
	data/back/c/27.rgba16.h \
	data/back/c/30.rgba16.h \
	data/back/c/31.rgba16.h \
	data/back/c/32.rgba16.h \
	data/back/c/33.rgba16.h \
	data/back/c/34.rgba16.h \
	data/back/c/35.rgba16.h \
	data/back/c/36.rgba16.h \
	data/back/c/37.rgba16.h \
	data/back/c/40.rgba16.h \
	data/back/c/41.rgba16.h \
	data/back/c/42.rgba16.h \
	data/back/c/43.rgba16.h \
	data/back/c/44.rgba16.h \
	data/back/c/45.rgba16.h \
	data/back/c/46.rgba16.h \
	data/back/c/47.rgba16.h \
	data/back/c/50.rgba16.h

BACK_D_DEP := \
	data/back/d/00.rgba16.h \
	data/back/d/01.rgba16.h \
	data/back/d/02.rgba16.h \
	data/back/d/03.rgba16.h \
	data/back/d/04.rgba16.h \
	data/back/d/05.rgba16.h \
	data/back/d/06.rgba16.h \
	data/back/d/07.rgba16.h \
	data/back/d/10.rgba16.h \
	data/back/d/11.rgba16.h \
	data/back/d/12.rgba16.h \
	data/back/d/13.rgba16.h \
	data/back/d/14.rgba16.h \
	data/back/d/15.rgba16.h \
	data/back/d/16.rgba16.h \
	data/back/d/17.rgba16.h \
	data/back/d/20.rgba16.h \
	data/back/d/21.rgba16.h \
	data/back/d/22.rgba16.h \
	data/back/d/23.rgba16.h \
	data/back/d/24.rgba16.h \
	data/back/d/25.rgba16.h \
	data/back/d/26.rgba16.h \
	data/back/d/27.rgba16.h \
	data/back/d/30.rgba16.h \
	data/back/d/31.rgba16.h \
	data/back/d/32.rgba16.h \
	data/back/d/33.rgba16.h \
	data/back/d/34.rgba16.h \
	data/back/d/35.rgba16.h \
	data/back/d/36.rgba16.h \
	data/back/d/37.rgba16.h \
	data/back/d/40.rgba16.h \
	data/back/d/41.rgba16.h \
	data/back/d/42.rgba16.h \
	data/back/d/43.rgba16.h \
	data/back/d/44.rgba16.h \
	data/back/d/45.rgba16.h \
	data/back/d/46.rgba16.h \
	data/back/d/47.rgba16.h \
	data/back/d/50.rgba16.h \
	data/back/d/51.rgba16.h \
	data/back/d/52.rgba16.h \
	data/back/d/53.rgba16.h \
	data/back/d/54.rgba16.h \
	data/back/d/55.rgba16.h \
	data/back/d/56.rgba16.h \
	data/back/d/57.rgba16.h \
	data/back/d/60.rgba16.h

BACK_E_DEP := \
	data/back/e/00.rgba16.h \
	data/back/e/01.rgba16.h \
	data/back/e/02.rgba16.h \
	data/back/e/03.rgba16.h \
	data/back/e/04.rgba16.h \
	data/back/e/05.rgba16.h \
	data/back/e/06.rgba16.h \
	data/back/e/07.rgba16.h \
	data/back/e/10.rgba16.h \
	data/back/e/11.rgba16.h \
	data/back/e/12.rgba16.h \
	data/back/e/13.rgba16.h \
	data/back/e/14.rgba16.h \
	data/back/e/15.rgba16.h \
	data/back/e/16.rgba16.h \
	data/back/e/17.rgba16.h \
	data/back/e/20.rgba16.h \
	data/back/e/21.rgba16.h \
	data/back/e/22.rgba16.h \
	data/back/e/23.rgba16.h \
	data/back/e/24.rgba16.h \
	data/back/e/25.rgba16.h \
	data/back/e/26.rgba16.h \
	data/back/e/27.rgba16.h \
	data/back/e/30.rgba16.h \
	data/back/e/31.rgba16.h \
	data/back/e/32.rgba16.h \
	data/back/e/33.rgba16.h \
	data/back/e/34.rgba16.h \
	data/back/e/35.rgba16.h \
	data/back/e/36.rgba16.h \
	data/back/e/37.rgba16.h \
	data/back/e/40.rgba16.h \
	data/back/e/41.rgba16.h \
	data/back/e/42.rgba16.h \
	data/back/e/43.rgba16.h \
	data/back/e/44.rgba16.h \
	data/back/e/45.rgba16.h \
	data/back/e/46.rgba16.h \
	data/back/e/47.rgba16.h \
	data/back/e/50.rgba16.h \
	data/back/e/51.rgba16.h \
	data/back/e/52.rgba16.h \
	data/back/e/53.rgba16.h \
	data/back/e/54.rgba16.h \
	data/back/e/55.rgba16.h \
	data/back/e/56.rgba16.h \
	data/back/e/57.rgba16.h \
	data/back/e/60.rgba16.h \
	data/back/e/61.rgba16.h \
	data/back/e/62.rgba16.h \
	data/back/e/63.rgba16.h \
	data/back/e/64.rgba16.h \
	data/back/e/65.rgba16.h \
	data/back/e/66.rgba16.h \
	data/back/e/67.rgba16.h \
	data/back/e/70.rgba16.h \
	data/back/e/71.rgba16.h \
	data/back/e/72.rgba16.h \
	data/back/e/73.rgba16.h \
	data/back/e/74.rgba16.h \
	data/back/e/75.rgba16.h \
	data/back/e/76.rgba16.h \
	data/back/e/77.rgba16.h

BACK_F_DEP := \
	data/back/f/00.rgba16.h \
	data/back/f/01.rgba16.h \
	data/back/f/02.rgba16.h \
	data/back/f/03.rgba16.h \
	data/back/f/04.rgba16.h \
	data/back/f/05.rgba16.h \
	data/back/f/06.rgba16.h \
	data/back/f/07.rgba16.h \
	data/back/f/10.rgba16.h \
	data/back/f/11.rgba16.h \
	data/back/f/12.rgba16.h \
	data/back/f/13.rgba16.h \
	data/back/f/14.rgba16.h \
	data/back/f/15.rgba16.h \
	data/back/f/16.rgba16.h \
	data/back/f/17.rgba16.h \
	data/back/f/20.rgba16.h \
	data/back/f/21.rgba16.h \
	data/back/f/22.rgba16.h \
	data/back/f/23.rgba16.h \
	data/back/f/24.rgba16.h \
	data/back/f/25.rgba16.h \
	data/back/f/26.rgba16.h \
	data/back/f/27.rgba16.h \
	data/back/f/30.rgba16.h \
	data/back/f/31.rgba16.h \
	data/back/f/32.rgba16.h \
	data/back/f/33.rgba16.h \
	data/back/f/34.rgba16.h \
	data/back/f/35.rgba16.h \
	data/back/f/36.rgba16.h \
	data/back/f/37.rgba16.h \
	data/back/f/40.rgba16.h \
	data/back/f/41.rgba16.h \
	data/back/f/42.rgba16.h \
	data/back/f/43.rgba16.h \
	data/back/f/44.rgba16.h \
	data/back/f/45.rgba16.h \
	data/back/f/46.rgba16.h \
	data/back/f/47.rgba16.h \
	data/back/f/50.rgba16.h \
	data/back/f/51.rgba16.h \
	data/back/f/52.rgba16.h \
	data/back/f/53.rgba16.h \
	data/back/f/54.rgba16.h \
	data/back/f/55.rgba16.h \
	data/back/f/56.rgba16.h \
	data/back/f/57.rgba16.h \
	data/back/f/60.rgba16.h \
	data/back/f/61.rgba16.h \
	data/back/f/62.rgba16.h \
	data/back/f/63.rgba16.h \
	data/back/f/64.rgba16.h \
	data/back/f/65.rgba16.h \
	data/back/f/66.rgba16.h \
	data/back/f/67.rgba16.h \
	data/back/f/70.rgba16.h \
	data/back/f/71.rgba16.h \
	data/back/f/72.rgba16.h \
	data/back/f/73.rgba16.h \
	data/back/f/74.rgba16.h \
	data/back/f/75.rgba16.h \
	data/back/f/76.rgba16.h \
	data/back/f/77.rgba16.h

BACK_G_DEP := \
	data/back/g/00.rgba16.h \
	data/back/g/01.rgba16.h \
	data/back/g/02.rgba16.h \
	data/back/g/03.rgba16.h \
	data/back/g/04.rgba16.h \
	data/back/g/05.rgba16.h \
	data/back/g/06.rgba16.h \
	data/back/g/07.rgba16.h \
	data/back/g/10.rgba16.h \
	data/back/g/11.rgba16.h \
	data/back/g/12.rgba16.h \
	data/back/g/13.rgba16.h \
	data/back/g/14.rgba16.h \
	data/back/g/15.rgba16.h \
	data/back/g/16.rgba16.h \
	data/back/g/17.rgba16.h \
	data/back/g/20.rgba16.h \
	data/back/g/21.rgba16.h \
	data/back/g/22.rgba16.h \
	data/back/g/23.rgba16.h \
	data/back/g/24.rgba16.h \
	data/back/g/25.rgba16.h \
	data/back/g/26.rgba16.h \
	data/back/g/27.rgba16.h \
	data/back/g/30.rgba16.h \
	data/back/g/31.rgba16.h \
	data/back/g/32.rgba16.h \
	data/back/g/33.rgba16.h \
	data/back/g/34.rgba16.h \
	data/back/g/35.rgba16.h \
	data/back/g/36.rgba16.h \
	data/back/g/37.rgba16.h \
	data/back/g/40.rgba16.h \
	data/back/g/41.rgba16.h \
	data/back/g/42.rgba16.h \
	data/back/g/43.rgba16.h \
	data/back/g/44.rgba16.h \
	data/back/g/45.rgba16.h \
	data/back/g/46.rgba16.h \
	data/back/g/47.rgba16.h \
	data/back/g/50.rgba16.h \
	data/back/g/51.rgba16.h \
	data/back/g/52.rgba16.h \
	data/back/g/53.rgba16.h \
	data/back/g/54.rgba16.h \
	data/back/g/55.rgba16.h \
	data/back/g/56.rgba16.h \
	data/back/g/57.rgba16.h \
	data/back/g/60.rgba16.h \
	data/back/g/61.rgba16.h \
	data/back/g/62.rgba16.h \
	data/back/g/63.rgba16.h \
	data/back/g/64.rgba16.h \
	data/back/g/65.rgba16.h \
	data/back/g/66.rgba16.h \
	data/back/g/67.rgba16.h \
	data/back/g/70.rgba16.h \
	data/back/g/71.rgba16.h \
	data/back/g/72.rgba16.h \
	data/back/g/73.rgba16.h \
	data/back/g/74.rgba16.h \
	data/back/g/75.rgba16.h \
	data/back/g/76.rgba16.h \
	data/back/g/77.rgba16.h

BACK_H_DEP := \
	data/back/h/00.rgba16.h \
	data/back/h/01.rgba16.h \
	data/back/h/02.rgba16.h \
	data/back/h/03.rgba16.h \
	data/back/h/04.rgba16.h \
	data/back/h/05.rgba16.h \
	data/back/h/06.rgba16.h \
	data/back/h/07.rgba16.h \
	data/back/h/10.rgba16.h \
	data/back/h/11.rgba16.h \
	data/back/h/12.rgba16.h \
	data/back/h/13.rgba16.h \
	data/back/h/14.rgba16.h \
	data/back/h/15.rgba16.h \
	data/back/h/16.rgba16.h \
	data/back/h/17.rgba16.h \
	data/back/h/20.rgba16.h \
	data/back/h/21.rgba16.h \
	data/back/h/22.rgba16.h \
	data/back/h/23.rgba16.h \
	data/back/h/24.rgba16.h \
	data/back/h/25.rgba16.h \
	data/back/h/26.rgba16.h \
	data/back/h/27.rgba16.h \
	data/back/h/30.rgba16.h \
	data/back/h/31.rgba16.h \
	data/back/h/32.rgba16.h \
	data/back/h/33.rgba16.h \
	data/back/h/34.rgba16.h \
	data/back/h/35.rgba16.h \
	data/back/h/36.rgba16.h \
	data/back/h/37.rgba16.h \
	data/back/h/40.rgba16.h \
	data/back/h/41.rgba16.h \
	data/back/h/42.rgba16.h \
	data/back/h/43.rgba16.h \
	data/back/h/44.rgba16.h \
	data/back/h/45.rgba16.h \
	data/back/h/46.rgba16.h \
	data/back/h/47.rgba16.h \
	data/back/h/50.rgba16.h

BACK_I_DEP := \
	data/back/i/00.rgba16.h \
	data/back/i/01.rgba16.h \
	data/back/i/02.rgba16.h \
	data/back/i/03.rgba16.h \
	data/back/i/04.rgba16.h \
	data/back/i/05.rgba16.h \
	data/back/i/06.rgba16.h \
	data/back/i/07.rgba16.h \
	data/back/i/10.rgba16.h \
	data/back/i/11.rgba16.h \
	data/back/i/12.rgba16.h \
	data/back/i/13.rgba16.h \
	data/back/i/14.rgba16.h \
	data/back/i/15.rgba16.h \
	data/back/i/16.rgba16.h \
	data/back/i/17.rgba16.h \
	data/back/i/20.rgba16.h \
	data/back/i/21.rgba16.h \
	data/back/i/22.rgba16.h \
	data/back/i/23.rgba16.h \
	data/back/i/24.rgba16.h \
	data/back/i/25.rgba16.h \
	data/back/i/26.rgba16.h \
	data/back/i/27.rgba16.h \
	data/back/i/30.rgba16.h \
	data/back/i/31.rgba16.h \
	data/back/i/32.rgba16.h \
	data/back/i/33.rgba16.h \
	data/back/i/34.rgba16.h \
	data/back/i/35.rgba16.h \
	data/back/i/36.rgba16.h \
	data/back/i/37.rgba16.h \
	data/back/i/40.rgba16.h \
	data/back/i/41.rgba16.h \
	data/back/i/42.rgba16.h \
	data/back/i/43.rgba16.h \
	data/back/i/44.rgba16.h \
	data/back/i/45.rgba16.h \
	data/back/i/46.rgba16.h \
	data/back/i/47.rgba16.h \
	data/back/i/50.rgba16.h \
	data/back/i/51.rgba16.h \
	data/back/i/52.rgba16.h \
	data/back/i/53.rgba16.h \
	data/back/i/54.rgba16.h \
	data/back/i/55.rgba16.h \
	data/back/i/56.rgba16.h \
	data/back/i/57.rgba16.h \
	data/back/i/60.rgba16.h \
	data/back/i/61.rgba16.h \
	data/back/i/62.rgba16.h \
	data/back/i/63.rgba16.h \
	data/back/i/64.rgba16.h \
	data/back/i/65.rgba16.h \
	data/back/i/66.rgba16.h \
	data/back/i/67.rgba16.h \
	data/back/i/70.rgba16.h \
	data/back/i/71.rgba16.h \
	data/back/i/72.rgba16.h \
	data/back/i/73.rgba16.h \
	data/back/i/74.rgba16.h \
	data/back/i/75.rgba16.h \
	data/back/i/76.rgba16.h \
	data/back/i/77.rgba16.h

BACK_J_DEP := \
	data/back/j/00.rgba16.h \
	data/back/j/01.rgba16.h \
	data/back/j/02.rgba16.h \
	data/back/j/03.rgba16.h \
	data/back/j/04.rgba16.h \
	data/back/j/05.rgba16.h \
	data/back/j/06.rgba16.h \
	data/back/j/07.rgba16.h \
	data/back/j/10.rgba16.h \
	data/back/j/11.rgba16.h \
	data/back/j/12.rgba16.h \
	data/back/j/13.rgba16.h \
	data/back/j/14.rgba16.h \
	data/back/j/15.rgba16.h \
	data/back/j/16.rgba16.h \
	data/back/j/17.rgba16.h \
	data/back/j/20.rgba16.h \
	data/back/j/21.rgba16.h \
	data/back/j/22.rgba16.h \
	data/back/j/23.rgba16.h \
	data/back/j/24.rgba16.h \
	data/back/j/25.rgba16.h \
	data/back/j/26.rgba16.h \
	data/back/j/27.rgba16.h \
	data/back/j/30.rgba16.h \
	data/back/j/31.rgba16.h \
	data/back/j/32.rgba16.h \
	data/back/j/33.rgba16.h \
	data/back/j/34.rgba16.h \
	data/back/j/35.rgba16.h \
	data/back/j/36.rgba16.h \
	data/back/j/37.rgba16.h \
	data/back/j/40.rgba16.h \
	data/back/j/41.rgba16.h \
	data/back/j/42.rgba16.h \
	data/back/j/43.rgba16.h \
	data/back/j/44.rgba16.h \
	data/back/j/45.rgba16.h \
	data/back/j/46.rgba16.h \
	data/back/j/47.rgba16.h \
	data/back/j/50.rgba16.h \
	data/back/j/51.rgba16.h \
	data/back/j/52.rgba16.h \
	data/back/j/53.rgba16.h \
	data/back/j/54.rgba16.h \
	data/back/j/55.rgba16.h \
	data/back/j/56.rgba16.h \
	data/back/j/57.rgba16.h \
	data/back/j/60.rgba16.h \
	data/back/j/61.rgba16.h \
	data/back/j/62.rgba16.h \
	data/back/j/63.rgba16.h \
	data/back/j/64.rgba16.h \
	data/back/j/65.rgba16.h \
	data/back/j/66.rgba16.h \
	data/back/j/67.rgba16.h \
	data/back/j/70.rgba16.h \
	data/back/j/71.rgba16.h \
	data/back/j/72.rgba16.h \
	data/back/j/73.rgba16.h \
	data/back/j/74.rgba16.h \
	data/back/j/75.rgba16.h \
	data/back/j/76.rgba16.h \
	data/back/j/77.rgba16.h

TEXTURE_A_DEP := \
	data/texture/a0.rgba16.h \
	data/texture/a1.rgba16.h \
	data/texture/a2.rgba16.h \
	data/texture/a3.rgba16.h \
	data/texture/a4.rgba16.h \
	data/texture/a5.rgba16.h \
	data/texture/a6.rgba16.h \
	data/texture/a7.rgba16.h \
	data/texture/a8.rgba16.h \
	data/texture/a9.rgba16.h \
	data/texture/a10.rgba16.h \
	data/texture/a11.rgba16.h \
	data/texture/a12.rgba16.h \
	data/texture/a13.rgba16.h \
	data/texture/a14.rgba16.h \
	data/texture/a15.rgba16.h \
	data/texture/a16.rgba16.h \
	data/texture/a17.rgba16.h \
	data/texture/a18.rgba16.h \
	data/texture/a19.rgba16.h \
	data/texture/a20.rgba16.h \
	data/texture/a21.rgba16.h \
	data/texture/a22.rgba16.h \
	data/texture/a23.rgba16.h

TEXTURE_B_DEP := \
	data/texture/b0.rgba16.h \
	data/texture/b1.rgba16.h \
	data/texture/b2.rgba16.h \
	data/texture/b3.rgba16.h \
	data/texture/b4.rgba16.h \
	data/texture/b5.rgba16.h \
	data/texture/b6.rgba16.h \
	data/texture/b7.rgba16.h \
	data/texture/b8.rgba16.h \
	data/texture/b9.rgba16.h \
	data/texture/b10.rgba16.h \
	data/texture/b11.rgba16.h \
	data/texture/b12.rgba16.h \
	data/texture/b13.rgba16.h \
	data/texture/b14.rgba16.h \
	data/texture/b15_g17.ia16.h \
	data/texture/b16.ia16.h \
	data/texture/b17.ia16.h

TEXTURE_C_DEP := \
	data/texture/c0.rgba16.h \
	data/texture/c1.rgba16.h \
	data/texture/c2.rgba16.h \
	data/texture/c3.rgba16.h \
	data/texture/c4.rgba16.h \
	data/texture/c5.rgba16.h \
	data/texture/c6.rgba16.h \
	data/texture/c7.rgba16.h \
	data/texture/c8.rgba16.h \
	data/texture/c9.rgba16.h \
	data/texture/c10.rgba16.h \
	data/texture/c11.rgba16.h \
	data/texture/c12.rgba16.h \
	data/texture/c13.rgba16.h \
	data/texture/c14.rgba16.h \
	data/texture/c15.rgba16.h \
	data/texture/c16.rgba16.h \
	data/texture/c17.rgba16.h \
	data/texture/c18.rgba16.h \
	data/texture/c19.rgba16.h \
	data/texture/c20.rgba16.h \
	data/texture/c21_j22_k22.ia16.h

TEXTURE_D_DEP := \
	data/texture/d0.rgba16.h \
	data/texture/d1.rgba16.h \
	data/texture/d2.rgba16.h \
	data/texture/d3.rgba16.h \
	data/texture/d4.rgba16.h \
	data/texture/d5.rgba16.h \
	data/texture/d6.rgba16.h \
	data/texture/d7.rgba16.h \
	data/texture/d8.rgba16.h \
	data/texture/d9.rgba16.h \
	data/texture/d10.rgba16.h \
	data/texture/d11.rgba16.h \
	data/texture/d12.rgba16.h \
	data/texture/d13.rgba16.h \
	data/texture/d14.rgba16.h

TEXTURE_E_DEP := \
	data/texture/e0.rgba16.h \
	data/texture/e1.rgba16.h \
	data/texture/e2.rgba16.h \
	data/texture/e3.rgba16.h \
	data/texture/e4.rgba16.h \
	data/texture/e5.rgba16.h \
	data/texture/e6.rgba16.h \
	data/texture/e7.rgba16.h \
	data/texture/e8_j12.rgba16.h \
	data/texture/e9.rgba16.h \
	data/texture/e10_i18.rgba16.h \
	data/texture/e11.rgba16.h \
	data/texture/e12.rgba16.h \
	data/texture/e13.rgba16.h \
	data/texture/e14.rgba16.h

TEXTURE_F_DEP := \
	data/texture/f0.rgba16.h \
	data/texture/f1.rgba16.h \
	data/texture/f2.rgba16.h \
	data/texture/f3.rgba16.h \
	data/texture/f4.rgba16.h \
	data/texture/f5.rgba16.h \
	data/texture/f6.rgba16.h \
	data/texture/f7.rgba16.h \
	data/texture/f8.rgba16.h \
	data/texture/f9.rgba16.h \
	data/texture/f10.rgba16.h \
	data/texture/f11.rgba16.h \
	data/texture/f12.rgba16.h \
	data/texture/f13.rgba16.h \
	data/texture/f14.rgba16.h \
	data/texture/f15.rgba16.h \
	data/texture/f16.ia16.h \
	data/texture/f17.ia16.h

TEXTURE_G_DEP := \
	data/texture/g0.rgba16.h \
	data/texture/g1.rgba16.h \
	data/texture/g2.rgba16.h \
	data/texture/g3.rgba16.h \
	data/texture/g4.rgba16.h \
	data/texture/g5.rgba16.h \
	data/texture/g6.rgba16.h \
	data/texture/g7.rgba16.h \
	data/texture/g8.rgba16.h \
	data/texture/g9.rgba16.h \
	data/texture/g10.rgba16.h \
	data/texture/g11.rgba16.h \
	data/texture/g12.rgba16.h \
	data/texture/g13.rgba16.h \
	data/texture/g14.rgba16.h \
	data/texture/g15.rgba16.h \
	data/texture/g16.ia16.h \
	data/texture/b15_g17.ia16.h

TEXTURE_H_DEP := \
	data/texture/h0.rgba16.h \
	data/texture/h1_l6.rgba16.h \
	data/texture/h2.rgba16.h \
	data/texture/h3.rgba16.h \
	data/texture/h4.rgba16.h \
	data/texture/h5.rgba16.h \
	data/texture/h6.rgba16.h \
	data/texture/h7.rgba16.h \
	data/texture/h8.rgba16.h \
	data/texture/h9.rgba16.h \
	data/texture/h10.rgba16.h \
	data/texture/h11.rgba16.h \
	data/texture/h12.rgba16.h \
	data/texture/h13.rgba16.h \
	data/texture/h14.rgba16.h \
	data/texture/h15.rgba16.h \
	data/texture/h16.rgba16.h

TEXTURE_I_DEP := \
	data/texture/i0.rgba16.h \
	data/texture/i1.rgba16.h \
	data/texture/i2.rgba16.h \
	data/texture/i3.rgba16.h \
	data/texture/i4.rgba16.h \
	data/texture/i5.rgba16.h \
	data/texture/i6.rgba16.h \
	data/texture/i7.rgba16.h \
	data/texture/i8.rgba16.h \
	data/texture/i9.rgba16.h \
	data/texture/i10.rgba16.h \
	data/texture/i11.rgba16.h \
	data/texture/i12.rgba16.h \
	data/texture/i13.rgba16.h \
	data/texture/i14.rgba16.h \
	data/texture/i15.rgba16.h \
	data/texture/i16.rgba16.h \
	data/texture/i17.rgba16.h \
	data/texture/e10_i18.rgba16.h \
	data/texture/i19.rgba16.h \
	data/texture/i20.rgba16.h \
	data/texture/i21.rgba16.h \
	data/texture/i22.rgba16.h

TEXTURE_J_DEP := \
	data/texture/j0.rgba16.h \
	data/texture/j1.rgba16.h \
	data/texture/j2.rgba16.h \
	data/texture/j3.rgba16.h \
	data/texture/j4.rgba16.h \
	data/texture/j5.rgba16.h \
	data/texture/j6.rgba16.h \
	data/texture/j7.rgba16.h \
	data/texture/j8.rgba16.h \
	data/texture/j9.rgba16.h \
	data/texture/j10.rgba16.h \
	data/texture/j11.rgba16.h \
	data/texture/e8_j12.rgba16.h \
	data/texture/j13.rgba16.h \
	data/texture/j14.rgba16.h \
	data/texture/j15.rgba16.h \
	data/texture/j16.rgba16.h \
	data/texture/j17.rgba16.h \
	data/texture/j18.rgba16.h \
	data/texture/j19.rgba16.h \
	data/texture/j20.rgba16.h \
	data/texture/j21.rgba16.h \
	data/texture/c21_j22_k22.ia16.h \
	data/texture/j23.ia16.h

TEXTURE_K_DEP := \
	data/texture/k0.rgba16.h \
	data/texture/k1.rgba16.h \
	data/texture/k2.rgba16.h \
	data/texture/k3.rgba16.h \
	data/texture/k4.rgba16.h \
	data/texture/k5.rgba16.h \
	data/texture/k6.rgba16.h \
	data/texture/k7.rgba16.h \
	data/texture/k8.rgba16.h \
	data/texture/k9.rgba16.h \
	data/texture/k10.rgba16.h \
	data/texture/k11.rgba16.h \
	data/texture/k12.rgba16.h \
	data/texture/k13.rgba16.h \
	data/texture/k14.rgba16.h \
	data/texture/k15.rgba16.h \
	data/texture/k16.rgba16.h \
	data/texture/k17.rgba16.h \
	data/texture/k18.rgba16.h \
	data/texture/k19.rgba16.h \
	data/texture/k20.rgba16.h \
	data/texture/k21.rgba16.h \
	data/texture/c21_j22_k22.ia16.h

TEXTURE_L_DEP := \
	data/texture/l0.rgba16.h \
	data/texture/l1.rgba16.h \
	data/texture/l2.rgba16.h \
	data/texture/l3.rgba16.h \
	data/texture/l4.rgba16.h \
	data/texture/l5.rgba16.h \
	data/texture/h1_l6.rgba16.h \
	data/texture/l7.rgba16.h \
	data/texture/l8.rgba16.h \
	data/texture/l9.rgba16.h \
	data/texture/l10.rgba16.h \
	data/texture/l11.rgba16.h \
	data/texture/l12.rgba16.h \
	data/texture/l13.rgba16.h \
	data/texture/l14.rgba16.h \
	data/texture/l15.rgba16.h \
	data/texture/l16.rgba16.h \
	data/texture/l17.rgba16.h

WEATHER_DEP := \
	data/weather/flower/0.rgba16.h \
	data/weather/flower/1.rgba16.h \
	data/weather/flower/2.rgba16.h \
	data/weather/flower/3.rgba16.h \
	data/weather/lava/0.rgba16.h \
	data/weather/lava/1.rgba16.h \
	data/weather/lava/2.rgba16.h \
	data/weather/lava/3.rgba16.h \
	data/weather/lava/4.rgba16.h \
	data/weather/lava/5.rgba16.h \
	data/weather/lava/6.rgba16.h \
	data/weather/lava/7.rgba16.h \
	data/weather/bubble/0.rgba16.h \
	data/weather/snow/a.rgba16.h \
	data/weather/snow/b.rgba16.h

BBH_DEP :=
CCM_DEP :=
INSIDE_DEP :=
HMC_DEP :=
SSL_DEP :=

BOB_DEP := \
	stage/bob/0.rgba16.h \
	stage/bob/1.rgba16.h \
	stage/bob/2.rgba16.h \
	stage/bob/3.rgba16.h \
	stage/bob/4.rgba16.h \
	$(BATTLEFIELD_DEP) \
	$(BOB_54_DEP) \
	$(BOB_55_DEP) \
	$(BOB_56_DEP) \
	stage/bob/battlefield/map.h \
	stage/bob/54/map.h \
	stage/bob/55/map.h \
	stage/bob/56/map.h

SL_DEP :=
WDW_DEP :=
JRB_DEP :=
THI_DEP :=
TTC_DEP :=
RR_DEP :=
GROUNDS_DEP :=
BITDW_DEP :=
VCUTM_DEP :=
BITFS_DEP :=
SA_DEP :=
BITS_DEP :=
LLL_DEP :=
DDD_DEP :=
WF_DEP :=

ENDING_DEP := \
	stage/ending/0.rgba16.h \
	stage/ending/1.rgba16.h \
	stage/ending/2.rgba16.h \
	stage/ending/3.rgba16.h \
	stage/ending/4.rgba16.h \
	stage/ending/5.rgba16.h \
	stage/ending/6.rgba16.h \
	stage/ending/7.rgba16.h \
	stage/ending/8.rgba16.h \
	stage/ending/9.rgba16.h \
	stage/ending/10.rgba16.h \
	stage/ending/11.rgba16.h \
	stage/ending/12.rgba16.h \
	stage/ending/13.rgba16.h \
	stage/ending/14.rgba16.h \
	stage/ending/15.rgba16.h \
	stage/ending/16.rgba16.h \
	stage/ending/17.rgba16.h \
	stage/ending/18.rgba16.h \
	stage/ending/19.rgba16.h \
	stage/ending/20.rgba16.h \
	stage/ending/21.rgba16.h \
	stage/ending/22.rgba16.h \
	stage/ending/23.rgba16.h \
	stage/ending/24.rgba16.h \
	stage/ending/25.rgba16.h \
	stage/ending/26.rgba16.h \
	stage/ending/27.rgba16.h \
	stage/ending/28.rgba16.h \
	stage/ending/29.rgba16.h \
	stage/ending/30.rgba16.h \
	stage/ending/31.rgba16.h \
	stage/ending/32.rgba16.h \
	stage/ending/33.rgba16.h \
	stage/ending/34.rgba16.h \
	stage/ending/35.rgba16.h \
	stage/ending/36.rgba16.h \
	stage/ending/37.rgba16.h \
	stage/ending/38.rgba16.h \
	stage/ending/39.rgba16.h \
	stage/ending/40.rgba16.h \
	stage/ending/41.rgba16.h \
	stage/ending/42.rgba16.h \
	stage/ending/43.rgba16.h \
	stage/ending/44.rgba16.h \
	stage/ending/45.rgba16.h \
	stage/ending/46.rgba16.h \
	stage/ending/47.rgba16.h

COURTYARD_DEP :=
PSS_DEP :=
COTMC_DEP :=
TOTWC_DEP :=
BITDWA_DEP :=
WMOTR_DEP :=
BITFSA_DEP :=
BITSA_DEP :=
TTM_DEP :=

DEP := \
	src/en_us.h \
	src/caption.en_us.h \
	$(FACE_DEP) \
	$(GFX_DEP) \
	$(PLAYER_DEP) \
	$(SHAPE_1A_DEP) \
	$(SHAPE_1B_DEP) \
	$(SHAPE_1C_DEP) \
	$(SHAPE_1D_DEP) \
	$(SHAPE_1E_DEP) \
	$(SHAPE_1F_DEP) \
	$(SHAPE_1G_DEP) \
	$(SHAPE_1H_DEP) \
	$(SHAPE_1I_DEP) \
	$(SHAPE_1J_DEP) \
	$(SHAPE_1K_DEP) \
	$(SHAPE_2A_DEP) \
	$(SHAPE_2B_DEP) \
	$(SHAPE_2C_DEP) \
	$(SHAPE_2D_DEP) \
	$(SHAPE_2E_DEP) \
	$(SHAPE_2F_DEP) \
	$(COMMON_DEP) \
	$(GLOBAL_DEP) \
	$(TITLE_LOGO_DEP) \
	$(TITLE_DEBUG_DEP) \
	$(TITLE_BACK_DEP) \
	$(SELECT_DEP) \
	$(BACK_A_DEP) \
	$(BACK_B_DEP) \
	$(BACK_C_DEP) \
	$(BACK_D_DEP) \
	$(BACK_E_DEP) \
	$(BACK_F_DEP) \
	$(BACK_G_DEP) \
	$(BACK_H_DEP) \
	$(BACK_I_DEP) \
	$(BACK_J_DEP) \
	$(TEXTURE_A_DEP) \
	$(TEXTURE_B_DEP) \
	$(TEXTURE_C_DEP) \
	$(TEXTURE_D_DEP) \
	$(TEXTURE_E_DEP) \
	$(TEXTURE_F_DEP) \
	$(TEXTURE_G_DEP) \
	$(TEXTURE_H_DEP) \
	$(TEXTURE_I_DEP) \
	$(TEXTURE_J_DEP) \
	$(TEXTURE_K_DEP) \
	$(TEXTURE_L_DEP) \
	$(WEATHER_DEP) \
	$(BBH_DEP) \
	$(CCM_DEP) \
	$(INSIDE_DEP) \
	$(HMC_DEP) \
	$(SSL_DEP) \
	$(BOB_DEP) \
	$(SL_DEP) \
	$(WDW_DEP) \
	$(JRB_DEP) \
	$(THI_DEP) \
	$(TTC_DEP) \
	$(RR_DEP) \
	$(GROUNDS_DEP) \
	$(BITDW_DEP) \
	$(VCUTM_DEP) \
	$(BITFS_DEP) \
	$(SA_DEP) \
	$(BITS_DEP) \
	$(LLL_DEP) \
	$(DDD_DEP) \
	$(WF_DEP) \
	$(ENDING_DEP) \
	$(COURTYARD_DEP) \
	$(PSS_DEP) \
	$(COTMC_DEP) \
	$(TOTWC_DEP) \
	$(BITDWA_DEP) \
	$(WMOTR_DEP) \
	$(BITFSA_DEP) \
	$(BITSA_DEP) \
	$(TTM_DEP)

src/message.c: src/en_us.h src/caption.en_us.h
src/fileselect.c: src/en_us.h
src/starselect.c: src/en_us.h
src/face/gfx.data.c: $(FACE_DEP)
data/gfx.c: $(GFX_DEP)
shape/player/gfx.c: $(PLAYER_DEP)
shape/1a/gfx.c: $(SHAPE_1A_DEP)
shape/1b/gfx.c: $(SHAPE_1B_DEP)
shape/1c/gfx.c: $(SHAPE_1C_DEP)
shape/1d/gfx.c: $(SHAPE_1D_DEP)
shape/1e/gfx.c: $(SHAPE_1E_DEP)
shape/1f/gfx.c: $(SHAPE_1F_DEP)
shape/1g/gfx.c: $(SHAPE_1G_DEP)
shape/1h/gfx.c: $(SHAPE_1H_DEP)
shape/1i/gfx.c: $(SHAPE_1I_DEP)
shape/1j/gfx.c: $(SHAPE_1J_DEP)
shape/1k/gfx.c: $(SHAPE_1K_DEP)
shape/2a/gfx.c: $(SHAPE_2A_DEP)
shape/2b/gfx.c: $(SHAPE_2B_DEP)
shape/2c/gfx.c: $(SHAPE_2C_DEP)
shape/2d/gfx.c: $(SHAPE_2D_DEP)
shape/2e/gfx.c: $(SHAPE_2E_DEP)
shape/2f/gfx.c: $(SHAPE_2F_DEP)
shape/3common/gfx.c: $(COMMON_DEP)
shape/global/gfx.c: $(GLOBAL_DEP)
stage/title/logo.c: $(TITLE_LOGO_DEP)
stage/title/debug.c: $(TITLE_DEBUG_DEP)
data/back/title.c: $(TITLE_BACK_DEP)
stage/select/gfx.c: $(SELECT_DEP)
data/back/a.c: $(BACK_A_DEP)
data/back/b.c: $(BACK_B_DEP)
data/back/c.c: $(BACK_C_DEP)
data/back/d.c: $(BACK_D_DEP)
data/back/e.c: $(BACK_E_DEP)
data/back/f.c: $(BACK_F_DEP)
data/back/g.c: $(BACK_G_DEP)
data/back/h.c: $(BACK_H_DEP)
data/back/i.c: $(BACK_I_DEP)
data/back/j.c: $(BACK_J_DEP)
data/texture/a.c: $(TEXTURE_A_DEP)
data/texture/b.c: $(TEXTURE_B_DEP)
data/texture/c.c: $(TEXTURE_C_DEP)
data/texture/d.c: $(TEXTURE_D_DEP)
data/texture/e.c: $(TEXTURE_E_DEP)
data/texture/f.c: $(TEXTURE_F_DEP)
data/texture/g.c: $(TEXTURE_G_DEP)
data/texture/h.c: $(TEXTURE_H_DEP)
data/texture/i.c: $(TEXTURE_I_DEP)
data/texture/j.c: $(TEXTURE_J_DEP)
data/texture/k.c: $(TEXTURE_K_DEP)
data/texture/l.c: $(TEXTURE_L_DEP)
data/weather/gfx.c: $(WEATHER_DEP)
stage/bbh/gfx.c: $(BBH_DEP)
stage/ccm/gfx.c: $(CCM_DEP)
stage/inside/gfx.c: $(INSIDE_DEP)
stage/hmc/gfx.c: $(HMC_DEP)
stage/ssl/gfx.c: $(SSL_DEP)
stage/bob/gfx.c: $(BOB_DEP) $(BUILD)/data/texture/c.szp.h
stage/sl/gfx.c: $(SL_DEP)
stage/wdw/gfx.c: $(WDW_DEP)
stage/jrb/gfx.c: $(JRB_DEP)
stage/thi/gfx.c: $(THI_DEP)
stage/ttc/gfx.c: $(TTC_DEP)
stage/rr/gfx.c: $(RR_DEP)
stage/grounds/gfx.c: $(GROUNDS_DEP)
stage/bitdw/gfx.c: $(BITDW_DEP)
stage/vcutm/gfx.c: $(VCUTM_DEP)
stage/bitfs/gfx.c: $(BITFS_DEP)
stage/sa/gfx.c: $(SA_DEP)
stage/bits/gfx.c: $(BITS_DEP)
stage/lll/gfx.c: $(LLL_DEP)
stage/ddd/gfx.c: $(DDD_DEP)
stage/wf/gfx.c: $(WF_DEP)
stage/ending/gfx.c: $(ENDING_DEP)
stage/courtyard/gfx.c: $(COURTYARD_DEP)
stage/pss/gfx.c: $(PSS_DEP)
stage/cotmc/gfx.c: $(COTMC_DEP)
stage/totwc/gfx.c: $(TOTWC_DEP)
stage/bitdwa/gfx.c: $(BITDWA_DEP)
stage/wmotr/gfx.c: $(WMOTR_DEP)
stage/bitfsa/gfx.c: $(BITFSA_DEP)
stage/bitsa/gfx.c: $(BITSA_DEP)
stage/ttm/gfx.c: $(TTM_DEP)

# Player
$(MARIO_DEP)&: shape/player/mario/mario.glb tools/gltf; tools/gltf $<
# Shape1B
$(BULLY_DEP)&: shape/1b/bully/bully.glb tools/gltf; tools/gltf $<
$(BLARGG_DEP)&: shape/1b/blargg/blargg.glb tools/gltf; tools/gltf $<
# Shape2B
$(SKEETER_DEP)&: shape/2b/skeeter/skeeter.glb tools/gltf; tools/gltf $<
$(KELP_DEP)&: shape/2b/kelp/kelp.glb tools/gltf; tools/gltf $<
$(WATERMINE_DEP)&: shape/2b/watermine/watermine.glb tools/gltf; tools/gltf $<
$(PIRANHA_DEP)&: shape/2b/piranha/piranha.glb tools/gltf; tools/gltf $<
$(BUB_DEP)&: shape/2b/bub/bub.glb tools/gltf; tools/gltf $<
$(WATERRING_DEP)&: shape/2b/waterring/waterring.glb tools/gltf; tools/gltf $<
$(CHEST_DEP)&: shape/2b/chest/chest.glb tools/gltf; tools/gltf $<
# Shape2D
$(LAKITU2_DEP)&: shape/2d/lakitu2/lakitu2.glb tools/gltf; tools/gltf $<
$(TOAD_DEP)&: shape/2d/toad/toad.glb tools/gltf; tools/gltf $<
$(MIPS_DEP)&: shape/2d/mips/mips.glb tools/gltf; tools/gltf $<
$(BOO2_DEP)&: shape/2d/boo2/boo2.glb tools/gltf; tools/gltf -g $<
# Common
$(BLUECOINSW_DEP)&: shape/3common/bluecoinsw/bluecoinsw.glb tools/gltf; tools/gltf $<
$(AMP_DEP)&: shape/3common/amp/amp.glb tools/gltf; tools/gltf $<
$(CANNONLID_DEP)&: shape/3common/cannonlid/cannonlid.glb tools/gltf; tools/gltf $<
$(CANNON_DEP)&: shape/3common/cannon/cannon.glb tools/gltf; tools/gltf $<
$(CANNONBARREL_DEP)&: shape/3common/cannonbarrel/cannonbarrel.glb tools/gltf; tools/gltf $<
$(CHUCKYA_DEP)&: shape/3common/chuckya/chuckya.glb tools/gltf; tools/gltf $<
$(PURPLESW_DEP)&: shape/3common/purplesw/purplesw.glb tools/gltf; tools/gltf $<
$(LIFT_DEP)&: shape/3common/lift/lift.glb tools/gltf; tools/gltf $<
$(HEART_DEP)&: shape/3common/heart/heart.glb tools/gltf; tools/gltf $<
$(FLYGUY_DEP)&: shape/3common/flyguy/flyguy.glb tools/gltf; tools/gltf $<
$(BLOCK_DEP)&: shape/3common/block/block.glb tools/gltf; tools/gltf $<
$(ITEMBOX_DEP)&: shape/3common/itembox/itembox.glb tools/gltf; tools/gltf $<
$(GOOMBA_DEP)&: shape/3common/goomba/goomba.glb tools/gltf; tools/gltf $<
$(BOBOMB_DEP)&: shape/3common/bobomb/bobomb.glb tools/gltf; tools/gltf $<
$(PUSHBLOCK_DEP)&: shape/3common/pushblock/pushblock.glb tools/gltf; tools/gltf $<
$(DOTBOX_DEP)&: shape/3common/dotbox/dotbox.glb tools/gltf; tools/gltf $<
$(TESTLIFT_DEP)&: shape/3common/testlift/testlift.glb tools/gltf; tools/gltf -g $<
$(SHELL_OLD_DEP)&: shape/3common/shell/shell_old.glb tools/gltf; tools/gltf -g $<
$(SHELL_DEP)&: shape/3common/shell/shell.glb tools/gltf; tools/gltf $<
# Global
$(BUTTERFLY_DEP)&: shape/global/butterfly/butterfly.glb tools/gltf; tools/gltf -g $<
$(PIPE_DEP)&: shape/global/pipe/pipe.glb tools/gltf; tools/gltf $<
$(DOOR_DEP)&: shape/global/door/door.glb tools/gltf; tools/gltf $<
$(DOORKEY_DEP)&: shape/global/doorkey/doorkey.glb tools/gltf; tools/gltf $<
$(FISH_DEP)&: shape/global/fish/fish.glb tools/gltf; tools/gltf $<
$(CAP_DEP)&: shape/global/cap/cap.glb tools/gltf; tools/gltf $<
$(POWERSTAR_DEP)&: shape/global/powerstar/powerstar.glb tools/gltf; tools/gltf $<
$(SHADESTAR_DEP)&: shape/global/shadestar/shadestar.glb tools/gltf; tools/gltf $<
$(SIGNPOST_DEP)&: shape/global/signpost/signpost.glb tools/gltf; tools/gltf $<
$(TREE_DEP)&: shape/global/tree/tree.glb tools/gltf; tools/gltf $<
# Title
$(LOGO_DEP)&: stage/title/logo.glb tools/gltf; tools/gltf $<
$(DEBUG_DEP)&: stage/title/debug.glb tools/gltf; tools/gltf -g $<
# Select
$(FILE_DEP)&: stage/select/file/file.glb tools/gltf; tools/gltf $<
$(TILE_DEP)&: stage/select/tile/tile.glb tools/gltf; tools/gltf $<
# BoB
$(BATTLEFIELD_DEP)&: stage/bob/battlefield/battlefield.glb tools/gltf; tools/gltf $<
$(BOB_54_DEP)&: stage/bob/54/54.glb tools/gltf; tools/gltf $<
$(BOB_55_DEP)&: stage/bob/55/55.glb tools/gltf; tools/gltf $<
$(BOB_56_DEP)&: stage/bob/56/56.glb tools/gltf; tools/gltf $<

# Common
shape/3common/bluecoinsw/map.h: shape/3common/bluecoinsw/bluecoinsw.obj tools/obj; tools/obj $< $@
shape/3common/cannonlid/map.h: shape/3common/cannonlid/cannonlid.obj tools/obj; tools/obj $< $@
shape/3common/purplesw/map.h: shape/3common/purplesw/purplesw.obj tools/obj; tools/obj $< $@
shape/3common/lift/map.h: shape/3common/lift/lift.obj tools/obj; tools/obj $< $@
shape/3common/block/map.h: shape/3common/block/block.obj tools/obj; tools/obj $< $@
shape/3common/pushblock/map.h: shape/3common/pushblock/pushblock.obj tools/obj; tools/obj $< $@
shape/3common/dotbox/map.h: shape/3common/dotbox/dotbox.obj tools/obj; tools/obj $< $@
shape/3common/testlift/map.h: shape/3common/testlift/testlift.obj tools/obj; tools/obj $< $@
# Global
shape/global/pipe/map.h: shape/global/pipe/pipe.obj tools/obj; tools/obj $< $@
shape/global/map/door.h: shape/global/map/door.obj tools/obj; tools/obj $< $@
shape/global/map/13002018.h: shape/global/map/13002018.obj tools/obj; tools/obj $< $@
shape/global/signpost/map.h: shape/global/signpost/signpost.obj tools/obj; tools/obj $< $@
# Select
stage/select/map.h: stage/select/select.obj tools/obj; tools/obj $< $@
# BoB
stage/bob/battlefield/map.h: stage/bob/battlefield/battlefield.obj tools/obj; tools/obj $< $@
stage/bob/54/map.h: stage/bob/54/54.obj tools/obj; tools/obj $< $@
stage/bob/55/map.h: stage/bob/55/55.obj tools/obj; tools/obj $< $@
stage/bob/56/map.h: stage/bob/56/56.obj tools/obj; tools/obj $< $@
