o_13002FA0:
	oInit(OT_ITEM)
	oSetFlag(O_FLAG, OF_0001)
	oSetF(O_SHAPE_OFFSET, -16)
	oBillboard()
	oSetI(O_SHAPE_CODE, -1)
	oWhile()
		oAddI(O_SHAPE_CODE, 1)
	oWend()

.globl o_fileback
o_fileback:
	oInit(OT_ITEM)
	oSetFlag(O_FLAG, OF_0001)
	oCallback(fileback_init)
	oWhile()
		oSetI(O_HIT_TIMER, 0)
		oCallback(fileback_proc)
	oWend()

.globl o_filetile
o_filetile:
	oInit(OT_ITEM)
	oSetFlag(O_FLAG, OF_0001)
	oCallback(filetile_init)
	oWhile()
		oSetI(O_HIT_TIMER, 0)
		oCallback(filetile_proc)
	oWend()

.globl o_filemenu
o_filemenu:
	oInit(OT_ITEM)
	oSetFlag(O_FLAG, OF_0001|OF_0020|OF_0800)
	oCallback(filemenu_init)
	oWhile()
		oSetI(O_HIT_TIMER, 0)
		oCallback(filemenu_proc)
	oWend()

.globl o_selectstar
o_selectstar:
	oInit(OT_DEFAULT)
	oSetFlag(O_FLAG, OF_0001)
	oSavePos()
	oWhile()
		oCallback(selectstar_proc)
	oWend()

.globl o_starmenu
o_starmenu:
	oInit(OT_DEFAULT)
	oSetFlag(O_FLAG, OF_0001)
	oCallback(starmenu_init)
	oWhile()
		oCallback(starmenu_proc)
	oWend()
