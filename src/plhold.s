.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_hold_80274EB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	lw      $a1, 0x001C($sp)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 18$
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
18$:
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_hold_80274F10
pl_hold_80274F10:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 15$
	nop
	li.u    $t9, 0x04000440
	li.u    $t0, 0x04808459
	li.l    $t0, 0x04808459
	li.l    $t9, 0x04000440
	sw      $t9, 0x0024($sp)
	b       21$
	sw      $t0, 0x0020($sp)
15$:
	li.u    $t1, 0x0C400201
	li.u    $t2, 0x0C008220
	li.l    $t2, 0x0C008220
	li.l    $t1, 0x0C400201
	sw      $t1, 0x0024($sp)
	sw      $t2, 0x0020($sp)
21$:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x001C($t3)
	sltiu   $at, $t4, 0x000A
	beqz    $at, L80275308
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(pl_hold_80336ED0)
	addu    $at, $at, $t4
	lw      $t4, %lo(pl_hold_80336ED0)($at)
	jr      $t4
	nop
.globl L80274F90
L80274F90:
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x241E8081
	li.l    $a0, 0x241E8081
	lw      $a1, 0x0088($t5)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
.globl L80274FA8
L80274FA8:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0067
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 49$
	nop
	lw      $t7, 0x0028($sp)
	li      $t6, 0x0002
	b       52$
	sw      $t6, 0x001C($t7)
49$:
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0001
	sw      $t8, 0x001C($t9)
52$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0088($t0)
	lh      $t2, 0x0040($t1)
	slti    $at, $t2, 0x0002
	bnez    $at, 69$
	nop
	jal     collision_8024CC7C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 64$
	nop
	b       258$
	li      $v0, 0x0001
64$:
	lw      $t3, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t4, 0x0004($t3)
	or      $t5, $t4, $at
	sw      $t5, 0x0004($t3)
69$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0002
	lw      $t7, 0x001C($t6)
	bne     $t7, $at, 78$
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0004
	lw      $t0, 0x0098($t9)
	sb      $t8, 0x000B($t0)
78$:
	b       L80275308
	nop
.globl L80275050
L80275050:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0069
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0088($t1)
	lh      $t4, 0x0040($t2)
	bgtz    $t4, 93$
	nop
	lw      $t5, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t3, 0x0004($t5)
	or      $t6, $t3, $at
	sw      $t6, 0x0004($t5)
93$:
	lw      $t7, 0x0028($sp)
	lhu     $t9, 0x0002($t7)
	andi    $t8, $t9, 0x2000
	beqz    $t8, 101$
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0003
	sw      $t0, 0x001C($t1)
101$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 109$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	jal     pl_set_state
	move    $a2, $0
109$:
	b       L80275308
	nop
.globl L802750CC
L802750CC:
	lw      $t2, 0x0028($sp)
	li.u    $a0, 0x24248081
	li.l    $a0, 0x24248081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
.globl L802750E4
L802750E4:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0068
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 128$
	nop
	lw      $t3, 0x0028($sp)
	li      $t4, 0x0005
	b       131$
	sw      $t4, 0x001C($t3)
128$:
	lw      $t5, 0x0028($sp)
	li      $t6, 0x0004
	sw      $t6, 0x001C($t5)
131$:
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x0088($t7)
	lh      $t8, 0x0040($t9)
	blez    $t8, 141$
	nop
	lw      $t0, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t1, 0x0004($t0)
	or      $t2, $t1, $at
	sw      $t2, 0x0004($t0)
141$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0005
	lw      $t3, 0x001C($t4)
	bne     $t3, $at, 150$
	nop
	lw      $t5, 0x0028($sp)
	li      $t6, 0x0044
	lw      $t7, 0x0098($t5)
	sb      $t6, 0x000B($t7)
150$:
	b       L80275308
	nop
.globl L80275170
L80275170:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x006A
	lw      $t9, 0x0028($sp)
	lw      $t8, 0x0088($t9)
	lh      $t1, 0x0040($t8)
	bgtz    $t1, 165$
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t0, 0x0004($t2)
	or      $t4, $t0, $at
	sw      $t4, 0x0004($t2)
165$:
	lw      $t3, 0x0028($sp)
	lhu     $t5, 0x0002($t3)
	andi    $t6, $t5, 0x2000
	beqz    $t6, 173$
	nop
	lw      $t9, 0x0028($sp)
	li      $t7, 0x0006
	sw      $t7, 0x001C($t9)
173$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 181$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	jal     pl_set_state
	move    $a2, $0
181$:
	b       L80275308
	nop
.globl L802751EC
L802751EC:
	li.u    $a1, 0x241F8081
	li.l    $a1, 0x241F8081
	lw      $a0, 0x0028($sp)
	jal     player_80251444
	li      $a2, 0x0001
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0066
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	bnez    $t8, 199$
	nop
	lw      $t0, 0x0028($sp)
	li      $t1, 0x0086
	lw      $t4, 0x0098($t0)
	sb      $t1, 0x000B($t4)
199$:
	lw      $t2, 0x001C($sp)
	bltz    $t2, 210$
	nop
	slti    $at, $t2, 0x0008
	beqz    $at, 210$
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x00200000
	lw      $t5, 0x0004($t3)
	or      $t6, $t5, $at
	sw      $t6, 0x0004($t3)
210$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 218$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	jal     pl_set_state
	move    $a2, $0
218$:
	b       L80275308
	nop
.globl L80275280
L80275280:
	li.u    $a1, 0x241F8081
	li.l    $a1, 0x241F8081
	lw      $a0, 0x0028($sp)
	jal     player_80251444
	li      $a2, 0x0001
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0071
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x0088($t7)
	lh      $t8, 0x0040($t9)
	sw      $t8, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	slti    $at, $t0, 0x0002
	bnez    $at, 244$
	nop
	slti    $at, $t0, 0x0008
	beqz    $at, 244$
	nop
	lw      $t1, 0x0028($sp)
	li      $at, 0x00400000
	lw      $t4, 0x0004($t1)
	or      $t2, $t4, $at
	sw      $t2, 0x0004($t1)
244$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 252$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
252$:
	b       L80275308
	nop
.globl L80275308
L80275308:
	b       258$
	move    $v0, $0
	b       258$
	nop
258$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_hold_80275328:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       77$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x000F
	beqz    $t1, 24$
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       77$
	nop
24$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0018($t2)
	bnez    $t3, 39$
	nop
	lhu     $t4, 0x0002($t2)
	andi    $t5, $t4, 0x0080
	beqz    $t5, 39$
	nop
	li.u    $a1, 0x018008AC
	li.l    $a1, 0x018008AC
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       77$
	nop
39$:
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x001C($t8)
	bnez    $t9, 49$
	nop
	lw      $t1, 0x0018($sp)
	li      $t0, 0x0007
	sh      $t0, 0x001A($t1)
49$:
	lw      $t3, 0x0018($sp)
	lui     $t4, %hi(pl_hold_8032DD40)
	lhu     $t2, 0x001A($t3)
	move    $a0, $t3
	addu    $t4, $t4, $t2
	lb      $t4, %lo(pl_hold_8032DD40)($t4)
	mtc1    $t4, $f4
	nop
	cvt.s.w $f4, $f4
	mfc1    $a1, $f4
	jal     player_80251708
	nop
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	blez    $t6, 69$
	nop
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t9, $t8, -0x0001
	sh      $t9, 0x001A($t7)
69$:
	jal     pl_hold_80274F10
	lw      $a0, 0x0018($sp)
	jal     physics_80255D88
	lw      $a0, 0x0018($sp)
	b       77$
	move    $v0, $0
	b       77$
	nop
77$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hold_8027546C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       96$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       96$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0018($t2)
	bnez    $t3, 45$
	nop
	jal     player_80250940
	move    $a0, $t2
	beqz    $v0, 45$
	nop
	jal     collision_8024C66C
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x24068081
	li.l    $a1, 0x24068081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0001
	sh      $t4, 0x0018($t5)
45$:
	lw      $t6, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t7, 0x0018($t6)
	bne     $t7, $at, 90$
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x007C($t8)
	lw      $t0, 0x0190($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 74$
	nop
	lw      $t2, 0x0018($sp)
	li      $t3, 0x0002
	lw      $t4, 0x0098($t2)
	sb      $t3, 0x000A($t4)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0059
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 72$
	nop
	li.u    $a1, 0x08000208
	li.l    $a1, 0x08000208
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
72$:
	b       90$
	nop
74$:
	lw      $t6, 0x0018($sp)
	li      $t5, 0x0001
	lw      $t7, 0x0098($t6)
	sb      $t5, 0x000A($t7)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x006B
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 90$
	nop
	li.u    $a1, 0x08000207
	li.l    $a1, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
90$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	b       96$
	move    $v0, $0
	b       96$
	nop
96$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hold_802755FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       47$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       47$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0008
	beqz    $t4, 38$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       47$
	nop
38$:
	li.u    $a2, 0x08000207
	li.l    $a2, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_hold_80274EB0
	li      $a1, 0x008B
	b       47$
	move    $v0, $0
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hold_802756C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       47$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       47$
	nop
27$:
	lw      $t2, 0x0018($sp)
	li      $at, 0x0008
	lhu     $t3, 0x001A($t2)
	addiu   $t4, $t3, 0x0001
	sh      $t4, 0x001A($t2)
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, 38$
	nop
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
38$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_hold_80274EB0
	li      $a1, 0x006E
	b       47$
	move    $v0, $0
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hold_80275794:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	beqz    $t7, 17$
	nop
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0010
	beqz    $t9, 17$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0387
	jal     pl_set_state
	move    $a2, $0
	b       71$
	nop
17$:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, 29$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       71$
	nop
29$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0004
	beqz    $t5, 41$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       71$
	nop
41$:
	lw      $t6, 0x0018($sp)
	li      $at, 0x0007
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, 62$
	nop
	jal     collision_8024C780
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x24078081
	li.l    $a1, 0x24078081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a1, 0x04358081
	li.l    $a1, 0x04358081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
62$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_hold_80274EB0
	li      $a1, 0x0065
	b       71$
	move    $v0, $0
	b       71$
	nop
71$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hold_802758C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       57$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       57$
	nop
27$:
	lw      $t2, 0x0018($sp)
	li      $at, 0x000D
	lhu     $t3, 0x001A($t2)
	addiu   $t4, $t3, 0x0001
	sh      $t4, 0x001A($t2)
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, 48$
	nop
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x24078081
	li.l    $a1, 0x24078081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a1, 0x04358081
	li.l    $a1, 0x04358081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
48$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_hold_80274EB0
	li      $a1, 0x00B9
	b       57$
	move    $v0, $0
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hold_802759B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       47$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       47$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0008
	beqz    $t4, 38$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       47$
	nop
38$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_hold_80274EB0
	li      $a1, 0x005A
	b       47$
	move    $v0, $0
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hold_80275A80:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 24$
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
	lw      $t0, 0x0018($sp)
	sh      $0, 0x0034($t0)
	lw      $t2, 0x0018($sp)
	li      $t1, 0x0003
	lw      $t3, 0x0098($t2)
	sb      $t1, 0x000A($t3)
	jal     collision_8024C66C
	lw      $a0, 0x0018($sp)
	lw      $t4, 0x0018($sp)
	li.u    $a0, 0x24068081
	li.l    $a0, 0x24068081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
24$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00B5
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 35$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0391
	jal     pl_set_state
	move    $a2, $0
35$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	b       41$
	move    $v0, $0
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hold_80275B34:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 37$
	nop
	lw      $t9, 0x0028($sp)
	lh      $t0, 0x0034($t9)
	slti    $at, $t0, -0x0DFF
	bnez    $at, 17$
	nop
	slti    $at, $t0, 0x0E00
	bnez    $at, 25$
	nop
17$:
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x24368081
	li.l    $a0, 0x24368081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       31$
	nop
25$:
	lw      $t2, 0x0028($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
31$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0392
	jal     pl_set_state
	move    $a2, $0
	b       204$
	nop
37$:
	lw      $t3, 0x0028($sp)
	lh      $t4, 0x0034($t3)
	bnez    $t4, 61$
	nop
	lw      $t5, 0x0028($sp)
	li      $at, 0x0078
	lhu     $s0, 0x001A($t5)
	lhu     $t7, 0x001A($t5)
	slt     $t6, $at, $s0
	move    $s0, $t6
	addiu   $t8, $t7, 0x0001
	beqz    $s0, 56$
	sh      $t8, 0x001A($t5)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0392
	jal     pl_set_state
	li      $a2, 0x0001
	b       204$
	nop
56$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00B8
	b       66$
	nop
61$:
	lw      $t9, 0x0028($sp)
	sh      $0, 0x001A($t9)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00B6
66$:
	lw      $t0, 0x0028($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    134$
	nop
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x001C($t1)
	bnez    $t2, 85$
	nop
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0001
	sw      $t3, 0x001C($t4)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x0024($t6)
	b       132$
	sh      $t7, 0x003A($t6)
85$:
	lw      $t8, 0x0028($sp)
	lh      $t5, 0x0024($t8)
	lh      $t9, 0x003A($t8)
	subu    $t0, $t5, $t9
	sll     $t1, $t0, 16
	sra     $t2, $t1, 16
	bgez    $t2, 95$
	sra     $t3, $t2, 7
	addiu   $at, $t2, 0x007F
	sra     $t3, $at, 7
95$:
	sh      $t3, 0x0026($sp)
	lh      $t4, 0x0026($sp)
	slti    $at, $t4, -0x0080
	beqz    $at, 102$
	nop
	li      $t7, -0x0080
	sh      $t7, 0x0026($sp)
102$:
	lh      $t6, 0x0026($sp)
	slti    $at, $t6, 0x0081
	bnez    $at, 108$
	nop
	li      $t8, 0x0080
	sh      $t8, 0x0026($sp)
108$:
	lw      $t5, 0x0028($sp)
	lh      $t9, 0x0024($t5)
	sh      $t9, 0x003A($t5)
	lw      $t0, 0x0028($sp)
	lh      $t2, 0x0026($sp)
	lh      $t1, 0x0034($t0)
	addu    $t3, $t1, $t2
	sh      $t3, 0x0034($t0)
	lw      $t4, 0x0028($sp)
	lh      $t7, 0x0034($t4)
	slti    $at, $t7, 0x1001
	bnez    $at, 124$
	nop
	lw      $t8, 0x0028($sp)
	li      $t6, 0x1000
	sh      $t6, 0x0034($t8)
124$:
	lw      $t9, 0x0028($sp)
	lh      $t5, 0x0034($t9)
	slti    $at, $t5, -0x1000
	beqz    $at, 132$
	nop
	lw      $t2, 0x0028($sp)
	li      $t1, -0x1000
	sh      $t1, 0x0034($t2)
132$:
	b       144$
	nop
134$:
	lw      $t3, 0x0028($sp)
	sw      $0, 0x001C($t3)
	lw      $t0, 0x0028($sp)
	move    $a1, $0
	li      $a2, 0x0040
	li      $a3, 0x0040
	jal     convergei
	lh      $a0, 0x0034($t0)
	lw      $t4, 0x0028($sp)
	sh      $v0, 0x0034($t4)
144$:
	lw      $t7, 0x0028($sp)
	lh      $t6, 0x002E($t7)
	sh      $t6, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x002E($t8)
	lh      $t5, 0x0034($t8)
	addu    $t1, $t9, $t5
	sh      $t1, 0x002E($t8)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0034($t2)
	slti    $at, $t3, -0x00FF
	beqz    $at, 168$
	nop
	lh      $t0, 0x0026($sp)
	lh      $t4, 0x002E($t2)
	slt     $at, $t0, $t4
	beqz    $at, 168$
	nop
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x50070081
	li.l    $a0, 0x50070081
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
168$:
	lw      $t6, 0x0028($sp)
	lh      $t9, 0x0034($t6)
	slti    $at, $t9, 0x0100
	bnez    $at, 184$
	nop
	lh      $t5, 0x0026($sp)
	lh      $t1, 0x002E($t6)
	slt     $at, $t1, $t5
	beqz    $at, 184$
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x50070081
	li.l    $a0, 0x50070081
	lw      $a1, 0x0088($t8)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
184$:
	jal     physics_80255A34
	lw      $a0, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	lh      $t2, 0x0034($t3)
	bltz    $t2, 196$
	nop
	lw      $t0, 0x0028($sp)
	lh      $t4, 0x0034($t0)
	lw      $t9, 0x0088($t0)
	subu    $t7, $0, $t4
	b       200$
	sh      $t7, 0x001A($t9)
196$:
	lw      $t6, 0x0028($sp)
	lh      $t5, 0x0034($t6)
	lw      $t1, 0x0088($t6)
	sh      $t5, 0x001A($t1)
200$:
	b       204$
	move    $v0, $0
	b       204$
	nop
204$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_hold_80275E78:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, 22$
	nop
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x001C($t1)
	bnez    $t2, 20$
	nop
	jal     collision_8024C780
	lw      $a0, 0x0018($sp)
	b       22$
	nop
20$:
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
22$:
	lw      $t3, 0x0018($sp)
	sh      $0, 0x0034($t3)
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_hold_80274EB0
	li      $a1, 0x00B7
	b       33$
	move    $v0, $0
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hold_80275F0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0076($t6)
	addiu   $t8, $t7, -0x0064
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x0040($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    21$
	nop
	jal     player_80253488
	lw      $a0, 0x0020($sp)
	b       49$
	nop
21$:
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0040
	beqz    $t2, 33$
	nop
	li.u    $a1, 0x00020339
	li.l    $a1, 0x00020339
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       49$
	nop
33$:
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x00AE($t3)
	slti    $at, $t4, 0x0100
	beqz    $at, 45$
	nop
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       49$
	nop
45$:
	b       49$
	move    $v0, $0
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl pl_hold_exec
pl_hold_exec:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_hold_80275F0C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 10$
	nop
	b       119$
	li      $v0, 0x0001
10$:
	lw      $a0, 0x0028($sp)
	jal     physics_80255414
	li      $a1, 0x3F000000
	beqz    $v0, 17$
	nop
	b       119$
	li      $v0, 0x0001
17$:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x00800381
	li.l    $at, 0x00800381
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, 34$
	nop
	li.u    $at, 0x80000588
	li.l    $at, 0x80000588
	beq     $s0, $at, 78$
	nop
	li.u    $at, 0x80000589
	li.l    $at, 0x80000589
	beq     $s0, $at, 83$
	nop
	b       L8027617C
	nop
34$:
	sltiu   $at, $s0, 0x0393
	bnez    $at, 43$
	nop
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	beq     $s0, $at, 53$
	nop
	b       L8027617C
	nop
43$:
	addiu   $t7, $s0, -0x0383
	sltiu   $at, $t7, 0x0010
	beqz    $at, L8027617C
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_hold_80336EF8)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_hold_80336EF8)($at)
	jr      $t7
	nop
53$:
	jal     pl_hold_80275328
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L802760C8
L802760C8:
	jal     pl_hold_8027546C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L802760DC
L802760DC:
	jal     pl_hold_802755FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L802760F0
L802760F0:
	jal     pl_hold_802759B4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L80276104
L80276104:
	jal     pl_hold_802756C8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
78$:
	jal     pl_hold_80275794
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
83$:
	jal     pl_hold_802758C0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L80276140
L80276140:
	jal     pl_hold_80275A80
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L80276154
L80276154:
	jal     pl_hold_80275B34
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L80276168
L80276168:
	jal     pl_hold_80275E78
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L8027617C
L8027617C:
	lw      $t8, 0x0024($sp)
	bnez    $t8, 115$
	nop
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0200
	beqz    $t1, 115$
	nop
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0008($t2)
	ori     $t4, $t3, 0x0080
	sw      $t4, 0x0008($t2)
115$:
	b       119$
	lw      $v0, 0x0024($sp)
	b       119$
	nop
119$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
