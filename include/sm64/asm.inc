.macro li.u rt, imm
	.if ((\imm) & 0xFFFF8000) == 0 || ((\imm) & 0xFFFF8000) == 0xFFFF8000
	.elseif (\imm) >> 16 == 0
	.else
		lui     \rt, (\imm) >> 16
	.endif
.endm

.macro li.l rt, imm
	.if ((\imm) & 0xFFFF8000) == 0 || ((\imm) & 0xFFFF8000) == 0xFFFF8000
		addiu   \rt, $0, (\imm) & 0xFFFF
	.elseif (\imm) >> 16 == 0
		ori     \rt, $0, (\imm) & 0xFFFF
	.else
		ori     \rt, (\imm) & 0xFFFF
	.endif
.endm

.macro la.u rt, imm
	lui     \rt, %hi(\imm)
.endm

.macro la.l rt, imm
	addiu   \rt, %lo(\imm)
.endm
