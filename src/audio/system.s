.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

Na_system_80318040:
	addiu   $sp, $sp, -0x0040
	sw      $a0, 0x0040($sp)
	sw      $ra, 0x003C($sp)
	sw      $s8, 0x0038($sp)
	sw      $a1, 0x0044($sp)
	move    $a0, $a1
	move    $s8, $sp
	sw      $a2, 0x0048($sp)
	jal     osInvalDCache
	move    $a1, $a2
	lw      $t6, 0x0044($s8)
	lw      $a3, 0x0040($s8)
	la.u    $t8, _Na_work_bss+0x5560
	sw      $t6, 0x0010($sp)
	lw      $t7, 0x0048($s8)
	la.l    $t8, _Na_work_bss+0x5560
	la.u    $a0, _Na_work_bss+0x5580
	la.l    $a0, _Na_work_bss+0x5580
	sw      $t8, 0x0018($sp)
	li      $a1, 0x0001
	move    $a2, $0
	jal     osPiStartDma
	sw      $t7, 0x0014($sp)
	la.u    $a0, _Na_work_bss+0x5560
	la.l    $a0, _Na_work_bss+0x5560
	move    $a1, $0
	jal     osRecvMesg
	li      $a2, 0x0001
	lw      $ra, 0x003C($s8)
	move    $sp, $s8
	lw      $s8, 0x0038($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0040

Na_system_803180C4:
	addiu   $sp, $sp, -0x0040
	sw      $a0, 0x0040($sp)
	sw      $ra, 0x003C($sp)
	sw      $s8, 0x0038($sp)
	sw      $a1, 0x0044($sp)
	move    $a0, $a1
	move    $s8, $sp
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	jal     osInvalDCache
	move    $a1, $a2
	lw      $t6, 0x0044($s8)
	lw      $a0, 0x0050($s8)
	lw      $a3, 0x0040($s8)
	sw      $t6, 0x0010($sp)
	lw      $t7, 0x0048($s8)
	move    $a1, $0
	move    $a2, $0
	sw      $t7, 0x0014($sp)
	lw      $t8, 0x004C($s8)
	jal     osPiStartDma
	sw      $t8, 0x0018($sp)
	lw      $ra, 0x003C($s8)
	move    $sp, $s8
	lw      $s8, 0x0038($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl Na_system_80318130
Na_system_80318130:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x003C($sp)
	sw      $s8, 0x0038($sp)
	sw      $s0, 0x0034($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a3, 0x004C($sp)
	lw      $v0, 0x0000($a2)
	move    $s8, $sp
	li      $s0, 0x1000
	slti    $at, $v0, 0x1000
	beqz    $at, 15$
	nop
	b       15$
	move    $s0, $v0
15$:
	subu    $t6, $v0, $s0
	sw      $t6, 0x0000($a2)
	lw      $t7, 0x0044($s8)
	move    $a1, $s0
	jal     osInvalDCache
	lw      $a0, 0x0000($t7)
	lw      $t9, 0x0044($s8)
	lw      $t8, 0x0040($s8)
	lw      $a0, 0x0050($s8)
	lw      $t0, 0x0000($t9)
	lw      $a3, 0x0000($t8)
	sw      $s0, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	lw      $t1, 0x004C($s8)
	move    $a1, $0
	move    $a2, $0
	jal     osPiStartDma
	sw      $t1, 0x0018($sp)
	lw      $v1, 0x0040($s8)
	lw      $v0, 0x0044($s8)
	lw      $t2, 0x0000($v1)
	addu    $t3, $t2, $s0
	sw      $t3, 0x0000($v1)
	lw      $t4, 0x0000($v0)
	move    $sp, $s8
	addu    $t5, $t4, $s0
	sw      $t5, 0x0000($v0)
	lw      $ra, 0x003C($s8)
	lw      $s0, 0x0034($s8)
	lw      $s8, 0x0038($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl Na_system_803181EC
Na_system_803181EC:
	la.u    $a1, _Na_work_bss+0x5B9C
	la.l    $a1, _Na_work_bss+0x5B9C
	lw      $v1, 0x0000($a1)
	addiu   $t5, $sp, -0x0008
	move    $v0, $0
	beqz    $v1, 33$
	move    $sp, $t5
	la.u    $t0, _Na_work_bss+0x5BA8
	la.u    $a3, _Na_work_bss+0x5DAA
	la.u    $a2, _Na_work_bss+0x5598
	la.l    $a2, _Na_work_bss+0x5598
	la.l    $a3, _Na_work_bss+0x5DAA
	la.l    $t0, _Na_work_bss+0x5BA8
	sll     $t6, $v0, 4
14$:
	addu    $v1, $a2, $t6
	lbu     $a0, 0x000E($v1)
	beqz    $a0, 28$
	addiu   $t7, $a0, -0x0001
	andi    $t8, $t7, 0x00FF
	bnez    $t8, 28$
	sb      $t7, 0x000E($v1)
	lbu     $a0, 0x0000($a3)
	lbu     $t9, 0x0000($a3)
	addu    $t1, $t0, $a0
	sb      $v0, 0x0000($t1)
	addiu   $t2, $a0, 0x0001
	sb      $t2, 0x0000($a3)
	sb      $t9, 0x000D($v1)
28$:
	lw      $v1, 0x0000($a1)
	addiu   $v0, $v0, 0x0001
	sltu    $at, $v0, $v1
	bnezl   $at, 14$
	sll     $t6, $v0, 4
33$:
	la.u    $a1, _Na_work_bss+0x5B98
	la.l    $a1, _Na_work_bss+0x5B98
	lw      $t3, 0x0000($a1)
	la.u    $a2, _Na_work_bss+0x5598
	la.l    $a2, _Na_work_bss+0x5598
	sltu    $at, $v1, $t3
	beqz    $at, 65$
	move    $v0, $v1
	la.u    $t0, _Na_work_bss+0x5CA8
	la.u    $a3, _Na_work_bss+0x5DAB
	la.l    $a3, _Na_work_bss+0x5DAB
	la.l    $t0, _Na_work_bss+0x5CA8
	sll     $t4, $v0, 4
46$:
	addu    $v1, $a2, $t4
	lbu     $a0, 0x000E($v1)
	beqz    $a0, 60$
	addiu   $t6, $a0, -0x0001
	andi    $t7, $t6, 0x00FF
	bnez    $t7, 60$
	sb      $t6, 0x000E($v1)
	lbu     $a0, 0x0000($a3)
	lbu     $t8, 0x0000($a3)
	addu    $t9, $t0, $a0
	sb      $v0, 0x0000($t9)
	addiu   $t1, $a0, 0x0001
	sb      $t1, 0x0000($a3)
	sb      $t8, 0x000D($v1)
60$:
	lw      $t2, 0x0000($a1)
	addiu   $v0, $v0, 0x0001
	sltu    $at, $v0, $t2
	bnezl   $at, 46$
	sll     $t4, $v0, 4
65$:
	lui     $at, %hi(_Na_work_bss+0x5BA0)
	sw      $0, %lo(_Na_work_bss+0x5BA0)($at)
	jr      $ra
	addiu   $sp, $t5, 0x0008

.globl Na_system_80318300
Na_system_80318300:
	addiu   $sp, $sp, -0x0070
	sw      $s8, 0x0040($sp)
	sw      $s1, 0x003C($sp)
	sw      $s0, 0x0038($sp)
	move    $s0, $a1
	move    $s1, $a0
	move    $s8, $sp
	sw      $ra, 0x0044($sp)
	sw      $a2, 0x0078($sp)
	sw      $a3, 0x007C($sp)
	bnez    $a2, 21$
	move    $t2, $0
	lw      $t7, 0x007C($s8)
	lui     $t8, %hi(_Na_work_bss+0x5B9C)
	lw      $t8, %lo(_Na_work_bss+0x5B9C)($t8)
	lbu     $a0, 0x0000($t7)
	la.u    $a2, _Na_work_bss+0x5598
	la.l    $a2, _Na_work_bss+0x5598
	sltu    $at, $a0, $t8
	bnez    $at, 102$
	sll     $t4, $a0, 4
21$:
	lui     $a0, %hi(_Na_work_bss+0x5B9C)
	lui     $a1, %hi(_Na_work_bss+0x5B98)
	lw      $a1, %lo(_Na_work_bss+0x5B98)($a1)
	lw      $a0, %lo(_Na_work_bss+0x5B9C)($a0)
	la.u    $a2, _Na_work_bss+0x5598
	la.l    $a2, _Na_work_bss+0x5598
	sltu    $at, $a0, $a1
	beqz    $at, 79$
	sll     $t9, $a0, 4
30$:
	addu    $v1, $a2, $t9
	lw      $t4, 0x0004($v1)
	move    $t0, $v1
	subu    $v0, $s1, $t4
	bltzl   $v0, 75$
	addiu   $a0, $a0, 0x0001
	lhu     $t5, 0x000A($v1)
	subu    $t6, $t5, $s0
	sltu    $at, $t6, $v0
	bnezl   $at, 75$
	addiu   $a0, $a0, 0x0001
	lbu     $t7, 0x000E($v1)
	la.u    $t1, _Na_work_bss+0x5DA9
	la.l    $t1, _Na_work_bss+0x5DA9
	bnez    $t7, 65$
	lui     $t8, %hi(_Na_work_bss+0x5DAB)
	lbu     $a1, 0x0000($t1)
	lbu     $t8, %lo(_Na_work_bss+0x5DAB)($t8)
	beql    $t8, $a1, 66$
	li      $t4, 0x003C
	lbu     $a3, 0x000D($v1)
	la.u    $t3, _Na_work_bss+0x5CA8
	la.l    $t3, _Na_work_bss+0x5CA8
	beq     $a1, $a3, 63$
	addu    $v0, $t3, $a1
	lbu     $t9, 0x0000($v0)
	addu    $t4, $t3, $a3
	sb      $t9, 0x0000($t4)
	lbu     $t6, 0x0000($v0)
	lbu     $t5, 0x000D($v1)
	sll     $t7, $t6, 4
	addu    $t8, $a2, $t7
	sb      $t5, 0x000D($t8)
63$:
	addiu   $t9, $a1, 0x0001
	sb      $t9, 0x0000($t1)
65$:
	li      $t4, 0x003C
66$:
	sb      $t4, 0x000E($v1)
	lw      $t6, 0x007C($s8)
	sb      $a0, 0x0000($t6)
	lw      $t7, 0x0004($v1)
	lw      $t8, 0x0000($v1)
	subu    $t5, $s1, $t7
	b       198$
	addu    $v0, $t5, $t8
	addiu   $a0, $a0, 0x0001
75$:
	sltu    $at, $a0, $a1
	bnezl   $at, 30$
	sll     $t9, $a0, 4
	sw      $t0, 0x0068($s8)
79$:
	la.u    $t1, _Na_work_bss+0x5DA9
	la.l    $t1, _Na_work_bss+0x5DA9
	lui     $t9, %hi(_Na_work_bss+0x5DAB)
	lbu     $t9, %lo(_Na_work_bss+0x5DAB)($t9)
	lbu     $a1, 0x0000($t1)
	la.u    $a2, _Na_work_bss+0x5598
	la.l    $a2, _Na_work_bss+0x5598
	beq     $t9, $a1, 140$
	lw      $t0, 0x0068($s8)
	lw      $t4, 0x0078($s8)
	la.u    $t3, _Na_work_bss+0x5CA8
	la.l    $t3, _Na_work_bss+0x5CA8
	beqz    $t4, 140$
	addu    $t6, $t3, $a1
	lbu     $t7, 0x0000($t6)
	addiu   $t5, $a1, 0x0001
	li      $t2, 0x0001
	sw      $t7, 0x0058($s8)
	sb      $t5, 0x0000($t1)
	lw      $t8, 0x0058($s8)
	sll     $t9, $t8, 4
	b       140$
	addu    $t0, $a2, $t9
102$:
	addu    $t0, $t4, $a2
	lw      $t6, 0x0004($t0)
	subu    $v1, $s1, $t6
	bltz    $v1, 140$
	nop
	lhu     $t7, 0x000A($t0)
	subu    $t5, $t7, $s0
	sltu    $at, $t5, $v1
	bnez    $at, 140$
	nop
	lbu     $t8, 0x000E($t0)
	la.u    $a1, _Na_work_bss+0x5DA8
	la.l    $a1, _Na_work_bss+0x5DA8
	bnezl   $t8, 136$
	lw      $t5, 0x0000($t0)
	lbu     $v0, 0x0000($a1)
	lbu     $a0, 0x000D($t0)
	la.u    $a3, _Na_work_bss+0x5BA8
	la.l    $a3, _Na_work_bss+0x5BA8
	beq     $v0, $a0, 131$
	addu    $v1, $a3, $v0
	lbu     $t9, 0x0000($v1)
	addu    $t4, $a3, $a0
	sb      $t9, 0x0000($t4)
	lbu     $t7, 0x0000($v1)
	lbu     $t6, 0x000D($t0)
	sll     $t5, $t7, 4
	addu    $t8, $a2, $t5
	sb      $t6, 0x000D($t8)
131$:
	addiu   $t9, $v0, 0x0001
	sb      $t9, 0x0000($a1)
	lw      $t4, 0x0004($t0)
	subu    $v1, $s1, $t4
	lw      $t5, 0x0000($t0)
136$:
	li      $t7, 0x0002
	sb      $t7, 0x000E($t0)
	b       198$
	addu    $v0, $v1, $t5
140$:
	bnez    $t2, 155$
	li      $t5, 0x0002
	la.u    $a1, _Na_work_bss+0x5DA8
	la.l    $a1, _Na_work_bss+0x5DA8
	lbu     $v0, 0x0000($a1)
	la.u    $a3, _Na_work_bss+0x5BA8
	la.l    $a3, _Na_work_bss+0x5BA8
	addu    $t6, $a3, $v0
	lbu     $t8, 0x0000($t6)
	addiu   $t9, $v0, 0x0001
	sw      $t8, 0x0058($s8)
	sb      $t9, 0x0000($a1)
	lw      $t4, 0x0058($s8)
	sll     $t7, $t4, 4
	addu    $t0, $a2, $t7
155$:
	lhu     $s0, 0x000A($t0)
	li      $at, -0x0010
	and     $v0, $s1, $at
	sb      $t5, 0x000E($t0)
	sw      $v0, 0x0004($t0)
	lw      $a0, 0x0000($t0)
	sh      $s0, 0x0008($t0)
	sw      $t0, 0x0068($s8)
	sw      $v0, 0x0048($s8)
	jal     osInvalDCache
	move    $a1, $s0
	la.u    $v1, _Na_work_bss+0x5DE4
	la.l    $v1, _Na_work_bss+0x5DE4
	lw      $v0, 0x0000($v1)
	lw      $t0, 0x0068($s8)
	la.u    $t7, _Na_work_bss+0x5060
	addiu   $t6, $v0, 0x0001
	sw      $t6, 0x0000($v1)
	lw      $t8, 0x0000($v1)
	lw      $t5, 0x0000($t0)
	lw      $a3, 0x0048($s8)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	la.u    $t6, _Na_work_bss+0x4F48
	la.l    $t6, _Na_work_bss+0x4F48
	addiu   $t4, $t9, -0x0014
	la.l    $t7, _Na_work_bss+0x5060
	addu    $a0, $t4, $t7
	sw      $t6, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	move    $a1, $0
	move    $a2, $0
	jal     osPiStartDma
	sw      $t5, 0x0010($sp)
	lw      $t8, 0x0058($s8)
	lw      $t9, 0x007C($s8)
	lw      $t0, 0x0068($s8)
	sb      $t8, 0x0000($t9)
	lw      $t4, 0x0000($t0)
	lw      $t5, 0x0048($s8)
	addu    $t7, $t4, $s1
	subu    $v0, $t7, $t5
198$:
	lw      $ra, 0x0044($s8)
	move    $sp, $s8
	lw      $s0, 0x0038($s8)
	lw      $s1, 0x003C($s8)
	lw      $s8, 0x0040($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0070

.globl Na_system_80318634
Na_system_80318634:
	addiu   $sp, $sp, -0x0048
	sw      $s4, 0x0034($sp)
	la.u    $s4, _Na_work_bss+0x5DD0
	la.l    $s4, _Na_work_bss+0x5DD0
	sw      $a0, 0x0048($sp)
	lw      $a0, 0x0000($s4)
	sw      $s2, 0x002C($sp)
	li      $s2, 0x0003
	multu   $a0, $s2
	sw      $s3, 0x0030($sp)
	la.u    $s3, _Na_work_bss+0x5DC8
	la.l    $s3, _Na_work_bss+0x5DC8
	sw      $s8, 0x0040($sp)
	sw      $s0, 0x0024($sp)
	li      $t6, 0x0510
	move    $s8, $sp
	sw      $ra, 0x0044($sp)
	sw      $s6, 0x003C($sp)
	mflo    $t7
	sw      $s5, 0x0038($sp)
	sw      $s1, 0x0028($sp)
	sw      $t6, 0x0000($s3)
	blez    $t7, 57$
	move    $s0, $0
	la.u    $s6, _Na_work_bss+0x5598
	la.u    $s5, _Na_work_bss+0x128
	la.u    $s1, _Na_work_bss+0x5B98
	la.l    $s1, _Na_work_bss+0x5B98
	la.l    $s5, _Na_work_bss+0x128
	la.l    $s6, _Na_work_bss+0x5598
	move    $a1, $t6
31$:
	jal     Na_memory_80317040
	move    $a0, $s5
	lw      $a2, 0x0000($s1)
	sll     $t8, $a2, 4
	addu    $v1, $s6, $t8
	bnez    $v0, 41$
	sw      $v0, 0x0000($v1)
	move    $s0, $0
	b       64$
	lw      $a0, 0x0000($s4)
41$:
	lw      $a0, 0x0000($s4)
	lw      $a1, 0x0000($s3)
	addiu   $s0, $s0, 0x0001
	multu   $a0, $s2
	addiu   $t9, $a2, 0x0001
	sw      $0, 0x0004($v1)
	sh      $0, 0x0008($v1)
	sb      $0, 0x000C($v1)
	sb      $0, 0x000E($v1)
	sw      $t9, 0x0000($s1)
	sh      $a1, 0x000A($v1)
	mflo    $t0
	slt     $at, $s0, $t0
	bnez    $at, 31$
	nop
	move    $s0, $0
57$:
	la.u    $s1, _Na_work_bss+0x5B98
	la.l    $s1, _Na_work_bss+0x5B98
	la.u    $s5, _Na_work_bss+0x128
	la.u    $s6, _Na_work_bss+0x5598
	la.l    $s6, _Na_work_bss+0x5598
	la.l    $s5, _Na_work_bss+0x128
	lw      $a2, 0x0000($s1)
64$:
	beqz    $a2, 78$
	move    $a1, $a2
	la.u    $v1, _Na_work_bss+0x5BA8
	la.u    $v0, _Na_work_bss+0x5598
	la.l    $v0, _Na_work_bss+0x5598
	la.l    $v1, _Na_work_bss+0x5BA8
70$:
	sb      $s0, 0x0000($v1)
	sb      $s0, 0x000D($v0)
	addiu   $s0, $s0, 0x0001
	sltu    $at, $s0, $a2
	addiu   $v1, $v1, 0x0001
	bnez    $at, 70$
	addiu   $v0, $v0, 0x0010
	move    $s0, $0
78$:
	slti    $at, $a2, 0x0100
	beqz    $at, 90$
	move    $a3, $a2
	la.u    $t1, _Na_work_bss+0x5BA8
	la.l    $t1, _Na_work_bss+0x5BA8
	la.u    $v1, _Na_work_bss+0x5CA8
	la.l    $v1, _Na_work_bss+0x5CA8
	addu    $v0, $a3, $t1
86$:
	addiu   $v0, $v0, 0x0001
	sltu    $at, $v0, $v1
	bnez    $at, 86$
	sb      $0, -0x0001($v0)
90$:
	lui     $at, %hi(_Na_work_bss+0x5DA8)
	sb      $0, %lo(_Na_work_bss+0x5DA8)($at)
	la.u    $s2, _Na_work_bss+0x5B9C
	lui     $at, %hi(_Na_work_bss+0x5DAA)
	la.l    $s2, _Na_work_bss+0x5B9C
	sb      $a2, %lo(_Na_work_bss+0x5DAA)($at)
	li      $t2, 0x05A0
	sw      $a2, 0x0000($s2)
	blez    $a0, 125$
	sw      $t2, 0x0000($s3)
	move    $a1, $t2
101$:
	jal     Na_memory_80317040
	move    $a0, $s5
	lw      $a2, 0x0000($s1)
	addiu   $s0, $s0, 0x0001
	sll     $t3, $a2, 4
	addu    $v1, $s6, $t3
	bnez    $v0, 111$
	sw      $v0, 0x0000($v1)
	b       126$
	move    $a3, $a2
111$:
	lw      $t5, 0x0000($s4)
	lw      $a1, 0x0000($s3)
	addiu   $t4, $a2, 0x0001
	slt     $at, $s0, $t5
	sw      $0, 0x0004($v1)
	sh      $0, 0x0008($v1)
	sb      $0, 0x000C($v1)
	sb      $0, 0x000E($v1)
	sw      $t4, 0x0000($s1)
	bnez    $at, 101$
	sh      $a1, 0x000A($v1)
	lui     $a2, %hi(_Na_work_bss+0x5B98)
	lw      $a2, %lo(_Na_work_bss+0x5B98)($a2)
	move    $a1, $a2
125$:
	move    $a3, $a1
126$:
	lw      $a1, 0x0000($s2)
	move    $sp, $s8
	addiu   $sp, $sp, 0x0048
	sltu    $at, $a1, $a2
	beqz    $at, 148$
	move    $s0, $a1
	la.u    $t7, _Na_work_bss+0x5598
	la.u    $t8, _Na_work_bss+0x5CA8
	la.l    $t8, _Na_work_bss+0x5CA8
	la.l    $t7, _Na_work_bss+0x5598
	sll     $t6, $s0, 4
	subu    $v1, $s0, $a1
	addu    $a0, $v1, $t8
	addu    $v0, $t6, $t7
140$:
	sb      $s0, 0x0000($a0)
	addiu   $s0, $s0, 0x0001
	sltu    $at, $s0, $a2
	sb      $v1, 0x000D($v0)
	addiu   $v1, $v1, 0x0001
	addiu   $v0, $v0, 0x0010
	bnez    $at, 140$
	addiu   $a0, $a0, 0x0001
148$:
	slti    $at, $a3, 0x0100
	beqz    $at, 160$
	subu    $t0, $a2, $a1
	la.u    $t9, _Na_work_bss+0x5CA8
	la.l    $t9, _Na_work_bss+0x5CA8
	la.u    $v1, _Na_work_bss+0x5DA8
	la.l    $v1, _Na_work_bss+0x5DA8
	addu    $v0, $a3, $t9
156$:
	addiu   $v0, $v0, 0x0001
	sltu    $at, $v0, $v1
	bnez    $at, 156$
	sb      $a1, -0x0001($v0)
160$:
	lui     $at, %hi(_Na_work_bss+0x5DA9)
	sb      $0, %lo(_Na_work_bss+0x5DA9)($at)
	lui     $at, %hi(_Na_work_bss+0x5DAB)
	sb      $t0, %lo(_Na_work_bss+0x5DAB)($at)
	lw      $ra, 0x0044($s8)
	lw      $s6, 0x003C($s8)
	lw      $s5, 0x0038($s8)
	lw      $s4, 0x0034($s8)
	lw      $s3, 0x0030($s8)
	lw      $s2, 0x002C($s8)
	lw      $s1, 0x0028($s8)
	lw      $s0, 0x0024($s8)
	jr      $ra
	lw      $s8, 0x0040($s8)

Na_system_803188EC:
	jr      $ra
	nop

.globl Na_system_803188F4
Na_system_803188F4:
	addiu   $t5, $sp, -0x0010
	sw      $a2, 0x0018($t5)
	lw      $v0, 0x0000($a0)
	move    $sp, $t5
	beqzl   $v0, 53$
	lw      $t8, 0x0018($t5)
	beqz    $a3, 52$
	addu    $t6, $v0, $a0
	beqz    $a3, 52$
	sw      $t6, 0x0000($a0)
	beqz    $a3, 52$
	move    $v1, $0
	move    $t0, $0
	li      $v0, 0x0001
14$:
	lw      $t7, 0x0000($a0)
	addiu   $v1, $v1, 0x0001
	addu    $t1, $t7, $t0
	lw      $a2, 0x0000($t1)
	beqz    $a2, 50$
	addu    $a2, $a2, $a0
	sw      $a2, 0x0000($t1)
	lbu     $t8, 0x0002($a2)
	move    $t2, $a2
	bnez    $t8, 50$
	nop
	lw      $t9, 0x0004($a2)
	addiu   $t1, $a2, 0x0004
	beqzl   $t9, 47$
	lw      $a2, 0x000C($a2)
	lw      $t6, 0x0000($t1)
	addu    $t3, $t6, $a0
	sw      $t3, 0x0000($t1)
	lbu     $t7, 0x0001($t3)
	move    $t4, $t3
	bnezl   $t7, 47$
	lw      $a2, 0x000C($a2)
	lw      $t8, 0x0004($t3)
	lw      $t9, 0x0008($t4)
	lw      $t6, 0x000C($t4)
	addu    $t3, $t8, $a1
	sw      $t3, 0x0004($t4)
	addu    $t3, $t9, $a0
	sw      $t3, 0x0008($t4)
	addu    $t3, $t6, $a0
	sw      $t3, 0x000C($t4)
	sb      $v0, 0x0001($t4)
	lw      $a2, 0x000C($a2)
47$:
	sb      $v0, 0x0002($t2)
	addu    $t7, $a0, $a2
	sw      $t7, 0x000C($t2)
50$:
	bne     $v1, $a3, 14$
	addiu   $t0, $t0, 0x0004
52$:
	lw      $t8, 0x0018($t5)
53$:
	li      $v0, 0x0001
	sltiu   $t9, $t8, 0x0001
	xori    $t9, $t9, 0x0001
	beqz    $t9, 141$
	nop
	beqz    $t9, 141$
	addiu   $v1, $a0, 0x0004
	sll     $t6, $t8, 2
	addu    $t2, $t6, $a0
	addiu   $t2, $t2, 0x0004
	lw      $a2, 0x0000($v1)
64$:
	beqz    $a2, 138$
	addu    $t7, $a2, $a0
	sw      $t7, 0x0000($v1)
	lbu     $t9, 0x0000($t7)
	move    $a3, $t7
	bnezl   $t9, 139$
	addiu   $v1, $v1, 0x0004
	lw      $t8, 0x0008($t7)
	addiu   $a2, $t7, 0x0008
	beqzl   $t8, 93$
	lw      $t7, 0x0010($a3)
	lw      $t6, 0x0000($a2)
	addu    $t0, $t6, $a0
	sw      $t0, 0x0000($a2)
	lbu     $t7, 0x0001($t0)
	move    $t1, $t0
	bnezl   $t7, 93$
	lw      $t7, 0x0010($a3)
	lw      $t9, 0x0004($t0)
	lw      $t8, 0x0008($t1)
	lw      $t6, 0x000C($t1)
	addu    $t0, $t9, $a1
	sw      $t0, 0x0004($t1)
	addu    $t0, $t8, $a0
	sw      $t0, 0x0008($t1)
	addu    $t0, $t6, $a0
	sw      $t0, 0x000C($t1)
	sb      $v0, 0x0001($t1)
	lw      $t7, 0x0010($a3)
93$:
	addiu   $a2, $a3, 0x0010
	beqzl   $t7, 114$
	lw      $t8, 0x0018($a3)
	lw      $t9, 0x0000($a2)
	addu    $t0, $t9, $a0
	sw      $t0, 0x0000($a2)
	lbu     $t8, 0x0001($t0)
	move    $t1, $t0
	bnezl   $t8, 114$
	lw      $t8, 0x0018($a3)
	lw      $t6, 0x0004($t0)
	lw      $t7, 0x0008($t1)
	lw      $t9, 0x000C($t1)
	addu    $t0, $t6, $a1
	sw      $t0, 0x0004($t1)
	addu    $t0, $t7, $a0
	sw      $t0, 0x0008($t1)
	addu    $t0, $t9, $a0
	sw      $t0, 0x000C($t1)
	sb      $v0, 0x0001($t1)
	lw      $t8, 0x0018($a3)
114$:
	addiu   $a2, $a3, 0x0018
	beqzl   $t8, 135$
	lw      $a2, 0x0004($a3)
	lw      $t6, 0x0000($a2)
	addu    $t0, $t6, $a0
	sw      $t0, 0x0000($a2)
	lbu     $t7, 0x0001($t0)
	move    $t1, $t0
	bnezl   $t7, 135$
	lw      $a2, 0x0004($a3)
	lw      $t9, 0x0004($t0)
	lw      $t8, 0x0008($t1)
	lw      $t6, 0x000C($t1)
	addu    $t0, $t9, $a1
	sw      $t0, 0x0004($t1)
	addu    $t0, $t8, $a0
	sw      $t0, 0x0008($t1)
	addu    $t0, $t6, $a0
	sw      $t0, 0x000C($t1)
	sb      $v0, 0x0001($t1)
	lw      $a2, 0x0004($a3)
135$:
	sb      $v0, 0x0000($a3)
	addu    $t7, $a0, $a2
	sw      $t7, 0x0004($a3)
138$:
	addiu   $v1, $v1, 0x0004
139$:
	bnel    $t2, $v1, 64$
	lw      $a2, 0x0000($v1)
141$:
	jr      $ra
	addiu   $sp, $t5, 0x0010

Na_system_80318B30:
	addiu   $sp, $sp, -0x0080
	lui     $t6, %hi(_Na_work_bss+0x5DB0)
	lw      $t6, %lo(_Na_work_bss+0x5DB0)($t6)
	sll     $v1, $a0, 3
	sw      $ra, 0x003C($sp)
	sw      $s8, 0x0038($sp)
	sw      $s1, 0x0034($sp)
	sw      $s0, 0x0030($sp)
	addu    $v0, $t6, $v1
	lw      $s0, 0x0008($v0)
	lw      $t8, 0x0004($v0)
	li      $at, -0x0010
	addiu   $s0, $s0, 0x001E
	move    $s1, $a0
	and     $t7, $s0, $at
	move    $a3, $a1
	addiu   $s0, $t7, -0x0010
	la.u    $a0, _Na_work_bss+0x358
	move    $s8, $sp
	la.l    $a0, _Na_work_bss+0x358
	move    $a2, $s0
	li      $a1, 0x0001
	sw      $s1, 0x0010($sp)
	sw      $s1, 0x0080($sp)
	sw      $v1, 0x0048($sp)
	jal     Na_memory_803173FC
	sw      $t8, 0x0050($sp)
	bnez    $v0, 31$
	move    $s1, $v0
	b       80$
	move    $v0, $0
31$:
	lw      $a0, 0x0050($s8)
	addiu   $a1, $s8, 0x0060
	jal     Na_system_80318040
	li      $a2, 0x0010
	lw      $t9, 0x0060($s8)
	lw      $t0, 0x0064($s8)
	lw      $a0, 0x0050($s8)
	move    $a1, $s1
	move    $a2, $s0
	sw      $t9, 0x005C($s8)
	sw      $t0, 0x0058($s8)
	jal     Na_system_80318040
	addiu   $a0, $a0, 0x0010
	lui     $t1, %hi(_Na_work_bss+0x5DB4)
	lw      $t1, %lo(_Na_work_bss+0x5DB4)($t1)
	lw      $t2, 0x0048($s8)
	lw      $s0, 0x005C($s8)
	move    $a0, $s1
	addu    $t3, $t1, $t2
	lw      $a1, 0x0004($t3)
	lw      $a3, 0x0058($s8)
	jal     Na_system_803188F4
	move    $a2, $s0
	lw      $a1, 0x0080($s8)
	la.u    $a0, _Na_work_bss+0x5DC0
	la.l    $a0, _Na_work_bss+0x5DC0
	lw      $t4, 0x0000($a0)
	sll     $v1, $a1, 2
	subu    $v1, $v1, $a1
	sll     $v1, $v1, 2
	addu    $t5, $t4, $v1
	sb      $s0, 0x0001($t5)
	lw      $t7, 0x0000($a0)
	lw      $t6, 0x0058($s8)
	addiu   $t9, $s1, 0x0004
	addu    $t8, $t7, $v1
	sb      $t6, 0x0002($t8)
	lw      $t0, 0x0000($a0)
	lui     $at, %hi(_Na_work_bss+0x730)
	li      $t5, 0x0002
	addu    $t1, $t0, $v1
	sw      $t9, 0x0004($t1)
	lw      $t3, 0x0000($a0)
	lw      $t2, 0x0000($s1)
	addu    $at, $at, $a1
	addu    $t4, $t3, $v1
	sw      $t2, 0x0008($t4)
	sb      $t5, %lo(_Na_work_bss+0x730)($at)
	move    $v0, $s1
80$:
	lw      $ra, 0x003C($s8)
	move    $sp, $s8
	lw      $s0, 0x0030($s8)
	lw      $s1, 0x0034($s8)
	lw      $s8, 0x0038($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0080

Na_system_80318C8C:
	addiu   $sp, $sp, -0x0078
	lui     $t6, %hi(_Na_work_bss+0x5DB0)
	lw      $t6, %lo(_Na_work_bss+0x5DB0)($t6)
	sll     $t8, $a0, 3
	sw      $ra, 0x003C($sp)
	sw      $s8, 0x0038($sp)
	sw      $s1, 0x0034($sp)
	sw      $s0, 0x0030($sp)
	sw      $a0, 0x0078($sp)
	addu    $v0, $t6, $t8
	lw      $s1, 0x0008($v0)
	li      $at, -0x0010
	lw      $t1, 0x0004($v0)
	addiu   $s1, $s1, 0x001E
	move    $t7, $a0
	and     $t9, $s1, $at
	move    $s0, $a2
	move    $a3, $a1
	addiu   $s1, $t9, -0x0010
	la.u    $a0, _Na_work_bss+0x358
	move    $s8, $sp
	la.l    $a0, _Na_work_bss+0x358
	move    $a2, $s1
	li      $a1, 0x0001
	sw      $t7, 0x0010($sp)
	jal     Na_memory_803173FC
	sw      $t1, 0x0048($sp)
	bnez    $v0, 31$
	sw      $v0, 0x004C($s8)
	b       71$
	move    $v0, $0
31$:
	lw      $a0, 0x0048($s8)
	addiu   $a1, $s8, 0x0058
	jal     Na_system_80318040
	li      $a2, 0x0010
	lw      $t0, 0x004C($s8)
	lw      $v0, 0x0058($s8)
	lw      $v1, 0x005C($s8)
	lw      $t2, 0x0078($s8)
	sw      $t0, 0x0130($s0)
	sw      $t0, 0x0134($s0)
	sb      $v0, 0x0008($s0)
	sb      $v1, 0x0009($s0)
	sb      $t2, 0x0007($s0)
	lw      $t3, 0x0048($s8)
	sw      $s1, 0x013C($s0)
	addiu   $a3, $s0, 0x0100
	addiu   $t4, $t3, 0x0010
	sw      $t4, 0x0138($s0)
	sw      $a3, 0x0040($s8)
	move    $a0, $a3
	addiu   $a1, $s0, 0x0118
	jal     osCreateMesgQueue
	li      $a2, 0x0001
	lbu     $t6, 0x0000($s0)
	lw      $a3, 0x0040($s8)
	sw      $0, 0x0118($s0)
	ori     $t8, $t6, 0x0008
	sb      $t8, 0x0000($s0)
	addiu   $t9, $s0, 0x011C
	sw      $t9, 0x0010($sp)
	addiu   $a0, $s0, 0x0138
	addiu   $a1, $s0, 0x0130
	jal     Na_system_80318130
	addiu   $a2, $s0, 0x013C
	lw      $t7, 0x0078($s8)
	lui     $at, %hi(_Na_work_bss+0x730)
	li      $t1, 0x0001
	addu    $at, $at, $t7
	sb      $t1, %lo(_Na_work_bss+0x730)($at)
	lw      $v0, 0x004C($s8)
71$:
	lw      $ra, 0x003C($s8)
	move    $sp, $s8
	lw      $s0, 0x0030($s8)
	lw      $s1, 0x0034($s8)
	lw      $s8, 0x0038($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0078

Na_system_80318DC4:
	lui     $t6, %hi(_Na_work_bss+0x5DAC)
	lw      $t6, %lo(_Na_work_bss+0x5DAC)($t6)
	addiu   $sp, $sp, -0x0048
	sll     $t8, $a0, 3
	sw      $ra, 0x0034($sp)
	sw      $s8, 0x0030($sp)
	sw      $a0, 0x0048($sp)
	addu    $v0, $t6, $t8
	lw      $a2, 0x0008($v0)
	lw      $t0, 0x0004($v0)
	move    $t7, $a0
	li      $at, -0x0010
	addiu   $a2, $a2, 0x001E
	move    $a3, $a1
	and     $t9, $a2, $at
	la.u    $a0, _Na_work_bss+0x188
	move    $s8, $sp
	move    $a2, $t9
	la.l    $a0, _Na_work_bss+0x188
	sw      $t9, 0x0044($sp)
	li      $a1, 0x0001
	sw      $t7, 0x0010($sp)
	jal     Na_memory_803173FC
	sw      $t0, 0x003C($sp)
	lw      $a2, 0x0044($s8)
	bnez    $v0, 29$
	move    $a1, $v0
	b       38$
	move    $v0, $0
29$:
	lw      $a0, 0x003C($s8)
	jal     Na_system_80318040
	sw      $a1, 0x0040($s8)
	lw      $t2, 0x0048($s8)
	lui     $at, %hi(_Na_work_bss+0x770)
	lw      $v0, 0x0040($s8)
	li      $t1, 0x0002
	addu    $at, $at, $t2
	sb      $t1, %lo(_Na_work_bss+0x770)($at)
38$:
	lw      $ra, 0x0034($s8)
	move    $sp, $s8
	lw      $s8, 0x0030($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0048

Na_system_80318E70:
	addiu   $sp, $sp, -0x0058
	lui     $t6, %hi(_Na_work_bss+0x5DAC)
	lw      $t6, %lo(_Na_work_bss+0x5DAC)($t6)
	sll     $t7, $a0, 3
	sw      $ra, 0x003C($sp)
	sw      $s8, 0x0038($sp)
	sw      $s2, 0x0034($sp)
	sw      $s1, 0x0030($sp)
	sw      $s0, 0x002C($sp)
	addu    $v0, $t6, $t7
	lw      $s0, 0x0008($v0)
	lw      $t9, 0x0004($v0)
	move    $s1, $a2
	move    $s2, $a0
	li      $at, -0x0010
	addiu   $s0, $s0, 0x001E
	move    $a3, $a1
	and     $a2, $s0, $at
	la.u    $a0, _Na_work_bss+0x188
	move    $s8, $sp
	move    $s0, $a2
	la.l    $a0, _Na_work_bss+0x188
	li      $a1, 0x0001
	sw      $s2, 0x0010($sp)
	sw      $s2, 0x0058($sp)
	jal     Na_memory_803173FC
	sw      $t9, 0x004C($sp)
	bnez    $v0, 31$
	move    $s2, $v0
	b       71$
	move    $v0, $0
31$:
	slti    $at, $s0, 0x0041
	beqz    $at, 44$
	move    $a1, $s2
	lw      $a0, 0x004C($s8)
	move    $a1, $s2
	jal     Na_system_80318040
	move    $a2, $s0
	lw      $t1, 0x0058($s8)
	lui     $at, %hi(_Na_work_bss+0x770)
	li      $t0, 0x0002
	addu    $at, $at, $t1
	b       70$
	sb      $t0, %lo(_Na_work_bss+0x770)($at)
44$:
	lw      $a0, 0x004C($s8)
	jal     Na_system_80318040
	li      $a2, 0x0040
	addiu   $a3, $s1, 0x00D0
	move    $a0, $a3
	sw      $a3, 0x0044($s8)
	addiu   $a1, $s1, 0x00E8
	jal     osCreateMesgQueue
	li      $a2, 0x0001
	lbu     $t3, 0x0000($s1)
	lw      $a3, 0x0044($s8)
	sw      $0, 0x00E8($s1)
	ori     $t4, $t3, 0x0010
	sb      $t4, 0x0000($s1)
	lw      $a0, 0x004C($s8)
	addiu   $t5, $s1, 0x00EC
	sw      $t5, 0x0010($sp)
	addiu   $a1, $s2, 0x0040
	addiu   $a2, $s0, -0x0040
	jal     Na_system_803180C4
	addiu   $a0, $a0, 0x0040
	lw      $t7, 0x0058($s8)
	lui     $at, %hi(_Na_work_bss+0x770)
	li      $t6, 0x0001
	addu    $at, $at, $t7
	sb      $t6, %lo(_Na_work_bss+0x770)($at)
70$:
	move    $v0, $s2
71$:
	lw      $ra, 0x003C($s8)
	move    $sp, $s8
	lw      $s0, 0x002C($s8)
	lw      $s1, 0x0030($s8)
	lw      $s2, 0x0034($s8)
	lw      $s8, 0x0038($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0058

Na_system_80318FAC:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x004C($sp)
	sw      $s8, 0x0048($sp)
	sw      $s7, 0x0044($sp)
	sw      $s6, 0x0040($sp)
	sw      $s5, 0x003C($sp)
	sw      $s4, 0x0038($sp)
	sw      $s3, 0x0034($sp)
	sw      $s2, 0x0030($sp)
	sw      $s1, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	sw      $0, 0x0000($a2)
	sw      $0, 0x0000($a1)
	lui     $v0, %hi(_Na_work_bss+0x5DB8)
	lw      $v0, %lo(_Na_work_bss+0x5DB8)($v0)
	sll     $t6, $a0, 1
	move    $s3, $a2
	addu    $t7, $v0, $t6
	lhu     $s1, 0x0000($t7)
	move    $s4, $a1
	move    $s8, $sp
	addiu   $s1, $s1, 0x0001
	andi    $t8, $s1, 0xFFFF
	addu    $t9, $t8, $v0
	lbu     $s2, -0x0001($t9)
	move    $s1, $t8
	la.u    $s7, _Na_work_bss+0x358
	beqz    $s2, 68$
	move    $a3, $0
	la.u    $s6, _Na_work_bss+0x730
	la.l    $s6, _Na_work_bss+0x730
	la.l    $s7, _Na_work_bss+0x358
	li      $s5, 0x0001
33$:
	lui     $t1, %hi(_Na_work_bss+0x5DB8)
	lw      $t1, %lo(_Na_work_bss+0x5DB8)($t1)
	addiu   $s1, $s1, 0x0001
	andi    $t0, $s1, 0xFFFF
	addu    $t2, $t0, $t1
	lbu     $v0, -0x0001($t2)
	move    $s1, $t0
	move    $a0, $s7
	addu    $t3, $s6, $v0
	lbu     $t4, 0x0000($t3)
	li      $a1, 0x0002
	move    $v1, $0
	slti    $t5, $t4, 0x0002
	xori    $t5, $t5, 0x0001
	bne     $s5, $t5, 55$
	move    $s0, $v0
	move    $a2, $v0
	jal     Na_memory_8031782C
	sb      $a3, 0x0054($s8)
	lbu     $a3, 0x0054($s8)
	b       55$
	move    $v1, $v0
55$:
	bnez    $v1, 62$
	addiu   $s2, $s2, -0x0001
	lw      $t6, 0x0000($s3)
	andi    $a3, $s0, 0x00FF
	addiu   $t7, $t6, 0x0001
	b       65$
	sw      $t7, 0x0000($s3)
62$:
	lw      $t8, 0x0000($s4)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0000($s4)
65$:
	andi    $t0, $s2, 0x00FF
	bnez    $t0, 33$
	move    $s2, $t0
68$:
	lw      $ra, 0x004C($s8)
	move    $sp, $s8
	lw      $s0, 0x0028($s8)
	lw      $s1, 0x002C($s8)
	lw      $s2, 0x0030($s8)
	lw      $s3, 0x0034($s8)
	lw      $s4, 0x0038($s8)
	lw      $s5, 0x003C($s8)
	lw      $s6, 0x0040($s8)
	lw      $s7, 0x0044($s8)
	lw      $s8, 0x0048($s8)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	move    $v0, $a3

Na_system_803190F4:
	addiu   $sp, $sp, -0x0050
	sw      $s6, 0x003C($sp)
	la.u    $s6, _Na_work_bss+0x5DB8
	la.l    $s6, _Na_work_bss+0x5DB8
	lw      $v0, 0x0000($s6)
	sll     $t6, $a0, 1
	sw      $ra, 0x0044($sp)
	sw      $s8, 0x0040($sp)
	sw      $s5, 0x0038($sp)
	sw      $s4, 0x0034($sp)
	sw      $s3, 0x0030($sp)
	sw      $s2, 0x002C($sp)
	sw      $s1, 0x0028($sp)
	sw      $s0, 0x0024($sp)
	sw      $a1, 0x0054($sp)
	addu    $t7, $v0, $t6
	lhu     $s0, 0x0000($t7)
	la.u    $s5, _Na_work_bss+0x358
	move    $s8, $sp
	addiu   $s0, $s0, 0x0001
	andi    $t8, $s0, 0xFFFF
	addu    $t9, $t8, $v0
	lbu     $s1, -0x0001($t9)
	move    $s0, $t8
	la.l    $s5, _Na_work_bss+0x358
	beqz    $s1, 59$
	la.u    $s4, _Na_work_bss+0x730
	la.l    $s4, _Na_work_bss+0x730
	li      $s3, 0x0001
29$:
	lw      $t1, 0x0000($s6)
	addiu   $s0, $s0, 0x0001
	andi    $t0, $s0, 0xFFFF
	addu    $t2, $t0, $t1
	lbu     $v0, -0x0001($t2)
	move    $s0, $t0
	move    $a0, $s5
	addu    $t3, $s4, $v0
	lbu     $t4, 0x0000($t3)
	li      $a1, 0x0002
	move    $v1, $0
	slti    $t5, $t4, 0x0002
	xori    $t5, $t5, 0x0001
	bne     $s3, $t5, 48$
	move    $s2, $v0
	jal     Na_memory_8031782C
	move    $a2, $v0
	b       48$
	move    $v1, $v0
48$:
	bnez    $v1, 53$
	move    $a0, $s2
	jal     Na_system_80318B30
	li      $a1, 0x0002
	move    $v1, $v0
53$:
	addiu   $s1, $s1, -0x0001
	andi    $t6, $s1, 0x00FF
	bnez    $t6, 29$
	move    $s1, $t6
	sw      $v1, 0x004C($s8)
	sw      $s2, 0x0048($s8)
59$:
	lw      $s2, 0x0048($s8)
	lw      $t7, 0x0054($s8)
	lw      $v0, 0x004C($s8)
	move    $sp, $s8
	sb      $s2, 0x0000($t7)
	lw      $ra, 0x0044($s8)
	lw      $s6, 0x003C($s8)
	lw      $s5, 0x0038($s8)
	lw      $s4, 0x0034($s8)
	lw      $s3, 0x0030($s8)
	lw      $s2, 0x002C($s8)
	lw      $s1, 0x0028($s8)
	lw      $s0, 0x0024($s8)
	lw      $s8, 0x0040($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0050

.globl Na_system_80319220
Na_system_80319220:
	lui     $t7, %hi(_Na_work_bss+0x5DBC)
	lhu     $t7, %lo(_Na_work_bss+0x5DBC)($t7)
	addiu   $sp, $sp, -0x0040
	sw      $s8, 0x0028($sp)
	sw      $a1, 0x0044($sp)
	andi    $t6, $a1, 0x00FF
	sltu    $at, $a0, $t7
	move    $a1, $t6
	move    $s8, $sp
	sw      $ra, 0x002C($sp)
	beqz    $at, 61$
	move    $a2, $a0
	li.u    $t8, 0x19710515
	la.u    $t9, Na_data_80335004
	la.l    $t9, Na_data_80335004
	li.l    $t8, 0x19710515
	andi    $t0, $a1, 0x0002
	sw      $t8, 0x0000($t9)
	beqz    $t0, 27$
	move    $v1, $a1
	move    $a0, $a2
	addiu   $a1, $s8, 0x003B
	sw      $v1, 0x0034($s8)
	jal     Na_system_803190F4
	sw      $a2, 0x0040($s8)
	lw      $v1, 0x0034($s8)
	lw      $a2, 0x0040($s8)
27$:
	andi    $t1, $v1, 0x0001
	beqz    $t1, 56$
	lui     $t2, %hi(_Na_work_bss+0x730)
	addu    $t2, $t2, $a2
	lbu     $t2, %lo(_Na_work_bss+0x730)($t2)
	li      $at, 0x0001
	la.u    $a0, _Na_work_bss+0x188
	slti    $t3, $t2, 0x0002
	xori    $t3, $t3, 0x0001
	bne     $t3, $at, 45$
	move    $v1, $0
	la.l    $a0, _Na_work_bss+0x188
	li      $a1, 0x0002
	jal     Na_memory_8031782C
	sw      $a2, 0x0040($s8)
	lw      $a2, 0x0040($s8)
	b       45$
	move    $v1, $v0
45$:
	bnez    $v1, 56$
	move    $a0, $a2
	jal     Na_system_80318DC4
	li      $a1, 0x0002
	bnez    $v0, 56$
	li.u    $t4, 0x76557364
	la.u    $t5, Na_data_80335004
	la.l    $t5, Na_data_80335004
	li.l    $t4, 0x76557364
	b       61$
	sw      $t4, 0x0000($t5)
56$:
	li.u    $t6, 0x76557364
	la.u    $t7, Na_data_80335004
	la.l    $t7, Na_data_80335004
	li.l    $t6, 0x76557364
	sw      $t6, 0x0000($t7)
61$:
	lw      $ra, 0x002C($s8)
	move    $sp, $s8
	lw      $s8, 0x0028($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl Na_system_80319328
Na_system_80319328:
	addiu   $sp, $sp, -0x0030
	sw      $s8, 0x0028($sp)
	move    $s8, $sp
	bnez    $a2, 10$
	sw      $ra, 0x002C($sp)
	li.u    $t6, 0x19710515
	la.u    $t7, Na_data_80335004
	la.l    $t7, Na_data_80335004
	li.l    $t6, 0x19710515
	sw      $t6, 0x0000($t7)
10$:
	jal     Na_system_80319388
	sw      $a2, 0x0038($s8)
	lw      $a2, 0x0038($s8)
	li.u    $t8, 0x76557364
	li.l    $t8, 0x76557364
	bnez    $a2, 19$
	la.u    $t9, Na_data_80335004
	la.l    $t9, Na_data_80335004
	sw      $t8, 0x0000($t9)
19$:
	lw      $ra, 0x002C($s8)
	move    $sp, $s8
	lw      $s8, 0x0028($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0030

Na_system_80319388:
	addiu   $sp, $sp, -0x0050
	lui     $t7, %hi(_Na_work_bss+0x5DBC)
	lhu     $t7, %lo(_Na_work_bss+0x5DBC)($t7)
	sw      $s8, 0x0028($sp)
	move    $s8, $sp
	sltu    $at, $a1, $t7
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	beqz    $at, 91$
	sw      $a2, 0x0058($sp)
	sll     $t9, $a0, 2
	addu    $t9, $t9, $a0
	la.u    $t0, _Na_work_bss+0x1878
	la.l    $t0, _Na_work_bss+0x1878
	sll     $t9, $t9, 6
	addu    $s0, $t9, $t0
	jal     Na_sequence_8031BE44
	move    $a0, $s0
	lw      $t1, 0x0058($s8)
	addiu   $a2, $s8, 0x003C
	addiu   $a1, $s0, 0x0006
	beqz    $t1, 49$
	nop
	sw      $0, 0x003C($s8)
	sw      $0, 0x0038($s8)
	lw      $a0, 0x0054($s8)
	jal     Na_system_80318FAC
	addiu   $a1, $s8, 0x0038
	lw      $t2, 0x003C($s8)
	li      $at, 0x0001
	move    $a0, $v0
	bne     $t2, $at, 43$
	addiu   $a1, $s0, 0x0006
	li      $a1, 0x0002
	move    $a2, $s0
	jal     Na_system_80318C8C
	sw      $v0, 0x0034($s8)
	beqz    $v0, 91$
	lw      $a0, 0x0034($s8)
	b       53$
	sb      $a0, 0x0006($s0)
43$:
	jal     Na_system_803190F4
	lw      $a0, 0x0054($s8)
	bnezl   $v0, 54$
	lw      $a2, 0x0054($s8)
	b       92$
	lw      $ra, 0x002C($s8)
49$:
	jal     Na_system_803190F4
	lw      $a0, 0x0054($s8)
	beqzl   $v0, 92$
	lw      $ra, 0x002C($s8)
53$:
	lw      $a2, 0x0054($s8)
54$:
	la.u    $a0, _Na_work_bss+0x188
	la.l    $a0, _Na_work_bss+0x188
	li      $a1, 0x0002
	jal     Na_memory_8031782C
	sb      $a2, 0x0005($s0)
	bnez    $v0, 80$
	move    $v1, $v0
	lw      $t3, 0x0000($s0)
	sll     $t5, $t3, 3
	bltzl   $t5, 92$
	lw      $ra, 0x002C($s8)
	lw      $t6, 0x0058($s8)
	move    $a2, $s0
	li      $a1, 0x0002
	beqz    $t6, 75$
	nop
	lw      $a0, 0x0054($s8)
	jal     Na_system_80318E70
	li      $a1, 0x0002
	b       78$
	move    $v1, $v0
75$:
	jal     Na_system_80318DC4
	lw      $a0, 0x0054($s8)
	move    $v1, $v0
78$:
	beqzl   $v0, 92$
	lw      $ra, 0x002C($s8)
80$:
	lw      $a0, 0x0050($s8)
	jal     Na_sequence_8031E2E8
	sw      $v1, 0x004C($s8)
	lw      $v1, 0x004C($s8)
	lbu     $t8, 0x0000($s0)
	sb      $0, 0x0084($s0)
	sh      $0, 0x0012($s0)
	ori     $t9, $t8, 0x0080
	sb      $t9, 0x0000($s0)
	sw      $v1, 0x0014($s0)
	sw      $v1, 0x006C($s0)
91$:
	lw      $ra, 0x002C($s8)
92$:
	move    $sp, $s8
	lw      $s0, 0x0024($s8)
	lw      $s8, 0x0028($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0050

.globl Na_Load
Na_Load:
	addiu   $sp, $sp, -0x0098
	la.u    $t6, Na_data_80335004
	sw      $ra, 0x002C($sp)
	sw      $s8, 0x0028($sp)
	sw      $s1, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	la.l    $t6, Na_data_80335004
	sw      $0, 0x0000($t6)
	lui     $a1, %hi(Na_data_80334FF8)
	lb      $a1, %lo(Na_data_80334FF8)($a1)
	move    $s8, $sp
	move    $a0, $0
	blez    $a1, 24$
	la.u    $t9, _Na_work_bss+0x5F20
	la.u    $v0, _Na_work_bss+0x5EB8
	la.u    $v1, _Na_work_bss+0x5EF8
	la.l    $v1, _Na_work_bss+0x5EF8
	la.l    $v0, _Na_work_bss+0x5EB8
18$:
	addiu   $a0, $a0, 0x0001
	addiu   $v0, $v0, 0x0004
	addiu   $v1, $v1, 0x0002
	sw      $0, -0x0004($v0)
	bne     $a0, $a1, 18$
	sh      $0, -0x0002($v1)
24$:
	lui     $v0, %hi(Na_HeapSize)
	lw      $v0, %lo(Na_HeapSize)($v0)
	la.u    $t2, _Na_work_bss+0x00
	la.l    $t2, _Na_work_bss+0x00
	bgez    $v0, 32$
	sra     $a0, $v0, 3
	addiu   $at, $v0, 0x0007
	sra     $a0, $at, 3
32$:
	addiu   $a0, $a0, -0x0001
	bltz    $a0, 46$
	la.l    $t9, _Na_work_bss+0x5F20
	lui     $t7, %hi(Na_Heap)
	addiu   $v0, $t7, %lo(Na_Heap)
	sll     $t8, $a0, 3
	addu    $v1, $t8, $v0
39$:
	addiu   $v0, $v0, 0x0008
	sltu    $at, $v1, $v0
	li      $t0, 0x0000
	li      $t1, 0x0000
	sw      $t1, -0x0004($v0)
	beqz    $at, 39$
	sw      $t0, -0x0008($v0)
46$:
	subu    $v1, $t9, $t2
	srl     $v0, $v1, 3
	bltz    $v0, 59$
	la.u    $a0, _Na_work_bss+0x5EB2
	la.u    $v1, _Na_work_bss-0x08
	la.l    $v1, _Na_work_bss-0x08
52$:
	addiu   $v0, $v0, -0x0001
	li      $t4, 0x0000
	li      $t5, 0x0000
	addiu   $v1, $v1, 0x0008
	sw      $t5, 0x0004($v1)
	bgez    $v0, 52$
	sw      $t4, 0x0000($v1)
59$:
	la.u    $v0, _Na_work_bss+0x5EAC
	la.l    $v0, _Na_work_bss+0x5EAC
	la.l    $a0, _Na_work_bss+0x5EB2
	li      $v1, 0x00A0
63$:
	addiu   $v0, $v0, 0x0002
	sltu    $at, $v0, $a0
	bnez    $at, 63$
	sh      $v1, -0x0002($v0)
	la.u    $t6, _Na_work_bss+0x5DE0
	la.l    $t6, _Na_work_bss+0x5DE0
	sw      $0, 0x0000($t6)
	lui     $at, %hi(_Na_work_bss+0x5DE8)
	sw      $0, %lo(_Na_work_bss+0x5DE8)($at)
	lui     $at, %hi(_Na_work_bss+0x5DEC)
	sw      $0, %lo(_Na_work_bss+0x5DEC)($at)
	lui     $at, %hi(_Na_work_bss+0x5DDF)
	sb      $0, %lo(_Na_work_bss+0x5DDF)($at)
	la.u    $v0, _Na_work_bss+0x5E00
	lui     $at, %hi(_Na_work_bss+0x5DFC)
	la.l    $v0, _Na_work_bss+0x5E00
	sw      $0, %lo(_Na_work_bss+0x5DFC)($at)
	la.u    $a0, _Na_work_bss+0x5560
	la.u    $a1, _Na_work_bss+0x5578
	sw      $0, 0x0034($v0)
	sw      $0, 0x0084($v0)
	la.l    $a1, _Na_work_bss+0x5578
	la.l    $a0, _Na_work_bss+0x5560
	jal     osCreateMesgQueue
	li      $a2, 0x0001
	la.u    $a0, _Na_work_bss+0x4F48
	la.u    $a1, _Na_work_bss+0x4F60
	la.l    $a1, _Na_work_bss+0x4F60
	la.l    $a0, _Na_work_bss+0x4F48
	jal     osCreateMesgQueue
	li      $a2, 0x0040
	la.u    $t8, _Na_work_bss+0x5DE4
	la.l    $t8, _Na_work_bss+0x5DE4
	sw      $0, 0x0000($t8)
	lui     $at, %hi(_Na_work_bss+0x5B98)
	lui     $a0, %hi(Na_data_80335000)
	sw      $0, %lo(_Na_work_bss+0x5B98)($at)
	jal     Na_memory_80317128
	lw      $a0, %lo(Na_data_80335000)($a0)
	la.u    $a2, _Na_work_bss+0x5EA0
	la.u    $s1, _Na_work_bss+0x118
	la.l    $s1, _Na_work_bss+0x118
	la.l    $a2, _Na_work_bss+0x5EA0
	li      $s0, 0x0A00
	move    $a0, $s1
108$:
	li      $a1, 0x0A00
	jal     Na_memory_80317040
	sw      $a2, 0x003C($s8)
	lw      $a2, 0x003C($s8)
	la.u    $t1, _Na_work_bss+0x5EAC
	move    $v1, $0
	sw      $v0, 0x0000($a2)
115$:
	lw      $t7, 0x0000($a2)
	addu    $t0, $t7, $v1
	addiu   $v1, $v1, 0x0002
	bne     $v1, $s0, 115$
	sh      $0, 0x0000($t0)
	addiu   $a2, $a2, 0x0004
	la.l    $t1, _Na_work_bss+0x5EAC
	bnel    $a2, $t1, 108$
	move    $a0, $s1
	la.u    $a0, Na_CfgTable
	jal     Na_memory_80317948
	la.l    $a0, Na_CfgTable
	la.u    $v0, _Na_work_bss+0x5DAC
	la.l    $v0, _Na_work_bss+0x5DAC
	addiu   $a1, $s8, 0x0068
	la.u    $a0, _AudioseqSegmentRomStart
	sw      $a1, 0x0000($v0)
	la.l    $a0, _AudioseqSegmentRomStart
	jal     Na_system_80318040
	li      $a2, 0x0010
	lui     $t2, %hi(_Na_work_bss+0x5DAC)
	lw      $t2, %lo(_Na_work_bss+0x5DAC)($t2)
	la.u    $v0, _Na_work_bss+0x5DBC
	li      $at, -0x0010
	lh      $t3, 0x0002($t2)
	la.l    $v0, _Na_work_bss+0x5DBC
	move    $a0, $s1
	andi    $s0, $t3, 0xFFFF
	sll     $t4, $s0, 3
	addiu   $s0, $t4, 0x0013
	and     $a1, $s0, $at
	move    $s0, $a1
	jal     Na_memory_80317040
	sh      $t3, 0x0000($v0)
	la.u    $v1, _Na_work_bss+0x5DAC
	la.l    $v1, _Na_work_bss+0x5DAC
	la.u    $a0, _AudioseqSegmentRomStart
	sw      $v0, 0x0000($v1)
	la.l    $a0, _AudioseqSegmentRomStart
	move    $a1, $v0
	jal     Na_system_80318040
	move    $a2, $s0
	lui     $a0, %hi(_Na_work_bss+0x5DAC)
	la.u    $a1, _AudioseqSegmentRomStart
	la.l    $a1, _AudioseqSegmentRomStart
	jal     alSeqFileNew
	lw      $a0, %lo(_Na_work_bss+0x5DAC)($a0)
	la.u    $v0, _Na_work_bss+0x5DB0
	la.l    $v0, _Na_work_bss+0x5DB0
	addiu   $a1, $s8, 0x0068
	la.u    $a0, _AudioctlSegmentRomStart
	sw      $a1, 0x0000($v0)
	la.l    $a0, _AudioctlSegmentRomStart
	jal     Na_system_80318040
	li      $a2, 0x0010
	lui     $t8, %hi(_Na_work_bss+0x5DB0)
	lw      $t8, %lo(_Na_work_bss+0x5DB0)($t8)
	li      $at, -0x0010
	move    $a0, $s1
	lh      $v0, 0x0002($t8)
	sll     $s0, $v0, 3
	addiu   $s0, $s0, 0x0013
	sll     $a1, $v0, 2
	and     $t7, $s0, $at
	subu    $a1, $a1, $v0
	move    $s0, $t7
	jal     Na_memory_80317040
	sll     $a1, $a1, 2
	lui     $at, %hi(_Na_work_bss+0x5DC0)
	sw      $v0, %lo(_Na_work_bss+0x5DC0)($at)
	move    $a0, $s1
	jal     Na_memory_80317040
	move    $a1, $s0
	la.u    $v1, _Na_work_bss+0x5DB0
	la.l    $v1, _Na_work_bss+0x5DB0
	la.u    $a0, _AudioctlSegmentRomStart
	sw      $v0, 0x0000($v1)
	la.l    $a0, _AudioctlSegmentRomStart
	move    $a1, $v0
	jal     Na_system_80318040
	move    $a2, $s0
	lui     $a0, %hi(_Na_work_bss+0x5DB0)
	la.u    $a1, _AudioctlSegmentRomStart
	la.l    $a1, _AudioctlSegmentRomStart
	jal     alSeqFileNew
	lw      $a0, %lo(_Na_work_bss+0x5DB0)($a0)
	la.u    $v0, _Na_work_bss+0x5DB4
	la.l    $v0, _Na_work_bss+0x5DB4
	addiu   $a1, $s8, 0x0068
	la.u    $a0, _AudioctlSegmentRomStart
	sw      $a1, 0x0000($v0)
	la.l    $a0, _AudioctlSegmentRomStart
	jal     Na_system_80318040
	li      $a2, 0x0010
	lui     $t1, %hi(_Na_work_bss+0x5DB4)
	lw      $t1, %lo(_Na_work_bss+0x5DB4)($t1)
	li      $at, -0x0010
	move    $a0, $s1
	lh      $s0, 0x0002($t1)
	sll     $t9, $s0, 3
	move    $s0, $t9
	addiu   $s0, $s0, 0x0013
	and     $a1, $s0, $at
	jal     Na_memory_80317040
	move    $s0, $a1
	la.u    $v1, _Na_work_bss+0x5DB4
	la.l    $v1, _Na_work_bss+0x5DB4
	la.u    $a0, _AudiotblSegmentRomStart
	sw      $v0, 0x0000($v1)
	la.l    $a0, _AudiotblSegmentRomStart
	move    $a1, $v0
	jal     Na_system_80318040
	move    $a2, $s0
	lui     $a0, %hi(_Na_work_bss+0x5DB4)
	la.u    $a1, _AudiotblSegmentRomStart
	la.l    $a1, _AudiotblSegmentRomStart
	jal     alSeqFileNew
	lw      $a0, %lo(_Na_work_bss+0x5DB4)($a0)
	move    $a0, $s1
	jal     Na_memory_80317040
	li      $a1, 0x0100
	la.u    $v1, _Na_work_bss+0x5DB8
	la.l    $v1, _Na_work_bss+0x5DB8
	la.u    $a0, _AudiobnkSegmentRomStart
	sw      $v0, 0x0000($v1)
	la.l    $a0, _AudiobnkSegmentRomStart
	move    $a1, $v0
	jal     Na_system_80318040
	li      $a2, 0x0100
	jal     Na_sequence_8031E374
	nop
	li.u    $t3, 0x76557364
	la.u    $t4, Na_data_80335004
	la.l    $t4, Na_data_80335004
	li.l    $t3, 0x76557364
	sw      $t3, 0x0000($t4)
	lw      $ra, 0x002C($s8)
	lw      $s1, 0x0024($s8)
	lw      $s0, 0x0020($s8)
	move    $sp, $s8
	lw      $s8, 0x0028($s8)
	jr      $ra
	addiu   $sp, $sp, 0x0098
