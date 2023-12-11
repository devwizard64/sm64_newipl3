.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_wait_802608B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(pl_wait_80336970)
	lwc1    $f6, %lo(pl_wait_80336970)($at)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x0020($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    21$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     physics_80255654
	move    $a2, $0
	b       123$
	nop
21$:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, 33$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       123$
	nop
33$:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, 45$
	nop
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       123$
	nop
45$:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0004
	beqz    $t6, 57$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       123$
	nop
57$:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 68$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       123$
	nop
68$:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0010
	beqz    $t2, 80$
	nop
	li.u    $a1, 0x0C000227
	li.l    $a1, 0x0C000227
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       123$
	nop
80$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, 95$
	nop
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0024($t6)
	sh      $t7, 0x002E($t6)
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       123$
	nop
95$:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, 107$
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       123$
	nop
107$:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x4000
	beqz    $t3, 119$
	nop
	li.u    $a1, 0x0C008221
	li.l    $a1, 0x0C008221
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       123$
	nop
119$:
	b       123$
	move    $v0, $0
	b       123$
	nop
123$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80260AAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(pl_wait_80336974)
	lwc1    $f6, %lo(pl_wait_80336974)($at)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x0020($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    19$
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     physics_80255654
	move    $a2, $0
	b       126$
	nop
19$:
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x007C($t8)
	lw      $t0, 0x0190($t9)
	andi    $t1, $t0, 0x0040
	beqz    $t1, 37$
	nop
	lw      $t2, 0x0018($sp)
	li      $at, -0x0041
	lw      $t3, 0x007C($t2)
	lw      $t4, 0x0190($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x0190($t3)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0387
	jal     pl_set_state
	move    $a2, $0
	b       126$
	nop
37$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 49$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       126$
	nop
49$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 61$
	nop
	li.u    $a1, 0x030008A0
	li.l    $a1, 0x030008A0
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       126$
	nop
61$:
	lw      $t2, 0x0018($sp)
	lhu     $t4, 0x0002($t2)
	andi    $t5, $t4, 0x0004
	beqz    $t5, 73$
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       126$
	nop
73$:
	lw      $t3, 0x0018($sp)
	lhu     $t6, 0x0002($t3)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 84$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0051
	jal     pl_set_state
	move    $a2, $0
	b       126$
	nop
84$:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 98$
	nop
	lw      $t1, 0x0018($sp)
	lh      $t2, 0x0024($t1)
	sh      $t2, 0x002E($t1)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0442
	jal     pl_set_state
	move    $a2, $0
	b       126$
	nop
98$:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t3, $t5, 0x2000
	beqz    $t3, 110$
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       126$
	nop
110$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, 122$
	nop
	li.u    $a1, 0x0C008221
	li.l    $a1, 0x0C008221
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       126$
	nop
122$:
	b       126$
	move    $v0, $0
	b       126$
	nop
126$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80260CB4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    19$
	nop
	li.u    $a1, 0x0002020D
	li.l    $a1, 0x0002020D
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       179$
	nop
19$:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0100
	beqz    $t9, 31$
	nop
	li.u    $a1, 0x0C40020A
	li.l    $a1, 0x0C40020A
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       179$
	nop
31$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x001C($t0)
	andi    $t2, $t1, 0x0001
	bnez    $t2, 47$
	nop
	lh      $t3, 0x00AE($t0)
	slti    $at, $t3, 0x0300
	beqz    $at, 47$
	nop
	li.u    $a1, 0x0C400205
	li.l    $a1, 0x0C400205
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       179$
	nop
47$:
	jal     pl_wait_802608B0
	lw      $a0, 0x0028($sp)
	beqz    $v0, 53$
	nop
	b       179$
	li      $v0, 0x0001
53$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0003
	lhu     $t5, 0x0018($t4)
	bne     $t5, $at, 81$
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x0002
	lw      $t7, 0x0090($t6)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0007
	bne     $t9, $at, 74$
	nop
	li.u    $a1, 0x0C40020B
	li.l    $a1, 0x0C40020B
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       179$
	nop
	b       81$
	nop
74$:
	li.u    $a1, 0x0C400202
	li.l    $a1, 0x0C400202
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       179$
	nop
81$:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x001C($t1)
	andi    $t0, $t2, 0x0001
	beqz    $t0, 91$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x007E
	b       173$
	nop
91$:
	lw      $t3, 0x0028($sp)
	lhu     $s0, 0x0018($t3)
	beqz    $s0, 103$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 108$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 113$
	nop
	b       118$
	nop
103$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C3
	b       118$
	nop
108$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C4
	b       118$
	nop
113$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C5
	b       118$
	nop
118$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 173$
	nop
	lw      $t4, 0x0028($sp)
	li      $at, 0x0003
	lhu     $t5, 0x0018($t4)
	addiu   $t6, $t5, 0x0001
	sh      $t6, 0x0018($t4)
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0018($t7)
	bne     $t8, $at, 173$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, -0x8000
	jal     player_80251F24
	li      $a2, 0x42700000
	lw      $t9, 0x0028($sp)
	lwc1    $f8, 0x0040($t9)
	sub.s   $f10, $f8, $f0
	swc1    $f10, 0x0024($sp)
	li      $at, 0xC1C00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1t    159$
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f16
	nop
	bc1t    159$
	nop
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0068($t1)
	lb      $t0, 0x0004($t2)
	andi    $t3, $t0, 0x0001
	beqz    $t3, 162$
	nop
159$:
	lw      $t5, 0x0028($sp)
	b       173$
	sh      $0, 0x0018($t5)
162$:
	lw      $t6, 0x0028($sp)
	lhu     $t4, 0x001A($t6)
	addiu   $t7, $t4, 0x0001
	sh      $t7, 0x001A($t6)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x000A
	beqz    $at, 173$
	nop
	lw      $t1, 0x0028($sp)
	sh      $0, 0x0018($t1)
173$:
	jal     physics_80255A34
	lw      $a0, 0x0028($sp)
	b       179$
	move    $v0, $0
	b       179$
	nop
179$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_80260F94:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lhu     $t7, 0x0018($t6)
	bne     $t7, $t8, 21$
	nop
	lw      $t9, 0x0088($t6)
	lw      $t1, 0x0020($sp)
	lh      $t0, 0x0040($t9)
	bne     $t0, $t1, 21$
	nop
	lw      $t2, 0x0018($sp)
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261000:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_wait_802608B0
	lw      $a0, 0x0028($sp)
	beqz    $v0, 10$
	nop
	b       149$
	li      $v0, 0x0001
10$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    25$
	nop
	li.u    $a1, 0x0002020D
	li.l    $a1, 0x0002020D
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       149$
	nop
25$:
	lw      $t7, 0x0028($sp)
	li      $at, 0x0004
	lhu     $t8, 0x0018($t7)
	bne     $t8, $at, 37$
	nop
	li.u    $a1, 0x0C000203
	li.l    $a1, 0x0C000203
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       149$
	nop
37$:
	lw      $t9, 0x0028($sp)
	lhu     $s0, 0x0018($t9)
	beqz    $s0, 52$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 58$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 64$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 74$
	nop
	b       84$
	nop
52$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0081
	sw      $v0, 0x0024($sp)
	b       84$
	nop
58$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0082
	sw      $v0, 0x0024($sp)
	b       84$
	nop
64$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0083
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0002
	lw      $t2, 0x0098($t1)
	sb      $t0, 0x0005($t2)
	b       84$
	nop
74$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0084
	sw      $v0, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0002
	lw      $t5, 0x0098($t4)
	sb      $t3, 0x0005($t5)
	b       84$
	nop
84$:
	li.u    $a3, 0x043F8081
	li.l    $a3, 0x043F8081
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0001
	jal     pl_wait_80260F94
	li      $a2, 0x0029
	li.u    $a3, 0x043F8081
	li.l    $a3, 0x043F8081
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0001
	jal     pl_wait_80260F94
	li      $a2, 0x0031
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x04188081
	li.l    $at, 0x04188081
	lw      $a3, 0x0014($t6)
	li      $a1, 0x0003
	li      $a2, 0x000F
	move    $a0, $t6
	jal     pl_wait_80260F94
	addu    $a3, $a3, $at
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 113$
	nop
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0018($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x0018($t7)
113$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t0, 0x0018($t1)
	bne     $t0, $at, 128$
	nop
	lw      $t2, 0x0024($sp)
	li      $at, -0x0001
	bne     $t2, $at, 128$
	nop
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x240D8081
	li.l    $a0, 0x240D8081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
128$:
	lw      $t3, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t5, 0x0018($t3)
	bne     $t5, $at, 143$
	nop
	lw      $t6, 0x0024($sp)
	li      $at, -0x0001
	bne     $t6, $at, 143$
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x24378081
	li.l    $a0, 0x24378081
	lw      $a1, 0x0088($t8)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
143$:
	jal     physics_80255A34
	lw      $a0, 0x0028($sp)
	b       149$
	move    $v0, $0
	b       149$
	nop
149$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_80261268:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0xA41F
	beqz    $t8, 17$
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a1, 0x0C000204
	li.l    $a1, 0x0C000204
	move    $a0, $t9
	jal     pl_set_state
	lhu     $a2, 0x0018($t9)
	b       160$
	nop
17$:
	lw      $t0, 0x0028($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    33$
	nop
	lw      $t1, 0x0028($sp)
	li.u    $a1, 0x0C000204
	li.l    $a1, 0x0C000204
	move    $a0, $t1
	jal     pl_set_state
	lhu     $a2, 0x0018($t1)
	b       160$
	nop
33$:
	lw      $a0, 0x0028($sp)
	li      $a1, -0x8000
	jal     player_80251F24
	li      $a2, 0x42700000
	lw      $t2, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f16
	lwc1    $f8, 0x0040($t2)
	sub.s   $f10, $f8, $f0
	c.lt.s  $f16, $f10
	nop
	bc1f    54$
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a1, 0x0C000204
	li.l    $a1, 0x0C000204
	move    $a0, $t3
	jal     pl_set_state
	lhu     $a2, 0x0018($t3)
	b       160$
	nop
54$:
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0003
	lw      $t6, 0x0098($t5)
	sb      $t4, 0x0005($t6)
	jal     physics_80255A34
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	lhu     $s0, 0x0018($t7)
	beqz    $s0, 72$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 125$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 145$
	nop
	b       156$
	nop
72$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0085
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, -0x0001
	bne     $t8, $at, 86$
	nop
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	bnez    $t0, 86$
	nop
	jal     aud_set_mute
	li      $a0, 0x0002
86$:
	lw      $t1, 0x0024($sp)
	li      $at, 0x0002
	bne     $t1, $at, 96$
	nop
	lw      $t2, 0x0028($sp)
	li.u    $a0, 0x240E8081
	li.l    $a0, 0x240E8081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
96$:
	lw      $t3, 0x0024($sp)
	li      $at, 0x0014
	bne     $t3, $at, 106$
	nop
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x240F8081
	li.l    $a0, 0x240F8081
	lw      $a1, 0x0088($t5)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
106$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 123$
	nop
	lw      $t4, 0x0028($sp)
	lhu     $t6, 0x001A($t4)
	addiu   $t7, $t6, 0x0001
	sh      $t7, 0x001A($t4)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x002E
	bnez    $at, 123$
	nop
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0018($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x0018($t0)
123$:
	b       156$
	nop
125$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0086
	li      $at, 0x0012
	bne     $v0, $at, 135$
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251574
	lw      $a0, 0x0028($sp)
135$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 143$
	nop
	lw      $t3, 0x0028($sp)
	lhu     $t5, 0x0018($t3)
	addiu   $t6, $t5, 0x0001
	sh      $t6, 0x0018($t3)
143$:
	b       156$
	nop
145$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0087
	sw      $v0, 0x0024($sp)
	li.u    $a1, 0x2435FF81
	li.l    $a1, 0x2435FF81
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	b       156$
	nop
156$:
	b       160$
	move    $v0, $0
	b       160$
	nop
160$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_802614FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x001A($t6)
	bnez    $t7, 28$
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x240E8081
	li.l    $a0, 0x240E8081
	lw      $a1, 0x0088($t8)
	jal     Na_SeStop
	addiu   $a1, $a1, 0x0054
	lw      $t9, 0x0028($sp)
	li.u    $a0, 0x240F8081
	li.l    $a0, 0x240F8081
	lw      $a1, 0x0088($t9)
	jal     Na_SeStop
	addiu   $a1, $a1, 0x0054
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x2435FF81
	li.l    $a0, 0x2435FF81
	lw      $a1, 0x0088($t0)
	jal     Na_SeStop
	addiu   $a1, $a1, 0x0054
	jal     aud_clr_mute
	li      $a0, 0x0002
28$:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0400
	beqz    $t3, 40$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       95$
	nop
40$:
	lw      $t4, 0x0028($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0004
	beqz    $t6, 52$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       95$
	nop
52$:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 63$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       95$
	nop
63$:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x001A($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x001A($t0)
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x0015
	bnez    $at, 79$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       95$
	nop
79$:
	jal     physics_80255A34
	lw      $a0, 0x0028($sp)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x001C($t5)
	bnez    $t6, 87$
	nop
	b       88$
	li      $s0, 0x00C8
87$:
	li      $s0, 0x00C9
88$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	b       95$
	move    $v0, $0
	b       95$
	nop
95$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_8026168C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 16$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       142$
	nop
16$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 28$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       142$
	nop
28$:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0008
	beqz    $t4, 39$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       142$
	nop
39$:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0xA41F
	beqz    $t7, 47$
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0002
	sh      $t8, 0x0018($t9)
47$:
	jal     physics_80255A34
	lw      $a0, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	lhu     $s0, 0x0018($t0)
	beqz    $s0, 61$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 102$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 124$
	nop
	b       138$
	nop
61$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0019
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $at, 0x0031
	bne     $t1, $at, 80$
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x00020000
	lw      $t3, 0x0008($t2)
	or      $t4, $t3, $at
	sw      $t4, 0x0008($t2)
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x24168081
	li.l    $a0, 0x24168081
	lw      $a1, 0x0088($t5)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
80$:
	lw      $t6, 0x0024($sp)
	li      $at, 0x0007
	beq     $t6, $at, 87$
	nop
	li      $at, 0x0051
	bne     $t6, $at, 93$
	nop
87$:
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x062C0081
	li.l    $a0, 0x062C0081
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
93$:
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 100$
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
100$:
	b       138$
	nop
102$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x001B
	sw      $v0, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	li      $at, 0x0009
	beq     $t0, $at, 116$
	nop
	li      $at, 0x0019
	beq     $t0, $at, 116$
	nop
	li      $at, 0x002C
	bne     $t0, $at, 122$
	nop
116$:
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x062C0081
	li.l    $a0, 0x062C0081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
122$:
	b       138$
	nop
124$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x001A
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 136$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
136$:
	b       138$
	nop
138$:
	b       142$
	move    $v0, $0
	b       142$
	nop
142$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_802618D8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_wait_802608B0
	lw      $a0, 0x0020($sp)
	beqz    $v0, 9$
	nop
	b       58$
	li      $v0, 0x0001
9$:
	jal     physics_80255A34
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	li      $a1, 0x0030
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0019
	beq     $t6, $at, 22$
	nop
	li      $at, 0x0023
	bne     $t6, $at, 28$
	nop
22$:
	lw      $t7, 0x0020($sp)
	li.u    $a0, 0x241D8081
	li.l    $a0, 0x241D8081
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
28$:
	lw      $t8, 0x001C($sp)
	li      $at, 0x0032
	beq     $t8, $at, 35$
	nop
	li      $at, 0x003A
	bne     $t8, $at, 41$
	nop
35$:
	lw      $t9, 0x0020($sp)
	li.u    $a0, 0x241C8081
	li.l    $a0, 0x241C8081
	lw      $a1, 0x0088($t9)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
41$:
	lw      $t0, 0x001C($sp)
	li      $at, 0x0047
	beq     $t0, $at, 48$
	nop
	li      $at, 0x0050
	bne     $t0, $at, 54$
	nop
48$:
	lw      $t1, 0x0020($sp)
	li.u    $a0, 0x241B8081
	li.l    $a0, 0x241B8081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
54$:
	b       58$
	move    $v0, $0
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_wait_802619D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, o_13001650
	jal     segment_to_virtual
	la.l    $a0, o_13001650
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	lw      $t8, 0x020C($t7)
	bne     $v0, $t8, 17$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x08AE
	jal     pl_set_state
	move    $a2, $0
	b       60$
	nop
17$:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, 30$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       60$
	nop
30$:
	lw      $t3, 0x0018($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    45$
	nop
	li.u    $a1, 0x0002020D
	li.l    $a1, 0x0002020D
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       60$
	nop
45$:
	jal     pl_wait_80260AAC
	lw      $a0, 0x0018($sp)
	beqz    $v0, 51$
	nop
	b       60$
	li      $v0, 0x0001
51$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x003F
	b       60$
	move    $v0, $0
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261AD0:
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
	b       70$
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
	b       70$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0008
	beqz    $t4, 38$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80253178
	move    $a2, $0
	b       70$
	nop
38$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 49$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0447
	jal     pl_set_state
	move    $a2, $0
	b       70$
	nop
49$:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, 61$
	nop
	li.u    $a1, 0x80000589
	li.l    $a1, 0x80000589
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       70$
	nop
61$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x007D
	b       70$
	move    $v0, $0
	b       70$
	nop
70$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261BF8:
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
	b       57$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x000F
	beqz    $t1, 24$
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       57$
	nop
24$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0010
	beqz    $t4, 36$
	nop
	li.u    $a1, 0x0C000227
	li.l    $a1, 0x0C000227
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       57$
	nop
36$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x2000
	beqz    $t7, 48$
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       57$
	nop
48$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x007E
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	b       57$
	move    $v0, $0
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261CEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    18$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       46$
	nop
18$:
	jal     pl_wait_802608B0
	lw      $a0, 0x0018($sp)
	beqz    $v0, 24$
	nop
	b       46$
	li      $v0, 0x0001
24$:
	lw      $t7, 0x0018($sp)
	li      $at, 0x428C0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00C0($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    37$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0076
	b       40$
	nop
37$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0077
40$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	b       46$
	move    $v0, $0
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261DB4:
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
	b       107$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x01000883
	li.l    $a1, 0x01000883
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       107$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0004
	beqz    $t4, 39$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       107$
	nop
39$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 50$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       107$
	nop
50$:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0010
	beqz    $t0, 62$
	nop
	li.u    $a1, 0x0C008222
	li.l    $a1, 0x0C008222
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       107$
	nop
62$:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x4000
	bnez    $t3, 74$
	nop
	li.u    $a1, 0x0C008222
	li.l    $a1, 0x0C008222
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       107$
	nop
74$:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0001
	beqz    $t6, 86$
	nop
	li.u    $a1, 0x0C008223
	li.l    $a1, 0x0C008223
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       107$
	nop
86$:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x2000
	beqz    $t9, 98$
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	li      $a2, 0x0009
	b       107$
	nop
98$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0098
	b       107$
	move    $v0, $0
	b       107$
	nop
107$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261F70:
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
	b       64$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lh      $t0, 0x00AE($t9)
	slti    $at, $t0, 0x0500
	bnez    $at, 27$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       64$
	nop
27$:
	jal     pl_wait_802608B0
	lw      $a0, 0x0018($sp)
	beqz    $v0, 33$
	nop
	b       64$
	li      $v0, 0x0001
33$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00BA
	li      $at, 0x0001
	bne     $v0, $at, 54$
	nop
	lui     $a0, %hi(_Na_work_bss+0x5F18)
	lw      $a0, %lo(_Na_work_bss+0x5F18)($a0)
	li      $at, 0x0003
	lw      $t3, 0x0018($sp)
	divu    $0, $a0, $at
	mfhi    $t1
	move    $a0, $t1
	lw      $a1, 0x0088($t3)
	sll     $t2, $a0, 16
	li.u    $at, 0x24188081
	li.l    $at, 0x24188081
	move    $a0, $t2
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
54$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0002
	lw      $t6, 0x0098($t5)
	sb      $t4, 0x0005($t6)
	b       64$
	move    $v0, $0
	b       64$
	nop
64$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262080:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x0C400205
	li.l    $a1, 0x0C400205
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       59$
	nop
16$:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, 28$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       59$
	nop
28$:
	lw      $t3, 0x0018($sp)
	lh      $t4, 0x00AE($t3)
	slti    $at, $t4, 0x0500
	bnez    $at, 40$
	nop
	li.u    $a1, 0x08000207
	li.l    $a1, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
40$:
	jal     pl_wait_80260AAC
	lw      $a0, 0x0018($sp)
	beqz    $v0, 46$
	nop
	b       59$
	li      $v0, 0x0001
46$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00BA
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $t5, 0x0002
	lw      $t7, 0x0098($t6)
	sb      $t5, 0x0005($t7)
	b       59$
	move    $v0, $0
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_8026217C:
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

pl_wait_802621DC:
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
	b       60$
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
	b       60$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x2000
	beqz    $t4, 39$
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       60$
	nop
39$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0010
	bnez    $t7, 51$
	nop
	andi    $t8, $t6, 0x000F
	beqz    $t8, 51$
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       60$
	nop
51$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_8026217C
	li      $a1, 0x0010
	b       60$
	move    $v0, $0
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802622DC:
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
	b       43$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x000F
	beqz    $t1, 24$
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       43$
	nop
24$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_8026217C
	li      $a1, 0x008F
	lw      $t2, 0x0018($sp)
	li      $at, 0x0006
	lw      $t3, 0x0088($t2)
	lh      $t4, 0x0040($t3)
	bne     $t4, $at, 39$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
39$:
	b       43$
	move    $v0, $0
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262398:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       58$
	nop
16$:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, 28$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       58$
	nop
28$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x000F
	beqz    $t5, 37$
	nop
	jal     player_80253300
	lw      $a0, 0x0018($sp)
	b       58$
	nop
37$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 49$
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       58$
	nop
49$:
	li.u    $a2, 0x08000207
	li.l    $a2, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_wait_8026217C
	li      $a1, 0x0046
	b       58$
	move    $v0, $0
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262490:
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
	b       36$
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
	b       36$
	nop
27$:
	li.u    $a2, 0x0C008220
	li.l    $a2, 0x0C008220
	lw      $a0, 0x0018($sp)
	jal     pl_wait_8026217C
	li      $a1, 0x008D
	b       36$
	move    $v0, $0
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262530:
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
	b       68$
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
	b       68$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, 39$
	nop
	li.u    $a1, 0x01000883
	li.l    $a1, 0x01000883
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       68$
	nop
39$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 50$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       68$
	nop
50$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0097
	jal     player_8025097C
	lw      $a0, 0x0018($sp)
	beqz    $v0, 64$
	nop
	li.u    $a1, 0x0C008220
	li.l    $a1, 0x0C008220
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
64$:
	b       68$
	move    $v0, $0
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262650:
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
	b       68$
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
	b       68$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, 39$
	nop
	li.u    $a1, 0x01000883
	li.l    $a1, 0x01000883
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       68$
	nop
39$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 50$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       68$
	nop
50$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0096
	jal     player_8025097C
	lw      $a0, 0x0018($sp)
	beqz    $v0, 64$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
64$:
	b       68$
	move    $v0, $0
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262770:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x0C008222
	li.l    $a1, 0x0C008222
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       68$
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
	b       68$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0400
	beqz    $t4, 39$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       68$
	nop
39$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 50$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       68$
	nop
50$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x009B
	jal     player_8025097C
	lw      $a0, 0x0018($sp)
	beqz    $v0, 64$
	nop
	li.u    $a1, 0x04008448
	li.l    $a1, 0x04008448
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
64$:
	b       68$
	move    $v0, $0
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262890:
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
	b       56$
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
	b       56$
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
	b       56$
	nop
38$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x009A
	jal     player_8025097C
	lw      $a0, 0x0018($sp)
	beqz    $v0, 52$
	nop
	li.u    $a1, 0x0C008220
	li.l    $a1, 0x0C008220
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
52$:
	b       56$
	move    $v0, $0
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262980:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0010
	beqz    $t9, 17$
	nop
	li.u    $a1, 0x00020338
	li.l    $a1, 0x00020338
	lw      $a0, 0x0020($sp)
	move    $a2, $0
	jal     player_802531C4
	li      $a3, 0x0004
	b       141$
	nop
17$:
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x001A($t0)
	bnez    $t1, 35$
	nop
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0088($t2)
	lw      $t4, 0x0134($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 35$
	nop
	li.u    $a1, 0x00020462
	li.l    $a1, 0x00020462
	lw      $a0, 0x0020($sp)
	move    $a2, $0
	jal     player_802531C4
	li      $a3, 0x000C
	b       141$
	nop
35$:
	lw      $t6, 0x0020($sp)
	li      $at, 0x0030
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0020($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, 51$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       141$
	nop
51$:
	lw      $t1, 0x0020($sp)
	lhu     $t2, 0x001A($t1)
	bgez    $t2, 58$
	andi    $t3, $t2, 0x000F
	beqz    $t3, 58$
	nop
	addiu   $t3, $t3, -0x0010
58$:
	sll     $t4, $t3, 12
	sh      $t4, 0x001E($sp)
	lw      $t5, 0x0020($sp)
	li      $t6, 0x0006
	lhu     $t7, 0x001A($t5)
	bgez    $t7, 67$
	sra     $t8, $t7, 3
	addiu   $at, $t7, 0x0007
	sra     $t8, $at, 3
67$:
	subu    $t9, $t6, $t8
	mtc1    $t9, $f4
	li      $at, 0x41000000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	li      $at, 0x40800000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0048
	lhu     $t0, 0x001E($sp)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f6
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	c.le.s  $f6, $f4
	nop
	bc1f    110$
	nop
	lhu     $t3, 0x001E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x0018($sp)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f8, %lo(math_sin)($at)
	lw      $t7, 0x0020($sp)
	mul.s   $f16, $f8, $f10
	lwc1    $f18, 0x0070($t7)
	add.s   $f4, $f16, $f18
	b       122$
	swc1    $f4, 0x0040($t7)
110$:
	lhu     $t6, 0x001E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0018($sp)
	sra     $t8, $t6, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t0, 0x0020($sp)
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x0070($t0)
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x0040($t0)
122$:
	lw      $t1, 0x0020($sp)
	lw      $a0, 0x0088($t1)
	addiu   $a1, $t1, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t2, 0x0020($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t2)
	lh      $a2, 0x002E($t2)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	li      $a1, 0x000E
	b       141$
	move    $v0, $0
	b       141$
	nop
141$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_wait_80262BC4:
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
	beqz    $v0, 20$
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       24$
	nop
20$:
	b       24$
	move    $v0, $0
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262C34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, 16$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       73$
	nop
16$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0010
	beqz    $t1, 28$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       73$
	nop
28$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, 48$
	nop
	lw      $t5, 0x001C($sp)
	bnez    $t5, 42$
	nop
	jal     player_80252E5C
	lw      $a0, 0x0018($sp)
	b       73$
	nop
	b       48$
	nop
42$:
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     player_802530A0
	move    $a2, $0
	b       73$
	nop
48$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x000F
	beqz    $t8, 57$
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       73$
	nop
57$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, 69$
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       73$
	nop
69$:
	b       73$
	move    $v0, $0
	b       73$
	nop
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262D68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, 10$
	nop
	b       19$
	li      $v0, 0x0001
10$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x004E
	b       19$
	move    $v0, $0
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262DC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, 10$
	nop
	b       19$
	li      $v0, 0x0001
10$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x004B
	b       19$
	move    $v0, $0
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262E20:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, 10$
	nop
	b       25$
	li      $v0, 0x0001
10$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x00BE
	lw      $t6, 0x0018($sp)
	li      $at, 0x8000
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x001C($t7)
	addu    $t9, $t8, $at
	sh      $t9, 0x001C($t7)
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262E94:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, 10$
	nop
	b       19$
	li      $v0, 0x0001
10$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0057
	b       19$
	move    $v0, $0
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262EF0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	jal     pl_wait_80262C34
	lw      $a0, 0x0018($sp)
	beqz    $v0, 11$
	nop
	b       20$
	li      $v0, 0x0001
11$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x00C0
	b       20$
	move    $v0, $0
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262F50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, 13$
	nop
	lw      $t9, 0x0088($t6)
	lh      $t0, 0x0040($t9)
	slti    $at, $t0, 0x0006
	bnez    $at, 18$
	nop
13$:
	lw      $t1, 0x0018($sp)
	li      $at, -0x0003
	lhu     $t2, 0x0002($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t1)
18$:
	li.u    $a1, 0x01000883
	li.l    $a1, 0x01000883
	jal     pl_wait_80262C34
	lw      $a0, 0x0018($sp)
	beqz    $v0, 26$
	nop
	b       35$
	li      $v0, 0x0001
26$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x00C0
	b       35$
	move    $v0, $0
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262FEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x2011
	lhu     $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, 15$
	nop
	b       24$
	li      $v0, 0x0001
15$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0028
	b       24$
	move    $v0, $0
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_8026305C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, -0x2001
	lhu     $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	jal     pl_wait_80262C34
	lw      $a0, 0x0028($sp)
	beqz    $v0, 17$
	nop
	b       34$
	li      $v0, 0x0001
17$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0110($t0)
	bnez    $t1, 24$
	nop
	b       25$
	li      $s0, 0x0011
24$:
	li      $s0, 0x0012
25$:
	li.u    $a2, 0x0C008220
	li.l    $a2, 0x0C008220
	lw      $a0, 0x0028($sp)
	jal     pl_wait_80262BC4
	move    $a1, $s0
	b       34$
	move    $v0, $0
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_802630F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       58$
	nop
16$:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, 28$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       58$
	nop
28$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x000F
	beqz    $t5, 37$
	nop
	jal     player_80253300
	lw      $a0, 0x0018($sp)
	b       58$
	nop
37$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 49$
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       58$
	nop
49$:
	li.u    $a2, 0x08000207
	li.l    $a2, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0040
	b       58$
	move    $v0, $0
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802631F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       58$
	nop
16$:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, 28$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       58$
	nop
28$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x000F
	beqz    $t5, 37$
	nop
	jal     player_80253300
	lw      $a0, 0x0018($sp)
	b       58$
	nop
37$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 49$
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       58$
	nop
49$:
	li.u    $a2, 0x08000207
	li.l    $a2, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0042
	b       58$
	move    $v0, $0
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802632E8:
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
	li      $at, 0x0004
	lhu     $t3, 0x001A($t2)
	addiu   $t4, $t3, 0x0001
	sh      $t4, 0x001A($t2)
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, 38$
	nop
	jal     collision_8024C780
	lw      $a0, 0x0018($sp)
38$:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0052
	b       47$
	move    $v0, $0
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802633B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, 18$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       82$
	nop
18$:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0004
	beqz    $t3, 30$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       82$
	nop
30$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0093
	lw      $t4, 0x0018($sp)
	lh      $t5, 0x0034($t4)
	blez    $t5, 54$
	nop
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0034($t6)
	addiu   $t8, $t7, -0x0400
	sh      $t8, 0x0034($t6)
	lw      $t9, 0x0018($sp)
	lh      $t0, 0x0034($t9)
	bgez    $t0, 49$
	nop
	lw      $t1, 0x0018($sp)
	sh      $0, 0x0034($t1)
49$:
	lw      $t2, 0x0018($sp)
	lh      $t3, 0x003A($t2)
	lh      $t4, 0x0034($t2)
	addu    $t5, $t3, $t4
	sh      $t5, 0x003A($t2)
54$:
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0088($t7)
	lh      $t9, 0x003A($t7)
	lh      $t6, 0x001C($t8)
	addu    $t0, $t6, $t9
	sh      $t0, 0x001C($t8)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 78$
	nop
	lw      $t1, 0x0018($sp)
	lh      $t3, 0x0034($t1)
	bnez    $t3, 78$
	nop
	lw      $t4, 0x0018($sp)
	lh      $t5, 0x002E($t4)
	lh      $t2, 0x003A($t4)
	addu    $t7, $t5, $t2
	sh      $t7, 0x002E($t4)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
78$:
	b       82$
	move    $v0, $0
	b       82$
	nop
82$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_8026350C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, 18$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       51$
	nop
18$:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0004
	beqz    $t3, 30$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       51$
	nop
30$:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0008
	beqz    $t6, 42$
	nop
	li.u    $a1, 0x00840452
	li.l    $a1, 0x00840452
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       51$
	nop
42$:
	li.u    $a2, 0x0C00023E
	li.l    $a2, 0x0C00023E
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x003A
	b       51$
	move    $v0, $0
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802635E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x040C
	sltu    $t9, $0, $t8
	sw      $t9, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0018($t0)
	bnez    $t1, 24$
	nop
	jal     aud_set_mute
	li      $a0, 0x0002
	lw      $t2, 0x0020($sp)
	li      $a1, 0x0006
	li      $a2, 0x0010
	lw      $t3, 0x0090($t2)
	jal     camera_80286188
	lw      $a0, 0x0024($t3)
	lw      $t5, 0x0020($sp)
	li      $t4, 0x0001
	b       47$
	sh      $t4, 0x0018($t5)
24$:
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, 32$
	nop
	lw      $t9, 0x001C($sp)
	beqz    $t9, 47$
	nop
32$:
	jal     aud_clr_mute
	li      $a0, 0x0002
	lw      $t0, 0x0020($sp)
	li      $a1, -0x0001
	li      $a2, 0x0001
	lw      $t1, 0x0090($t0)
	jal     camera_80286188
	lw      $a0, 0x0024($t1)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       99$
	nop
47$:
	lw      $t2, 0x0020($sp)
	li      $at, 0x002F
	lw      $t3, 0x0068($t2)
	lh      $t4, 0x0000($t3)
	bne     $t4, $at, 90$
	nop
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x000A
	bnez    $at, 90$
	nop
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0094($t5)
	lh      $t7, 0x0016($t6)
	sh      $t7, 0x001A($sp)
	lw      $t8, 0x0020($sp)
	li      $at, 0x0003
	lw      $t0, 0x0094($t8)
	lh      $t9, 0x002E($t8)
	lh      $t1, 0x0018($t0)
	sll     $t2, $t1, 2
	div     $0, $t2, $at
	mflo    $t3
	addu    $t4, $t9, $t3
	sh      $t4, 0x0018($sp)
	lh      $t5, 0x001A($sp)
	li      $at, -0x1800
	bne     $t5, $at, 90$
	nop
	lh      $t6, 0x0018($sp)
	slti    $at, $t6, -0x6FFF
	bnez    $at, 87$
	nop
	slti    $at, $t6, 0x7000
	bnez    $at, 90$
	nop
87$:
	lw      $a0, 0x0020($sp)
	jal     pl_fade
	li      $a1, 0x0001
90$:
	jal     physics_80255A34
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	li      $a1, 0x00C2
	b       99$
	move    $v0, $0
	b       99$
	nop
99$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_wait_80263784:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0064
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    27$
	nop
	lw      $t9, 0x0018($sp)
	li      $at, 0x1325
	lw      $t0, 0x000C($t9)
	bne     $t0, $at, 21$
	nop
	jal     game_init_msg
	move    $a0, $0
21$:
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	jal     player_80253488
	lw      $a0, 0x0018($sp)
	b       65$
	nop
27$:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0040
	beqz    $t3, 41$
	nop
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00020339
	li.l    $a1, 0x00020339
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       65$
	nop
41$:
	lw      $t4, 0x0018($sp)
	li.u    $at, 0x0002020E
	li.l    $at, 0x0002020E
	lw      $t5, 0x000C($t4)
	beq     $t5, $at, 61$
	nop
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x00AE($t6)
	slti    $at, $t7, 0x0100
	beqz    $at, 61$
	nop
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       65$
	nop
61$:
	b       65$
	move    $v0, $0
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_wait_exec
pl_wait_exec:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_wait_80263784
	lw      $a0, 0x0028($sp)
	beqz    $v0, 10$
	nop
	b       364$
	li      $v0, 0x0001
10$:
	lw      $a0, 0x0028($sp)
	jal     physics_80255414
	li      $a1, 0x3F000000
	beqz    $v0, 17$
	nop
	b       364$
	li      $v0, 0x0001
17$:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x08000440
	li.l    $at, 0x08000440
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, 107$
	nop
	li.u    $at, 0x0C008225
	li.l    $at, 0x0C008225
	sltu    $at, $s0, $at
	bnez    $at, 63$
	nop
	li.u    $at, 0x18800239
	li.l    $at, 0x18800239
	sltu    $at, $s0, $at
	bnez    $at, 40$
	nop
	li.u    $at, 0x80000A36
	li.l    $at, 0x80000A36
	beq     $s0, $at, 298$
	nop
	b       L80263E08
	nop
40$:
	li.u    $at, 0x0C40020C
	li.l    $at, 0x0C40020C
	sltu    $at, $s0, $at
	bnez    $at, 51$
	nop
	li.u    $at, 0x18800238
	li.l    $at, 0x18800238
	beq     $s0, $at, 308$
	nop
	b       L80263E08
	nop
51$:
	li.u    $at, 0xF3BFFDFF
	li.l    $at, 0xF3BFFDFF
	addu    $t7, $s0, $at
	sltiu   $at, $t7, 0x000B
	beqz    $at, L80263E08
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_wait_80336978)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_wait_80336978)($at)
	jr      $t7
	nop
63$:
	li.u    $at, 0x0C000205
	li.l    $at, 0x0C000205
	sltu    $at, $s0, $at
	bnez    $at, 97$
	nop
	li.u    $at, 0x0C00023F
	li.l    $at, 0x0C00023F
	sltu    $at, $s0, $at
	bnez    $at, 85$
	nop
	li.u    $at, 0xF3FF7DE0
	li.l    $at, 0xF3FF7DE0
	addu    $t8, $s0, $at
	sltiu   $at, $t8, 0x0005
	beqz    $at, L80263E08
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_wait_803369A4)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_wait_803369A4)($at)
	jr      $t8
	nop
85$:
	li.u    $at, 0xF3FFFDD9
	li.l    $at, 0xF3FFFDD9
	addu    $t9, $s0, $at
	sltiu   $at, $t9, 0x0018
	beqz    $at, L80263E08
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(pl_wait_803369B8)
	addu    $at, $at, $t9
	lw      $t9, %lo(pl_wait_803369B8)($at)
	jr      $t9
	nop
97$:
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	beq     $s0, $at, 178$
	nop
	li.u    $at, 0x0C000204
	li.l    $at, 0x0C000204
	beq     $s0, $at, 183$
	nop
	b       L80263E08
	nop
107$:
	li.u    $at, 0x08000207
	li.l    $at, 0x08000207
	sltu    $at, $s0, $at
	bnez    $at, 150$
	nop
	li.u    $at, 0x08000209
	li.l    $at, 0x08000209
	sltu    $at, $s0, $at
	bnez    $at, 140$
	nop
	li.u    $at, 0x0800023C
	li.l    $at, 0x0800023C
	sltu    $at, $s0, $at
	bnez    $at, 128$
	nop
	li.u    $at, 0x0800043F
	li.l    $at, 0x0800043F
	beq     $s0, $at, 343$
	nop
	b       L80263E08
	nop
128$:
	li.u    $at, 0xF7FFFDDB
	li.l    $at, 0xF7FFFDDB
	addu    $t0, $s0, $at
	sltiu   $at, $t0, 0x0017
	beqz    $at, L80263E08
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(pl_wait_80336A18)
	addu    $at, $at, $t0
	lw      $t0, %lo(pl_wait_80336A18)($at)
	jr      $t0
	nop
140$:
	li.u    $at, 0x08000207
	li.l    $at, 0x08000207
	beq     $s0, $at, 198$
	nop
	li.u    $at, 0x08000208
	li.l    $at, 0x08000208
	beq     $s0, $at, 203$
	nop
	b       L80263E08
	nop
150$:
	li.u    $at, 0x0002020D
	li.l    $at, 0x0002020D
	beq     $s0, $at, 208$
	nop
	li.u    $at, 0x00020226
	li.l    $at, 0x00020226
	beq     $s0, $at, 258$
	nop
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	beq     $s0, $at, 328$
	nop
	li.u    $at, 0x08000206
	li.l    $at, 0x08000206
	beq     $s0, $at, 193$
	nop
	b       L80263E08
	nop
.globl L80263B38
L80263B38:
	jal     pl_wait_80260CB4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263B4C
L80263B4C:
	jal     pl_wait_80261000
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
178$:
	jal     pl_wait_80261268
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
183$:
	jal     pl_wait_802614FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263B88
L80263B88:
	jal     pl_wait_80261F70
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
193$:
	jal     pl_wait_80262080
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
198$:
	jal     pl_wait_802619D0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
203$:
	jal     pl_wait_80261AD0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
208$:
	jal     pl_wait_80261CEC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263BEC
L80263BEC:
	jal     pl_wait_80261BF8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C00
L80263C00:
	jal     pl_wait_802618D8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C14
L80263C14:
	jal     pl_wait_8026168C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C28
L80263C28:
	jal     pl_wait_80261DB4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C3C
L80263C3C:
	jal     pl_wait_80262530
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C50
L80263C50:
	jal     pl_wait_80262650
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C64
L80263C64:
	jal     pl_wait_80262770
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C78
L80263C78:
	jal     pl_wait_80262890
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C8C
L80263C8C:
	jal     pl_wait_80262490
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
258$:
	jal     pl_wait_80262980
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263CB4
L80263CB4:
	jal     pl_wait_802635E8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263CC8
L80263CC8:
	jal     pl_wait_80262D68
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263CDC
L80263CDC:
	jal     pl_wait_80262DC4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263CF0
L80263CF0:
	jal     pl_wait_80262E94
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D04
L80263D04:
	jal     pl_wait_80262E20
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D18
L80263D18:
	jal     pl_wait_802630F8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D2C
L80263D2C:
	jal     pl_wait_802631F0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
298$:
	jal     pl_wait_802632E8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D54
L80263D54:
	jal     pl_wait_80262FEC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
308$:
	jal     pl_wait_802633B4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D7C
L80263D7C:
	jal     pl_wait_80262EF0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D90
L80263D90:
	jal     pl_wait_80262F50
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263DA4
L80263DA4:
	jal     pl_wait_8026305C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
328$:
	jal     pl_wait_8026350C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263DCC
L80263DCC:
	jal     pl_wait_802621DC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263DE0
L80263DE0:
	jal     pl_wait_802622DC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
343$:
	jal     pl_wait_80262398
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263E08
L80263E08:
	lw      $t1, 0x0024($sp)
	bnez    $t1, 360$
	nop
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0200
	beqz    $t4, 360$
	nop
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0080
	sw      $t7, 0x0008($t5)
360$:
	b       364$
	lw      $v0, 0x0024($sp)
	b       364$
	nop
364$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
