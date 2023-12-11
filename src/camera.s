.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

.globl camera_8027F590
camera_8027F590:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sdc1    $f20, 0x0010($sp)
	lh      $t6, 0x002A($sp)
	addiu   $t7, $t6, -0x0001
	sltiu   $at, $t7, 0x000A
	beqz    $at, L8027F89C
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(camera_803370F0)
	addu    $at, $at, $t7
	lw      $t7, %lo(camera_803370F0)($at)
	jr      $t7
	nop
.globl L8027F5CC
L8027F5CC:
	mtc1    $0, $f4
	lui     $at, %hi(camdata+0xA4)
	swc1    $f4, %lo(camdata+0xA4)($at)
	mtc1    $0, $f6
	lui     $at, %hi(camdata+0xAC)
	swc1    $f6, %lo(camdata+0xAC)($at)
	b       L8027F89C
	nop
.globl L8027F5EC
L8027F5EC:
	li      $a0, 0x0060
	li      $a1, 0x0003
	jal     camera_8028AEF0
	li      $a2, -0x8000
	li      $a0, 0x0060
	li      $a1, 0x0003
	jal     camera_8028B00C
	li      $a2, -0x8000
	b       L8027F89C
	nop
.globl L8027F614
L8027F614:
	li      $a0, 0x0060
	li      $a1, 0x000C
	jal     camera_8028AEF0
	li      $a2, -0x8000
	b       L8027F89C
	nop
.globl L8027F62C
L8027F62C:
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lw      $t9, 0x0000($t8)
	andi    $t0, $t9, 0x6000
	beqz    $t0, 59$
	nop
	li      $a0, 0x0200
	li      $a1, 0x0010
	jal     camera_8028AF4C
	li      $a2, 0x1000
	li      $a0, 0x0400
	li      $a1, 0x0020
	jal     camera_8028B00C
	li      $a2, 0x1000
	li      $a0, 0x0100
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       71$
	nop
59$:
	li      $a0, 0x0080
	li      $a1, 0x0008
	jal     camera_8028AF4C
	li      $a2, 0x4000
	li      $a0, 0x0080
	li      $a1, 0x0008
	jal     camera_8028B00C
	li      $a2, 0x4000
	li      $a0, 0x0100
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
71$:
	mtc1    $0, $f8
	lui     $at, %hi(camdata+0xA4)
	swc1    $f8, %lo(camdata+0xA4)($at)
	mtc1    $0, $f10
	lui     $at, %hi(camdata+0xAC)
	swc1    $f10, %lo(camdata+0xAC)($at)
	b       L8027F89C
	nop
.globl L8027F6CC
L8027F6CC:
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	lw      $t2, 0x0000($t1)
	andi    $t3, $t2, 0x6000
	beqz    $t3, 99$
	nop
	li      $a0, 0x0400
	li      $a1, 0x0020
	jal     camera_8028AF4C
	li      $a2, 0x1000
	li      $a0, 0x0600
	li      $a1, 0x0030
	jal     camera_8028B00C
	li      $a2, 0x1000
	li      $a0, 0x0180
	li      $a1, 0x0040
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       111$
	nop
99$:
	li      $a0, 0x0100
	li      $a1, 0x0010
	jal     camera_8028AF4C
	li      $a2, 0x4000
	li      $a0, 0x0100
	li      $a1, 0x0010
	jal     camera_8028B00C
	li      $a2, 0x4000
	li      $a0, 0x0180
	li      $a1, 0x0040
	jal     camera_8029A3B4
	li      $a2, -0x8000
111$:
	mtc1    $0, $f16
	lui     $at, %hi(camdata+0xA4)
	swc1    $f16, %lo(camdata+0xA4)($at)
	mtc1    $0, $f18
	lui     $at, %hi(camdata+0xAC)
	swc1    $f18, %lo(camdata+0xAC)($at)
	b       L8027F89C
	nop
.globl L8027F76C
L8027F76C:
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	lw      $t5, 0x0000($t4)
	andi    $t6, $t5, 0x6000
	beqz    $t6, 139$
	nop
	li      $a0, 0x0600
	li      $a1, 0x0030
	jal     camera_8028AF4C
	li      $a2, 0x1000
	li      $a0, 0x0800
	li      $a1, 0x0040
	jal     camera_8028B00C
	li      $a2, 0x1000
	li      $a0, 0x0200
	li      $a1, 0x0050
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       151$
	nop
139$:
	li      $a0, 0x0180
	li      $a1, 0x0020
	jal     camera_8028AF4C
	li      $a2, 0x4000
	li      $a0, 0x0200
	li      $a1, 0x0020
	jal     camera_8028B00C
	li      $a2, 0x4000
	li      $a0, 0x0200
	li      $a1, 0x0050
	jal     camera_8029A3B4
	li      $a2, -0x8000
151$:
	mtc1    $0, $f4
	lui     $at, %hi(camdata+0xA4)
	swc1    $f4, %lo(camdata+0xA4)($at)
	mtc1    $0, $f6
	lui     $at, %hi(camdata+0xAC)
	swc1    $f6, %lo(camdata+0xAC)($at)
	b       L8027F89C
	nop
.globl L8027F80C
L8027F80C:
	lui     $at, %hi(camera_80337118)
	lwc1    $f8, %lo(camera_80337118)($at)
	lui     $at, %hi(camdata+0xA4)
	swc1    $f8, %lo(camdata+0xA4)($at)
	lui     $at, %hi(camera_8033711C)
	lwc1    $f10, %lo(camera_8033711C)($at)
	lui     $at, %hi(camdata+0xAC)
	swc1    $f10, %lo(camdata+0xAC)($at)
	b       L8027F89C
	nop
.globl L8027F834
L8027F834:
	jal     randf
	nop
	li      $at, 0x42800000
	mtc1    $at, $f16
	mov.s   $f20, $f0
	li      $a1, 0x0008
	mul.s   $f18, $f20, $f16
	li      $a2, -0x8000
	trunc.w.s $f4, $f18
	mfc1    $a0, $f4
	jal     camera_8028AEF0
	nop
	jal     randf
	nop
	li      $at, 0x42800000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	li      $a1, 0x0008
	mul.s   $f8, $f20, $f6
	li      $a2, -0x8000
	trunc.w.s $f10, $f8
	mfc1    $a0, $f10
	jal     camera_8028AF4C
	nop
	b       L8027F89C
	nop
.globl L8027F89C
L8027F89C:
	b       197$
	nop
197$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_8027F8B8
camera_8027F8B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lh      $t6, 0x001A($sp)
	addiu   $t7, $t6, -0x0001
	sltiu   $at, $t7, 0x000A
	beqz    $at, L8027F9D8
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(camera_80337120)
	addu    $at, $at, $t7
	lw      $t7, %lo(camera_80337120)($at)
	jr      $t7
	nop
.globl L8027F8F0
L8027F8F0:
	li      $a0, 0x0060
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x4000
	b       L8027F9D8
	nop
.globl L8027F908
L8027F908:
	li      $a0, 0x00C0
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x4000
	b       L8027F9D8
	nop
.globl L8027F920
L8027F920:
	li      $a0, 0x0100
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x3000
	b       L8027F9D8
	nop
.globl L8027F938
L8027F938:
	li      $a0, 0x0080
	li      $a1, 0x0010
	jal     camera_8028B00C
	li      $a2, 0x3000
	b       L8027F9D8
	nop
.globl L8027F950
L8027F950:
	li      $a0, 0x0020
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, -0x8000
	b       L8027F9D8
	nop
.globl L8027F968
L8027F968:
	li      $a0, 0x0040
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, -0x8000
	b       L8027F9D8
	nop
.globl L8027F980
L8027F980:
	li      $a0, 0x0020
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, -0x8000
	li      $a0, 0x0400
	li      $a1, 0x0010
	jal     camera_8028B00C
	li      $a2, 0x0100
	b       L8027F9D8
	nop
.globl L8027F9A8
L8027F9A8:
	li      $a0, 0x0040
	li      $a1, 0x0002
	jal     camera_8028AEF0
	li      $a2, -0x8000
	b       L8027F9D8
	nop
.globl L8027F9C0
L8027F9C0:
	li      $a0, -0x0200
	li      $a1, 0x0080
	jal     camera_8028AF4C
	li      $a2, 0x0200
	b       L8027F9D8
	nop
.globl L8027F9D8
L8027F9D8:
	b       74$
	nop
74$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8027F9F0
camera_8027F9F0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	sw      $s0, 0x0028($sp)
	lh      $s0, 0x003A($sp)
	li      $at, 0x0001
	beq     $s0, $at, 35$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 53$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 72$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 22$
	nop
	b       90$
	nop
22$:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x0044($sp)
	li      $a0, 0x0028
	li      $a1, 0x0008
	li      $a2, 0x4000
	li      $a3, 0x44FA0000
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	jal     camera_8028B068
	swc1    $f8, 0x0018($sp)
	b       90$
	nop
35$:
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0044($sp)
	li      $a0, 0x0080
	li      $a1, 0x0008
	li      $a2, 0x4000
	li      $a3, 0x457A0000
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	jal     camera_8028B068
	swc1    $f18, 0x0018($sp)
	li      $a0, 0x0001
	lw      $a1, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     camera_8029AC30
	lw      $a3, 0x0044($sp)
	b       90$
	nop
53$:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x0044($sp)
	li.u    $a3, 0x45BB8000
	li.l    $a3, 0x45BB8000
	li      $a0, 0x00C0
	li      $a1, 0x0008
	li      $a2, 0x4000
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	jal     camera_8028B068
	swc1    $f8, 0x0018($sp)
	li      $a0, 0x0003
	lw      $a1, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     camera_8029AC30
	lw      $a3, 0x0044($sp)
	b       90$
	nop
72$:
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0044($sp)
	li      $a0, 0x0100
	li      $a1, 0x0008
	li      $a2, 0x3000
	li      $a3, 0x45FA0000
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	jal     camera_8028B068
	swc1    $f18, 0x0018($sp)
	li      $a0, 0x0004
	lw      $a1, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     camera_8029AC30
	lw      $a3, 0x0044($sp)
	b       90$
	nop
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8027FB74:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lh      $s0, 0x002A($sp)
	li      $at, 0x0001
	beq     $s0, $at, 16$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 22$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 28$
	nop
	b       34$
	nop
16$:
	li      $a0, 0x0060
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x4000
	b       34$
	nop
22$:
	li      $a0, 0x00C0
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x4000
	b       34$
	nop
28$:
	li      $a0, 0x0100
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x3000
	b       34$
	nop
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8027FC18:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0xCC)($at)
	swc1    $f4, 0x0024($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x4000
	bnez    $t8, 29$
	nop
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	lwc1    $f12, 0x0004($t9)
	jal     bg_check_water
	lwc1    $f14, 0x000C($t9)
	swc1    $f0, 0x0020($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    29$
	nop
	lwc1    $f10, 0x0020($sp)
	swc1    $f10, 0x0024($sp)
29$:
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	li      $at, 0x00100000
	lw      $t1, 0x0000($t0)
	and     $t2, $t1, $at
	beqz    $t2, 62$
	nop
	la.u    $t3, player_data
	la.l    $t3, player_data
	lw      $t4, 0x0080($t3)
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f16, %lo(_camera_bss_48-0x48+0xCC)($at)
	lwc1    $f18, 0x00A4($t4)
	c.le.s  $f18, $f16
	nop
	bc1f    62$
	nop
	lui     $at, %hi(camera_80337148)
	lwc1    $f6, %lo(camera_80337148)($at)
	lwc1    $f8, 0x01FC($t4)
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x0008($t5)
	add.s   $f16, $f18, $f10
	c.lt.s  $f4, $f16
	nop
	bc1f    62$
	nop
	li      $at, 0x44960000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0030($sp)
62$:
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f18, 0x0008($t6)
	lw      $t7, 0x0028($sp)
	sub.s   $f10, $f8, $f18
	mul.s   $f16, $f10, $f4
	swc1    $f16, 0x0000($t7)
	lw      $t8, 0x0028($sp)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f6, 0x0000($t8)
	c.lt.s  $f8, $f6
	nop
	bc1f    81$
	nop
	lwc1    $f18, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	swc1    $f18, 0x0000($t9)
81$:
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f10, 0x0000($t0)
	neg.s   $f16, $f4
	c.lt.s  $f10, $f16
	nop
	bc1f    93$
	nop
	lwc1    $f6, 0x0030($sp)
	lw      $t1, 0x0028($sp)
	neg.s   $f8, $f6
	swc1    $f8, 0x0000($t1)
93$:
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f4, 0x0008($t2)
	lw      $t3, 0x0034($sp)
	sub.s   $f10, $f18, $f4
	mul.s   $f6, $f10, $f16
	swc1    $f6, 0x0000($t3)
	lw      $t5, 0x0034($sp)
	lwc1    $f18, 0x003C($sp)
	lwc1    $f8, 0x0000($t5)
	c.lt.s  $f18, $f8
	nop
	bc1f    112$
	nop
	lwc1    $f4, 0x003C($sp)
	lw      $t4, 0x0034($sp)
	swc1    $f4, 0x0000($t4)
112$:
	lw      $t6, 0x0034($sp)
	lwc1    $f16, 0x003C($sp)
	lwc1    $f10, 0x0000($t6)
	neg.s   $f6, $f16
	c.lt.s  $f10, $f6
	nop
	bc1f    124$
	nop
	lwc1    $f8, 0x003C($sp)
	lw      $t7, 0x0034($sp)
	neg.s   $f18, $f8
	swc1    $f18, 0x0000($t7)
124$:
	b       126$
	nop
126$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8027FE20:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	addiu   $t7, $sp, 0x0024
	lwc1    $f4, 0x0004($t6)
	swc1    $f4, 0x0000($t7)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lwc1    $f8, 0x0038($sp)
	addiu   $t9, $sp, 0x0024
	lwc1    $f6, 0x0008($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($t9)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	addiu   $t1, $sp, 0x0024
	lwc1    $f16, 0x000C($t0)
	swc1    $f16, 0x0008($t1)
	lui     $t3, %hi(_camera_bss_238-0x238+0x240)
	lh      $t3, %lo(_camera_bss_238-0x238+0x240)($t3)
	lh      $t2, 0x0046($sp)
	lh      $t4, 0x004A($sp)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0040($sp)
	addu    $a3, $t2, $t3
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f18, 0x0004($t5)
	swc1    $f18, 0x0000($t6)
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lwc1    $f6, 0x003C($sp)
	lw      $t8, 0x0030($sp)
	lwc1    $f4, 0x0008($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($t8)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f10, 0x000C($t9)
	swc1    $f10, 0x0008($t0)
	b       52$
	nop
52$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8027FF00:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	addiu   $a0, $sp, 0x0034
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	addiu   $t6, $sp, 0x0034
	lwc1    $f4, 0x0004($t6)
	lwc1    $f6, 0x0048($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($t6)
	lui     $t8, %hi(_camera_bss_238-0x238+0x240)
	lh      $t8, %lo(_camera_bss_238-0x238+0x240)($t8)
	lh      $t7, 0x0056($sp)
	lh      $t9, 0x005A($sp)
	addiu   $a0, $sp, 0x0034
	lw      $a1, 0x0044($sp)
	lw      $a2, 0x0050($sp)
	addu    $a3, $t7, $t8
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	addiu   $t0, $sp, 0x0028
	sw      $t0, 0x0010($sp)
	lw      $a0, 0x0044($sp)
	addiu   $a2, $sp, 0x0030
	addiu   $a3, $sp, 0x002A
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0004
	addiu   $t1, $sp, 0x0024
	sw      $t1, 0x0010($sp)
	lw      $a0, 0x0044($sp)
	lw      $a1, 0x0040($sp)
	addiu   $a2, $sp, 0x002C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0026
	lh      $t2, 0x0024($sp)
	lw      $a0, 0x0044($sp)
	lw      $a1, 0x0040($sp)
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x0026($sp)
	jal     polar_to_cartesian
	sw      $t2, 0x0010($sp)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	lwc1    $f16, 0x004C($sp)
	lw      $t4, 0x0040($sp)
	lwc1    $f10, 0x0008($t3)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t4)
	b       58$
	nop
58$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

camera_8027FFF8:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $t7, 0x0000($t6)
	sh      $t7, 0x002E($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($sp)
	la.u    $t9, camdata
	lw      $t8, 0x0048($sp)
	la.l    $t9, camdata
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($t9)
	addiu   $a3, $sp, 0x0044
	lwc1    $f12, 0x0010($t8)
	lw      $a2, 0x0018($t8)
	jal     bg_check_roof
	sub.s   $f14, $f6, $f8
	swc1    $f0, 0x0024($sp)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	li      $at, 0x00200000
	lw      $t1, 0x0000($t0)
	and     $t2, $t1, $at
	beqz    $t2, 84$
	nop
	lui     $at, %hi(_camera_bss_48-0x48+0xDC)
	lwc1    $f10, %lo(_camera_bss_48-0x48+0xDC)($at)
	swc1    $f10, 0x003C($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f16, %lo(_camera_bss_48-0x48+0xCC)($at)
	swc1    $f16, 0x0040($sp)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x003C($sp)
	lwc1    $f18, 0x0040($sp)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f18, $f8
	nop
	bc1f    52$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x003C($sp)
	sub.s   $f4, $f10, $f16
	swc1    $f4, 0x0040($sp)
52$:
	lwc1    $f6, 0x003C($sp)
	lwc1    $f18, 0x0040($sp)
	lui     $at, %hi(camera_8033714C)
	lwc1    $f10, %lo(camera_8033714C)($at)
	sub.s   $f8, $f6, $f18
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x004C($sp)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x0008($t3)
	lwc1    $f16, 0x004C($sp)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    78$
	nop
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	li      $at, 0x43C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x0008($t4)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x004C($sp)
78$:
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x004C($sp)
	jal     camera_8028C8F0
	li      $a2, 0x40A00000
	b       213$
	nop
84$:
	lw      $t5, 0x0048($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lwc1    $f8, 0x0014($t5)
	addiu   $a3, $sp, 0x0044
	lwc1    $f12, 0x0010($t5)
	lw      $a2, 0x0018($t5)
	jal     bg_check_ground
	add.s   $f14, $f8, $f10
	lwc1    $f16, 0x0028($sp)
	add.s   $f18, $f0, $f16
	swc1    $f18, 0x0038($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f6, %lo(_camera_bss_48-0x48+0xCC)($at)
	lwc1    $f4, 0x0028($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0040($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f16, 0x0040($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    109$
	nop
	lwc1    $f18, 0x0040($sp)
	swc1    $f18, 0x0038($sp)
109$:
	lwc1    $f4, 0x004C($sp)
	lwc1    $f6, 0x0038($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    120$
	nop
	lwc1    $f8, 0x0038($sp)
	swc1    $f8, 0x004C($sp)
	lwc1    $f10, 0x004C($sp)
	lw      $t6, 0x0048($sp)
	swc1    $f10, 0x0014($t6)
120$:
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	li.u    $at, 0x0002033B
	li.l    $at, 0x0002033B
	lw      $t9, 0x0000($t7)
	beq     $t9, $at, 135$
	nop
	li.u    $at, 0x0002033A
	li.l    $at, 0x0002033A
	beq     $t9, $at, 135$
	nop
	li.u    $at, 0x0002033C
	li.l    $at, 0x0002033C
	bne     $t9, $at, 161$
	nop
135$:
	lw      $t8, 0x0048($sp)
	lwc1    $f18, 0x004C($sp)
	mtc1    $0, $f6
	lwc1    $f16, 0x0014($t8)
	sub.s   $f4, $f16, $f18
	c.lt.s  $f6, $f4
	nop
	bc1f    146$
	nop
	b       151$
	mov.s   $f20, $f4
146$:
	lw      $t0, 0x0048($sp)
	lwc1    $f10, 0x004C($sp)
	lwc1    $f8, 0x0014($t0)
	sub.s   $f20, $f8, $f10
	neg.s   $f20, $f20
151$:
	li      $at, 0x447A0000
	mtc1    $at, $f16
	nop
	c.lt.s  $f16, $f20
	nop
	bc1f    161$
	nop
	lwc1    $f18, 0x004C($sp)
	lw      $t1, 0x0048($sp)
	swc1    $f18, 0x0014($t1)
161$:
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x004C($sp)
	jal     camera_8028C8F0
	li      $a2, 0x41A00000
	lui     $at, %hi(camera_80337150)
	lwc1    $f4, %lo(camera_80337150)($at)
	lwc1    $f6, 0x0024($sp)
	c.eq.s  $f6, $f4
	nop
	bc1t    213$
	nop
	lwc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x0028($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lw      $t2, 0x0048($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f18, 0x0014($t2)
	c.lt.s  $f6, $f18
	nop
	bc1f    191$
	nop
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0xCC)($at)
	lwc1    $f8, 0x0028($sp)
	add.s   $f10, $f4, $f8
	c.lt.s  $f10, $f6
	nop
	bc1t    210$
	nop
191$:
	lui     $at, %hi(_camera_bss_48-0x48+0xDC)
	lwc1    $f16, %lo(_camera_bss_48-0x48+0xDC)($at)
	lui     $at, %hi(camera_80337154)
	lwc1    $f18, %lo(camera_80337154)($at)
	c.eq.s  $f16, $f18
	nop
	bc1t    213$
	nop
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f16
	nop
	bc1f    213$
	nop
	lw      $t3, 0x0048($sp)
	lwc1    $f8, 0x0014($t3)
	c.lt.s  $f4, $f8
	nop
	bc1f    213$
	nop
210$:
	lwc1    $f10, 0x0024($sp)
	lw      $t4, 0x0048($sp)
	swc1    $f10, 0x0014($t4)
213$:
	b       215$
	nop
215$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_80280368:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	li      $t6, 0x05B0
	sh      $t6, 0x003E($sp)
	lhu     $t7, 0x004A($sp)
	lui     $at, %hi(math_sin)
	lui     $t0, %hi(mario_cam)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lw      $t0, %lo(mario_cam)($t0)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x0004($t0)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0038($sp)
	lhu     $t1, 0x004A($sp)
	lui     $at, %hi(math_cos)
	lui     $t4, %hi(mario_cam)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x42200000
	mtc1    $at, $f4
	lw      $t4, %lo(mario_cam)($t4)
	mul.s   $f6, $f18, $f4
	lwc1    $f8, 0x000C($t4)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0034($sp)
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	lwc1    $f12, 0x0038($sp)
	lw      $a2, 0x0034($sp)
	addiu   $a3, $sp, 0x0044
	jal     bg_check_ground
	lwc1    $f14, 0x0008($t5)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	mov.s   $f20, $f0
	lwc1    $f16, 0x0008($t6)
	sub.s   $f18, $f20, $f16
	swc1    $f18, 0x0040($sp)
	lw      $t7, 0x0044($sp)
	beqz    $t7, 90$
	nop
	lw      $t8, 0x0044($sp)
	li      $at, 0x0028
	lh      $t9, 0x0000($t8)
	beq     $t9, $at, 90$
	nop
	lwc1    $f4, 0x0040($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    90$
	nop
	lw      $t0, 0x0044($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0024($t0)
	c.eq.s  $f8, $f10
	nop
	bc1f    80$
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x0040($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    80$
	nop
	li      $t1, 0x05B0
	b       90$
	sh      $t1, 0x003E($sp)
80$:
	li      $at, 0x42200000
	mtc1    $at, $f12
	jal     ATAN2
	lwc1    $f14, 0x0040($sp)
	lh      $t3, 0x003E($sp)
	sll     $s0, $v0, 16
	sra     $t2, $s0, 16
	move    $s0, $t2
	addu    $t4, $t3, $s0
	sh      $t4, 0x003E($sp)
90$:
	b       94$
	lh      $v0, 0x003E($sp)
	b       94$
	nop
94$:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

camera_802804F4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	la.u    $t7, camera_8032DFF0
	la.l    $t7, camera_8032DFF0
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0024
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0038($sp)
	addiu   $t0, $sp, 0x0030
	sw      $t0, 0x0010($sp)
	addiu   $a2, $sp, 0x0034
	addiu   $a3, $sp, 0x0032
	addiu   $a1, $a1, 0x0004
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	la.u    $t1, math_sin
	la.l    $t1, math_sin
	lwc1    $f4, 0x0300($t1)
	lwc1    $f6, 0x0034($sp)
	addiu   $t2, $sp, 0x0024
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t2)
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	addiu   $t3, $sp, 0x0024
	move    $a0, $t3
	move    $a1, $t3
	jal     camera_8028AD4C
	lh      $a2, 0x0012($t4)
	lh      $t5, 0x0030($sp)
	subu    $t8, $0, $t5
	sh      $t8, 0x0030($sp)
	addiu   $t6, $sp, 0x0024
	move    $a0, $t6
	move    $a1, $t6
	jal     camera_8028AD4C
	lh      $a2, 0x0030($sp)
	mtc1    $0, $f10
	addiu   $t7, $sp, 0x0024
	swc1    $f10, 0x0008($t7)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	li.u    $at, 0x03000888
	li.l    $at, 0x03000888
	lw      $t0, 0x0000($t9)
	beq     $t0, $at, 62$
	nop
	li.u    $at, 0x00100345
	li.l    $at, 0x00100345
	beq     $t0, $at, 66$
	nop
	li      $at, 0x00100000
	and     $t1, $t0, $at
	beqz    $t1, 66$
	nop
62$:
	addiu   $t2, $sp, 0x0024
	lwc1    $f16, 0x0000($t2)
	neg.s   $f18, $f16
	swc1    $f18, 0x0000($t2)
66$:
	lui     $t3, %hi(camera_8033C84A)
	lh      $t3, %lo(camera_8033C84A)($t3)
	andi    $t4, $t3, 0x0040
	beqz    $t4, 79$
	nop
	la.u    $a0, _camera_bss_238-0x238+0x25C
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	la.l    $a0, _camera_bss_238-0x238+0x25C
	jal     camera_802893F4
	li      $a1, 0x0000
	b       86$
	nop
79$:
	la.u    $a0, _camera_bss_238-0x238+0x25C
	addiu   $t5, $sp, 0x0024
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	lw      $a1, 0x0000($t5)
	jal     camera_802893F4
	la.l    $a0, _camera_bss_238-0x238+0x25C
86$:
	lui     $at, %hi(_camera_bss_238-0x238+0x25C)
	lwc1    $f4, %lo(_camera_bss_238-0x238+0x25C)($at)
	addiu   $t8, $sp, 0x0024
	swc1    $f4, 0x0000($t8)
	lh      $t6, 0x0030($sp)
	subu    $t7, $0, $t6
	sh      $t7, 0x0030($sp)
	addiu   $t9, $sp, 0x0024
	move    $a0, $t9
	move    $a1, $t9
	jal     camera_8028AD4C
	lh      $a2, 0x0030($sp)
	lw      $a0, 0x0038($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x0004
	b       104$
	nop
104$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_802806A4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0091
	beq     $s0, $at, 38$
	nop
	li      $at, 0x00B1
	beq     $s0, $at, 22$
	nop
	li      $at, 0x00D1
	beq     $s0, $at, 52$
	nop
	li      $at, 0x00D2
	beq     $s0, $at, 66$
	nop
	b       82$
	nop
22$:
	lui     $at, %hi(camera_80337158)
	lwc1    $f4, %lo(camera_80337158)($at)
	lui     $at, %hi(camera_8033715C)
	lwc1    $f6, %lo(camera_8033715C)($at)
	li.u    $a2, 0x458CE000
	li.u    $a3, 0xC569B000
	li.l    $a3, 0xC569B000
	li.l    $a2, 0x458CE000
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	swc1    $f4, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f6, 0x0014($sp)
	sh      $v0, 0x003A($sp)
	b       82$
	nop
38$:
	lui     $at, %hi(camera_80337160)
	lwc1    $f8, %lo(camera_80337160)($at)
	li      $at, 0xC5FA0000
	mtc1    $at, $f10
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	li      $a2, 0x45FA0000
	li      $a3, 0xC5FA0000
	swc1    $f8, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f10, 0x0014($sp)
	sh      $v0, 0x003A($sp)
	b       82$
	nop
52$:
	li      $at, 0x46000000
	mtc1    $at, $f16
	li      $at, 0xC6000000
	mtc1    $at, $f18
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	li      $a2, 0x46000000
	li      $a3, 0xC6000000
	swc1    $f16, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f18, 0x0014($sp)
	sh      $v0, 0x003A($sp)
	b       82$
	nop
66$:
	lui     $at, %hi(camera_80337164)
	lwc1    $f4, %lo(camera_80337164)($at)
	lui     $at, %hi(camera_80337168)
	lwc1    $f6, %lo(camera_80337168)($at)
	li.u    $a2, 0x4519A000
	li.u    $a3, 0xC519A000
	li.l    $a3, 0xC519A000
	li.l    $a2, 0x4519A000
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	swc1    $f4, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f6, 0x0014($sp)
	sh      $v0, 0x003A($sp)
	b       82$
	nop
82$:
	b       86$
	lh      $v0, 0x003A($sp)
	b       86$
	nop
86$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl camera_80280810
camera_80280810:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $t7, 0x0050($sp)
	lwc1    $f4, 0x0004($t6)
	lwc1    $f6, 0x0028($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($sp)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lw      $t9, 0x0050($sp)
	lwc1    $f10, 0x000C($t8)
	lwc1    $f16, 0x002C($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0048($sp)
	lwc1    $f12, 0x0048($sp)
	jal     ATAN2
	lwc1    $f14, 0x004C($sp)
	lui     $t0, %hi(_camera_bss_238-0x238+0x252)
	lh      $t0, %lo(_camera_bss_238-0x238+0x252)($t0)
	addu    $t1, $v0, $t0
	sh      $t1, 0x0046($sp)
	jal     camera_80280368
	lh      $a0, 0x0046($sp)
	sh      $v0, 0x0044($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($sp)
	lui     $t3, %hi(_camera_bss_238-0x238+0x252)
	lh      $t3, %lo(_camera_bss_238-0x238+0x252)($t3)
	lh      $t2, 0x0046($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x23A)
	subu    $t4, $t2, $t3
	sh      $t4, %lo(_camera_bss_238-0x238+0x23A)($at)
	lui     $at, %hi(camera_8033716C)
	lwc1    $f8, %lo(camera_8033716C)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	addiu   $a0, $sp, 0x003C
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	addiu   $a3, $sp, 0x0038
	swc1    $f8, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f10, 0x0014($sp)
	lui     $t5, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t5, %lo(_camera_bss_238-0x238+0x23E)($t5)
	lwc1    $f16, 0x003C($sp)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t5, $f10
	lwc1    $f6, 0x0038($sp)
	add.s   $f4, $f16, $f18
	lh      $t6, 0x0044($sp)
	lh      $t7, 0x0046($sp)
	cvt.s.w $f16, $f10
	mfc1    $a2, $f4
	lwc1    $f4, 0x0028($sp)
	lw      $a0, 0x0054($sp)
	lw      $a1, 0x0058($sp)
	add.s   $f8, $f6, $f18
	sw      $t6, 0x0014($sp)
	sw      $t7, 0x0018($sp)
	add.s   $f6, $f16, $f4
	mfc1    $a3, $f8
	jal     camera_8027FE20
	swc1    $f6, 0x0010($sp)
	lw      $a0, 0x0058($sp)
	lw      $a1, 0x0054($sp)
	jal     camera_802806A4
	lh      $a2, 0x0046($sp)
	sh      $v0, 0x0046($sp)
	b       84$
	lh      $v0, 0x0046($sp)
	b       84$
	nop
84$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

.globl camera_80280970
camera_80280970:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $t7, 0x0050($sp)
	lwc1    $f4, 0x0004($t6)
	lwc1    $f6, 0x0028($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($sp)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lw      $t9, 0x0050($sp)
	lwc1    $f10, 0x000C($t8)
	lwc1    $f16, 0x002C($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0048($sp)
	lui     $t0, %hi(_camera_bss_238-0x238+0x256)
	lui     $t1, %hi(_camera_bss_238-0x238+0x258)
	lh      $t1, %lo(_camera_bss_238-0x238+0x258)($t1)
	lh      $t0, %lo(_camera_bss_238-0x238+0x256)($t0)
	addu    $t2, $t0, $t1
	sh      $t2, 0x0046($sp)
	jal     camera_80280368
	lh      $a0, 0x0046($sp)
	sh      $v0, 0x0044($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($sp)
	lh      $t3, 0x0046($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x23A)
	sh      $t3, %lo(_camera_bss_238-0x238+0x23A)($at)
	lui     $at, %hi(camera_80337170)
	lwc1    $f8, %lo(camera_80337170)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	addiu   $a0, $sp, 0x0040
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	addiu   $a3, $sp, 0x003C
	swc1    $f8, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f10, 0x0014($sp)
	lui     $t4, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t4, %lo(_camera_bss_238-0x238+0x23E)($t4)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t4, $f10
	lwc1    $f6, 0x003C($sp)
	add.s   $f4, $f16, $f18
	lh      $t5, 0x0044($sp)
	lh      $t6, 0x0046($sp)
	cvt.s.w $f16, $f10
	mfc1    $a2, $f4
	lwc1    $f4, 0x0028($sp)
	lw      $a0, 0x0054($sp)
	lw      $a1, 0x0058($sp)
	add.s   $f8, $f6, $f18
	sw      $t5, 0x0014($sp)
	sw      $t6, 0x0018($sp)
	add.s   $f6, $f16, $f4
	mfc1    $a3, $f8
	jal     camera_8027FE20
	swc1    $f6, 0x0010($sp)
	jal     camera_802804F4
	lw      $a0, 0x0050($sp)
	lui     $t7, %hi(camera_stagescene)
	lw      $t7, %lo(camera_stagescene)($t7)
	li      $at, 0x0172
	bne     $t7, $at, 92$
	nop
	lui     $at, %hi(camera_80337174)
	lwc1    $f18, %lo(camera_80337174)($at)
	lui     $at, %hi(camera_80337178)
	lwc1    $f8, %lo(camera_80337178)($at)
	li.u    $a2, 0x45D5B800
	li.u    $a3, 0x4478C000
	li.l    $a3, 0x4478C000
	li.l    $a2, 0x45D5B800
	lw      $a0, 0x0058($sp)
	lw      $a1, 0x0054($sp)
	swc1    $f18, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f8, 0x0014($sp)
	sh      $v0, 0x0046($sp)
92$:
	b       96$
	lh      $v0, 0x0046($sp)
	b       96$
	nop
96$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

camera_80280B00:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x2AAA
	sh      $t6, 0x0046($sp)
	li      $t7, -0x2AAA
	sh      $t7, 0x0044($sp)
	li      $t8, 0x1000
	sh      $t8, 0x0042($sp)
	sh      $0, 0x003A($sp)
	sw      $0, 0x0034($sp)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	lw      $t0, 0x0048($sp)
	lwc1    $f4, 0x0004($t9)
	lwc1    $f6, 0x0028($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	lw      $t2, 0x0048($sp)
	lwc1    $f10, 0x000C($t1)
	lwc1    $f16, 0x002C($t2)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0048($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sll     $s0, $v0, 16
	sra     $t3, $s0, 16
	move    $s0, $t3
	lwc1    $f12, 0x002C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	subu    $t4, $s0, $v0
	sh      $t4, 0x0026($sp)
	lh      $t5, 0x0026($sp)
	lh      $t6, 0x0046($sp)
	slt     $at, $t6, $t5
	beqz    $at, 47$
	nop
	lh      $t7, 0x0046($sp)
	sh      $t7, 0x0026($sp)
47$:
	lh      $t8, 0x0026($sp)
	lh      $t9, 0x0044($sp)
	slt     $at, $t8, $t9
	beqz    $at, 54$
	nop
	lh      $t0, 0x0044($sp)
	sh      $t0, 0x0026($sp)
54$:
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	andi    $t2, $t1, 0x000D
	bnez    $t2, 104$
	nop
	lui     $t3, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t3, %lo(_camera_bss_48-0x48+0xD0)($t3)
	li      $at, 0x006E
	bne     $t3, $at, 74$
	nop
	lui     $t4, %hi(_camera_bss_48-0x48+0xE8)
	lh      $t4, %lo(_camera_bss_48-0x48+0xE8)($t4)
	li      $at, 0x006E
	beq     $t4, $at, 74$
	nop
	lui     $t5, %hi(camera_8033C848)
	lh      $t5, %lo(camera_8033C848)($t5)
	lui     $at, %hi(camera_8033C848)
	ori     $t6, $t5, 0x0011
	sh      $t6, %lo(camera_8033C848)($at)
74$:
	lui     $t7, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t7, %lo(_camera_bss_48-0x48+0xD0)($t7)
	li      $at, 0x006F
	bne     $t7, $at, 89$
	nop
	lui     $t8, %hi(_camera_bss_48-0x48+0xE8)
	lh      $t8, %lo(_camera_bss_48-0x48+0xE8)($t8)
	li      $at, 0x006F
	beq     $t8, $at, 89$
	nop
	lui     $t9, %hi(camera_8033C848)
	lh      $t9, %lo(camera_8033C848)($t9)
	lui     $at, %hi(camera_8033C848)
	ori     $t0, $t9, 0x0014
	sh      $t0, %lo(camera_8033C848)($at)
89$:
	lui     $t1, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t1, %lo(_camera_bss_48-0x48+0xD0)($t1)
	li      $at, 0x0070
	bne     $t1, $at, 104$
	nop
	lui     $t2, %hi(_camera_bss_48-0x48+0xE8)
	lh      $t2, %lo(_camera_bss_48-0x48+0xE8)($t2)
	li      $at, 0x0070
	beq     $t2, $at, 104$
	nop
	lui     $t3, %hi(camera_8033C848)
	lh      $t3, %lo(camera_8033C848)($t3)
	lui     $at, %hi(camera_8033C848)
	ori     $t4, $t3, 0x0018
	sh      $t4, %lo(camera_8033C848)($at)
104$:
	lui     $t5, %hi(camera_8033C848)
	lh      $t5, %lo(camera_8033C848)($t5)
	andi    $t6, $t5, 0x0010
	beqz    $t6, 111$
	nop
	li      $t7, 0x0200
	sh      $t7, 0x0042($sp)
111$:
	lw      $t8, 0x0048($sp)
	li      $at, 0x0002
	lbu     $t9, 0x0000($t8)
	bne     $t9, $at, 122$
	nop
	lwc1    $f4, 0x0030($sp)
	neg.s   $f6, $f4
	swc1    $f6, 0x0030($sp)
	lwc1    $f8, 0x002C($sp)
	neg.s   $f10, $f8
	swc1    $f10, 0x002C($sp)
122$:
	lw      $t0, 0x0048($sp)
	addiu   $a2, $sp, 0x0040
	li      $a3, 0x0400
	move    $a0, $t0
	jal     camera_8028F914
	addiu   $a1, $t0, 0x0010
	sw      $v0, 0x003C($sp)
	lw      $t1, 0x003C($sp)
	li      $at, 0x0003
	bne     $t1, $at, 166$
	nop
	lwc1    $f12, 0x002C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	lh      $t2, 0x0040($sp)
	subu    $t3, $t2, $v0
	addiu   $t4, $t3, 0x4000
	bgez    $t4, 145$
	nop
	lh      $t5, 0x0040($sp)
	li      $at, 0x8000
	addu    $t6, $t5, $at
	sh      $t6, 0x0040($sp)
145$:
	lwc1    $f12, 0x002C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	lh      $t8, 0x0040($sp)
	sll     $s0, $v0, 16
	sra     $t7, $s0, 16
	move    $s0, $t7
	subu    $t9, $t8, $s0
	sh      $t9, 0x0040($sp)
	lh      $t0, 0x0040($sp)
	slti    $at, $t0, 0x4AAB
	bnez    $at, 160$
	nop
	li      $t1, 0x4AAA
	sh      $t1, 0x0040($sp)
160$:
	lh      $t2, 0x0040($sp)
	slti    $at, $t2, -0x4AAA
	beqz    $at, 166$
	nop
	li      $t3, -0x4AAA
	sh      $t3, 0x0040($sp)
166$:
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	andi    $t5, $t4, 0x0001
	beqz    $t5, 186$
	nop
	la.u    $a0, _camera_bss_238-0x238+0x252
	la.l    $a0, _camera_bss_238-0x238+0x252
	move    $a1, $0
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, 184$
	nop
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	li      $at, -0x0002
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t7, %lo(camera_8033C848)($at)
184$:
	b       340$
	nop
186$:
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 211$
	nop
	lw      $t0, 0x003C($sp)
	li      $at, 0x0003
	bne     $t0, $at, 211$
	nop
	lh      $t2, 0x0040($sp)
	lui     $t1, %hi(_camera_bss_238-0x238+0x252)
	lh      $t1, %lo(_camera_bss_238-0x238+0x252)($t1)
	addiu   $t3, $t2, 0x0010
	slt     $at, $t3, $t1
	beqz    $at, 211$
	nop
	lh      $t4, 0x0040($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $t4, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $t5, %hi(camera_8033C848)
	lh      $t5, %lo(camera_8033C848)($t5)
	li      $at, -0x0015
	and     $t6, $t5, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t6, %lo(camera_8033C848)($at)
211$:
	lui     $t7, %hi(camera_8033C848)
	lh      $t7, %lo(camera_8033C848)($t7)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 236$
	nop
	lw      $t9, 0x003C($sp)
	li      $at, 0x0003
	bne     $t9, $at, 236$
	nop
	lh      $t2, 0x0040($sp)
	lui     $t0, %hi(_camera_bss_238-0x238+0x252)
	lh      $t0, %lo(_camera_bss_238-0x238+0x252)($t0)
	addiu   $t1, $t2, -0x0010
	slt     $at, $t0, $t1
	beqz    $at, 236$
	nop
	lh      $t3, 0x0040($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $t3, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	li      $at, -0x0019
	and     $t5, $t4, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t5, %lo(camera_8033C848)($at)
236$:
	lui     $t6, %hi(_camera_bss_48-0x48+0x168)
	lh      $t6, %lo(_camera_bss_48-0x48+0x168)($t6)
	andi    $t7, $t6, 0x0004
	bnez    $t7, 259$
	nop
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 259$
	nop
	la.u    $a0, _camera_bss_238-0x238+0x252
	la.l    $a0, _camera_bss_238-0x238+0x252
	lh      $a1, 0x0046($sp)
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, 259$
	nop
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	li      $at, -0x0015
	and     $t0, $t2, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t0, %lo(camera_8033C848)($at)
259$:
	lui     $t1, %hi(_camera_bss_48-0x48+0x168)
	lh      $t1, %lo(_camera_bss_48-0x48+0x168)($t1)
	andi    $t3, $t1, 0x0008
	bnez    $t3, 282$
	nop
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	andi    $t5, $t4, 0x0008
	beqz    $t5, 282$
	nop
	la.u    $a0, _camera_bss_238-0x238+0x252
	la.l    $a0, _camera_bss_238-0x238+0x252
	lh      $a1, 0x0044($sp)
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, 282$
	nop
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	li      $at, -0x0019
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t7, %lo(camera_8033C848)($at)
282$:
	lui     $t8, %hi(_camera_bss_48-0x48+0x168)
	lh      $t8, %lo(_camera_bss_48-0x48+0x168)($t8)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 311$
	nop
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	andi    $t0, $t2, 0x0004
	beqz    $t0, 311$
	nop
	la.u    $a0, _camera_bss_238-0x238+0x252
	la.l    $a0, _camera_bss_238-0x238+0x252
	li      $a1, 0x4AAA
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, 311$
	nop
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	li      $at, -0x0015
	and     $t3, $t1, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t3, %lo(camera_8033C848)($at)
	lui     $t4, %hi(_camera_bss_48-0x48+0x168)
	lh      $t4, %lo(_camera_bss_48-0x48+0x168)($t4)
	li      $at, -0x0005
	and     $t5, $t4, $at
	lui     $at, %hi(_camera_bss_48-0x48+0x168)
	sh      $t5, %lo(_camera_bss_48-0x48+0x168)($at)
311$:
	lui     $t6, %hi(_camera_bss_48-0x48+0x168)
	lh      $t6, %lo(_camera_bss_48-0x48+0x168)($t6)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 340$
	nop
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 340$
	nop
	la.u    $a0, _camera_bss_238-0x238+0x252
	la.l    $a0, _camera_bss_238-0x238+0x252
	li      $a1, -0x4AAA
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, 340$
	nop
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	li      $at, -0x0019
	and     $t0, $t2, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t0, %lo(camera_8033C848)($at)
	lui     $t1, %hi(_camera_bss_48-0x48+0x168)
	lh      $t1, %lo(_camera_bss_48-0x48+0x168)($t1)
	li      $at, -0x0009
	and     $t3, $t1, $at
	lui     $at, %hi(_camera_bss_48-0x48+0x168)
	sh      $t3, %lo(_camera_bss_48-0x48+0x168)($at)
340$:
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	andi    $t5, $t4, 0x000D
	bnez    $t5, 395$
	nop
	lw      $t6, 0x003C($sp)
	li      $at, 0x0003
	bne     $t6, $at, 356$
	nop
	la.u    $a0, _camera_bss_238-0x238+0x252
	la.l    $a0, _camera_bss_238-0x238+0x252
	lh      $a1, 0x0040($sp)
	jal     camera_802894B4
	li      $a2, 0x000A
	b       395$
	nop
356$:
	lw      $t7, 0x0048($sp)
	li      $at, 0x0001
	lbu     $t8, 0x0000($t7)
	bne     $t8, $at, 379$
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t9)
	li      $at, 0x43000000
	mtc1    $at, $f6
	div.s   $f4, $f16, $f18
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sh      $t0, 0x0042($sp)
	la.u    $a0, _camera_bss_238-0x238+0x252
	la.l    $a0, _camera_bss_238-0x238+0x252
	lh      $a1, 0x0026($sp)
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
379$:
	lw      $t1, 0x0048($sp)
	li      $at, 0x0002
	lbu     $t3, 0x0000($t1)
	bne     $t3, $at, 395$
	nop
	lwc1    $f12, 0x002C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	sll     $s0, $v0, 16
	sra     $t4, $s0, 16
	move    $s0, $t4
	move    $a1, $s0
	jal     camera_8028B50C
	lw      $a0, 0x0048($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $v0, %lo(_camera_bss_238-0x238+0x252)($at)
395$:
	lui     $t5, %hi(_camera_bss_238-0x238+0x252)
	lh      $t5, %lo(_camera_bss_238-0x238+0x252)($t5)
	slti    $at, $t5, 0x5555
	bnez    $at, 403$
	nop
	li      $t6, 0x5554
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $t6, %lo(_camera_bss_238-0x238+0x252)($at)
403$:
	lui     $t7, %hi(_camera_bss_238-0x238+0x252)
	lh      $t7, %lo(_camera_bss_238-0x238+0x252)($t7)
	slti    $at, $t7, -0x5554
	beqz    $at, 411$
	nop
	li      $t8, -0x5554
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $t8, %lo(_camera_bss_238-0x238+0x252)($at)
411$:
	b       413$
	nop
413$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_80281188:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	lui     $t6, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t6, %lo(_camera_bss_238-0x238+0x23E)($t6)
	bgez    $t6, 18$
	nop
	lui     $t7, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t7, %lo(_camera_bss_238-0x238+0x23E)($t7)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	addiu   $t8, $t7, 0x001E
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	blez    $t0, 16$
	sh      $t8, %lo(_camera_bss_238-0x238+0x23E)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	sh      $0, %lo(_camera_bss_238-0x238+0x23E)($at)
16$:
	b       82$
	nop
18$:
	lui     $t1, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t1, %lo(_camera_bss_238-0x238+0x23E)($t1)
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f12, $f6
	nop
	bc1f    47$
	nop
	lui     $t2, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t2, %lo(_camera_bss_238-0x238+0x23E)($t2)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	addiu   $t3, $t2, -0x001E
	sll     $t4, $t3, 16
	sra     $t5, $t4, 16
	mtc1    $t5, $f8
	sh      $t3, %lo(_camera_bss_238-0x238+0x23E)($at)
	cvt.s.w $f10, $f8
	c.lt.s  $f10, $f12
	nop
	bc1f    45$
	nop
	trunc.w.s $f16, $f12
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	mfc1    $t7, $f16
	nop
	sh      $t7, %lo(_camera_bss_238-0x238+0x23E)($at)
45$:
	b       82$
	nop
47$:
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	andi    $t9, $t8, 0x0002
	beqz    $t9, 72$
	nop
	lui     $t0, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t0, %lo(_camera_bss_238-0x238+0x23E)($t0)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	addiu   $t1, $t0, 0x001E
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	mtc1    $t3, $f18
	sh      $t1, %lo(_camera_bss_238-0x238+0x23E)($at)
	cvt.s.w $f4, $f18
	c.lt.s  $f12, $f4
	nop
	bc1f    70$
	nop
	trunc.w.s $f6, $f12
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	mfc1    $t5, $f6
	nop
	sh      $t5, %lo(_camera_bss_238-0x238+0x23E)($at)
70$:
	b       82$
	nop
72$:
	lui     $t6, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t6, %lo(_camera_bss_238-0x238+0x23E)($t6)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	addiu   $t7, $t6, -0x001E
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	bgez    $t9, 82$
	sh      $t7, %lo(_camera_bss_238-0x238+0x23E)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	sh      $0, %lo(_camera_bss_238-0x238+0x23E)($at)
82$:
	lui     $t0, %hi(camera_stagescene)
	lw      $t0, %lo(camera_stagescene)($t0)
	li      $at, 0x0082
	bne     $t0, $at, 102$
	nop
	lui     $t1, %hi(camerap)
	lw      $t1, %lo(camerap)($t1)
	li      $at, 0x0002
	lbu     $t2, 0x0000($t1)
	bne     $t2, $at, 102$
	nop
	bgez    $a1, 97$
	sra     $t3, $a1, 1
	addiu   $at, $a1, 0x0001
	sra     $t3, $at, 1
97$:
	move    $a1, $t3
	sll     $t4, $a1, 16
	move    $a1, $t4
	sra     $t5, $a1, 16
	move    $a1, $t5
102$:
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	andi    $t7, $t6, 0x0002
	beqz    $t7, 124$
	nop
	li      $at, 0x000D
	div     $0, $a1, $at
	lui     $t8, %hi(_camera_bss_238-0x238+0x240)
	lh      $t8, %lo(_camera_bss_238-0x238+0x240)($t8)
	mflo    $t9
	lui     $at, %hi(_camera_bss_238-0x238+0x240)
	addu    $t0, $t8, $t9
	sll     $t1, $t0, 16
	sra     $t2, $t1, 16
	sh      $t0, %lo(_camera_bss_238-0x238+0x240)($at)
	slt     $at, $a1, $t2
	beqz    $at, 122$
	nop
	lui     $at, %hi(_camera_bss_238-0x238+0x240)
	sh      $a1, %lo(_camera_bss_238-0x238+0x240)($at)
122$:
	b       137$
	nop
124$:
	li      $at, 0x000D
	div     $0, $a1, $at
	lui     $t3, %hi(_camera_bss_238-0x238+0x240)
	lh      $t3, %lo(_camera_bss_238-0x238+0x240)($t3)
	mflo    $t4
	lui     $at, %hi(_camera_bss_238-0x238+0x240)
	subu    $t5, $t3, $t4
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	bgez    $t7, 137$
	sh      $t5, %lo(_camera_bss_238-0x238+0x240)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x240)
	sh      $0, %lo(_camera_bss_238-0x238+0x240)($at)
137$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_802813BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028B9C4
	li      $a1, 0x0000
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802813EC:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0004($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x28E)
	lui     $t7, %hi(_camera_bss_238-0x238+0x23A)
	lh      $t7, %lo(_camera_bss_238-0x238+0x23A)($t7)
	lh      $t6, %lo(_camera_bss_238-0x238+0x28E)($t6)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	subu    $t8, $t6, $t7
	sh      $t8, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x288)
	lwc1    $f6, %lo(_camera_bss_238-0x238+0x288)($at)
	lwc1    $f8, 0x0004($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	sub.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t0, $f16
	nop
	sh      $t0, %lo(_camera_bss_238-0x238+0x23E)($at)
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	li      $at, -0x0101
	and     $t2, $t1, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t2, %lo(camera_8033C848)($at)
	b       30$
	nop
30$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028146C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x23A)
	lh      $t6, %lo(_camera_bss_238-0x238+0x23A)($t6)
	sh      $t6, 0x0022($sp)
	lui     $t7, %hi(camera_8033C848)
	lh      $t7, %lo(camera_8033C848)($t7)
	andi    $t8, $t7, 0x0100
	beqz    $t8, 13$
	nop
	jal     camera_802813EC
	lw      $a0, 0x0038($sp)
13$:
	jal     camera_802813BC
	lw      $a0, 0x0038($sp)
	jal     camera_80280B00
	lw      $a0, 0x0038($sp)
	lw      $t9, 0x0038($sp)
	li      $at, 0x0001
	lbu     $t0, 0x0000($t9)
	bne     $t0, $at, 26$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f12
	jal     camera_80281188
	li      $a1, 0x0900
26$:
	lw      $t1, 0x0038($sp)
	addiu   $a2, $sp, 0x002C
	move    $a0, $t1
	jal     camera_80280810
	addiu   $a1, $t1, 0x0004
	lw      $t2, 0x0038($sp)
	sh      $v0, 0x003A($t2)
	addiu   $t3, $sp, 0x002C
	lwc1    $f4, 0x0000($t3)
	lw      $t4, 0x0038($sp)
	swc1    $f4, 0x0010($t4)
	addiu   $t5, $sp, 0x002C
	lwc1    $f6, 0x0008($t5)
	lw      $t6, 0x0038($sp)
	swc1    $f6, 0x0018($t6)
	lui     $t7, %hi(_camera_bss_238-0x238+0x23A)
	lh      $t7, %lo(_camera_bss_238-0x238+0x23A)($t7)
	lh      $t8, 0x0022($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x23C)
	subu    $t9, $t7, $t8
	sh      $t9, %lo(_camera_bss_238-0x238+0x23C)($at)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	li      $at, 0x04A8
	lw      $t1, 0x0000($t0)
	bne     $t1, $at, 59$
	nop
	addiu   $t2, $sp, 0x002C
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t2)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t2)
59$:
	addiu   $t3, $sp, 0x002C
	lw      $a1, 0x0004($t3)
	jal     camera_8027FFF8
	lw      $a0, 0x0038($sp)
	jal     camera_802804F4
	lw      $a0, 0x0038($sp)
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80281588:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x23A)
	lh      $t6, %lo(_camera_bss_238-0x238+0x23A)($t6)
	sh      $t6, 0x001A($sp)
	lw      $a0, 0x0030($sp)
	jal     camera_8028B9C4
	li      $a1, 0x0000
	lui     $t7, %hi(cont1)
	lw      $t7, %lo(cont1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x0001
	beqz    $t9, 22$
	nop
	lui     $t0, %hi(_camera_bss_238-0x238+0x258)
	lh      $t0, %lo(_camera_bss_238-0x238+0x258)($t0)
	lui     $at, %hi(_camera_bss_238-0x238+0x258)
	addiu   $t1, $t0, 0x2000
	sh      $t1, %lo(_camera_bss_238-0x238+0x258)($at)
	jal     camera_8028B8B8
	nop
22$:
	lui     $t2, %hi(cont1)
	lw      $t2, %lo(cont1)($t2)
	lhu     $t3, 0x0012($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, 35$
	nop
	lui     $t5, %hi(_camera_bss_238-0x238+0x258)
	lh      $t5, %lo(_camera_bss_238-0x238+0x258)($t5)
	lui     $at, %hi(_camera_bss_238-0x238+0x258)
	addiu   $t6, $t5, -0x2000
	sh      $t6, %lo(_camera_bss_238-0x238+0x258)($at)
	jal     camera_8028B8B8
	nop
35$:
	li      $at, 0x43C80000
	mtc1    $at, $f12
	jal     camera_80281188
	li      $a1, 0x0900
	lw      $t7, 0x0030($sp)
	addiu   $a2, $sp, 0x0024
	move    $a0, $t7
	jal     camera_80280970
	addiu   $a1, $t7, 0x0004
	lw      $t8, 0x0030($sp)
	sh      $v0, 0x003A($t8)
	addiu   $t9, $sp, 0x0024
	lwc1    $f4, 0x0000($t9)
	lw      $t0, 0x0030($sp)
	swc1    $f4, 0x0010($t0)
	addiu   $t1, $sp, 0x0024
	lwc1    $f6, 0x0008($t1)
	lw      $t2, 0x0030($sp)
	swc1    $f6, 0x0018($t2)
	lui     $t3, %hi(_camera_bss_238-0x238+0x23A)
	lh      $t3, %lo(_camera_bss_238-0x238+0x23A)($t3)
	lh      $t4, 0x001A($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x23C)
	subu    $t5, $t3, $t4
	sh      $t5, %lo(_camera_bss_238-0x238+0x23C)($at)
	addiu   $t6, $sp, 0x0024
	lw      $a1, 0x0004($t6)
	jal     camera_8027FFF8
	lw      $a0, 0x0030($sp)
	b       66$
	nop
66$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl camera_802816A0
camera_802816A0:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $t7, 0x0048($sp)
	lwc1    $f4, 0x0004($t6)
	lwc1    $f6, 0x0028($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0044($sp)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lw      $t9, 0x0048($sp)
	lwc1    $f10, 0x000C($t8)
	lwc1    $f16, 0x002C($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0040($sp)
	lwc1    $f12, 0x0040($sp)
	jal     ATAN2
	lwc1    $f14, 0x0044($sp)
	lui     $t0, %hi(_camera_bss_238-0x238+0x252)
	lh      $t0, %lo(_camera_bss_238-0x238+0x252)($t0)
	li      $at, 0x8000
	addu    $t1, $v0, $t0
	addu    $t2, $t1, $at
	sh      $t2, 0x003E($sp)
	jal     camera_80280368
	lh      $a0, 0x003E($sp)
	sh      $v0, 0x003C($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0038($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0034($sp)
	lui     $t4, %hi(_camera_bss_238-0x238+0x252)
	lh      $t4, %lo(_camera_bss_238-0x238+0x252)($t4)
	lh      $t3, 0x003E($sp)
	li      $at, -0x8000
	subu    $t5, $t3, $t4
	addu    $t6, $t5, $at
	lui     $at, %hi(_camera_bss_238-0x238+0x23A)
	sh      $t6, %lo(_camera_bss_238-0x238+0x23A)($at)
	lui     $at, %hi(camera_8033717C)
	lwc1    $f8, %lo(camera_8033717C)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	addiu   $a0, $sp, 0x0030
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	addiu   $a3, $sp, 0x002C
	swc1    $f8, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f10, 0x0014($sp)
	lui     $t7, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t7, %lo(_camera_bss_238-0x238+0x23E)($t7)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x0034($sp)
	mtc1    $t7, $f10
	lwc1    $f6, 0x002C($sp)
	add.s   $f4, $f16, $f18
	lh      $t8, 0x003C($sp)
	lh      $t9, 0x003E($sp)
	cvt.s.w $f16, $f10
	mfc1    $a2, $f4
	lwc1    $f4, 0x0038($sp)
	lw      $a0, 0x004C($sp)
	lw      $a1, 0x0050($sp)
	add.s   $f8, $f6, $f18
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	add.s   $f6, $f16, $f4
	mfc1    $a3, $f8
	jal     camera_8027FE20
	swc1    $f6, 0x0010($sp)
	b       83$
	lh      $v0, 0x003E($sp)
	b       83$
	nop
83$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_802817FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x23A)
	lh      $t6, %lo(_camera_bss_238-0x238+0x23A)($t6)
	sh      $t6, 0x001A($sp)
	lui     $t7, %hi(camera_8033C848)
	lh      $t7, %lo(camera_8033C848)($t7)
	andi    $t8, $t7, 0x0100
	beqz    $t8, 13$
	nop
	jal     camera_802813EC
	lw      $a0, 0x0028($sp)
13$:
	jal     camera_802813BC
	lw      $a0, 0x0028($sp)
	jal     camera_80280B00
	lw      $a0, 0x0028($sp)
	li      $at, 0x43C80000
	mtc1    $at, $f12
	jal     camera_80281188
	li      $a1, 0x0900
	lw      $t9, 0x0028($sp)
	addiu   $a2, $sp, 0x001C
	move    $a0, $t9
	jal     camera_802816A0
	addiu   $a1, $t9, 0x0004
	lw      $t0, 0x0028($sp)
	sh      $v0, 0x003A($t0)
	addiu   $t1, $sp, 0x001C
	lwc1    $f4, 0x0000($t1)
	lw      $t2, 0x0028($sp)
	swc1    $f4, 0x0010($t2)
	addiu   $t3, $sp, 0x001C
	lwc1    $f6, 0x0008($t3)
	lw      $t4, 0x0028($sp)
	swc1    $f6, 0x0018($t4)
	lui     $t5, %hi(_camera_bss_238-0x238+0x23A)
	lh      $t5, %lo(_camera_bss_238-0x238+0x23A)($t5)
	lh      $t6, 0x001A($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x23C)
	subu    $t7, $t5, $t6
	sh      $t7, %lo(_camera_bss_238-0x238+0x23C)($at)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	li      $at, 0x04A8
	lw      $t9, 0x0000($t8)
	bne     $t9, $at, 54$
	nop
	addiu   $t0, $sp, 0x001C
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t0)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t0)
54$:
	addiu   $t1, $sp, 0x001C
	lw      $a1, 0x0004($t1)
	jal     camera_8027FFF8
	lw      $a0, 0x0028($sp)
	jal     camera_802804F4
	lw      $a0, 0x0028($sp)
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_80281904
camera_80281904:
	addiu   $sp, $sp, -0x0100
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0100($sp)
	sw      $a1, 0x0104($sp)
	sw      $a2, 0x0108($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x008C($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0088($sp)
	mtc1    $0, $f8
	addiu   $t6, $sp, 0x0060
	swc1    $f8, 0x0000($t6)
	mtc1    $0, $f10
	addiu   $t7, $sp, 0x0060
	swc1    $f10, 0x0004($t7)
	mtc1    $0, $f16
	addiu   $t8, $sp, 0x0060
	swc1    $f16, 0x0008($t8)
	addiu   $a0, $sp, 0x004C
	jal     vecf_cpy
	lw      $a1, 0x0108($sp)
	lui     $t0, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t0, %lo(_camera_bss_238-0x238+0x2BC)($t0)
	lui     $t9, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t9, %lo(_camera_bss_238-0x238+0x2C0)($t9)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $a1, $t9, $t1
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $sp, 0x00E8
	lui     $t3, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t3, %lo(_camera_bss_238-0x238+0x2BC)($t3)
	lui     $t2, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t2, %lo(_camera_bss_238-0x238+0x2C0)($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addiu   $a0, $sp, 0x00E8
	addu    $a1, $t2, $t4
	addiu   $a1, $a1, 0x001C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x000C
	lui     $t6, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t6, %lo(_camera_bss_238-0x238+0x2BC)($t6)
	lui     $t5, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t5, %lo(_camera_bss_238-0x238+0x2C0)($t5)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	addu    $t8, $t5, $t7
	lwc1    $f18, 0x0010($t8)
	swc1    $f18, 0x00AC($sp)
	lui     $t9, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t9, %lo(_camera_bss_238-0x238+0x2BC)($t9)
	lui     $t0, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t0, %lo(_camera_bss_238-0x238+0x2C0)($t0)
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 3
	addu    $t3, $t0, $t1
	lwc1    $f4, 0x0014($t3)
	swc1    $f4, 0x00A8($sp)
	lui     $at, %hi(camera_80337180)
	lwc1    $f6, %lo(camera_80337180)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	addiu   $t2, $sp, 0x0084
	move    $a0, $t2
	move    $a3, $t2
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	swc1    $f6, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f8, 0x0014($sp)
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	addiu   $t6, $sp, 0x0078
	lwc1    $f10, 0x0004($t4)
	swc1    $f10, 0x0000($t6)
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	li      $at, 0x43160000
	mtc1    $at, $f18
	lwc1    $f16, 0x0008($t5)
	lwc1    $f6, 0x0084($sp)
	addiu   $t7, $sp, 0x0078
	add.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($t7)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	addiu   $t9, $sp, 0x0078
	lwc1    $f10, 0x000C($t8)
	swc1    $f10, 0x0008($t9)
	addiu   $t0, $sp, 0x00E8
	lwc1    $f16, 0x000C($t0)
	lwc1    $f18, 0x0000($t0)
	lwc1    $f6, 0x0088($sp)
	addiu   $t1, $sp, 0x00DC
	sub.s   $f4, $f16, $f18
	mul.s   $f8, $f4, $f6
	add.s   $f10, $f8, $f18
	swc1    $f10, 0x0000($t1)
	addiu   $t3, $sp, 0x00E8
	lwc1    $f16, 0x0010($t3)
	lwc1    $f4, 0x0004($t3)
	lwc1    $f8, 0x0088($sp)
	addiu   $t2, $sp, 0x00DC
	sub.s   $f6, $f16, $f4
	mul.s   $f18, $f6, $f8
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0004($t2)
	addiu   $t4, $sp, 0x00E8
	lwc1    $f16, 0x0014($t4)
	lwc1    $f6, 0x0008($t4)
	lwc1    $f18, 0x0088($sp)
	addiu   $t6, $sp, 0x00DC
	sub.s   $f8, $f16, $f6
	mul.s   $f4, $f8, $f18
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0008($t6)
	addiu   $t5, $sp, 0x00E8
	addiu   $t7, $sp, 0x00B4
	sw      $t7, 0x0010($sp)
	move    $a0, $t5
	addiu   $a1, $t5, 0x000C
	addiu   $a2, $sp, 0x0098
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x00B6
	addiu   $t8, $sp, 0x0078
	addiu   $t9, $sp, 0x00DC
	lwc1    $f8, 0x0000($t9)
	lwc1    $f16, 0x0000($t8)
	addiu   $t0, $sp, 0x00D0
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x0000($t0)
	addiu   $t1, $sp, 0x0078
	addiu   $t3, $sp, 0x00DC
	lwc1    $f6, 0x0004($t3)
	lwc1    $f4, 0x0004($t1)
	addiu   $t2, $sp, 0x00D0
	sub.s   $f10, $f4, $f6
	swc1    $f10, 0x0004($t2)
	addiu   $t4, $sp, 0x0078
	addiu   $t6, $sp, 0x00DC
	lwc1    $f8, 0x0008($t6)
	lwc1    $f16, 0x0008($t4)
	addiu   $t5, $sp, 0x00D0
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x0008($t5)
	lh      $t7, 0x00B4($sp)
	subu    $t8, $0, $t7
	sh      $t8, 0x00B4($sp)
	addiu   $t9, $sp, 0x00D0
	move    $a0, $t9
	move    $a1, $t9
	jal     camera_8028AD4C
	lh      $a2, 0x00B4($sp)
	lh      $t0, 0x00B4($sp)
	subu    $t1, $0, $t0
	sh      $t1, 0x00B4($sp)
	lh      $t3, 0x00B6($sp)
	subu    $t2, $0, $t3
	sh      $t2, 0x00B6($sp)
	addiu   $t4, $sp, 0x00D0
	move    $a0, $t4
	move    $a1, $t4
	jal     camera_8028AE1C
	lh      $a2, 0x00B6($sp)
	lh      $t6, 0x00B6($sp)
	subu    $t5, $0, $t6
	sh      $t5, 0x00B6($sp)
	addiu   $a0, $sp, 0x00B8
	jal     vecf_cpy
	addiu   $a1, $sp, 0x00D0
	addiu   $t7, $sp, 0x00B8
	lwc1    $f4, 0x0000($t7)
	mtc1    $0, $f10
	neg.s   $f6, $f4
	mul.s   $f16, $f6, $f10
	swc1    $f16, 0x0000($t7)
	addiu   $t8, $sp, 0x00B8
	lwc1    $f8, 0x0004($t8)
	mtc1    $0, $f18
	nop
	mul.s   $f4, $f8, $f18
	swc1    $f4, 0x0004($t8)
	lw      $t9, 0x0108($sp)
	addiu   $t0, $sp, 0x00DC
	lwc1    $f10, 0x0000($t0)
	lwc1    $f6, 0x0000($t9)
	addiu   $t1, $sp, 0x00C4
	sub.s   $f16, $f6, $f10
	swc1    $f16, 0x0000($t1)
	lw      $t3, 0x0108($sp)
	addiu   $t2, $sp, 0x00DC
	lwc1    $f18, 0x0004($t2)
	lwc1    $f8, 0x0004($t3)
	addiu   $t4, $sp, 0x00C4
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x0004($t4)
	lw      $t6, 0x0108($sp)
	addiu   $t5, $sp, 0x00DC
	lwc1    $f10, 0x0008($t5)
	lwc1    $f6, 0x0008($t6)
	addiu   $t7, $sp, 0x00C4
	sub.s   $f16, $f6, $f10
	swc1    $f16, 0x0008($t7)
	lh      $t8, 0x00B4($sp)
	subu    $t9, $0, $t8
	sh      $t9, 0x00B4($sp)
	addiu   $t0, $sp, 0x00C4
	move    $a0, $t0
	move    $a1, $t0
	jal     camera_8028AD4C
	lh      $a2, 0x00B4($sp)
	lh      $t1, 0x00B4($sp)
	subu    $t3, $0, $t1
	sh      $t3, 0x00B4($sp)
	lh      $t2, 0x00B6($sp)
	subu    $t4, $0, $t2
	sh      $t4, 0x00B6($sp)
	addiu   $t6, $sp, 0x00C4
	move    $a0, $t6
	move    $a1, $t6
	jal     camera_8028AE1C
	lh      $a2, 0x00B6($sp)
	lh      $t5, 0x00B6($sp)
	subu    $t7, $0, $t5
	sh      $t7, 0x00B6($sp)
	addiu   $t8, $sp, 0x00D0
	addiu   $t9, $sp, 0x00C4
	lwc1    $f18, 0x0008($t9)
	lwc1    $f8, 0x0008($t8)
	c.lt.s  $f18, $f8
	nop
	bc1f    262$
	nop
	addiu   $t0, $sp, 0x00D0
	addiu   $t1, $sp, 0x00C4
	lwc1    $f6, 0x0008($t1)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f16, 0x00AC($sp)
	sub.s   $f10, $f4, $f6
	c.lt.s  $f16, $f10
	nop
	bc1f    260$
	nop
	addiu   $t3, $sp, 0x00D0
	lwc1    $f8, 0x0008($t3)
	lwc1    $f18, 0x00AC($sp)
	addiu   $t2, $sp, 0x00C4
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x0008($t2)
260$:
	b       279$
	nop
262$:
	addiu   $t4, $sp, 0x00D0
	addiu   $t6, $sp, 0x00C4
	lwc1    $f10, 0x0008($t6)
	lwc1    $f6, 0x0008($t4)
	lwc1    $f8, 0x00AC($sp)
	sub.s   $f16, $f6, $f10
	neg.s   $f18, $f8
	c.lt.s  $f16, $f18
	nop
	bc1f    279$
	nop
	addiu   $t5, $sp, 0x00D0
	lwc1    $f4, 0x0008($t5)
	lwc1    $f6, 0x00AC($sp)
	addiu   $t7, $sp, 0x00C4
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0008($t7)
279$:
	addiu   $t8, $sp, 0x00D0
	lwc1    $f8, 0x0000($t8)
	lwc1    $f18, 0x00A8($sp)
	neg.s   $f16, $f8
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($t8)
	addiu   $t9, $sp, 0x00D0
	lwc1    $f6, 0x0004($t9)
	lwc1    $f10, 0x00A8($sp)
	mul.s   $f8, $f6, $f10
	swc1    $f8, 0x0004($t9)
	addiu   $t0, $sp, 0x00C4
	lwc1    $f16, 0x0008($t0)
	addiu   $t1, $sp, 0x00D0
	swc1    $f16, 0x0008($t1)
	addiu   $t3, $sp, 0x00B8
	lui     $at, %hi(camera_80337184)
	lwc1    $f4, %lo(camera_80337184)($at)
	lwc1    $f18, 0x0000($t3)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0000($t3)
	addiu   $t2, $sp, 0x00B8
	lui     $at, %hi(camera_80337188)
	lwc1    $f8, %lo(camera_80337188)($at)
	lwc1    $f10, 0x0004($t2)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0004($t2)
	lh      $t4, 0x00B6($sp)
	addiu   $t6, $sp, 0x0058
	sh      $t4, 0x0000($t6)
	lh      $t5, 0x00B4($sp)
	addiu   $t7, $sp, 0x0058
	sh      $t5, 0x0002($t7)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0098($sp)
	addiu   $t8, $sp, 0x00D0
	lwc1    $f10, 0x0008($t8)
	div.s   $f6, $f18, $f4
	sub.s   $f8, $f6, $f10
	swc1    $f8, 0x0008($t8)
	lh      $t9, 0x00B4($sp)
	li      $at, 0x8000
	addiu   $t1, $sp, 0x0058
	addu    $t0, $t9, $at
	sh      $t0, 0x0002($t1)
	addiu   $t3, $sp, 0x0058
	sh      $0, 0x0004($t3)
	lw      $a0, 0x0108($sp)
	addiu   $a1, $sp, 0x00E8
	addiu   $a2, $sp, 0x00D0
	jal     camera_8028CBF0
	addiu   $a3, $sp, 0x0058
	lw      $a1, 0x0100($sp)
	addiu   $t2, $sp, 0x00B4
	sw      $t2, 0x0010($sp)
	addiu   $a0, $sp, 0x00E8
	addiu   $a2, $sp, 0x00A4
	addiu   $a3, $sp, 0x00B6
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0098($sp)
	addiu   $t4, $sp, 0x00B8
	lwc1    $f6, 0x0008($t4)
	div.s   $f4, $f16, $f18
	sub.s   $f10, $f4, $f6
	swc1    $f10, 0x0008($t4)
	lw      $a0, 0x0100($sp)
	addiu   $a1, $sp, 0x00E8
	addiu   $a2, $sp, 0x00B8
	addiu   $a3, $sp, 0x0058
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	andi    $t5, $t6, 0x0008
	beqz    $t5, 389$
	nop
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	li      $at, -0x0009
	and     $t8, $t7, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t8, %lo(camera_8033C84A)($at)
	lw      $t0, 0x0100($sp)
	addiu   $t9, $sp, 0x004C
	lwc1    $f8, 0x0000($t9)
	lwc1    $f16, 0x0010($t0)
	la.u    $t1, _camera_bss_238-0x238+0x2C8
	la.l    $t1, _camera_bss_238-0x238+0x2C8
	sub.s   $f18, $f8, $f16
	swc1    $f18, 0x0000($t1)
	lw      $t2, 0x0100($sp)
	addiu   $t3, $sp, 0x004C
	lwc1    $f4, 0x0004($t3)
	lwc1    $f6, 0x0014($t2)
	la.u    $t4, _camera_bss_238-0x238+0x2C8
	la.l    $t4, _camera_bss_238-0x238+0x2C8
	sub.s   $f10, $f4, $f6
	swc1    $f10, 0x0004($t4)
	lw      $t5, 0x0100($sp)
	addiu   $t6, $sp, 0x004C
	lwc1    $f8, 0x0008($t6)
	lwc1    $f16, 0x0018($t5)
	la.u    $t7, _camera_bss_238-0x238+0x2C8
	la.l    $t7, _camera_bss_238-0x238+0x2C8
	sub.s   $f18, $f8, $f16
	swc1    $f18, 0x0008($t7)
389$:
	la.u    $a0, _camera_bss_238-0x238+0x2C8
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	la.l    $a0, _camera_bss_238-0x238+0x2C8
	jal     camera_802893F4
	li      $a1, 0x0000
	la.u    $a0, _camera_bss_238-0x238+0x2C8
	la.l    $a0, _camera_bss_238-0x238+0x2C8
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	addiu   $a0, $a0, 0x0004
	jal     camera_802893F4
	li      $a1, 0x0000
	la.u    $a0, _camera_bss_238-0x238+0x2C8
	la.l    $a0, _camera_bss_238-0x238+0x2C8
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	addiu   $a0, $a0, 0x0008
	jal     camera_802893F4
	li      $a1, 0x0000
	lw      $a0, 0x0100($sp)
	la.u    $a1, _camera_bss_238-0x238+0x2C8
	la.l    $a1, _camera_bss_238-0x238+0x2C8
	jal     vecf_add
	addiu   $a0, $a0, 0x0010
	lui     $t9, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t9, %lo(_camera_bss_238-0x238+0x2BC)($t9)
	lui     $t8, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t8, %lo(_camera_bss_238-0x238+0x2C0)($t8)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t1, $t8, $t0
	lh      $t3, 0x0018($t1)
	beqz    $t3, 505$
	nop
	lui     $t4, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t4, %lo(_camera_bss_238-0x238+0x2BC)($t4)
	lui     $t2, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t2, %lo(_camera_bss_238-0x238+0x2C0)($t2)
	sll     $t6, $t4, 2
	subu    $t6, $t6, $t4
	sll     $t6, $t6, 3
	addu    $t5, $t2, $t6
	addiu   $a0, $t5, 0x001C
	addiu   $a1, $t5, 0x0034
	addiu   $a2, $sp, 0x0028
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0024
	lui     $t9, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t9, %lo(_camera_bss_238-0x238+0x2BC)($t9)
	lui     $t7, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t7, %lo(_camera_bss_238-0x238+0x2C0)($t7)
	sll     $t8, $t9, 2
	subu    $t8, $t8, $t9
	lh      $t0, 0x0024($sp)
	sll     $t8, $t8, 3
	addu    $a0, $t7, $t8
	addiu   $a0, $a0, 0x001C
	addiu   $a1, $sp, 0x0034
	li      $a2, 0x43C80000
	lh      $a3, 0x0028($sp)
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	addiu   $a0, $sp, 0x0078
	jal     camera_8028AC28
	addiu   $a1, $sp, 0x0034
	swc1    $f0, 0x002C($sp)
	lui     $t3, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t3, %lo(_camera_bss_238-0x238+0x2BC)($t3)
	lui     $t1, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t1, %lo(_camera_bss_238-0x238+0x2C0)($t1)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $t2, $t1, $t4
	addiu   $a0, $t2, 0x001C
	addiu   $a1, $t2, 0x0004
	addiu   $a2, $sp, 0x002A
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0026
	lui     $t5, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t5, %lo(_camera_bss_238-0x238+0x2BC)($t5)
	lui     $t6, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t6, %lo(_camera_bss_238-0x238+0x2C0)($t6)
	sll     $t9, $t5, 2
	subu    $t9, $t9, $t5
	lh      $t7, 0x0026($sp)
	sll     $t9, $t9, 3
	addu    $a0, $t6, $t9
	addiu   $a0, $a0, 0x001C
	addiu   $a1, $sp, 0x0040
	li      $a2, 0x43C80000
	lh      $a3, 0x002A($sp)
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	addiu   $a0, $sp, 0x0078
	jal     camera_8028AC28
	addiu   $a1, $sp, 0x0040
	swc1    $f0, 0x0030($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x0030($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    505$
	nop
	lui     $t8, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t8, %lo(_camera_bss_238-0x238+0x2BC)($t8)
	lui     $at, %hi(_camera_bss_238-0x238+0x2BC)
	addiu   $t0, $t8, 0x0001
	sw      $t0, %lo(_camera_bss_238-0x238+0x2BC)($at)
	lui     $t3, %hi(camera_8033C84A)
	lh      $t3, %lo(camera_8033C84A)($t3)
	lui     $at, %hi(camera_8033C84A)
	ori     $t1, $t3, 0x0008
	sh      $t1, %lo(camera_8033C84A)($at)
505$:
	lui     $t4, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t4, %lo(_camera_bss_238-0x238+0x2BC)($t4)
	beqz    $t4, 589$
	nop
	lui     $t5, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t5, %lo(_camera_bss_238-0x238+0x2BC)($t5)
	lui     $t2, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t2, %lo(_camera_bss_238-0x238+0x2C0)($t2)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t9, $t2, $t6
	addiu   $a0, $t9, 0x0004
	addiu   $a1, $t9, 0x001C
	addiu   $a2, $sp, 0x0028
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0024
	lui     $t8, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t8, %lo(_camera_bss_238-0x238+0x2BC)($t8)
	lui     $t7, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t7, %lo(_camera_bss_238-0x238+0x2C0)($t7)
	sll     $t0, $t8, 2
	subu    $t0, $t0, $t8
	lh      $t3, 0x0024($sp)
	sll     $t0, $t0, 3
	addu    $a0, $t7, $t0
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $sp, 0x0034
	li      $a2, 0x442F0000
	lh      $a3, 0x0028($sp)
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
	addiu   $a0, $sp, 0x0078
	jal     camera_8028AC28
	addiu   $a1, $sp, 0x0034
	swc1    $f0, 0x002C($sp)
	lui     $t4, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t4, %lo(_camera_bss_238-0x238+0x2BC)($t4)
	lui     $t1, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t1, %lo(_camera_bss_238-0x238+0x2C0)($t1)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 3
	addu    $t2, $t1, $t5
	addiu   $a0, $t2, 0x0004
	addiu   $a1, $t2, -0x0014
	addiu   $a2, $sp, 0x002A
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0026
	lui     $t9, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t9, %lo(_camera_bss_238-0x238+0x2BC)($t9)
	lui     $t6, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t6, %lo(_camera_bss_238-0x238+0x2C0)($t6)
	sll     $t8, $t9, 2
	subu    $t8, $t8, $t9
	lh      $t7, 0x0026($sp)
	sll     $t8, $t8, 3
	addu    $a0, $t6, $t8
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $sp, 0x0040
	li      $a2, 0x442F0000
	lh      $a3, 0x002A($sp)
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	addiu   $a0, $sp, 0x0078
	jal     camera_8028AC28
	addiu   $a1, $sp, 0x0040
	swc1    $f0, 0x0030($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f8, 0x0030($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    589$
	nop
	lui     $t0, %hi(_camera_bss_238-0x238+0x2BC)
	lw      $t0, %lo(_camera_bss_238-0x238+0x2BC)($t0)
	lui     $at, %hi(_camera_bss_238-0x238+0x2BC)
	addiu   $t3, $t0, -0x0001
	sw      $t3, %lo(_camera_bss_238-0x238+0x2BC)($at)
	lui     $t4, %hi(camera_8033C84A)
	lh      $t4, %lo(camera_8033C84A)($t4)
	lui     $at, %hi(camera_8033C84A)
	ori     $t1, $t4, 0x0008
	sh      $t1, %lo(camera_8033C84A)($at)
589$:
	lw      $a0, 0x0104($sp)
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0078
	addiu   $t5, $sp, 0x00B4
	sw      $t5, 0x0010($sp)
	lw      $a0, 0x0104($sp)
	lw      $a1, 0x0108($sp)
	addiu   $a2, $sp, 0x00A4
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x00B6
	b       603$
	lh      $v0, 0x00B4($sp)
	b       603$
	nop
603$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0100
	jr      $ra
	nop

.globl camera_80282280
camera_80282280:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0078($sp)
	sw      $a1, 0x007C($sp)
	sw      $a2, 0x0080($sp)
	sw      $s0, 0x0020($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0058($sp)
	jal     camera_8028B804
	nop
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0041
	beq     $s0, $at, 41$
	nop
	li      $at, 0x0061
	beq     $s0, $at, 33$
	nop
	li      $at, 0x00F1
	beq     $s0, $at, 25$
	nop
	b       49$
	nop
25$:
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0058($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0068($sp)
	b       49$
	nop
33$:
	lui     $at, %hi(camera_8033718C)
	lwc1    $f10, %lo(camera_8033718C)($at)
	swc1    $f10, 0x0058($sp)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0068($sp)
	b       49$
	nop
41$:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0058($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0068($sp)
	b       49$
	nop
49$:
	jal     camera_8028BD98
	lw      $a0, 0x0078($sp)
	jal     camera_8028B784
	nop
	lui     $at, %hi(camera_80337190)
	lwc1    $f6, %lo(camera_80337190)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	addiu   $t6, $sp, 0x0074
	move    $a0, $t6
	move    $a3, $t6
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	swc1    $f6, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f8, 0x0014($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x007C($sp)
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0074($sp)
	lw      $t7, 0x007C($sp)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x0004($t7)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0004($t7)
	lw      $a1, 0x0078($sp)
	addiu   $t8, $sp, 0x004C
	addiu   $t9, $t8, 0x0002
	sw      $t9, 0x0010($sp)
	move    $a3, $t8
	lw      $a0, 0x007C($sp)
	addiu   $a2, $sp, 0x0064
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	addiu   $t0, $sp, 0x004C
	sh      $0, 0x0004($t0)
	la.u    $a1, camera_8032DF6C
	la.l    $a1, camera_8032DF6C
	jal     vecf_cpy
	addiu   $a0, $sp, 0x003C
	la.u    $a1, _camera_bss_238-0x238+0x2B0
	la.l    $a1, _camera_bss_238-0x238+0x2B0
	jal     vecf_add
	addiu   $a0, $sp, 0x003C
	lui     $t1, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t1, %lo(_camera_bss_48-0x48+0xD0)($t1)
	li      $at, 0x000A
	beq     $t1, $at, 119$
	nop
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f8, %lo(_camera_bss_48-0x48+0xCC)($at)
	lui     $at, %hi(camera_80337194)
	lwc1    $f10, %lo(camera_80337194)($at)
	c.eq.s  $f8, $f10
	nop
	bc1t    119$
	nop
	addiu   $t2, $sp, 0x003C
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0xCC)($at)
	lwc1    $f16, 0x0004($t2)
	lwc1    $f6, 0x0068($sp)
	add.s   $f18, $f16, $f4
	add.s   $f8, $f18, $f6
	b       123$
	swc1    $f8, 0x0070($sp)
119$:
	la.u    $t3, camdata
	la.l    $t3, camdata
	lwc1    $f10, 0x0028($t3)
	swc1    $f10, 0x0070($sp)
123$:
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f4, 0x0064($sp)
	c.lt.s  $f4, $f16
	nop
	bc1f    137$
	nop
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f6, 0x0064($sp)
	lwc1    $f10, 0x0070($sp)
	sub.s   $f8, $f18, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0070($sp)
137$:
	lw      $t4, 0x0078($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f4, 0x0070($sp)
	addiu   $a3, $sp, 0x0048
	lwc1    $f12, 0x0010($t4)
	lw      $a2, 0x0018($t4)
	jal     bg_check_roof
	sub.s   $f14, $f4, $f18
	swc1    $f0, 0x006C($sp)
	lui     $at, %hi(camera_80337198)
	lwc1    $f10, %lo(camera_80337198)($at)
	lwc1    $f6, 0x006C($sp)
	c.eq.s  $f6, $f10
	nop
	bc1t    165$
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f8, 0x006C($sp)
	lwc1    $f18, 0x0070($sp)
	sub.s   $f4, $f8, $f16
	c.lt.s  $f4, $f18
	swc1    $f4, 0x006C($sp)
	bc1f    165$
	nop
	lwc1    $f6, 0x006C($sp)
	swc1    $f6, 0x0070($sp)
165$:
	lui     $t5, %hi(camera_8033C84A)
	lh      $t5, %lo(camera_8033C84A)($t5)
	andi    $t6, $t5, 0x0001
	beqz    $t6, 177$
	nop
	lw      $a0, 0x0078($sp)
	lw      $a1, 0x0070($sp)
	li      $a2, 0x41700000
	jal     camera_802899CC
	addiu   $a0, $a0, 0x0014
	b       198$
	nop
177$:
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f8, 0x0008($t7)
	lwc1    $f10, 0x0070($sp)
	sub.s   $f18, $f8, $f16
	c.lt.s  $f10, $f18
	nop
	bc1f    195$
	nop
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0070($sp)
195$:
	lwc1    $f16, 0x0070($sp)
	lw      $t9, 0x0078($sp)
	swc1    $f16, 0x0014($t9)
198$:
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	addiu   $t1, $sp, 0x003C
	lwc1    $f18, 0x0000($t1)
	lwc1    $f10, 0x0004($t0)
	lwc1    $f6, 0x0058($sp)
	lw      $t2, 0x0078($sp)
	sub.s   $f4, $f10, $f18
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0010($t2)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	addiu   $t4, $sp, 0x003C
	lwc1    $f4, 0x0008($t4)
	lwc1    $f10, 0x000C($t3)
	lwc1    $f8, 0x0058($sp)
	lw      $t5, 0x0078($sp)
	sub.s   $f6, $f10, $f4
	mul.s   $f18, $f6, $f8
	add.s   $f16, $f18, $f4
	swc1    $f16, 0x0018($t5)
	lwc1    $f10, 0x0058($sp)
	mtc1    $0, $f6
	nop
	c.eq.s  $f10, $f6
	nop
	bc1t    254$
	nop
	lw      $t6, 0x0078($sp)
	addiu   $t7, $sp, 0x0054
	sw      $t7, 0x0010($sp)
	addiu   $a2, $sp, 0x0064
	addiu   $a3, $sp, 0x0056
	addiu   $a0, $t6, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t6, 0x0010
	li      $at, 0x447A0000
	mtc1    $at, $f18
	lwc1    $f8, 0x0064($sp)
	c.lt.s  $f18, $f8
	nop
	bc1f    254$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0064($sp)
	lw      $t8, 0x0078($sp)
	lh      $t9, 0x0054($sp)
	lw      $a2, 0x0064($sp)
	lh      $a3, 0x0056($sp)
	addiu   $a0, $t8, 0x0004
	addiu   $a1, $t8, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
254$:
	addiu   $t0, $sp, 0x004C
	b       259$
	lh      $v0, 0x0002($t0)
	b       259$
	nop
259$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

.globl camera_802826A0
camera_802826A0:
	addiu   $sp, $sp, -0x0090
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0090($sp)
	sw      $a1, 0x0094($sp)
	sw      $a2, 0x0098($sp)
	sw      $s0, 0x0020($sp)
	la.u    $t7, camera_8032DFFC
	la.l    $t7, camera_8032DFFC
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x002C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	jal     camera_8028BD98
	lw      $a0, 0x0090($sp)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	li      $at, 0x0007
	lh      $t1, 0x001E($t0)
	bne     $t1, $at, 28$
	nop
	jal     camera_8027F8B8
	li      $a0, 0x0003
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	sh      $0, 0x001E($t2)
28$:
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	li      $at, 0x0008
	lh      $t4, 0x001E($t3)
	bne     $t4, $at, 39$
	nop
	jal     camera_8027F8B8
	li      $a0, 0x0002
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	sh      $0, 0x001E($t5)
39$:
	lui     $t8, %hi(_camera_bss_238-0x238+0x252)
	lh      $t8, %lo(_camera_bss_238-0x238+0x252)($t8)
	addiu   $t6, $t8, 0x2000
	sh      $t6, 0x0060($sp)
	lui     $t7, %hi(camera_8032DF30)
	lw      $t7, %lo(camera_8032DF30)($t7)
	beqz    $t7, 54$
	sw      $t7, 0x008C($sp)
	addiu   $a0, $sp, 0x0038
	jal     camera_80287E28
	lw      $a1, 0x008C($sp)
	lw      $t9, 0x008C($sp)
	lw      $t0, 0x0124($t9)
	b       68$
	sh      $t0, 0x005E($sp)
54$:
	lw      $t1, 0x0090($sp)
	addiu   $t2, $sp, 0x0038
	lwc1    $f4, 0x0028($t1)
	swc1    $f4, 0x0000($t2)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	addiu   $t4, $sp, 0x0038
	lwc1    $f6, 0x0008($t3)
	swc1    $f6, 0x0004($t4)
	lw      $t5, 0x0090($sp)
	addiu   $t8, $sp, 0x0038
	lwc1    $f8, 0x002C($t5)
	swc1    $f8, 0x0008($t8)
	sh      $0, 0x005E($sp)
68$:
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	addiu   $a1, $sp, 0x0038
	jal     camera_8028AC28
	addiu   $a0, $a0, 0x0004
	lui     $at, %hi(camera_8033719C)
	lwc1    $f10, %lo(camera_8033719C)($at)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x007C($sp)
	li      $at, 0x44480000
	mtc1    $at, $f4
	lwc1    $f18, 0x007C($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    88$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x007C($sp)
88$:
	lui     $at, %hi(camera_803371A0)
	lwc1    $f10, %lo(camera_803371A0)($at)
	lwc1    $f8, 0x007C($sp)
	c.lt.s  $f10, $f8
	nop
	bc1f    98$
	nop
	lui     $at, %hi(camera_803371A4)
	lwc1    $f16, %lo(camera_803371A4)($at)
	swc1    $f16, 0x007C($sp)
98$:
	lh      $t6, 0x005E($sp)
	li      $at, 0x0001
	bne     $t6, $at, 109$
	nop
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	addiu   $a0, $sp, 0x0038
	addiu   $a2, $sp, 0x002C
	addiu   $a1, $t7, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t7, 0x0010
109$:
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	addiu   $t9, $sp, 0x0038
	lwc1    $f18, 0x0000($t9)
	lwc1    $f4, 0x0004($t0)
	li      $at, 0x40000000
	mtc1    $at, $f8
	add.s   $f6, $f18, $f4
	lw      $t1, 0x0094($sp)
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0000($t1)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	addiu   $t2, $sp, 0x0038
	lwc1    $f16, 0x0004($t2)
	lwc1    $f18, 0x0008($t3)
	li      $at, 0x40000000
	mtc1    $at, $f6
	add.s   $f4, $f16, $f18
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	lw      $t4, 0x0094($sp)
	div.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t4)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	addiu   $t5, $sp, 0x0038
	lwc1    $f18, 0x0008($t5)
	lwc1    $f4, 0x000C($t8)
	li      $at, 0x40000000
	mtc1    $at, $f8
	add.s   $f6, $f18, $f4
	lw      $t6, 0x0094($sp)
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0008($t6)
	lh      $t7, 0x0060($sp)
	lw      $a0, 0x0094($sp)
	lw      $a1, 0x0098($sp)
	lw      $a2, 0x007C($sp)
	li      $a3, 0x1000
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lw      $t9, 0x0090($sp)
	lui     $at, %hi(camera_803371A8)
	lwc1    $f14, %lo(camera_803371A8)($at)
	addiu   $a3, $sp, 0x0058
	lwc1    $f12, 0x0028($t9)
	jal     bg_check_ground
	lw      $a2, 0x002C($t9)
	lw      $t0, 0x0098($sp)
	swc1    $f0, 0x0004($t0)
	lw      $t1, 0x0058($sp)
	beqz    $t1, 214$
	nop
	lw      $t2, 0x0058($sp)
	lwc1    $f16, 0x001C($t2)
	swc1    $f16, 0x0074($sp)
	lw      $t3, 0x0058($sp)
	lwc1    $f18, 0x0020($t3)
	swc1    $f18, 0x0070($sp)
	lw      $t4, 0x0058($sp)
	lwc1    $f4, 0x0024($t4)
	swc1    $f4, 0x006C($sp)
	lw      $t5, 0x0058($sp)
	lwc1    $f6, 0x0028($t5)
	swc1    $f6, 0x0068($sp)
	lw      $t8, 0x0098($sp)
	lwc1    $f10, 0x006C($sp)
	lwc1    $f18, 0x0074($sp)
	lwc1    $f8, 0x0008($t8)
	lwc1    $f4, 0x0000($t8)
	li      $at, 0x43960000
	mul.s   $f16, $f8, $f10
	lwc1    $f10, 0x0068($sp)
	mul.s   $f6, $f18, $f4
	lwc1    $f4, 0x0070($sp)
	add.s   $f8, $f16, $f6
	mtc1    $at, $f6
	add.s   $f18, $f8, $f10
	div.s   $f16, $f18, $f4
	sub.s   $f8, $f6, $f16
	swc1    $f8, 0x0004($t8)
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0091
	beq     $s0, $at, 202$
	nop
	li      $at, 0x0181
	beq     $s0, $at, 208$
	nop
	b       214$
	nop
202$:
	lw      $t6, 0x0098($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f18
	lwc1    $f10, 0x0004($t6)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0004($t6)
208$:
	lw      $t7, 0x0098($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f6, 0x0004($t7)
	add.s   $f8, $f6, $f16
	swc1    $f8, 0x0004($t7)
214$:
	lui     $t9, %hi(stage_index)
	lh      $t9, %lo(stage_index)($t9)
	li      $at, 0x0004
	bne     $t9, $at, 223$
	nop
	lui     $at, %hi(camera_803371AC)
	lwc1    $f10, %lo(camera_803371AC)($at)
	lw      $t0, 0x0098($sp)
	swc1    $f10, 0x0004($t0)
223$:
	lui     $t1, %hi(_camera_bss_238-0x238+0x248)
	lh      $t1, %lo(_camera_bss_238-0x238+0x248)($t1)
	bgez    $t1, 242$
	nop
	lui     $t2, %hi(_camera_bss_238-0x238+0x252)
	lh      $t2, %lo(_camera_bss_238-0x238+0x252)($t2)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	addiu   $t3, $t2, 0x0200
	sh      $t3, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $t4, %hi(_camera_bss_238-0x238+0x248)
	lh      $t4, %lo(_camera_bss_238-0x238+0x248)($t4)
	lui     $at, %hi(_camera_bss_238-0x238+0x248)
	addiu   $t5, $t4, 0x0100
	sll     $t8, $t5, 16
	sra     $t6, $t8, 16
	blez    $t6, 242$
	sh      $t5, %lo(_camera_bss_238-0x238+0x248)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x248)
	sh      $0, %lo(_camera_bss_238-0x238+0x248)($at)
242$:
	lui     $t7, %hi(_camera_bss_238-0x238+0x248)
	lh      $t7, %lo(_camera_bss_238-0x238+0x248)($t7)
	blez    $t7, 261$
	nop
	lui     $t9, %hi(_camera_bss_238-0x238+0x252)
	lh      $t9, %lo(_camera_bss_238-0x238+0x252)($t9)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	addiu   $t0, $t9, -0x0200
	sh      $t0, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $t1, %hi(_camera_bss_238-0x238+0x248)
	lh      $t1, %lo(_camera_bss_238-0x238+0x248)($t1)
	lui     $at, %hi(_camera_bss_238-0x238+0x248)
	addiu   $t2, $t1, -0x0100
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	bgez    $t4, 261$
	sh      $t2, %lo(_camera_bss_238-0x238+0x248)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x248)
	sh      $0, %lo(_camera_bss_238-0x238+0x248)($at)
261$:
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	addiu   $t5, $sp, 0x0038
	lwc1    $f18, 0x0004($t5)
	lwc1    $f4, 0x0008($t8)
	li      $at, 0x40000000
	mtc1    $at, $f16
	add.s   $f6, $f18, $f4
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lw      $t6, 0x0094($sp)
	div.s   $f8, $f6, $f16
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x0004($t6)
	lh      $t7, 0x005E($sp)
	li      $at, 0x0001
	bne     $t7, $at, 309$
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	lh      $t0, 0x0034($t9)
	mtc1    $0, $f16
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f16, $f6
	nop
	bc1f    292$
	nop
	b       296$
	move    $s0, $t0
292$:
	la.u    $t1, player_data
	la.l    $t1, player_data
	lh      $s0, 0x0034($t1)
	subu    $s0, $0, $s0
296$:
	li      $at, 0x43960000
	andi    $t2, $s0, 0xFFFF
	mtc1    $at, $f8
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	lw      $t5, 0x0094($sp)
	mul.s   $f18, $f8, $f10
	lwc1    $f4, 0x0004($t5)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0004($t5)
309$:
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lwc1    $f16, 0x007C($sp)
	c.lt.s  $f16, $f8
	nop
	bc1f    320$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x007C($sp)
320$:
	lwc1    $f12, 0x007C($sp)
	jal     camera_80281188
	li      $a1, 0x1800
	lui     $t6, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t6, %lo(_camera_bss_238-0x238+0x23E)($t6)
	lw      $t8, 0x0098($sp)
	lui     $a3, %hi(_camera_bss_238-0x238+0x240)
	mtc1    $t6, $f4
	lh      $a3, %lo(_camera_bss_238-0x238+0x240)($a3)
	lh      $t7, 0x0060($sp)
	cvt.s.w $f4, $f4
	move    $a0, $t8
	move    $a1, $t8
	addiu   $a3, $a3, 0x1000
	sw      $t7, 0x0010($sp)
	mfc1    $a2, $f4
	jal     polar_to_cartesian
	nop
	b       342$
	lh      $v0, 0x0060($sp)
	b       342$
	nop
342$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0090
	jr      $ra
	nop

.globl camera_80282C0C
camera_80282C0C:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	b       5$
	nop
5$:
	jr      $ra
	nop

camera_80282C28:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

camera_80282C3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	jal     camera_802826A0
	addiu   $a2, $t6, 0x0010
	lw      $t7, 0x0018($sp)
	sh      $v0, 0x003A($t7)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80282C7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     camera_8028B9C4
	li      $a1, 0x0000
	jal     camera_8029AB94
	li      $a0, 0x0002
	lw      $t6, 0x0020($sp)
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	jal     camera_80281904
	addiu   $a2, $t6, 0x0010
	lw      $t7, 0x0020($sp)
	sh      $v0, 0x003A($t7)
	addiu   $a0, $sp, 0x001E
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0400
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80282CE0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0004
	bne     $t6, $at, 12$
	nop
	jal     camera_8029AB94
	li      $a0, 0x0007
	b       14$
	nop
12$:
	jal     camera_8029AB94
	li      $a0, 0x0004
14$:
	lw      $t7, 0x0020($sp)
	move    $a0, $t7
	addiu   $a1, $t7, 0x0004
	jal     camera_80282280
	addiu   $a2, $t7, 0x0010
	lw      $t8, 0x0020($sp)
	sh      $v0, 0x003A($t8)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x003A($t9)
	sh      $t0, 0x0002($t9)
	jal     camera_802804F4
	lw      $a0, 0x0020($sp)
	la.u    $a0, _camera_bss_238-0x238+0x2B0
	la.l    $a0, _camera_bss_238-0x238+0x2B0
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_80282D78
camera_80282D78:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lh      $t7, 0x0010($t6)
	subu    $t8, $0, $t7
	sh      $t8, 0x003C($sp)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	li      $at, 0x8000
	lh      $t0, 0x0012($t9)
	addu    $t1, $t0, $at
	sh      $t1, 0x003A($sp)
	sh      $0, 0x0038($sp)
	li      $t2, 0x0020
	sh      $t2, 0x0034($sp)
	li      $at, 0x44480000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0020($sp)
	lui     $t3, %hi(_camera_bss_48-0x48+0x164)
	lh      $t3, %lo(_camera_bss_48-0x48+0x164)($t3)
	andi    $t4, $t3, 0x0001
	beqz    $t4, 40$
	nop
	li      $at, 0x43AF0000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0024($sp)
	li      $at, 0x42F00000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0020($sp)
40$:
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	lw      $t6, 0x0000($t5)
	andi    $t7, $t6, 0x6000
	bnez    $t7, 48$
	nop
	li      $t8, 0x0080
	sh      $t8, 0x0034($sp)
48$:
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x005C($sp)
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $t9, 0x0058($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f16, 0x0008($t9)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($t9)
	lw      $a0, 0x005C($sp)
	jal     camera_8028AC28
	lw      $a1, 0x0060($sp)
	swc1    $f0, 0x0048($sp)
	lw      $a0, 0x005C($sp)
	jal     camera_8028AA28
	lw      $a1, 0x0060($sp)
	sh      $v0, 0x0040($sp)
	addiu   $t0, $sp, 0x003E
	sw      $t0, 0x0010($sp)
	lw      $a0, 0x005C($sp)
	lw      $a1, 0x0060($sp)
	addiu   $a2, $sp, 0x0048
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0040
	lwc1    $f6, 0x0048($sp)
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    81$
	nop
	lwc1    $f10, 0x0024($sp)
	swc1    $f10, 0x0048($sp)
81$:
	lh      $t1, 0x0040($sp)
	bgez    $t1, 87$
	sh      $t1, 0x0042($sp)
	lh      $t2, 0x0042($sp)
	subu    $t3, $0, $t2
	sh      $t3, 0x0042($sp)
87$:
	lh      $t4, 0x0042($sp)
	li      $t6, 0x0020
	bgez    $t4, 93$
	sra     $t5, $t4, 9
	addiu   $at, $t4, 0x01FF
	sra     $t5, $at, 9
93$:
	subu    $t7, $t6, $t5
	sh      $t7, 0x0036($sp)
	lh      $t8, 0x0036($sp)
	bgtz    $t8, 100$
	nop
	li      $t9, 0x0001
	sh      $t9, 0x0036($sp)
100$:
	lh      $t0, 0x0036($sp)
	slti    $at, $t0, 0x0021
	bnez    $at, 106$
	nop
	li      $t1, 0x0020
	sh      $t1, 0x0036($sp)
106$:
	lui     $t2, %hi(_camera_bss_238-0x238+0x248)
	lh      $t2, %lo(_camera_bss_238-0x238+0x248)($t2)
	beqz    $t2, 117$
	nop
	la.u    $a0, _camera_bss_238-0x238+0x248
	la.l    $a0, _camera_bss_238-0x238+0x248
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0001
	li      $t3, 0x0008
	sh      $t3, 0x0036($sp)
117$:
	lui     $t4, %hi(_camera_bss_238-0x238+0x24A)
	lh      $t4, %lo(_camera_bss_238-0x238+0x24A)($t4)
	beqz    $t4, 129$
	nop
	sh      $0, 0x003C($sp)
	la.u    $a0, _camera_bss_238-0x238+0x24A
	la.l    $a0, _camera_bss_238-0x238+0x24A
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0001
	li      $t6, 0x0800
	sh      $t6, 0x0034($sp)
129$:
	lui     $t5, %hi(_camera_bss_238-0x238+0x24A)
	lh      $t5, %lo(_camera_bss_238-0x238+0x24A)($t5)
	li      $at, 0x001C
	bne     $t5, $at, 144$
	nop
	lui     $t7, %hi(_camera_bss_238-0x238+0x248)
	lh      $t7, %lo(_camera_bss_238-0x238+0x248)($t7)
	slti    $at, $t7, 0x0005
	bnez    $at, 142$
	nop
	slti    $at, $t7, 0x001D
	bnez    $at, 144$
	nop
142$:
	jal     camera_8028B850
	nop
144$:
	lui     $t8, %hi(_camera_bss_238-0x238+0x248)
	lh      $t8, %lo(_camera_bss_238-0x238+0x248)($t8)
	li      $at, 0x001C
	bne     $t8, $at, 159$
	nop
	lui     $t9, %hi(_camera_bss_238-0x238+0x24A)
	lh      $t9, %lo(_camera_bss_238-0x238+0x24A)($t9)
	slti    $at, $t9, 0x0005
	bnez    $at, 157$
	nop
	slti    $at, $t9, 0x001D
	bnez    $at, 159$
	nop
157$:
	jal     camera_8028B850
	nop
159$:
	lui     $t0, %hi(_camera_bss_48-0x48+0x16E)
	lhu     $t0, %lo(_camera_bss_48-0x48+0x16E)($t0)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 189$
	nop
	lui     $t2, %hi(cont1)
	lw      $t2, %lo(cont1)($t2)
	lhu     $t3, 0x0012($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, 172$
	nop
	jal     camera_8028B8B8
	nop
172$:
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    182$
	nop
	addiu   $a0, $sp, 0x0048
	lw      $a1, 0x0024($sp)
	jal     camera_802899CC
	li      $a2, 0x40A00000
182$:
	li      $t6, -0x3FF8
	sh      $t6, 0x0038($sp)
	li      $t5, 0x001E
	lui     $at, %hi(_camera_bss_238-0x238+0x248)
	sh      $t5, %lo(_camera_bss_238-0x238+0x248)($at)
	li      $t7, 0x0002
	sh      $t7, 0x0036($sp)
189$:
	lui     $t8, %hi(_camera_bss_48-0x48+0x16E)
	lhu     $t8, %lo(_camera_bss_48-0x48+0x16E)($t8)
	andi    $t9, $t8, 0x0001
	beqz    $t9, 219$
	nop
	lui     $t0, %hi(cont1)
	lw      $t0, %lo(cont1)($t0)
	lhu     $t1, 0x0012($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, 202$
	nop
	jal     camera_8028B8B8
	nop
202$:
	lwc1    $f4, 0x0048($sp)
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    212$
	nop
	addiu   $a0, $sp, 0x0048
	lw      $a1, 0x0024($sp)
	jal     camera_802899CC
	li      $a2, 0x40A00000
212$:
	li      $t3, 0x3FF8
	sh      $t3, 0x0038($sp)
	li      $t4, 0x001E
	lui     $at, %hi(_camera_bss_238-0x238+0x248)
	sh      $t4, %lo(_camera_bss_238-0x238+0x248)($at)
	li      $t6, 0x0002
	sh      $t6, 0x0036($sp)
219$:
	lui     $t5, %hi(_camera_bss_48-0x48+0x16E)
	lhu     $t5, %lo(_camera_bss_48-0x48+0x16E)($t5)
	andi    $t7, $t5, 0x0004
	beqz    $t7, 249$
	nop
	lui     $t8, %hi(cont1)
	lw      $t8, %lo(cont1)($t8)
	lhu     $t9, 0x0012($t8)
	andi    $t0, $t9, 0x000C
	beqz    $t0, 232$
	nop
	jal     camera_8028B8B8
	nop
232$:
	lwc1    $f8, 0x0048($sp)
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    242$
	nop
	addiu   $a0, $sp, 0x0048
	lw      $a1, 0x0024($sp)
	jal     camera_802899CC
	li      $a2, 0x40A00000
242$:
	li      $t1, -0x3000
	sh      $t1, 0x003C($sp)
	li      $t2, 0x001E
	lui     $at, %hi(_camera_bss_238-0x238+0x24A)
	sh      $t2, %lo(_camera_bss_238-0x238+0x24A)($at)
	li      $t3, 0x0800
	sh      $t3, 0x0034($sp)
249$:
	lui     $t4, %hi(_camera_bss_48-0x48+0x16E)
	lhu     $t4, %lo(_camera_bss_48-0x48+0x16E)($t4)
	andi    $t6, $t4, 0x0008
	beqz    $t6, 279$
	nop
	lui     $t5, %hi(cont1)
	lw      $t5, %lo(cont1)($t5)
	lhu     $t7, 0x0012($t5)
	andi    $t8, $t7, 0x000C
	beqz    $t8, 262$
	nop
	jal     camera_8028B8B8
	nop
262$:
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    272$
	nop
	addiu   $a0, $sp, 0x0048
	lw      $a1, 0x0024($sp)
	jal     camera_802899CC
	li      $a2, 0x40A00000
272$:
	li      $t9, 0x3000
	sh      $t9, 0x003C($sp)
	li      $t0, 0x001E
	lui     $at, %hi(_camera_bss_238-0x238+0x24A)
	sh      $t0, %lo(_camera_bss_238-0x238+0x24A)($at)
	li      $t1, 0x0800
	sh      $t1, 0x0034($sp)
279$:
	lh      $t2, 0x003A($sp)
	lh      $t3, 0x0038($sp)
	addiu   $a0, $sp, 0x003E
	lh      $a2, 0x0036($sp)
	jal     camera_802894B4
	addu    $a1, $t2, $t3
	addiu   $a0, $sp, 0x0040
	lh      $a1, 0x003C($sp)
	jal     camera_8028976C
	lh      $a2, 0x0034($sp)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x0048($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    300$
	nop
	li      $at, 0x43960000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0048($sp)
300$:
	lh      $t4, 0x003E($sp)
	lw      $a0, 0x005C($sp)
	lw      $a1, 0x0060($sp)
	lw      $a2, 0x0048($sp)
	lh      $a3, 0x0040($sp)
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	lui     $t6, %hi(camera_stagescene)
	lw      $t6, %lo(camera_stagescene)($t6)
	li      $at, 0x00B1
	bne     $t6, $at, 326$
	nop
	lui     $at, %hi(camera_803371B0)
	lwc1    $f10, %lo(camera_803371B0)($at)
	lui     $at, %hi(camera_803371B4)
	lwc1    $f16, %lo(camera_803371B4)($at)
	li.u    $a2, 0x458CE000
	li.u    $a3, 0xC569B000
	li.l    $a3, 0xC569B000
	li.l    $a2, 0x458CE000
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x005C($sp)
	swc1    $f10, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f16, 0x0014($sp)
	sh      $v0, 0x003E($sp)
326$:
	lui     $t5, %hi(camera_stagescene)
	lw      $t5, %lo(camera_stagescene)($t5)
	li      $at, 0x00D1
	bne     $t5, $at, 343$
	nop
	li      $at, 0x46000000
	mtc1    $at, $f18
	li      $at, 0xC6000000
	mtc1    $at, $f4
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x005C($sp)
	li      $a2, 0x46000000
	li      $a3, 0xC6000000
	swc1    $f18, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f4, 0x0014($sp)
	sh      $v0, 0x003E($sp)
343$:
	lui     $t7, %hi(camera_stagescene)
	lw      $t7, %lo(camera_stagescene)($t7)
	li      $at, 0x00D2
	bne     $t7, $at, 362$
	nop
	lui     $at, %hi(camera_803371B8)
	lwc1    $f6, %lo(camera_803371B8)($at)
	lui     $at, %hi(camera_803371BC)
	lwc1    $f8, %lo(camera_803371BC)($at)
	li.u    $a2, 0x4519A000
	li.u    $a3, 0xC519A000
	li.l    $a3, 0xC519A000
	li.l    $a2, 0x4519A000
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x005C($sp)
	swc1    $f6, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f8, 0x0014($sp)
	sh      $v0, 0x003E($sp)
362$:
	b       366$
	lh      $v0, 0x003E($sp)
	b       366$
	nop
366$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

camera_80283340:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	sw      $t6, 0x0054($sp)
	lw      $a1, 0x0058($sp)
	addiu   $a0, $sp, 0x0038
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $t7, %hi(camera_8033C848)
	lh      $t7, %lo(camera_8033C848)($t7)
	li      $at, -0x0101
	and     $t8, $t7, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t8, %lo(camera_8033C848)($at)
	lw      $a1, 0x0058($sp)
	addiu   $a0, $sp, 0x0044
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $t9, 0x0058($sp)
	addiu   $a2, $sp, 0x0044
	move    $a0, $t9
	jal     camera_80282D78
	addiu   $a1, $t9, 0x0004
	sh      $v0, 0x0026($sp)
	addiu   $t0, $sp, 0x0044
	lwc1    $f4, 0x0000($t0)
	lw      $t1, 0x0058($sp)
	swc1    $f4, 0x0010($t1)
	addiu   $t2, $sp, 0x0044
	lwc1    $f6, 0x0008($t2)
	lw      $t3, 0x0058($sp)
	swc1    $f6, 0x0018($t3)
	lw      $t4, 0x0058($sp)
	li      $at, 0x0008
	lbu     $t5, 0x0000($t4)
	bne     $t5, $at, 68$
	nop
	lw      $t6, 0x0058($sp)
	addiu   $a3, $sp, 0x0050
	lwc1    $f12, 0x0010($t6)
	lwc1    $f14, 0x0014($t6)
	jal     bg_check_ground
	lw      $a2, 0x0018($t6)
	swc1    $f0, 0x0030($sp)
	lw      $t7, 0x0054($sp)
	addiu   $t0, $sp, 0x0044
	lh      $t8, 0x0076($t7)
	addiu   $t9, $t8, 0x0078
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0004($t0)
	li      $at, 0x42F00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0030($sp)
	addiu   $t1, $sp, 0x0044
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x0004($t1)
	c.lt.s  $f6, $f4
	nop
	bc1f    68$
	nop
	lwc1    $f8, 0x0030($sp)
	addiu   $t2, $sp, 0x0044
	swc1    $f8, 0x0004($t2)
68$:
	addiu   $t3, $sp, 0x0044
	lw      $a1, 0x0004($t3)
	lw      $a0, 0x0058($sp)
	jal     camera_8028C8F0
	li      $a2, 0x42480000
	lw      $t4, 0x0058($sp)
	lwc1    $f12, 0x0010($t4)
	jal     bg_check_water
	lwc1    $f14, 0x0018($t4)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	nop
	add.s   $f16, $f0, $f10
	swc1    $f16, 0x0034($sp)
	lw      $t5, 0x0058($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f18, 0x0014($t5)
	c.le.s  $f18, $f6
	nop
	bc1f    95$
	nop
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	lui     $at, %hi(camera_8033C848)
	ori     $t7, $t6, 0x4000
	b       101$
	sh      $t7, %lo(camera_8033C848)($at)
95$:
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	li      $at, -0x4001
	and     $t9, $t8, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t9, %lo(camera_8033C848)($at)
101$:
	lw      $a0, 0x0058($sp)
	addiu   $a1, $sp, 0x0038
	jal     camera_8028F670
	addiu   $a0, $a0, 0x0010
	lw      $t0, 0x0058($sp)
	addiu   $t1, $sp, 0x0028
	sw      $t1, 0x0010($sp)
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x002A
	addiu   $a0, $t0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t0, 0x0010
	li      $at, 0x44480000
	mtc1    $at, $f8
	lwc1    $f4, 0x002C($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    132$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x002C($sp)
	lw      $t2, 0x0058($sp)
	lh      $t3, 0x0028($sp)
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x002A($sp)
	addiu   $a0, $t2, 0x0004
	addiu   $a1, $t2, 0x0010
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
132$:
	jal     camera_802804F4
	lw      $a0, 0x0058($sp)
	b       138$
	lh      $v0, 0x0026($sp)
	b       138$
	nop
138$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

camera_80283578:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0050($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	sw      $t6, 0x0028($sp)
	li      $t7, 0x1555
	sh      $t7, 0x0026($sp)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	li      $at, 0x8000
	lh      $t9, 0x0012($t8)
	addu    $t0, $t9, $at
	sh      $t0, 0x0024($sp)
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	andi    $t2, $t1, 0x0010
	beqz    $t2, 33$
	nop
	lui     $t3, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t3, %lo(_camera_bss_238-0x238+0x23E)($t3)
	li      $at, 0xC4160000
	mtc1    $at, $f14
	mtc1    $t3, $f4
	li      $a2, 0x41A00000
	li      $a3, 0x41A00000
	jal     convergef
	cvt.s.w $f12, $f4
	trunc.w.s $f6, $f0
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	mfc1    $t5, $f6
	b       46$
	sh      $t5, %lo(_camera_bss_238-0x238+0x23E)($at)
33$:
	lui     $t6, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t6, %lo(_camera_bss_238-0x238+0x23E)($t6)
	mtc1    $0, $f14
	li      $a2, 0x41A00000
	mtc1    $t6, $f8
	li      $a3, 0x41A00000
	jal     convergef
	cvt.s.w $f12, $f8
	trunc.w.s $f10, $f0
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	mfc1    $t8, $f10
	nop
	sh      $t8, %lo(_camera_bss_238-0x238+0x23E)($at)
46$:
	jal     camera_8028B7C4
	nop
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0050($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $t9, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f16, 0x0008($t9)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($t9)
	lw      $t0, 0x0050($sp)
	addiu   $t1, $sp, 0x002C
	sw      $t1, 0x0010($sp)
	addiu   $a2, $sp, 0x0038
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $t0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t0, 0x0010
	li      $at, 0x44480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0034($sp)
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	li      $at, 0x04A8
	lw      $t3, 0x0000($t2)
	bne     $t3, $at, 90$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0034($sp)
	li      $t4, 0x2800
	sh      $t4, 0x0026($sp)
	addiu   $a0, $sp, 0x002C
	lh      $a1, 0x0024($sp)
	jal     camera_8028976C
	li      $a2, 0x0100
	b       94$
	nop
90$:
	addiu   $a0, $sp, 0x002C
	lh      $a1, 0x0024($sp)
	jal     camera_8028976C
	li      $a2, 0x0080
94$:
	addiu   $a0, $sp, 0x002E
	lh      $a1, 0x0026($sp)
	jal     camera_8028976C
	li      $a2, 0x0100
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	li      $at, 0x04A8
	lw      $t6, 0x0000($t5)
	beq     $t6, $at, 190$
	nop
	lui     $t7, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t7, %lo(_camera_bss_48-0x48+0xD0)($t7)
	li      $at, 0x000A
	bne     $t7, $at, 190$
	nop
	lui     $t8, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t8, %lo(_camera_bss_238-0x238+0x23E)($t8)
	lwc1    $f18, 0x0034($sp)
	lw      $a0, 0x0050($sp)
	mtc1    $t8, $f10
	lh      $t9, 0x002C($sp)
	addiu   $a1, $sp, 0x003C
	cvt.s.w $f16, $f10
	lh      $a3, 0x002E($sp)
	addiu   $a0, $a0, 0x0004
	sw      $t9, 0x0010($sp)
	add.s   $f4, $f16, $f18
	mfc1    $a2, $f4
	jal     polar_to_cartesian
	nop
	addiu   $t0, $sp, 0x003C
	lwc1    $f6, 0x0000($t0)
	lw      $t1, 0x0050($sp)
	swc1    $f6, 0x0010($t1)
	addiu   $t2, $sp, 0x003C
	lwc1    $f8, 0x0008($t2)
	lw      $t3, 0x0050($sp)
	swc1    $f8, 0x0018($t3)
	lw      $t4, 0x0050($sp)
	li      $a2, 0x41F00000
	addiu   $a0, $t4, 0x0014
	jal     camera_802899CC
	lw      $a1, 0x0008($t4)
	lw      $t5, 0x0050($sp)
	addiu   $t6, $sp, 0x002C
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0038
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $t5, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t5, 0x0004
	lui     $t7, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t7, %lo(_camera_bss_238-0x238+0x23E)($t7)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f16, 0x0034($sp)
	mtc1    $t7, $f4
	lui     $at, %hi(camera_803371C0)
	sub.s   $f18, $f10, $f16
	lwc1    $f10, %lo(camera_803371C0)($at)
	cvt.s.w $f6, $f4
	add.s   $f8, $f18, $f6
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x0030($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f4, 0x0030($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    168$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0030($sp)
168$:
	lh      $t8, 0x002E($sp)
	li      $at, 0x45800000
	mtc1    $at, $f8
	lwc1    $f10, 0x0030($sp)
	mtc1    $t8, $f4
	mul.s   $f16, $f8, $f10
	cvt.s.w $f18, $f4
	add.s   $f6, $f18, $f16
	trunc.w.s $f8, $f6
	mfc1    $t0, $f8
	nop
	sh      $t0, 0x002E($sp)
	lw      $t1, 0x0050($sp)
	lh      $t2, 0x002C($sp)
	lw      $a2, 0x0038($sp)
	lh      $a3, 0x002E($sp)
	addiu   $a0, $t1, 0x0010
	addiu   $a1, $t1, 0x0004
	jal     polar_to_cartesian
	sw      $t2, 0x0010($sp)
	b       270$
	nop
190$:
	lui     $t4, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t4, %lo(_camera_bss_238-0x238+0x23E)($t4)
	lwc1    $f18, 0x0034($sp)
	lw      $t3, 0x0050($sp)
	mtc1    $t4, $f10
	lh      $t5, 0x002C($sp)
	lh      $a3, 0x002E($sp)
	cvt.s.w $f4, $f10
	addiu   $a0, $t3, 0x0004
	addiu   $a1, $t3, 0x0010
	sw      $t5, 0x0010($sp)
	add.s   $f16, $f4, $f18
	mfc1    $a2, $f16
	jal     polar_to_cartesian
	nop
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0002
	sh      $t7, %lo(camera_8033C84A)($at)
	lw      $t8, 0x0050($sp)
	li      $at, 0x43480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0014($t8)
	addiu   $a3, $sp, 0x004C
	lwc1    $f12, 0x0010($t8)
	lw      $a2, 0x0018($t8)
	jal     bg_check_ground
	add.s   $f14, $f6, $f8
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	nop
	add.s   $f4, $f0, $f10
	swc1    $f4, 0x0048($sp)
	lw      $t9, 0x0050($sp)
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0014($t9)
	c.lt.s  $f18, $f16
	nop
	bc1f    234$
	nop
	lwc1    $f6, 0x0048($sp)
	lw      $t0, 0x0050($sp)
	swc1    $f6, 0x0014($t0)
234$:
	lw      $t1, 0x0050($sp)
	addiu   $t2, $sp, 0x002C
	sw      $t2, 0x0010($sp)
	addiu   $a2, $sp, 0x0038
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $t1, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t1, 0x0010
	lui     $t3, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t3, %lo(_camera_bss_238-0x238+0x23E)($t3)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f8, 0x0038($sp)
	mtc1    $t3, $f10
	nop
	cvt.s.w $f4, $f10
	add.s   $f16, $f4, $f18
	c.lt.s  $f16, $f8
	nop
	bc1f    270$
	nop
	lui     $t4, %hi(_camera_bss_238-0x238+0x23E)
	lh      $t4, %lo(_camera_bss_238-0x238+0x23E)($t4)
	lwc1    $f4, 0x0034($sp)
	mtc1    $t4, $f6
	nop
	cvt.s.w $f10, $f6
	add.s   $f18, $f10, $f4
	swc1    $f18, 0x0038($sp)
	lw      $t5, 0x0050($sp)
	lh      $t6, 0x002C($sp)
	lw      $a2, 0x0038($sp)
	lh      $a3, 0x002E($sp)
	addiu   $a0, $t5, 0x0004
	addiu   $a1, $t5, 0x0010
	jal     polar_to_cartesian
	sw      $t6, 0x0010($sp)
270$:
	lw      $t7, 0x0050($sp)
	addiu   $a0, $t7, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t7, 0x0010
	sh      $v0, 0x002C($sp)
	b       279$
	lh      $v0, 0x002C($sp)
	b       279$
	nop
279$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

camera_802839E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80283340
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sh      $v0, 0x003A($t6)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80283A18
camera_80283A18:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	b       5$
	nop
5$:
	jr      $ra
	nop

camera_80283A34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80283340
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sh      $v0, 0x003A($t6)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80283A68
camera_80283A68:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lui     $t8, %hi(_camera_bss_238-0x238+0x252)
	lh      $t8, %lo(_camera_bss_238-0x238+0x252)($t8)
	lh      $t7, 0x0012($t6)
	li      $at, 0x8000
	addu    $t9, $t7, $t8
	addu    $t0, $t9, $at
	sh      $t0, 0x002E($sp)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f4, %lo(camera_8032DF4C)($at)
	lh      $t2, 0x002E($sp)
	li      $t1, 0x05B0
	sw      $t1, 0x0014($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	li      $a2, 0x42FA0000
	li      $a3, 0x42FA0000
	swc1    $f4, 0x0010($sp)
	jal     camera_8027FE20
	sw      $t2, 0x0018($sp)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	b       32$
	lh      $v0, 0x0012($t3)
	b       32$
	nop
32$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80283AF8:
	addiu   $sp, $sp, -0x00C8
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x00C8($sp)
	sw      $s0, 0x0028($sp)
	sdc1    $f20, 0x0020($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x8000
	lh      $t7, 0x0012($t6)
	addu    $t8, $t7, $at
	sh      $t8, 0x006C($sp)
	sh      $0, 0x0050($sp)
	sw      $0, 0x0048($sp)
	sw      $0, 0x0044($sp)
	la.u    $t9, camdata
	la.l    $t9, camdata
	lwc1    $f12, 0x0024($t9)
	lwc1    $f14, 0x0028($t9)
	lw      $a2, 0x002C($t9)
	jal     bg_check_roof
	addiu   $a3, $sp, 0x0094
	swc1    $f0, 0x0040($sp)
	jal     camera_8028BD98
	lw      $a0, 0x00C8($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x00C8($sp)
	addiu   $t0, $sp, 0x006E
	sw      $t0, 0x0010($sp)
	addiu   $a2, $sp, 0x0080
	addiu   $a3, $sp, 0x0070
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, 60$
	nop
	jal     camera_80288718
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, 51$
	nop
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f4, %lo(camera_8032DF4C)($at)
	lui     $at, %hi(camera_803371C4)
	lwc1    $f6, %lo(camera_803371C4)($at)
	add.s   $f8, $f4, $f6
	b       58$
	swc1    $f8, 0x007C($sp)
51$:
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f10, %lo(camera_8032DF4C)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f16
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x007C($sp)
58$:
	b       63$
	nop
60$:
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f4, %lo(camera_8032DF4C)($at)
	swc1    $f4, 0x007C($sp)
63$:
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	li      $at, 0x00200000
	lw      $t4, 0x0000($t3)
	and     $t5, $t4, $at
	bnez    $t5, 73$
	nop
	li      $at, 0x04A8
	bne     $t4, $at, 80$
	nop
73$:
	lui     $at, %hi(camera_803371C8)
	lwc1    $f8, %lo(camera_803371C8)($at)
	lwc1    $f6, 0x007C($sp)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x007C($sp)
	jal     camera_80288888
	li      $a0, 0x0003
80$:
	lui     $at, %hi(_camera_bss_238-0x238+0x244)
	lwc1    $f16, %lo(_camera_bss_238-0x238+0x244)($at)
	mtc1    $0, $f18
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    107$
	nop
	lwc1    $f4, 0x0080($sp)
	lwc1    $f6, 0x007C($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    105$
	nop
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x0080($sp)
	lwc1    $f18, 0x007C($sp)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	swc1    $f16, 0x0080($sp)
	bc1f    105$
	nop
	lwc1    $f4, 0x007C($sp)
	swc1    $f4, 0x0080($sp)
105$:
	b       155$
	nop
107$:
	lui     $at, %hi(_camera_bss_238-0x238+0x244)
	lwc1    $f6, %lo(_camera_bss_238-0x238+0x244)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	mtc1    $0, $f16
	lui     $at, %hi(_camera_bss_238-0x238+0x244)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	swc1    $f10, %lo(_camera_bss_238-0x238+0x244)($at)
	bc1f    121$
	nop
	mtc1    $0, $f18
	lui     $at, %hi(_camera_bss_238-0x238+0x244)
	swc1    $f18, %lo(_camera_bss_238-0x238+0x244)($at)
121$:
	lwc1    $f4, 0x0080($sp)
	lwc1    $f6, 0x007C($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    138$
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0080($sp)
	lwc1    $f18, 0x007C($sp)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	swc1    $f16, 0x0080($sp)
	bc1f    138$
	nop
	lwc1    $f4, 0x007C($sp)
	swc1    $f4, 0x0080($sp)
138$:
	lwc1    $f6, 0x0080($sp)
	lwc1    $f8, 0x007C($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    155$
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0080($sp)
	lwc1    $f4, 0x007C($sp)
	add.s   $f18, $f10, $f16
	c.lt.s  $f4, $f18
	swc1    $f18, 0x0080($sp)
	bc1f    155$
	nop
	lwc1    $f6, 0x007C($sp)
	swc1    $f6, 0x0080($sp)
155$:
	lui     $t6, %hi(_camera_bss_238-0x238+0x248)
	lh      $t6, %lo(_camera_bss_238-0x238+0x248)($t6)
	bnez    $t6, 195$
	nop
	lw      $t7, 0x00C8($sp)
	li      $at, 0x0010
	lbu     $t8, 0x0000($t7)
	bne     $t8, $at, 167$
	nop
	li      $t9, 0x00C0
	b       169$
	sh      $t9, 0x0052($sp)
167$:
	li      $t0, 0x0100
	sh      $t0, 0x0052($sp)
169$:
	lui     $t1, %hi(cont1)
	lw      $t1, %lo(cont1)($t1)
	mtc1    $0, $f10
	move    $s0, $0
	lwc1    $f8, 0x0004($t1)
	c.eq.s  $f8, $f10
	nop
	bc1t    179$
	nop
	li      $s0, 0x0001
179$:
	bnez    $s0, 189$
	nop
	lwc1    $f16, 0x0008($t1)
	mtc1    $0, $f18
	move    $s0, $0
	c.eq.s  $f16, $f18
	nop
	bc1t    189$
	nop
	li      $s0, 0x0001
189$:
	beqz    $s0, 193$
	nop
	li      $t2, 0x0020
	sh      $t2, 0x0052($sp)
193$:
	b       215$
	nop
195$:
	lui     $t3, %hi(_camera_bss_238-0x238+0x248)
	lh      $t3, %lo(_camera_bss_238-0x238+0x248)($t3)
	bgez    $t3, 202$
	nop
	lh      $t5, 0x006E($sp)
	addiu   $t4, $t5, 0x0200
	sh      $t4, 0x006E($sp)
202$:
	lui     $t6, %hi(_camera_bss_238-0x238+0x248)
	lh      $t6, %lo(_camera_bss_238-0x238+0x248)($t6)
	blez    $t6, 209$
	nop
	lh      $t7, 0x006E($sp)
	addiu   $t8, $t7, -0x0200
	sh      $t8, 0x006E($sp)
209$:
	la.u    $a0, _camera_bss_238-0x238+0x248
	la.l    $a0, _camera_bss_238-0x238+0x248
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0100
	sh      $0, 0x0052($sp)
215$:
	li      $t9, 0x0400
	lui     $at, %hi(camera_8032DF34)
	sh      $t9, %lo(camera_8032DF34)($at)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x00C8($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_8028ACCC
	addiu   $a1, $a1, 0x0010
	swc1    $f0, 0x0058($sp)
	lui     $t0, %hi(camera_8033C84A)
	lh      $t0, %lo(camera_8033C84A)($t0)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 300$
	nop
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0058($sp)
	c.le.s  $f6, $f4
	nop
	bc1f    244$
	nop
	lui     $t2, %hi(camera_8033C84A)
	lh      $t2, %lo(camera_8033C84A)($t2)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	and     $t3, $t2, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t3, %lo(camera_8033C84A)($at)
244$:
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	lh      $t6, 0x006E($sp)
	mtc1    $0, $f16
	lh      $t4, 0x0012($t5)
	subu    $t7, $t4, $t6
	bgez    $t7, 254$
	sra     $t8, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t8, $at, 1
254$:
	mtc1    $t8, $f8
	nop
	cvt.s.w $f10, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    263$
	nop
	b       274$
	move    $s0, $t8
263$:
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	lh      $t1, 0x006E($sp)
	lh      $t0, 0x0012($t9)
	subu    $s0, $t0, $t1
	bgez    $s0, 272$
	sra     $t2, $s0, 1
	addiu   $at, $s0, 0x0001
	sra     $t2, $at, 1
272$:
	move    $s0, $t2
	subu    $s0, $0, $s0
274$:
	slti    $at, $s0, 0x1800
	beqz    $at, 298$
	nop
	lui     $t3, %hi(camera_8033C84A)
	lh      $t3, %lo(camera_8033C84A)($t3)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	and     $t5, $t3, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t5, %lo(camera_8033C84A)($at)
	lui     $t4, %hi(_camera_bss_48-0x48+0x100)
	lh      $t4, %lo(_camera_bss_48-0x48+0x100)($t4)
	li      $at, 0x8000
	addu    $t6, $t4, $at
	sh      $t6, 0x006E($sp)
	li      $at, 0x44480000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0080($sp)
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	lui     $at, %hi(camera_8033C84A)
	ori     $t8, $t7, 0x0002
	sh      $t8, %lo(camera_8033C84A)($at)
298$:
	b       358$
	nop
300$:
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0058($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    358$
	nop
	lhu     $t9, 0x006E($sp)
	li      $at, 0x437A0000
	mtc1    $at, $f8
	lwc1    $f10, 0x0058($sp)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	sub.s   $f16, $f8, $f10
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	lw      $t2, 0x00C8($sp)
	mul.s   $f4, $f16, $f18
	lwc1    $f6, 0x0010($t2)
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0010($t2)
	lhu     $t3, 0x006E($sp)
	li      $at, 0x437A0000
	mtc1    $at, $f10
	lwc1    $f16, 0x0058($sp)
	sra     $t5, $t3, 4
	sll     $t4, $t5, 2
	lui     $at, %hi(math_cos)
	sub.s   $f18, $f10, $f16
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	lw      $t6, 0x00C8($sp)
	mul.s   $f4, $f18, $f6
	lwc1    $f8, 0x0018($t6)
	add.s   $f10, $f8, $f4
	swc1    $f10, 0x0018($t6)
	lui     $t7, %hi(_camera_bss_238-0x238+0x248)
	lh      $t7, %lo(_camera_bss_238-0x238+0x248)($t7)
	bnez    $t7, 355$
	nop
	li      $t8, 0x1000
	sh      $t8, 0x0052($sp)
	lui     $at, %hi(camera_8032DF34)
	sh      $0, %lo(camera_8032DF34)($at)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x00C8($sp)
	addiu   $t9, $sp, 0x006E
	sw      $t9, 0x0010($sp)
	addiu   $a2, $sp, 0x0080
	addiu   $a3, $sp, 0x0070
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
355$:
	lw      $t0, 0x0044($sp)
	ori     $t1, $t0, 0x0001
	sw      $t1, 0x0044($sp)
358$:
	lui     $t2, %hi(cont1)
	lw      $t2, %lo(cont1)($t2)
	li      $at, 0xC1800000
	mtc1    $at, $f16
	lwc1    $f18, 0x0008($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    370$
	nop
	lh      $t3, 0x006E($sp)
	lw      $t5, 0x00C8($sp)
	sh      $t3, 0x0002($t5)
370$:
	lui     $at, %hi(camera_803371CC)
	lwc1    $f6, %lo(camera_803371CC)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	addiu   $a0, $sp, 0x0068
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	addiu   $a3, $sp, 0x0064
	swc1    $f6, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f8, 0x0014($sp)
	lw      $a1, 0x00C8($sp)
	addiu   $a0, $sp, 0x00B0
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a0, 0x00C8($sp)
	addiu   $a1, $sp, 0x00B0
	addiu   $a2, $sp, 0x0072
	jal     camera_8028F914
	li      $a3, 0x0600
	sw      $v0, 0x0048($sp)
	lw      $t4, 0x0048($sp)
	li      $at, 0x0003
	bne     $t4, $at, 439$
	nop
	lh      $t6, 0x0072($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0xFC)
	sh      $t6, %lo(_camera_bss_48-0x48+0xFC)($at)
	lh      $t7, 0x006E($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0xFE)
	sh      $t7, %lo(_camera_bss_48-0x48+0xFE)($at)
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	lui     $at, %hi(camera_8033C84A)
	ori     $t9, $t8, 0x0200
	sh      $t9, %lo(camera_8033C84A)($at)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	addiu   $t0, $sp, 0x005C
	sw      $t0, 0x0010($sp)
	addiu   $a1, $sp, 0x00B0
	addiu   $a2, $sp, 0x0058
	addiu   $a3, $sp, 0x005E
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x006E
	lh      $a1, 0x0072($sp)
	jal     camera_802894B4
	li      $a2, 0x000A
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lh      $t1, 0x005C($sp)
	addiu   $a1, $sp, 0x00B0
	lw      $a2, 0x0058($sp)
	lh      $a3, 0x005E($sp)
	addiu   $a0, $a0, 0x0004
	jal     polar_to_cartesian
	sw      $t1, 0x0010($sp)
	lui     $t2, %hi(_camera_bss_48-0x48+0xFE)
	lh      $t2, %lo(_camera_bss_48-0x48+0xFE)($t2)
	lh      $t3, 0x006E($sp)
	subu    $t5, $t2, $t3
	bgez    $t5, 436$
	sra     $t4, $t5, 8
	addiu   $at, $t5, 0x00FF
	sra     $t4, $at, 8
436$:
	lui     $at, %hi(_camera_bss_48-0x48+0xFE)
	b       527$
	sh      $t4, %lo(_camera_bss_48-0x48+0xFE)($at)
439$:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lwc1    $f4, 0x0054($t6)
	mtc1    $0, $f10
	nop
	c.eq.s  $f4, $f10
	nop
	bc1f    489$
	nop
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	andi    $t8, $t7, 0x0200
	beqz    $t8, 485$
	nop
	lh      $t9, 0x006C($sp)
	lh      $t0, 0x006E($sp)
	subu    $t1, $t9, $t0
	bgez    $t1, 460$
	sra     $t2, $t1, 8
	addiu   $at, $t1, 0x00FF
	sra     $t2, $at, 8
460$:
	bltz    $t2, 465$
	nop
	li      $t3, -0x0001
	b       467$
	sh      $t3, 0x003E($sp)
465$:
	li      $t5, 0x0001
	sh      $t5, 0x003E($sp)
467$:
	lui     $t4, %hi(_camera_bss_48-0x48+0xFE)
	lh      $t4, %lo(_camera_bss_48-0x48+0xFE)($t4)
	blez    $t4, 474$
	nop
	lh      $t6, 0x003E($sp)
	bgtz    $t6, 481$
	nop
474$:
	lui     $t7, %hi(_camera_bss_48-0x48+0xFE)
	lh      $t7, %lo(_camera_bss_48-0x48+0xFE)($t7)
	bgez    $t7, 483$
	nop
	lh      $t8, 0x003E($sp)
	bgez    $t8, 483$
	nop
481$:
	lh      $t9, 0x0052($sp)
	sh      $t9, 0x0050($sp)
483$:
	b       487$
	nop
485$:
	lh      $t0, 0x0052($sp)
	sh      $t0, 0x0050($sp)
487$:
	b       501$
	nop
489$:
	lh      $t1, 0x0052($sp)
	li      $at, 0x1000
	bne     $t1, $at, 495$
	nop
	lh      $t2, 0x0052($sp)
	sh      $t2, 0x0050($sp)
495$:
	lui     $t3, %hi(camera_8033C84A)
	lh      $t3, %lo(camera_8033C84A)($t3)
	li      $at, -0x0201
	and     $t5, $t3, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t5, %lo(camera_8033C84A)($at)
501$:
	lw      $t4, 0x0048($sp)
	beqz    $t4, 507$
	nop
	lh      $t6, 0x0050($sp)
	addu    $t7, $t6, $t6
	sh      $t7, 0x0050($sp)
507$:
	lw      $t8, 0x0044($sp)
	andi    $t9, $t8, 0x0001
	beqz    $t9, 515$
	nop
	lw      $t0, 0x0048($sp)
	beqz    $t0, 515$
	nop
	sh      $0, 0x0050($sp)
515$:
	lh      $t1, 0x0050($sp)
	beqz    $t1, 527$
	nop
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 527$
	nop
	addiu   $a0, $sp, 0x006E
	lh      $a1, 0x006C($sp)
	jal     camera_8028976C
	lh      $a2, 0x0050($sp)
527$:
	lw      $t2, 0x0048($sp)
	bnez    $t2, 545$
	nop
	lui     $t3, %hi(camera_8033C84A)
	lh      $t3, %lo(camera_8033C84A)($t3)
	andi    $t5, $t3, 0x0200
	bnez    $t5, 545$
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x007C($sp)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	sub.s   $f6, $f16, $f18
	addiu   $a0, $sp, 0x0080
	mfc1    $a1, $f6
	jal     camera_802893F4
	nop
545$:
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lh      $t4, 0x006E($sp)
	addiu   $a1, $sp, 0x00B0
	lw      $a2, 0x0080($sp)
	lh      $a3, 0x0070($sp)
	addiu   $a0, $a0, 0x0004
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	lwc1    $f8, 0x0068($sp)
	addiu   $t6, $sp, 0x00B0
	lwc1    $f16, 0x0004($t6)
	add.s   $f10, $f8, $f4
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0004($t6)
	addiu   $a0, $sp, 0x00B0
	li      $a1, 0x41200000
	jal     camera_80288F5C
	li      $a2, 0x42A00000
	beqz    $v0, 573$
	nop
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	lui     $at, %hi(camera_8033C84A)
	ori     $t8, $t7, 0x0200
	sh      $t8, %lo(camera_8033C84A)($at)
573$:
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	lw      $t0, 0x00C8($sp)
	lwc1    $f6, 0x0004($t9)
	swc1    $f6, 0x0004($t0)
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	lwc1    $f8, 0x0008($t1)
	lwc1    $f10, 0x0064($sp)
	lw      $t2, 0x00C8($sp)
	add.s   $f16, $f8, $f4
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0008($t2)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	lw      $t5, 0x00C8($sp)
	lwc1    $f6, 0x000C($t3)
	swc1    $f6, 0x000C($t5)
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0xCC)($at)
	add.s   $f16, $f8, $f4
	swc1    $f16, 0x0088($sp)
	lui     $t4, %hi(_camera_bss_48-0x48+0xC8)
	lw      $t4, %lo(_camera_bss_48-0x48+0xC8)($t4)
	sw      $t4, 0x00A0($sp)
	addiu   $t6, $sp, 0x00B0
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f10, 0x0004($t6)
	lwc1    $f12, 0x0000($t6)
	lw      $a2, 0x0008($t6)
	addiu   $a3, $sp, 0x009C
	jal     bg_check_ground
	add.s   $f14, $f10, $f18
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	nop
	add.s   $f8, $f0, $f6
	swc1    $f8, 0x0090($sp)
	lui     $at, %hi(camera_803371D0)
	lwc1    $f4, %lo(camera_803371D0)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	swc1    $f4, 0x004C($sp)
	c.lt.s  $f4, $f16
	nop
	bc1f    666$
	nop
625$:
	lui     $a2, %hi(mario_cam)
	lw      $a2, %lo(mario_cam)($a2)
	addiu   $a0, $sp, 0x00BC
	addiu   $a1, $sp, 0x00B0
	lw      $a3, 0x004C($sp)
	jal     camera_8028A834
	addiu   $a2, $a2, 0x0004
	addiu   $t7, $sp, 0x00BC
	lwc1    $f12, 0x0000($t7)
	lwc1    $f14, 0x0004($t7)
	lw      $a2, 0x0008($t7)
	jal     bg_check_ground
	addiu   $a3, $sp, 0x0098
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	nop
	add.s   $f18, $f0, $f10
	swc1    $f18, 0x008C($sp)
	lw      $t8, 0x0098($sp)
	beqz    $t8, 656$
	nop
	lwc1    $f6, 0x008C($sp)
	lwc1    $f8, 0x0088($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    656$
	nop
	lwc1    $f4, 0x008C($sp)
	swc1    $f4, 0x0088($sp)
	lw      $t9, 0x0098($sp)
	sw      $t9, 0x00A0($sp)
656$:
	lui     $at, %hi(camera_803371D4)
	lwc1    $f10, %lo(camera_803371D4)($at)
	lwc1    $f16, 0x004C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	add.s   $f18, $f16, $f10
	c.lt.s  $f18, $f6
	swc1    $f18, 0x004C($sp)
	bc1t    625$
	nop
666$:
	lui     $t0, %hi(_camera_bss_48-0x48+0x164)
	lh      $t0, %lo(_camera_bss_48-0x48+0x164)($t0)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 687$
	nop
	li      $at, 0x420C0000
	mtc1    $at, $f4
	lwc1    $f8, 0x0088($sp)
	sub.s   $f16, $f8, $f4
	swc1    $f16, 0x0088($sp)
	li      $at, 0x420C0000
	mtc1    $at, $f18
	lwc1    $f10, 0x0090($sp)
	sub.s   $f6, $f10, $f18
	swc1    $f6, 0x0090($sp)
	lw      $t2, 0x00C8($sp)
	li      $at, 0x41C80000
	mtc1    $at, $f4
	lwc1    $f8, 0x0008($t2)
	sub.s   $f16, $f8, $f4
	swc1    $f16, 0x0008($t2)
687$:
	addiu   $t3, $sp, 0x00B0
	lwc1    $f12, 0x0000($t3)
	jal     bg_check_water
	lwc1    $f14, 0x0008($t3)
	swc1    $f0, 0x0078($sp)
	lui     $at, %hi(camera_803371D8)
	lwc1    $f18, %lo(camera_803371D8)($at)
	lwc1    $f10, 0x0078($sp)
	c.eq.s  $f10, $f18
	nop
	bc1t    767$
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0078($sp)
	add.s   $f4, $f6, $f8
	swc1    $f4, 0x0078($sp)
	lwc1    $f16, 0x0078($sp)
	lwc1    $f10, 0x0088($sp)
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x0060($sp)
	lui     $t5, %hi(camera_8033C848)
	lh      $t5, %lo(camera_8033C848)($t5)
	andi    $t4, $t5, 0x0020
	bnez    $t4, 733$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0060($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    731$
	nop
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, 731$
	nop
	lui     $t9, %hi(camera_8033C848)
	lh      $t9, %lo(camera_8033C848)($t9)
	lui     $at, %hi(camera_8033C848)
	ori     $t0, $t9, 0x0020
	sh      $t0, %lo(camera_8033C848)($at)
731$:
	b       752$
	nop
733$:
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f4, 0x0060($sp)
	c.lt.s  $f4, $f16
	nop
	bc1t    746$
	nop
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	lw      $t2, 0x0000($t1)
	andi    $t3, $t2, 0x4000
	bnez    $t3, 752$
	nop
746$:
	lui     $t5, %hi(camera_8033C848)
	lh      $t5, %lo(camera_8033C848)($t5)
	li      $at, -0x0021
	and     $t4, $t5, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t4, %lo(camera_8033C848)($at)
752$:
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	andi    $t7, $t6, 0x0020
	bnez    $t7, 765$
	nop
	lwc1    $f10, 0x0090($sp)
	lwc1    $f18, 0x0078($sp)
	c.lt.s  $f10, $f18
	nop
	bc1f    765$
	nop
	lwc1    $f6, 0x0078($sp)
	swc1    $f6, 0x0090($sp)
765$:
	b       773$
	nop
767$:
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	li      $at, -0x0021
	and     $t9, $t8, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t9, %lo(camera_8033C848)($at)
773$:
	lwc1    $f8, 0x0090($sp)
	addiu   $t0, $sp, 0x00B0
	swc1    $f8, 0x0004($t0)
	addiu   $a0, $sp, 0x00BC
	jal     vecf_cpy
	addiu   $a1, $sp, 0x00B0
	addiu   $t1, $sp, 0x00BC
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f4, 0x0004($t1)
	sub.s   $f10, $f4, $f16
	swc1    $f10, 0x0004($t1)
	lw      $t2, 0x00A0($sp)
	beqz    $t2, 815$
	nop
	lwc1    $f18, 0x0090($sp)
	lwc1    $f6, 0x0088($sp)
	c.le.s  $f18, $f6
	nop
	bc1f    815$
	nop
	lw      $a0, 0x00C8($sp)
	li      $t3, -0x0001
	sw      $t3, 0x0010($sp)
	addiu   $a1, $sp, 0x00BC
	lw      $a2, 0x00A0($sp)
	move    $a3, $0
	jal     camera_8028A6BC
	addiu   $a0, $a0, 0x0004
	sw      $v0, 0x0048($sp)
	lw      $t5, 0x0048($sp)
	li      $at, 0x0001
	beq     $t5, $at, 815$
	nop
	lwc1    $f8, 0x0040($sp)
	lwc1    $f4, 0x0088($sp)
	c.lt.s  $f4, $f8
	nop
	bc1f    815$
	nop
	lwc1    $f16, 0x0088($sp)
	swc1    $f16, 0x0090($sp)
815$:
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0068($sp)
	lw      $t4, 0x00C8($sp)
	li      $at, 0x0010
	lbu     $t6, 0x0000($t4)
	bne     $t6, $at, 847$
	nop
	lui     $t7, %hi(camera_8033C848)
	lh      $t7, %lo(camera_8033C848)($t7)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 843$
	nop
	lui     $at, %hi(camera_803371DC)
	lwc1    $f18, %lo(camera_803371DC)($at)
	swc1    $f18, 0x0068($sp)
	lui     $t9, %hi(camera_stagescene)
	lw      $t9, %lo(camera_stagescene)($t9)
	li      $at, 0x0082
	bne     $t9, $at, 841$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0068($sp)
	div.s   $f4, $f6, $f8
	swc1    $f4, 0x0068($sp)
841$:
	b       847$
	nop
843$:
	li      $at, 0x42C80000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0068($sp)
847$:
	lui     $t0, %hi(camera_8033C848)
	lh      $t0, %lo(camera_8033C848)($t0)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 875$
	nop
	lui     $t2, %hi(_camera_bss_48-0x48+0x164)
	lh      $t2, %lo(_camera_bss_48-0x48+0x164)($t2)
	andi    $t3, $t2, 0x0001
	beqz    $t3, 875$
	nop
	lui     $at, %hi(camera_803371E0)
	lwc1    $f10, %lo(camera_803371E0)($at)
	swc1    $f10, 0x0068($sp)
	lui     $t5, %hi(camera_stagescene)
	lw      $t5, %lo(camera_stagescene)($t5)
	li      $at, 0x0082
	beq     $t5, $at, 870$
	nop
	lui     $t4, %hi(stage_index)
	lh      $t4, %lo(stage_index)($t4)
	li      $at, 0x0006
	bne     $t4, $at, 875$
	nop
870$:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f18, 0x0068($sp)
	div.s   $f8, $f18, $f6
	swc1    $f8, 0x0068($sp)
875$:
	addiu   $t6, $sp, 0x00B0
	lwc1    $f12, 0x0000($t6)
	jal     bg_check_gas
	lwc1    $f14, 0x0008($t6)
	swc1    $f0, 0x0074($sp)
	lui     $at, %hi(camera_803371E4)
	lwc1    $f16, %lo(camera_803371E4)($at)
	lwc1    $f4, 0x0074($sp)
	c.eq.s  $f4, $f16
	nop
	bc1t    901$
	nop
	li      $at, 0x43020000
	mtc1    $at, $f18
	lwc1    $f10, 0x0074($sp)
	lw      $t7, 0x00C8($sp)
	add.s   $f20, $f10, $f18
	swc1    $f20, 0x0074($sp)
	lwc1    $f6, 0x0014($t7)
	c.lt.s  $f6, $f20
	nop
	bc1f    901$
	nop
	lwc1    $f8, 0x0074($sp)
	lw      $t8, 0x00C8($sp)
	swc1    $f8, 0x0014($t8)
901$:
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	li      $at, 0x00200000
	lw      $t0, 0x0000($t9)
	and     $t1, $t0, $at
	bnez    $t1, 911$
	nop
	li      $at, 0x04A8
	bne     $t0, $at, 937$
	nop
911$:
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f4, 0x0008($t2)
	add.s   $f10, $f4, $f16
	swc1    $f10, 0x0090($sp)
	lw      $t3, 0x00C8($sp)
	li      $at, 0x0010
	lbu     $t5, 0x0000($t3)
	bne     $t5, $at, 928$
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f18, 0x0090($sp)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x0090($sp)
928$:
	lui     $at, %hi(camera_803371E8)
	lwc1    $f4, %lo(camera_803371E8)($at)
	swc1    $f4, 0x0040($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x00C8($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
937$:
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	li      $at, 0x00100000
	lw      $t6, 0x0000($t4)
	and     $t7, $t6, $at
	beqz    $t7, 979$
	nop
	la.u    $t8, player_data
	la.l    $t8, player_data
	lw      $t9, 0x0080($t8)
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	lwc1    $f16, 0x00A4($t9)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0090($sp)
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x0008($t1)
	lwc1    $f16, 0x0090($sp)
	sub.s   $f4, $f6, $f8
	c.lt.s  $f16, $f4
	nop
	bc1f    970$
	nop
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f10, 0x0008($t0)
	sub.s   $f6, $f10, $f18
	swc1    $f6, 0x0090($sp)
970$:
	lui     $at, %hi(camera_803371EC)
	lwc1    $f8, %lo(camera_803371EC)($at)
	swc1    $f8, 0x0040($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x00C8($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
979$:
	lui     $at, %hi(camera_803371F0)
	lwc1    $f16, %lo(camera_803371F0)($at)
	lwc1    $f4, 0x0090($sp)
	c.eq.s  $f4, $f16
	nop
	bc1t    994$
	nop
	lwc1    $f10, 0x0090($sp)
	lwc1    $f18, 0x0068($sp)
	add.s   $f6, $f10, $f18
	swc1    $f6, 0x0090($sp)
	lw      $a0, 0x00C8($sp)
	lw      $a1, 0x0090($sp)
	jal     camera_8028C8F0
	li      $a2, 0x41A00000
994$:
	addiu   $t2, $sp, 0x00B0
	lwc1    $f8, 0x0000($t2)
	lw      $t3, 0x00C8($sp)
	swc1    $f8, 0x0010($t3)
	addiu   $t5, $sp, 0x00B0
	lwc1    $f4, 0x0008($t5)
	lw      $t4, 0x00C8($sp)
	swc1    $f4, 0x0018($t4)
	la.u    $t6, camdata
	la.l    $t6, camdata
	lwc1    $f16, 0x0024($t6)
	addiu   $t7, $sp, 0x00B0
	swc1    $f16, 0x0000($t7)
	lw      $t8, 0x00C8($sp)
	addiu   $t9, $sp, 0x00B0
	lwc1    $f10, 0x0014($t8)
	swc1    $f10, 0x0004($t9)
	la.u    $t1, camdata
	la.l    $t1, camdata
	lwc1    $f18, 0x002C($t1)
	addiu   $t0, $sp, 0x00B0
	swc1    $f18, 0x0008($t0)
	lw      $a1, 0x00C8($sp)
	addiu   $t2, $sp, 0x005C
	sw      $t2, 0x0010($sp)
	addiu   $a0, $sp, 0x00B0
	addiu   $a2, $sp, 0x0080
	addiu   $a3, $sp, 0x005E
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0080($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    1043$
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0080($sp)
	lw      $a1, 0x00C8($sp)
	lh      $t3, 0x005C($sp)
	addiu   $a0, $sp, 0x00B0
	lw      $a2, 0x0080($sp)
	lh      $a3, 0x005E($sp)
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
1043$:
	lui     $t5, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t5, %lo(_camera_bss_48-0x48+0xD0)($t5)
	li      $at, 0x000A
	beq     $t5, $at, 1072$
	nop
	lw      $t4, 0x00C8($sp)
	addiu   $t6, $sp, 0x005C
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0080
	addiu   $a3, $sp, 0x005E
	addiu   $a0, $t4, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t4, 0x0010
	lwc1    $f16, 0x0080($sp)
	lwc1    $f10, 0x007C($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    1072$
	nop
	lwc1    $f18, 0x007C($sp)
	swc1    $f18, 0x0080($sp)
	lw      $t7, 0x00C8($sp)
	lh      $t8, 0x005C($sp)
	lw      $a2, 0x0080($sp)
	lh      $a3, 0x005E($sp)
	addiu   $a0, $t7, 0x0004
	addiu   $a1, $t7, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
1072$:
	lui     $at, %hi(camera_803371F4)
	lwc1    $f8, %lo(camera_803371F4)($at)
	lwc1    $f6, 0x0040($sp)
	c.eq.s  $f6, $f8
	nop
	bc1t    1107$
	nop
	li      $at, 0x43160000
	mtc1    $at, $f16
	lwc1    $f4, 0x0040($sp)
	lw      $t9, 0x00C8($sp)
	sub.s   $f10, $f4, $f16
	swc1    $f10, 0x0040($sp)
	lwc1    $f18, 0x0014($t9)
	c.lt.s  $f10, $f18
	nop
	bc1f    1107$
	nop
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	li      $t1, -0x0001
	sw      $t1, 0x0010($sp)
	addiu   $a0, $t9, 0x0010
	lw      $a2, 0x0094($sp)
	move    $a3, $0
	jal     camera_8028A6BC
	addiu   $a1, $a1, 0x0004
	sw      $v0, 0x0048($sp)
	lw      $t0, 0x0048($sp)
	li      $at, 0x0001
	bne     $t0, $at, 1107$
	nop
	lwc1    $f6, 0x0040($sp)
	lw      $t2, 0x00C8($sp)
	swc1    $f6, 0x0014($t2)
1107$:
	lui     $t3, %hi(camera_stagescene)
	lw      $t3, %lo(camera_stagescene)($t3)
	li      $at, 0x00B2
	bne     $t3, $at, 1127$
	nop
	lui     $at, %hi(camera_803371F8)
	lwc1    $f8, %lo(camera_803371F8)($at)
	lw      $t5, 0x00C8($sp)
	lui     $at, %hi(camera_803371FC)
	lwc1    $f4, %lo(camera_803371FC)($at)
	li.u    $a2, 0x450CE000
	li.u    $a3, 0xC56CD000
	li.l    $a3, 0xC56CD000
	li.l    $a2, 0x450CE000
	swc1    $f8, 0x0010($sp)
	addiu   $a0, $t5, 0x0010
	addiu   $a1, $t5, 0x0004
	jal     camera_80289F88
	swc1    $f4, 0x0014($sp)
	sh      $v0, 0x006E($sp)
1127$:
	b       1131$
	lh      $v0, 0x006E($sp)
	b       1131$
	nop
1131$:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0020($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00C8

camera_80284CB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x0002
	jal     camera_80283AF8
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sh      $v0, 0x003A($t6)
	jal     camera_802804F4
	lw      $a0, 0x0018($sp)
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80284CFC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x44480000
	mtc1    $at, $f4
	lui     $at, %hi(camera_8032DF4C)
	swc1    $f4, %lo(camera_8032DF4C)($at)
	jal     camera_80284CB8
	lw      $a0, 0x0018($sp)
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80284D38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x43AF0000
	mtc1    $at, $f4
	lui     $at, %hi(camera_8032DF4C)
	swc1    $f4, %lo(camera_8032DF4C)($at)
	jal     camera_80284CB8
	lw      $a0, 0x0018($sp)
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80284D74
camera_80284D74:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	jal     camera_8028BD98
	lw      $a0, 0x0060($sp)
	la.u    $a0, camera_8032DF6C
	li.u    $a2, 0x44198000
	li.u    $a3, 0x44D98000
	li.l    $a3, 0x44D98000
	li.l    $a2, 0x44198000
	la.l    $a0, camera_8032DF6C
	jal     vecf_set
	li      $a1, 0xC4A00000
	lui     $at, %hi(camera_80337200)
	lwc1    $f4, %lo(camera_80337200)($at)
	li      $at, 0x43480000
	mtc1    $at, $f6
	addiu   $t6, $sp, 0x002C
	move    $a0, $t6
	move    $a3, $t6
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	swc1    $f4, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f6, 0x0014($sp)
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lw      $t8, 0x0064($sp)
	lwc1    $f8, 0x0004($t7)
	swc1    $f8, 0x0000($t8)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0008($t9)
	lwc1    $f4, 0x002C($sp)
	add.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0024($sp)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	lw      $t1, 0x0064($sp)
	lwc1    $f8, 0x000C($t0)
	swc1    $f8, 0x0008($t1)
	addiu   $a0, $sp, 0x0044
	jal     vecf_cpy
	lw      $a1, 0x0068($sp)
	la.u    $a0, camera_8032DF6C
	addiu   $t2, $sp, 0x0058
	sw      $t2, 0x0010($sp)
	la.l    $a0, camera_8032DF6C
	lw      $a1, 0x0064($sp)
	addiu   $a2, $sp, 0x0030
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x005A
	la.u    $a0, camera_8032DF6C
	addiu   $t3, $sp, 0x0054
	sw      $t3, 0x0010($sp)
	la.l    $a0, camera_8032DF6C
	addiu   $a1, $sp, 0x0044
	addiu   $a2, $sp, 0x0030
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0056
	lh      $t4, 0x0054($sp)
	lh      $t5, 0x0058($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x254)
	subu    $t6, $t4, $t5
	sh      $t6, %lo(_camera_bss_238-0x238+0x254)($at)
	lui     $t7, %hi(_camera_bss_238-0x238+0x254)
	lh      $t7, %lo(_camera_bss_238-0x238+0x254)($t7)
	slti    $at, $t7, -0x4000
	beqz    $at, 78$
	nop
	li      $t8, -0x4000
	lui     $at, %hi(_camera_bss_238-0x238+0x254)
	sh      $t8, %lo(_camera_bss_238-0x238+0x254)($at)
78$:
	lui     $t9, %hi(_camera_bss_238-0x238+0x254)
	lh      $t9, %lo(_camera_bss_238-0x238+0x254)($t9)
	slti    $at, $t9, 0x4001
	bnez    $at, 86$
	nop
	li      $t0, 0x4000
	lui     $at, %hi(_camera_bss_238-0x238+0x254)
	sh      $t0, %lo(_camera_bss_238-0x238+0x254)($at)
86$:
	lui     $t2, %hi(_camera_bss_238-0x238+0x254)
	lh      $t2, %lo(_camera_bss_238-0x238+0x254)($t2)
	lh      $t1, 0x0058($sp)
	addu    $t3, $t1, $t2
	sh      $t3, 0x0058($sp)
	lh      $t4, 0x0058($sp)
	sh      $t4, 0x0054($sp)
	addiu   $a0, $sp, 0x0054
	lh      $a1, 0x0058($sp)
	jal     camera_8028976C
	li      $a2, 0x1000
	lh      $t5, 0x0054($sp)
	la.u    $a0, camera_8032DF6C
	la.l    $a0, camera_8032DF6C
	addiu   $a1, $sp, 0x0044
	li      $a2, 0x43960000
	move    $a3, $0
	jal     polar_to_cartesian
	sw      $t5, 0x0010($sp)
	lw      $t7, 0x0064($sp)
	addiu   $t6, $sp, 0x0044
	lwc1    $f10, 0x0000($t6)
	lwc1    $f16, 0x0000($t7)
	lui     $at, %hi(camera_80337204)
	lwc1    $f4, %lo(camera_80337204)($at)
	sub.s   $f18, $f10, $f16
	addiu   $t8, $sp, 0x0038
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f6, $f16
	swc1    $f8, 0x0000($t8)
	lw      $t0, 0x0064($sp)
	addiu   $t9, $sp, 0x0044
	lwc1    $f10, 0x0004($t9)
	lwc1    $f18, 0x0004($t0)
	lui     $at, %hi(camera_80337208)
	lwc1    $f6, %lo(camera_80337208)($at)
	sub.s   $f4, $f10, $f18
	li      $at, 0x43960000
	mtc1    $at, $f10
	addiu   $t1, $sp, 0x0038
	mul.s   $f16, $f4, $f6
	add.s   $f8, $f16, $f18
	add.s   $f4, $f8, $f10
	swc1    $f4, 0x0004($t1)
	lw      $t3, 0x0064($sp)
	addiu   $t2, $sp, 0x0044
	lwc1    $f6, 0x0008($t2)
	lwc1    $f16, 0x0008($t3)
	lui     $at, %hi(camera_8033720C)
	lwc1    $f8, %lo(camera_8033720C)($at)
	sub.s   $f18, $f6, $f16
	addiu   $t4, $sp, 0x0038
	mul.s   $f10, $f18, $f8
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0008($t4)
	addiu   $t5, $sp, 0x0038
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f6, 0x0004($t5)
	lwc1    $f12, 0x0000($t5)
	lw      $a2, 0x0008($t5)
	addiu   $a3, $sp, 0x0034
	jal     bg_check_ground
	add.s   $f14, $f6, $f18
	swc1    $f0, 0x0028($sp)
	lui     $at, %hi(camera_80337210)
	lwc1    $f10, %lo(camera_80337210)($at)
	lwc1    $f8, 0x0028($sp)
	c.eq.s  $f8, $f10
	nop
	bc1t    181$
	nop
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0xCC)($at)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f4
	nop
	bc1f    168$
	nop
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f6, %lo(_camera_bss_48-0x48+0xCC)($at)
	swc1    $f6, 0x0028($sp)
168$:
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	lwc1    $f18, 0x0028($sp)
	lw      $t6, 0x0068($sp)
	li      $a2, 0x41F00000
	add.s   $f10, $f18, $f8
	lwc1    $f12, 0x0004($t6)
	li      $a3, 0x41F00000
	swc1    $f10, 0x0028($sp)
	jal     convergef
	mov.s   $f14, $f10
	lw      $t7, 0x0068($sp)
	swc1    $f0, 0x0004($t7)
181$:
	lw      $a0, 0x0064($sp)
	lw      $a1, 0x0024($sp)
	li      $a2, 0x41F00000
	jal     camera_802899CC
	addiu   $a0, $a0, 0x0004
	addiu   $t8, $sp, 0x0044
	lwc1    $f16, 0x0000($t8)
	lw      $t9, 0x0068($sp)
	swc1    $f16, 0x0000($t9)
	addiu   $t0, $sp, 0x0044
	lwc1    $f4, 0x0008($t0)
	lw      $t1, 0x0068($sp)
	swc1    $f4, 0x0008($t1)
	lw      $a0, 0x0064($sp)
	jal     camera_8028AAD8
	lw      $a1, 0x0068($sp)
	sh      $v0, 0x005C($sp)
	b       202$
	lh      $v0, 0x005C($sp)
	b       202$
	nop
202$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

camera_802850AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	jal     camera_80284D74
	addiu   $a2, $t6, 0x0010
	lw      $t7, 0x0018($sp)
	sh      $v0, 0x003A($t7)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_802850EC
camera_802850EC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lui     $t8, %hi(_camera_bss_238-0x238+0x252)
	lh      $t8, %lo(_camera_bss_238-0x238+0x252)($t8)
	lh      $t7, 0x0012($t6)
	li      $at, 0x8000
	addu    $t9, $t7, $t8
	addu    $t0, $t9, $at
	sh      $t0, 0x002E($sp)
	li      $at, 0x44480000
	mtc1    $at, $f4
	lh      $t2, 0x002E($sp)
	li      $t1, 0x1555
	sw      $t1, 0x0014($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	li      $a2, 0x42FA0000
	li      $a3, 0x42FA0000
	sw      $t2, 0x0018($sp)
	jal     camera_8027FE20
	swc1    $f4, 0x0010($sp)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	b       32$
	lh      $v0, 0x0012($t3)
	b       32$
	nop
32$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028517C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(cont1)
	lw      $t6, %lo(cont1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 14$
	nop
	lui     $t9, %hi(camera_8033C848)
	lh      $t9, %lo(camera_8033C848)($t9)
	lui     $at, %hi(camera_8033C848)
	ori     $t0, $t9, 0x2000
	sh      $t0, %lo(camera_8033C848)($at)
14$:
	jal     camera_80283578
	lw      $a0, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	sh      $v0, 0x003A($t1)
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802851DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t6, %lo(_camera_bss_48-0x48+0xD0)($t6)
	li      $at, 0x000B
	beq     $t6, $at, 11$
	nop
	li      $at, 0x0079
	bne     $t6, $at, 15$
	nop
11$:
	jal     camera_80284CFC
	lw      $a0, 0x0018($sp)
	b       30$
	nop
15$:
	lui     $t7, %hi(cont1)
	lw      $t7, %lo(cont1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 26$
	nop
	lui     $t0, %hi(camera_8033C848)
	lh      $t0, %lo(camera_8033C848)($t0)
	lui     $at, %hi(camera_8033C848)
	ori     $t1, $t0, 0x2000
	sh      $t1, %lo(camera_8033C848)($at)
26$:
	jal     camera_80283578
	lw      $a0, 0x0018($sp)
	lw      $t2, 0x0018($sp)
	sh      $v0, 0x003A($t2)
30$:
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028526C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_238-0x238+0x2E8
	la.l    $a0, _camera_bss_238-0x238+0x2E8
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_238-0x238+0x2E8
	la.l    $a0, _camera_bss_238-0x238+0x2E8
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lw      $t6, 0x0018($sp)
	la.u    $a0, _camera_bss_238-0x238+0x2E8
	lwc1    $f6, 0x0008($t7)
	lwc1    $f4, 0x0008($t6)
	la.l    $a0, _camera_bss_238-0x238+0x2E8
	addiu   $a0, $a0, 0x000C
	sub.s   $f8, $f4, $f6
	li      $a1, 0x0000
	li      $a3, 0x0000
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802852F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	andi    $t7, $t6, 0x2000
	bnez    $t7, 23$
	nop
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	lui     $at, %hi(camera_8033C848)
	ori     $t9, $t8, 0x2000
	sh      $t9, %lo(camera_8033C848)($at)
	jal     camera_8028526C
	lw      $a0, 0x0018($sp)
	lui     $t0, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t0, %lo(_camera_bss_48-0x48+0x16C)($t0)
	li      $at, -0x0002
	and     $t1, $t0, $at
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	sh      $t1, %lo(_camera_bss_48-0x48+0x16C)($at)
	b       27$
	li      $v0, 0x0001
23$:
	b       27$
	move    $v0, $0
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80285370:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0078($sp)
	sw      $0, 0x0058($sp)
	sh      $0, 0x003E($sp)
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	andi    $t7, $t6, 0x2000
	beqz    $t7, 286$
	nop
	andi    $t8, $t6, 0x0200
	bnez    $t8, 286$
	nop
	la.u    $a1, _camera_bss_238-0x238+0x2E8
	la.l    $a1, _camera_bss_238-0x238+0x2E8
	jal     vecf_cpy
	addiu   $a0, $sp, 0x0030
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	addiu   $a0, $sp, 0x0030
	jal     vecf_add
	addiu   $a1, $a1, 0x0004
	la.u    $a1, _camera_bss_238-0x238+0x2E8
	la.l    $a1, _camera_bss_238-0x238+0x2E8
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $sp, 0x0024
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	addiu   $a0, $sp, 0x0024
	jal     vecf_add
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0078($sp)
	addiu   $a0, $sp, 0x0068
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	addiu   $t0, $sp, 0x0068
	lwc1    $f4, 0x0004($t9)
	swc1    $f4, 0x0000($t0)
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	addiu   $t2, $sp, 0x0068
	lwc1    $f6, 0x000C($t1)
	swc1    $f6, 0x0008($t2)
	lw      $a1, 0x0078($sp)
	addiu   $t3, $sp, 0x0040
	sw      $t3, 0x0010($sp)
	addiu   $a0, $sp, 0x0068
	addiu   $a2, $sp, 0x0048
	addiu   $a3, $sp, 0x0042
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0078($sp)
	addiu   $a0, $sp, 0x005C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	li      $at, 0x42A00000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0048($sp)
	lui     $t4, %hi(_camera_bss_238-0x238+0x26A)
	lh      $t4, %lo(_camera_bss_238-0x238+0x26A)($t4)
	li      $at, 0x0011
	beq     $t4, $at, 73$
	nop
	li      $at, 0x0004
	beq     $t4, $at, 73$
	nop
	li      $at, 0x0010
	bne     $t4, $at, 268$
	nop
73$:
	li      $t5, 0x0001
	sw      $t5, 0x0058($sp)
	lw      $t7, 0x0058($sp)
	li      $at, 0x0001
	sw      $0, 0x0054($sp)
	bne     $t7, $at, 226$
	nop
80$:
	lh      $t6, 0x0040($sp)
	lh      $t8, 0x003E($sp)
	addiu   $a0, $sp, 0x0068
	addiu   $a1, $sp, 0x005C
	addu    $t9, $t6, $t8
	sw      $t9, 0x0010($sp)
	lw      $a2, 0x0048($sp)
	jal     polar_to_cartesian
	move    $a3, $0
	li      $at, 0x42480000
	mtc1    $at, $f10
	addiu   $t0, $sp, 0x005C
	move    $a0, $t0
	addiu   $a1, $t0, 0x0004
	addiu   $a2, $t0, 0x0008
	li      $a3, 0x41A00000
	jal     bg_hit_wall
	swc1    $f10, 0x0010($sp)
	bnez    $v0, 200$
	nop
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f18, %lo(camera_8032DF4C)($at)
	lwc1    $f16, 0x0048($sp)
	c.lt.s  $f16, $f18
	swc1    $f16, 0x0044($sp)
	bc1f    192$
	nop
107$:
	lh      $t1, 0x0040($sp)
	lh      $t2, 0x003E($sp)
	addiu   $a0, $sp, 0x0068
	addiu   $a1, $sp, 0x005C
	addu    $t3, $t1, $t2
	sw      $t3, 0x0010($sp)
	lw      $a2, 0x0044($sp)
	jal     polar_to_cartesian
	move    $a3, $0
	addiu   $t4, $sp, 0x005C
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f4, 0x0004($t4)
	lwc1    $f12, 0x0000($t4)
	lw      $a2, 0x0008($t4)
	addiu   $a3, $sp, 0x0074
	jal     bg_check_roof
	sub.s   $f14, $f4, $f6
	li      $at, 0xC1200000
	mtc1    $at, $f8
	nop
	add.s   $f10, $f0, $f8
	swc1    $f10, 0x0050($sp)
	lw      $t5, 0x0074($sp)
	beqz    $t5, 142$
	nop
	addiu   $t7, $sp, 0x005C
	lwc1    $f18, 0x0004($t7)
	lwc1    $f16, 0x0050($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    142$
	nop
	b       192$
	nop
142$:
	addiu   $t6, $sp, 0x005C
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f4, 0x0004($t6)
	lwc1    $f12, 0x0000($t6)
	lw      $a2, 0x0008($t6)
	addiu   $a3, $sp, 0x0074
	jal     bg_check_ground
	add.s   $f14, $f4, $f6
	li      $at, 0x41200000
	mtc1    $at, $f8
	nop
	add.s   $f10, $f0, $f8
	swc1    $f10, 0x004C($sp)
	lw      $t8, 0x0074($sp)
	beqz    $t8, 168$
	nop
	addiu   $t9, $sp, 0x005C
	lwc1    $f18, 0x0004($t9)
	lwc1    $f16, 0x004C($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    168$
	nop
	b       192$
	nop
168$:
	li      $at, 0x42480000
	mtc1    $at, $f4
	addiu   $t0, $sp, 0x005C
	move    $a0, $t0
	addiu   $a1, $t0, 0x0004
	addiu   $a2, $t0, 0x0008
	li      $a3, 0x41A00000
	jal     bg_hit_wall
	swc1    $f4, 0x0010($sp)
	li      $at, 0x0001
	bne     $v0, $at, 182$
	nop
	b       192$
	nop
182$:
	li      $at, 0x41A00000
	mtc1    $at, $f8
	lwc1    $f6, 0x0044($sp)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f16, %lo(camera_8032DF4C)($at)
	add.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	swc1    $f10, 0x0044($sp)
	bc1t    107$
	nop
192$:
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f4, %lo(camera_8032DF4C)($at)
	lwc1    $f18, 0x0044($sp)
	c.le.s  $f4, $f18
	nop
	bc1f    200$
	nop
	sw      $0, 0x0058($sp)
200$:
	lw      $t1, 0x0058($sp)
	li      $at, 0x0001
	bne     $t1, $at, 217$
	nop
	lh      $t2, 0x003E($sp)
	subu    $t3, $0, $t2
	sh      $t3, 0x003E($sp)
	lh      $t4, 0x003E($sp)
	bgez    $t4, 214$
	nop
	lh      $t5, 0x003E($sp)
	addiu   $t7, $t5, -0x1000
	b       217$
	sh      $t7, 0x003E($sp)
214$:
	lh      $t6, 0x003E($sp)
	addiu   $t8, $t6, 0x1000
	sh      $t8, 0x003E($sp)
217$:
	lw      $t9, 0x0054($sp)
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x0010
	beqz    $at, 226$
	sw      $t0, 0x0054($sp)
	lw      $t1, 0x0058($sp)
	li      $at, 0x0001
	beq     $t1, $at, 80$
	nop
226$:
	lw      $t2, 0x0058($sp)
	bnez    $t2, 258$
	nop
	lh      $t3, 0x0040($sp)
	lh      $t4, 0x003E($sp)
	la.u    $a1, _camera_bss_238-0x238+0x2E8
	lui     $a2, %hi(camera_8032DF4C)
	addu    $t5, $t3, $t4
	sw      $t5, 0x0010($sp)
	lw      $a2, %lo(camera_8032DF4C)($a2)
	la.l    $a1, _camera_bss_238-0x238+0x2E8
	addiu   $a0, $sp, 0x0068
	jal     polar_to_cartesian
	move    $a3, $0
	la.u    $a0, _camera_bss_238-0x238+0x2E8
	la.l    $a0, _camera_bss_238-0x238+0x2E8
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0068
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_238-0x238+0x2E8
	la.l    $a0, _camera_bss_238-0x238+0x2E8
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_238-0x238+0x2E8
	la.l    $a0, _camera_bss_238-0x238+0x2E8
	addiu   $a0, $a0, 0x000C
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
258$:
	lui     $t7, %hi(camera_8033C848)
	lh      $t7, %lo(camera_8033C848)($t7)
	lui     $at, %hi(camera_8033C848)
	ori     $t6, $t7, 0x0200
	sh      $t6, %lo(camera_8033C848)($at)
	lw      $a0, 0x0078($sp)
	jal     camera_8028603C
	li      $a1, 0x000F
	b       284$
	nop
268$:
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	li      $at, -0x2201
	and     $t9, $t8, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t9, %lo(camera_8033C848)($at)
	lh      $t0, 0x0040($sp)
	lh      $t1, 0x003E($sp)
	lw      $a1, 0x0078($sp)
	addiu   $a0, $sp, 0x0068
	addu    $t2, $t0, $t1
	sw      $t2, 0x0010($sp)
	lw      $a2, 0x0048($sp)
	lh      $a3, 0x0042($sp)
	jal     polar_to_cartesian
	addiu   $a1, $a1, 0x0010
284$:
	jal     camera_8028B884
	nop
286$:
	b       290$
	move    $v0, $0
	b       290$
	nop
290$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

.globl camera_80285808
camera_80285808:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x250)
	lh      $t6, %lo(_camera_bss_238-0x238+0x250)($t6)
	sh      $t6, 0x002E($sp)
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lui     $t9, %hi(_camera_bss_238-0x238+0x252)
	lh      $t9, %lo(_camera_bss_238-0x238+0x252)($t9)
	lh      $t8, 0x0012($t7)
	li      $at, 0x8000
	addu    $t0, $t8, $t9
	addu    $t1, $t0, $at
	sh      $t1, 0x002C($sp)
	li      $at, 0x437A0000
	mtc1    $at, $f4
	lh      $t2, 0x002E($sp)
	lh      $t3, 0x002C($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	li      $a2, 0x42FA0000
	li      $a3, 0x42FA0000
	sw      $t2, 0x0014($sp)
	swc1    $f4, 0x0010($sp)
	jal     camera_8027FE20
	sw      $t3, 0x0018($sp)
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	b       35$
	lh      $v0, 0x0012($t4)
	b       35$
	nop
35$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_802858A4:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x250)
	lh      $t6, %lo(_camera_bss_238-0x238+0x250)($t6)
	sh      $t6, 0x0006($sp)
	lui     $t7, %hi(_camera_bss_238-0x238+0x252)
	lh      $t7, %lo(_camera_bss_238-0x238+0x252)($t7)
	sh      $t7, 0x0004($sp)
	lui     $t8, %hi(cont1)
	lw      $t8, %lo(cont1)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	lui     $t3, %hi(_camera_bss_238-0x238+0x250)
	lh      $t3, %lo(_camera_bss_238-0x238+0x250)($t3)
	mul.s   $f8, $f4, $f6
	lui     $at, %hi(_camera_bss_238-0x238+0x250)
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sll     $t1, $t0, 16
	sra     $t2, $t1, 16
	addu    $t4, $t3, $t2
	sh      $t4, %lo(_camera_bss_238-0x238+0x250)($at)
	lui     $t5, %hi(cont1)
	lw      $t5, %lo(cont1)($t5)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($t5)
	lui     $t0, %hi(_camera_bss_238-0x238+0x252)
	lh      $t0, %lo(_camera_bss_238-0x238+0x252)($t0)
	mul.s   $f4, $f16, $f18
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	trunc.w.s $f6, $f4
	mfc1    $t7, $f6
	nop
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	subu    $t1, $t0, $t9
	sh      $t1, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $t3, %hi(_camera_bss_238-0x238+0x250)
	lh      $t3, %lo(_camera_bss_238-0x238+0x250)($t3)
	slti    $at, $t3, 0x38E4
	bnez    $at, 48$
	nop
	li      $t2, 0x38E3
	lui     $at, %hi(_camera_bss_238-0x238+0x250)
	sh      $t2, %lo(_camera_bss_238-0x238+0x250)($at)
48$:
	lui     $t4, %hi(_camera_bss_238-0x238+0x250)
	lh      $t4, %lo(_camera_bss_238-0x238+0x250)($t4)
	slti    $at, $t4, -0x2000
	beqz    $at, 56$
	nop
	li      $t5, -0x2000
	lui     $at, %hi(_camera_bss_238-0x238+0x250)
	sh      $t5, %lo(_camera_bss_238-0x238+0x250)($at)
56$:
	lui     $t6, %hi(_camera_bss_238-0x238+0x252)
	lh      $t6, %lo(_camera_bss_238-0x238+0x252)($t6)
	slti    $at, $t6, 0x5556
	bnez    $at, 64$
	nop
	li      $t7, 0x5555
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $t7, %lo(_camera_bss_238-0x238+0x252)($at)
64$:
	lui     $t8, %hi(_camera_bss_238-0x238+0x252)
	lh      $t8, %lo(_camera_bss_238-0x238+0x252)($t8)
	slti    $at, $t8, -0x5555
	beqz    $at, 72$
	nop
	li      $t0, -0x5555
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $t0, %lo(_camera_bss_238-0x238+0x252)($at)
72$:
	lui     $t9, %hi(_camera_bss_238-0x238+0x250)
	lh      $t9, %lo(_camera_bss_238-0x238+0x250)($t9)
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	bgez    $t1, 82$
	sra     $t3, $t1, 2
	addiu   $at, $t1, 0x0003
	sra     $t3, $at, 2
82$:
	sh      $t3, 0x0016($t2)
	lui     $t4, %hi(_camera_bss_238-0x238+0x252)
	lh      $t4, %lo(_camera_bss_238-0x238+0x252)($t4)
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	bgez    $t5, 93$
	sra     $t6, $t5, 2
	addiu   $at, $t5, 0x0003
	sra     $t6, $at, 2
93$:
	sh      $t6, 0x0018($t7)
	b       96$
	nop
96$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80285A2C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	la.u    $t6, _camera_bss_238-0x238+0x268
	la.l    $t6, _camera_bss_238-0x238+0x268
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x002C($sp)
	la.u    $t8, _camera_bss_238-0x238+0x268
	la.l    $t8, _camera_bss_238-0x238+0x268
	addiu   $t9, $t8, 0x0028
	sw      $t9, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x002C($sp)
	lwc1    $f4, 0x0018($t0)
	lwc1    $f6, 0x0018($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lw      $t4, 0x002C($sp)
	lh      $t3, 0x001C($t2)
	lh      $t5, 0x001C($t4)
	subu    $t6, $t3, $t5
	sh      $t6, 0x0022($sp)
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	lh      $t8, 0x001E($t7)
	lh      $t0, 0x001E($t9)
	subu    $t1, $t8, $t0
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss_238-0x238+0x26E)
	lh      $t2, %lo(_camera_bss_238-0x238+0x26E)($t2)
	lui     $t4, %hi(_camera_bss_238-0x238+0x26C)
	lh      $t4, %lo(_camera_bss_238-0x238+0x26C)($t4)
	mtc1    $t2, $f16
	lwc1    $f10, 0x0024($sp)
	mtc1    $t4, $f6
	cvt.s.w $f18, $f16
	lw      $t3, 0x002C($sp)
	cvt.s.w $f8, $f6
	mul.s   $f4, $f10, $f18
	lwc1    $f10, 0x0018($t3)
	div.s   $f16, $f4, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x26E)
	lh      $t6, %lo(_camera_bss_238-0x238+0x26E)($t6)
	lh      $t5, 0x0022($sp)
	lui     $t9, %hi(_camera_bss_238-0x238+0x26C)
	lh      $t9, %lo(_camera_bss_238-0x238+0x26C)($t9)
	multu   $t5, $t6
	lw      $t0, 0x002C($sp)
	lh      $t1, 0x001C($t0)
	mflo    $t7
	nop
	nop
	div     $0, $t7, $t9
	mflo    $t8
	addu    $t2, $t1, $t8
	sh      $t2, 0x0022($sp)
	bnez    $t9, 62$
	nop
	break   7
62$:
	li      $at, -0x0001
	bne     $t9, $at, 68$
	li      $at, 0x80000000
	bne     $t7, $at, 68$
	nop
	break   6
68$:
	lui     $t3, %hi(_camera_bss_238-0x238+0x26E)
	lh      $t3, %lo(_camera_bss_238-0x238+0x26E)($t3)
	lh      $t4, 0x0020($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x26C)
	lh      $t6, %lo(_camera_bss_238-0x238+0x26C)($t6)
	multu   $t4, $t3
	lw      $t9, 0x002C($sp)
	lh      $t0, 0x001E($t9)
	mflo    $t5
	nop
	nop
	div     $0, $t5, $t6
	mflo    $t7
	addu    $t1, $t0, $t7
	sh      $t1, 0x0020($sp)
	bnez    $t6, 86$
	nop
	break   7
86$:
	li      $at, -0x0001
	bne     $t6, $at, 92$
	li      $at, 0x80000000
	bne     $t5, $at, 92$
	nop
	break   6
92$:
	lui     $t4, %hi(_camera_bss_238-0x238+0x26E)
	lh      $t4, %lo(_camera_bss_238-0x238+0x26E)($t4)
	lw      $t8, 0x0028($sp)
	lw      $t2, 0x002C($sp)
	mtc1    $t4, $f10
	lwc1    $f6, 0x0000($t8)
	lwc1    $f4, 0x0000($t2)
	cvt.s.w $f16, $f10
	lui     $t3, %hi(_camera_bss_238-0x238+0x26C)
	lh      $t3, %lo(_camera_bss_238-0x238+0x26C)($t3)
	lw      $t5, 0x0030($sp)
	sub.s   $f8, $f6, $f4
	mtc1    $t3, $f6
	mul.s   $f18, $f8, $f16
	cvt.s.w $f10, $f6
	div.s   $f8, $f18, $f10
	add.s   $f16, $f8, $f4
	swc1    $f16, 0x0004($t5)
	lui     $t0, %hi(_camera_bss_238-0x238+0x26E)
	lh      $t0, %lo(_camera_bss_238-0x238+0x26E)($t0)
	lw      $t6, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	mtc1    $t0, $f8
	lwc1    $f6, 0x0004($t6)
	lwc1    $f18, 0x0004($t9)
	cvt.s.w $f4, $f8
	lui     $t7, %hi(_camera_bss_238-0x238+0x26C)
	lh      $t7, %lo(_camera_bss_238-0x238+0x26C)($t7)
	lw      $t1, 0x0030($sp)
	sub.s   $f10, $f6, $f18
	mtc1    $t7, $f6
	mul.s   $f16, $f10, $f4
	cvt.s.w $f8, $f6
	div.s   $f10, $f16, $f8
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0008($t1)
	lui     $t4, %hi(_camera_bss_238-0x238+0x26E)
	lh      $t4, %lo(_camera_bss_238-0x238+0x26E)($t4)
	lw      $t8, 0x0028($sp)
	lw      $t2, 0x002C($sp)
	mtc1    $t4, $f10
	lwc1    $f6, 0x0008($t8)
	lwc1    $f16, 0x0008($t2)
	cvt.s.w $f18, $f10
	lui     $t3, %hi(_camera_bss_238-0x238+0x26C)
	lh      $t3, %lo(_camera_bss_238-0x238+0x26C)($t3)
	lw      $t5, 0x0030($sp)
	sub.s   $f8, $f6, $f16
	mtc1    $t3, $f6
	mul.s   $f4, $f8, $f18
	cvt.s.w $f10, $f6
	div.s   $f8, $f4, $f10
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x000C($t5)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0030($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_add
	addiu   $a0, $a0, 0x0004
	lw      $t6, 0x0030($sp)
	lh      $t9, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $t6, 0x0004
	addiu   $a1, $t6, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	sh      $0, 0x0016($t0)
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	sh      $0, 0x0018($t7)
	lui     $t1, %hi(_camera_bss_238-0x238+0x26E)
	lh      $t1, %lo(_camera_bss_238-0x238+0x26E)($t1)
	lui     $at, %hi(_camera_bss_238-0x238+0x26E)
	lui     $t3, %hi(_camera_bss_238-0x238+0x26C)
	addiu   $t8, $t1, 0x0001
	sh      $t8, %lo(_camera_bss_238-0x238+0x26E)($at)
	lh      $t3, %lo(_camera_bss_238-0x238+0x26C)($t3)
	sll     $t2, $t8, 16
	sra     $t4, $t2, 16
	bne     $t4, $t3, 183$
	nop
	lui     $t5, %hi(camera_8033C848)
	lh      $t5, %lo(camera_8033C848)($t5)
	li      $at, -0x0101
	and     $t6, $t5, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t6, %lo(camera_8033C848)($at)
183$:
	b       185$
	nop
185$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80285D20:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t6, %lo(_camera_bss_48-0x48+0x16C)($t6)
	andi    $t7, $t6, 0x0001
	bnez    $t7, 15$
	nop
	jal     camera_8028B850
	nop
	lui     $t8, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t8, %lo(_camera_bss_48-0x48+0x16C)($t8)
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	ori     $t9, $t8, 0x0001
	sh      $t9, %lo(_camera_bss_48-0x48+0x16C)($at)
15$:
	lui     $t0, %hi(camera_8033C848)
	lh      $t0, %lo(camera_8033C848)($t0)
	andi    $t1, $t0, 0x0100
	beqz    $t1, 29$
	nop
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	lui     $at, %hi(camera_8033C848)
	ori     $t3, $t2, 0x2000
	sh      $t3, %lo(camera_8033C848)($at)
	jal     camera_80285A2C
	lw      $a0, 0x0028($sp)
	b       106$
	li      $v0, 0x0001
29$:
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	andi    $t5, $t4, 0x0200
	bnez    $t5, 43$
	nop
	jal     camera_802858A4
	lw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	jal     camera_80285808
	addiu   $a2, $t6, 0x0010
	b       91$
	nop
43$:
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	andi    $t8, $t7, 0x0800
	beqz    $t8, 85$
	nop
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss_238-0x238+0x2E8
	la.l    $a1, _camera_bss_238-0x238+0x2E8
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0028($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_add
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss_238-0x238+0x2E8
	la.l    $a1, _camera_bss_238-0x238+0x2E8
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0028($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_add
	addiu   $a0, $a0, 0x0004
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	move    $a1, $0
	li      $a2, 0x0400
	jal     camera_8028976C
	addiu   $a0, $a0, 0x0016
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	move    $a1, $0
	li      $a2, 0x0400
	jal     camera_8028976C
	addiu   $a0, $a0, 0x0018
	b       91$
	nop
85$:
	lui     $t9, %hi(camera_8033C848)
	lh      $t9, %lo(camera_8033C848)($t9)
	li      $at, -0x2201
	and     $t0, $t9, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t0, %lo(camera_8033C848)($at)
91$:
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss_238-0x238+0x25C)
	swc1    $f4, %lo(_camera_bss_238-0x238+0x25C)($at)
	lui     $t1, %hi(cont1)
	lw      $t1, %lo(cont1)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0xC007
	beqz    $t3, 102$
	nop
	jal     camera_80285370
	lw      $a0, 0x0028($sp)
102$:
	b       106$
	move    $v0, $0
	b       106$
	nop
106$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_80285ED8
camera_80285ED8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_238-0x238+0x260)
	lwc1    $f6, %lo(_camera_bss_238-0x238+0x260)($at)
	li      $at, 0x44480000
	mtc1    $at, $f10
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	swc1    $f10, 0x0010($sp)
	add.s   $f8, $f4, $f6
	lh      $t7, 0x0010($t6)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x002C($sp)
	sw      $t7, 0x0014($sp)
	lh      $t8, 0x0012($t6)
	mfc1    $a2, $f8
	li      $a3, 0x42FA0000
	jal     camera_8027FE20
	sw      $t8, 0x0018($sp)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	b       30$
	lh      $v0, 0x0012($t9)
	b       30$
	nop
30$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80285F60:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x240)
	sh      $0, %lo(_camera_bss_238-0x238+0x240)($at)
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	li      $at, -0x0101
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t7, %lo(camera_8033C848)($at)
	lw      $t8, 0x0030($sp)
	move    $a0, $t8
	addiu   $a1, $t8, 0x0004
	jal     camera_80285ED8
	addiu   $a2, $t8, 0x0010
	lw      $t9, 0x0030($sp)
	sh      $v0, 0x003A($t9)
	lui     $t0, %hi(cont1)
	lw      $t0, %lo(cont1)($t0)
	lhu     $t1, 0x0012($t0)
	andi    $t2, $t1, 0x8000
	beqz    $t2, 41$
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	jal     camera_80286188
	li      $a2, 0x0001
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss_238-0x238+0x25C)
	swc1    $f4, %lo(_camera_bss_238-0x238+0x25C)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss_238-0x238+0x260)
	swc1    $f6, %lo(_camera_bss_238-0x238+0x260)($at)
	lui     $t3, %hi(camera_8033C84A)
	lh      $t3, %lo(camera_8033C84A)($t3)
	li      $at, -0x0003
	and     $t4, $t3, $at
	lui     $at, %hi(camera_8033C84A)
	b       49$
	sh      $t4, %lo(camera_8033C84A)($at)
41$:
	lui     $at, %hi(_camera_bss_238-0x238+0x260)
	mtc1    $0, $f14
	lwc1    $f12, %lo(_camera_bss_238-0x238+0x260)($at)
	li      $a2, 0x42C80000
	jal     convergef
	li      $a3, 0x42C80000
	lui     $at, %hi(_camera_bss_238-0x238+0x260)
	swc1    $f0, %lo(_camera_bss_238-0x238+0x260)($at)
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028603C:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	andi    $t7, $t6, 0x0004
	bnez    $t7, 15$
	nop
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	lui     $at, %hi(camera_8033C84A)
	ori     $t9, $t8, 0x0C00
	sh      $t9, %lo(camera_8033C84A)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xB0)
	sw      $a1, %lo(_camera_bss_48-0x48+0xB0)($at)
15$:
	b       17$
	nop
17$:
	jr      $ra
	nop

camera_80286088:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lh      $t8, 0x001E($sp)
	lbu     $t7, 0x0000($t6)
	beq     $t7, $t8, 58$
	nop
	lh      $t9, 0x001E($sp)
	li      $at, -0x0001
	beq     $t9, $at, 17$
	nop
	lui     $at, %hi(_camera_bss_238-0x238+0x268)
	b       21$
	sh      $t9, %lo(_camera_bss_238-0x238+0x268)($at)
17$:
	lui     $t0, %hi(_camera_bss_238-0x238+0x26A)
	lh      $t0, %lo(_camera_bss_238-0x238+0x26A)($t0)
	lui     $at, %hi(_camera_bss_238-0x238+0x268)
	sh      $t0, %lo(_camera_bss_238-0x238+0x268)($at)
21$:
	lw      $t1, 0x0018($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x26A)
	lbu     $t2, 0x0000($t1)
	sh      $t2, %lo(_camera_bss_238-0x238+0x26A)($at)
	lui     $t3, %hi(_camera_bss_238-0x238+0x268)
	lh      $t3, %lo(_camera_bss_238-0x238+0x268)($t3)
	lw      $t4, 0x0018($sp)
	sb      $t3, 0x0000($t4)
	lui     $t5, %hi(camera_8033C848)
	lh      $t5, %lo(camera_8033C848)($t5)
	lui     $at, %hi(camera_8033C848)
	andi    $t6, $t5, 0xFF02
	sh      $t6, %lo(camera_8033C848)($at)
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	andi    $t8, $t7, 0x0004
	bnez    $t8, 58$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	lh      $a1, 0x0022($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x250)
	sh      $0, %lo(_camera_bss_238-0x238+0x250)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $0, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	sh      $0, %lo(_camera_bss_238-0x238+0x23E)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x240)
	sh      $0, %lo(_camera_bss_238-0x238+0x240)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x23C)
	sh      $0, %lo(_camera_bss_238-0x238+0x23C)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss_238-0x238+0x25C)
	swc1    $f4, %lo(_camera_bss_238-0x238+0x25C)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss_238-0x238+0x260)
	swc1    $f6, %lo(_camera_bss_238-0x238+0x260)($at)
58$:
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80286188
camera_80286188:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	la.u    $t6, _camera_bss_238-0x238+0x268
	la.l    $t6, _camera_bss_238-0x238+0x268
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0024($sp)
	la.u    $t8, _camera_bss_238-0x238+0x268
	la.l    $t8, _camera_bss_238-0x238+0x268
	addiu   $t9, $t8, 0x0028
	sw      $t9, 0x0020($sp)
	lh      $t0, 0x002E($sp)
	li      $at, 0x0008
	bne     $t0, $at, 24$
	nop
	lui     $t1, %hi(camera_stagescene)
	lw      $t1, %lo(camera_stagescene)($t1)
	li      $at, 0x0241
	bne     $t1, $at, 24$
	nop
	b       160$
	nop
24$:
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	lui     $at, %hi(camera_8033C848)
	andi    $t3, $t2, 0xFF02
	sh      $t3, %lo(camera_8033C848)($at)
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	lui     $at, %hi(camera_8033C848)
	ori     $t5, $t4, 0x0100
	sh      $t5, %lo(camera_8033C848)($at)
	lh      $t6, 0x002E($sp)
	bnez    $t6, 39$
	nop
	li      $t7, 0x0004
	sh      $t7, 0x002E($sp)
39$:
	lui     $at, %hi(_camera_bss_238-0x238+0x250)
	sh      $0, %lo(_camera_bss_238-0x238+0x250)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $0, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	sh      $0, %lo(_camera_bss_238-0x238+0x23E)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x240)
	sh      $0, %lo(_camera_bss_238-0x238+0x240)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x23C)
	sh      $0, %lo(_camera_bss_238-0x238+0x23C)($at)
	lh      $t8, 0x002E($sp)
	li      $at, -0x0001
	beq     $t8, $at, 56$
	nop
	lui     $at, %hi(_camera_bss_238-0x238+0x268)
	b       60$
	sh      $t8, %lo(_camera_bss_238-0x238+0x268)($at)
56$:
	lui     $t9, %hi(_camera_bss_238-0x238+0x26A)
	lh      $t9, %lo(_camera_bss_238-0x238+0x26A)($t9)
	lui     $at, %hi(_camera_bss_238-0x238+0x268)
	sh      $t9, %lo(_camera_bss_238-0x238+0x268)($at)
60$:
	lw      $t0, 0x0028($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x26A)
	lbu     $t1, 0x0000($t0)
	sh      $t1, %lo(_camera_bss_238-0x238+0x26A)($at)
	lh      $t2, 0x0032($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x26C)
	sh      $t2, %lo(_camera_bss_238-0x238+0x26C)($at)
	li      $t3, 0x0001
	lui     $at, %hi(_camera_bss_238-0x238+0x26E)
	sh      $t3, %lo(_camera_bss_238-0x238+0x26E)($at)
	lui     $t4, %hi(_camera_bss_238-0x238+0x268)
	lh      $t4, %lo(_camera_bss_238-0x238+0x268)($t4)
	lw      $t5, 0x0028($sp)
	sb      $t4, 0x0000($t5)
	lw      $t6, 0x0028($sp)
	lui     $at, %hi(camdata+0x3C)
	lbu     $t7, 0x0000($t6)
	sb      $t7, %lo(camdata+0x3C)($at)
	lw      $a1, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80287DE8
	addiu   $a0, $a0, 0x000C
	lui     $t9, %hi(_camera_bss_238-0x238+0x268)
	lh      $t9, %lo(_camera_bss_238-0x238+0x268)($t9)
	lw      $t8, 0x0020($sp)
	lw      $a0, 0x0028($sp)
	sll     $t0, $t9, 2
	lui     $t9, %hi(camera_8032DFA8)
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camera_8032DFA8)($t9)
	move    $a1, $t8
	addiu   $a2, $t8, 0x000C
	jalr    $t9
	nop
	lui     $at, %hi(_camera_bss_238-0x238+0x23A)
	sh      $v0, %lo(_camera_bss_238-0x238+0x23A)($at)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80287DE8
	addiu   $a0, $a0, 0x000C
	la.u    $a1, camdata
	la.l    $a1, camdata
	jal     vecf_cpy
	lw      $a0, 0x0024($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0024($sp)
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lw      $a0, 0x0024($sp)
	la.u    $a1, camdata
	la.l    $a1, camdata
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x000C
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0024($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80287DE8
	addiu   $a0, $a0, 0x000C
	lw      $t1, 0x0024($sp)
	addiu   $t2, $t1, 0x001E
	sw      $t2, 0x0010($sp)
	move    $a0, $t1
	addiu   $a1, $t1, 0x000C
	addiu   $a2, $t1, 0x0018
	jal     cartesian_to_polar
	addiu   $a3, $t1, 0x001C
	lw      $t3, 0x0020($sp)
	addiu   $t4, $t3, 0x001E
	sw      $t4, 0x0010($sp)
	move    $a0, $t3
	addiu   $a1, $t3, 0x000C
	addiu   $a2, $t3, 0x0018
	jal     cartesian_to_polar
	addiu   $a3, $t3, 0x001C
160$:
	b       162$
	nop
162$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80286420:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0060($sp)
	sw      $0, 0x005C($sp)
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	andi    $t7, $t6, 0x8000
	beqz    $t7, 11$
	nop
	b       289$
	nop
11$:
	lw      $t8, 0x0060($sp)
	lbu     $t9, 0x0030($t8)
	beqz    $t9, 15$
	nop
15$:
	lw      $t0, 0x0060($sp)
	la.u    $t1, _camera_bss_48-0x48+0x48
	la.u    $t2, _camera_bss_48-0x48+0x58
	la.l    $t2, _camera_bss_48-0x48+0x58
	la.l    $t1, _camera_bss_48-0x48+0x48
	sw      $t1, 0x0010($sp)
	sw      $t2, 0x0014($sp)
	lh      $t3, 0x003A($t0)
	addiu   $a0, $sp, 0x0050
	addiu   $a1, $sp, 0x0044
	addiu   $a2, $t0, 0x0010
	addiu   $a3, $t0, 0x0004
	jal     camera_8028CE24
	sw      $t3, 0x0018($sp)
	sh      $v0, 0x0032($sp)
	lw      $a0, 0x0060($sp)
	lui     $a2, %hi(camera_8032DF34)
	lh      $a2, %lo(camera_8032DF34)($a2)
	lh      $a1, 0x0032($sp)
	jal     camera_8028993C
	addiu   $a0, $a0, 0x0002
	lui     $t4, %hi(camera_8033C84A)
	lh      $t4, %lo(camera_8033C84A)($t4)
	li      $at, -0x4001
	and     $t5, $t4, $at
	lui     $at, %hi(camera_8033C84A)
	b       51$
	sh      $t5, %lo(camera_8033C84A)($at)
	lw      $a1, 0x0060($sp)
	addiu   $a0, $sp, 0x0050
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0060($sp)
	addiu   $a0, $sp, 0x0044
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
51$:
	la.u    $a0, _camera_bss_48-0x48+0x48
	la.l    $a0, _camera_bss_48-0x48+0x48
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0050
	la.u    $a0, _camera_bss_48-0x48+0x58
	la.l    $a0, _camera_bss_48-0x48+0x58
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0044
	lw      $t6, 0x0060($sp)
	lui     $at, %hi(camdata+0x7C)
	lh      $t7, 0x0002($t6)
	sh      $t7, %lo(camdata+0x7C)($at)
	lw      $t8, 0x0060($sp)
	lui     $at, %hi(camdata+0x7E)
	lh      $t9, 0x003A($t8)
	sh      $t9, %lo(camdata+0x7E)($at)
	lw      $a1, 0x0060($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0024
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0060($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0018
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $at, %hi(camdata+0xAC)
	lwc1    $f4, %lo(camdata+0xAC)($at)
	la.u    $a0, camdata
	la.l    $a0, camdata
	lui     $a3, %hi(camdata+0xB0)
	mfc1    $a2, $f4
	lw      $a3, %lo(camdata+0xB0)($a3)
	addiu   $a0, $a0, 0x000C
	addiu   $a1, $sp, 0x0050
	jal     camera_80289684
	swc1    $f4, 0x0010($sp)
	lui     $at, %hi(camdata+0xA4)
	lwc1    $f6, %lo(camdata+0xA4)($at)
	la.u    $a0, camdata
	lui     $a3, %hi(camdata+0xA8)
	mfc1    $a2, $f6
	lw      $a3, %lo(camdata+0xA8)($a3)
	la.l    $a0, camdata
	addiu   $a1, $sp, 0x0044
	jal     camera_80289684
	swc1    $f6, 0x0010($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	li.u    $a1, 0x3F4CCCCD
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x3F4CCCCD
	jal     camera_8028935C
	addiu   $a0, $a0, 0x00A4
	la.u    $a0, camdata
	la.l    $a0, camdata
	li.u    $a1, 0x3E99999A
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x3E99999A
	jal     camera_8028935C
	addiu   $a0, $a0, 0x00A8
	la.u    $a0, camdata
	la.l    $a0, camdata
	li.u    $a1, 0x3E99999A
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x3E99999A
	jal     camera_8028935C
	addiu   $a0, $a0, 0x00AC
	la.u    $a0, camdata
	la.l    $a0, camdata
	li.u    $a1, 0x3E99999A
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x3E99999A
	jal     camera_8028935C
	addiu   $a0, $a0, 0x00B0
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, 144$
	nop
	lui     $t0, %hi(camera_8033C84A)
	lh      $t0, %lo(camera_8033C84A)($t0)
	li      $at, -0x0003
	and     $t3, $t0, $at
	lui     $at, %hi(camera_8033C84A)
	b       149$
	sh      $t3, %lo(camera_8033C84A)($at)
144$:
	lui     $t4, %hi(camera_8033C84A)
	lh      $t4, %lo(camera_8033C84A)($t4)
	lui     $at, %hi(camera_8033C84A)
	ori     $t5, $t4, 0x0001
	sh      $t5, %lo(camera_8033C84A)($at)
149$:
	la.u    $t6, camdata
	la.l    $t6, camdata
	addiu   $a0, $t6, 0x008C
	jal     vecf_cpy
	addiu   $a1, $t6, 0x000C
	la.u    $t7, camdata
	la.l    $t7, camdata
	addiu   $a0, $t7, 0x0080
	jal     vecf_cpy
	move    $a1, $t7
	lw      $t8, 0x0060($sp)
	lbu     $t9, 0x0030($t8)
	beqz    $t9, 175$
	nop
	la.u    $a0, camdata
	la.l    $a0, camdata
	la.u    $a1, _camera_bss_48-0x48+0x68
	la.l    $a1, _camera_bss_48-0x48+0x68
	jal     vecf_add
	addiu   $a0, $a0, 0x0080
	la.u    $a0, _camera_bss_48-0x48+0x68
	la.l    $a0, _camera_bss_48-0x48+0x68
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
175$:
	la.u    $t1, camdata
	la.l    $t1, camdata
	addiu   $t2, $t1, 0x004E
	sw      $t2, 0x0010($sp)
	addiu   $a0, $t1, 0x008C
	addiu   $a1, $t1, 0x0080
	addiu   $a2, $t1, 0x0048
	jal     cartesian_to_polar
	addiu   $a3, $t1, 0x004C
	lui     $at, %hi(camdata+0x7A)
	sh      $0, %lo(camdata+0x7A)($at)
	la.u    $t0, camdata
	la.l    $t0, camdata
	addiu   $a0, $t0, 0x008C
	jal     camera_8028B218
	addiu   $a1, $t0, 0x0080
	la.u    $t3, camdata
	la.l    $t3, camdata
	addiu   $a0, $t3, 0x008C
	jal     camera_8028B32C
	addiu   $a1, $t3, 0x0080
	la.u    $a0, camdata
	la.l    $a0, camdata
	jal     camera_8028B438
	addiu   $a0, $a0, 0x007A
	la.u    $t4, camdata
	la.l    $t4, camdata
	addiu   $a0, $t4, 0x008C
	jal     camera_802889B0
	addiu   $a1, $t4, 0x0080
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	lw      $t6, 0x0000($t5)
	bne     $t6, $at, 220$
	nop
	lui     $t7, %hi(camdata+0xB8)
	lw      $t7, %lo(camdata+0xB8)($t7)
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	beq     $t7, $at, 220$
	nop
	jal     camera_8027F590
	li      $a0, 0x0008
220$:
	lui     $t8, %hi(camdata+0x7A)
	lui     $t9, %hi(_camera_bss_48-0x48+0x158)
	lh      $t9, %lo(_camera_bss_48-0x48+0x158)($t9)
	lh      $t8, %lo(camdata+0x7A)($t8)
	lui     $at, %hi(camdata+0x7A)
	addu    $t1, $t8, $t9
	sh      $t1, %lo(camdata+0x7A)($at)
	lui     $t2, %hi(camdata+0x7A)
	lui     $t0, %hi(camdata+0xB4)
	lh      $t0, %lo(camdata+0xB4)($t0)
	lh      $t2, %lo(camdata+0x7A)($t2)
	lui     $at, %hi(camdata+0x7A)
	addu    $t3, $t2, $t0
	sh      $t3, %lo(camdata+0x7A)($at)
	lw      $t4, 0x0060($sp)
	li      $at, 0x0006
	lbu     $t5, 0x0000($t4)
	beq     $t5, $at, 282$
	nop
	lbu     $t6, 0x0030($t4)
	bnez    $t6, 282$
	nop
	li      $t7, 0x0001
	lui     $at, %hi(object_80361180)
	sh      $t7, %lo(object_80361180)($at)
	la.u    $t8, camdata
	la.l    $t8, camdata
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0090($t8)
	lwc1    $f12, 0x008C($t8)
	lw      $a2, 0x0094($t8)
	addiu   $a3, $sp, 0x005C
	jal     bg_check_ground
	add.s   $f14, $f8, $f10
	swc1    $f0, 0x0034($sp)
	lui     $at, %hi(camera_80337214)
	lwc1    $f18, %lo(camera_80337214)($at)
	lwc1    $f16, 0x0034($sp)
	c.eq.s  $f16, $f18
	nop
	bc1t    282$
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0034($sp)
	la.u    $t9, camdata
	la.l    $t9, camdata
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x0090($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    280$
	nop
	lwc1    $f16, 0x0034($sp)
	la.u    $t1, camdata
	la.l    $t1, camdata
	b       282$
	swc1    $f16, 0x0090($t1)
280$:
	lui     $at, %hi(object_80361180)
	sh      $0, %lo(object_80361180)($at)
282$:
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_48-0x48+0xA0
	la.l    $a0, _camera_bss_48-0x48+0xA0
	addiu   $a0, $a0, 0x0014
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
289$:
	la.u    $t2, camdata
	la.l    $t2, camdata
	addiu   $a0, $t2, 0x008C
	addiu   $a1, $t2, 0x0080
	li      $a2, 0x3E00
	jal     camera_80289214
	li      $a3, -0x3E00
	lw      $t0, 0x0060($sp)
	lui     $at, %hi(camdata+0x3C)
	lbu     $t3, 0x0000($t0)
	sb      $t3, %lo(camdata+0x3C)($at)
	lw      $t5, 0x0060($sp)
	lui     $at, %hi(camdata+0x3D)
	lbu     $t4, 0x0001($t5)
	sb      $t4, %lo(camdata+0x3D)($at)
	b       306$
	nop
306$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl camera_802868F8
camera_802868F8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lw      $t6, 0x0040($sp)
	lui     $at, %hi(camerap)
	sw      $t6, %lo(camerap)($at)
	jal     camera_80288E68
	lw      $a0, 0x0040($sp)
	lw      $t7, 0x0040($sp)
	lbu     $t8, 0x0030($t7)
	bnez    $t8, 38$
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, 36$
	nop
	lui     $t9, %hi(cont1)
	lw      $t9, %lo(cont1)($t9)
	lhu     $t0, 0x0012($t9)
	andi    $t1, $t0, 0x0010
	beqz    $t1, 36$
	nop
	jal     camera_80288718
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, 34$
	nop
	jal     camera_80288718
	li      $a0, 0x0001
	b       36$
	nop
34$:
	jal     camera_80288718
	li      $a0, 0x0002
36$:
	jal     camera_8028B954
	nop
38$:
	lui     $t2, %hi(camera_8033C84A)
	lh      $t2, %lo(camera_8033C84A)($t2)
	li      $at, -0x0005
	and     $t3, $t2, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t3, %lo(camera_8033C84A)($at)
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	andi    $t5, $t4, 0x0800
	beqz    $t5, 62$
	nop
	jal     camera_8028724C
	lw      $a0, 0x0040($sp)
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	li      $at, -0x0801
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t7, %lo(camera_8033C848)($at)
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	lui     $at, %hi(camera_8033C84A)
	ori     $t9, $t8, 0x0004
	sh      $t9, %lo(camera_8033C84A)($at)
62$:
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0xCC)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xE4)
	swc1    $f4, %lo(_camera_bss_48-0x48+0xE4)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xDC)
	lwc1    $f6, %lo(_camera_bss_48-0x48+0xDC)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xF0)
	swc1    $f6, %lo(_camera_bss_48-0x48+0xF0)($at)
	lui     $t0, %hi(_camera_bss_48-0x48+0xC8)
	lw      $t0, %lo(_camera_bss_48-0x48+0xC8)($t0)
	lui     $at, %hi(_camera_bss_48-0x48+0xE0)
	sw      $t0, %lo(_camera_bss_48-0x48+0xE0)($at)
	lui     $t1, %hi(_camera_bss_48-0x48+0xD4)
	lw      $t1, %lo(_camera_bss_48-0x48+0xD4)($t1)
	lui     $at, %hi(_camera_bss_48-0x48+0xEC)
	sw      $t1, %lo(_camera_bss_48-0x48+0xEC)($at)
	lui     $t2, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t2, %lo(_camera_bss_48-0x48+0xD0)($t2)
	lui     $at, %hi(_camera_bss_48-0x48+0xE8)
	sh      $t2, %lo(_camera_bss_48-0x48+0xE8)($at)
	lui     $t3, %hi(_camera_bss_48-0x48+0xD8)
	lh      $t3, %lo(_camera_bss_48-0x48+0xD8)($t3)
	lui     $at, %hi(_camera_bss_48-0x48+0xF4)
	sh      $t3, %lo(_camera_bss_48-0x48+0xF4)($at)
	la.u    $a0, _camera_bss_48-0x48+0xC8
	jal     camera_8028FC9C
	la.l    $a0, _camera_bss_48-0x48+0xC8
	li      $t4, 0x0001
	lui     $at, %hi(object_80361180)
	sh      $t4, %lo(object_80361180)($at)
	lw      $a0, 0x0040($sp)
	la.u    $a1, camdata
	la.l    $a1, camdata
	addiu   $a1, $a1, 0x0024
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0040($sp)
	la.u    $a1, camdata
	la.l    $a1, camdata
	addiu   $a1, $a1, 0x0018
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $t5, %hi(camdata+0x7C)
	lh      $t5, %lo(camdata+0x7C)($t5)
	lw      $t6, 0x0040($sp)
	sh      $t5, 0x0002($t6)
	lui     $t7, %hi(camdata+0x7E)
	lh      $t7, %lo(camdata+0x7E)($t7)
	lw      $t8, 0x0040($sp)
	sh      $t7, 0x003A($t8)
	lui     $t9, %hi(camdata+0x3C)
	lbu     $t9, %lo(camdata+0x3C)($t9)
	lw      $t0, 0x0040($sp)
	sb      $t9, 0x0000($t0)
	lui     $t1, %hi(camdata+0x3D)
	lbu     $t1, %lo(camdata+0x3D)($t1)
	lw      $t2, 0x0040($sp)
	sb      $t1, 0x0001($t2)
	jal     camera_8028EEB0
	lw      $a0, 0x0040($sp)
	jal     camera_80287DD4
	lw      $a0, 0x0040($sp)
	lui     $t3, %hi(cont1)
	lw      $t3, %lo(cont1)($t3)
	lui     $a0, %hi(_camera_bss_48-0x48+0x16E)
	lhu     $a0, %lo(_camera_bss_48-0x48+0x16E)($a0)
	lhu     $a1, 0x0012($t3)
	jal     camera_80288CE4
	lhu     $a2, 0x0010($t3)
	lui     $at, %hi(_camera_bss_48-0x48+0x16E)
	sh      $v0, %lo(_camera_bss_48-0x48+0x16E)($at)
	lw      $t4, 0x0040($sp)
	lbu     $t5, 0x0030($t4)
	beqz    $t5, 144$
	nop
	lui     $at, %hi(camera_8032DF34)
	sh      $0, %lo(camera_8032DF34)($at)
	jal     camera_802994E8
	lw      $a0, 0x0040($sp)
	lui     $at, %hi(camera_8032DF58)
	b       167$
	sb      $0, %lo(camera_8032DF58)($at)
144$:
	lui     $t6, %hi(camera_8032DF54)
	lbu     $t6, %lo(camera_8032DF54)($t6)
	beqz    $t6, 167$
	nop
	lui     $t7, %hi(camera_8032DF58)
	lbu     $t7, %lo(camera_8032DF58)($t7)
	slti    $at, $t7, 0x0008
	beqz    $at, 167$
	nop
	lui     $t8, %hi(camera_8032DF58)
	lbu     $t8, %lo(camera_8032DF58)($t8)
	lui     $at, %hi(camera_8032DF58)
	addiu   $t9, $t8, 0x0001
	sb      $t9, %lo(camera_8032DF58)($at)
	lui     $t0, %hi(camera_8032DF58)
	lbu     $t0, %lo(camera_8032DF58)($t0)
	slti    $at, $t0, 0x0008
	bnez    $at, 167$
	nop
	lui     $at, %hi(camera_8032DF54)
	sb      $0, %lo(camera_8032DF54)($at)
	lui     $at, %hi(camera_8032DF58)
	sb      $0, %lo(camera_8032DF58)($at)
167$:
	lw      $t1, 0x0040($sp)
	lbu     $t2, 0x0030($t1)
	bnez    $t2, L80286D64
	nop
	li      $t3, 0x0400
	lui     $at, %hi(camera_8032DF34)
	sh      $t3, %lo(camera_8032DF34)($at)
	lui     $t4, %hi(_camera_bss_48-0x48+0x164)
	lh      $t4, %lo(_camera_bss_48-0x48+0x164)($t4)
	andi    $t5, $t4, 0x0001
	beqz    $t5, 215$
	nop
	lw      $t6, 0x0040($sp)
	li      $at, 0x0003
	lbu     $s0, 0x0000($t6)
	beq     $s0, $at, 195$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 199$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 203$
	nop
	li      $at, 0x000A
	beq     $s0, $at, 207$
	nop
	b       211$
	nop
195$:
	jal     camera_802839E4
	lw      $a0, 0x0040($sp)
	b       213$
	nop
199$:
	jal     camera_80285D20
	lw      $a0, 0x0040($sp)
	b       213$
	nop
203$:
	jal     camera_80283A34
	lw      $a0, 0x0040($sp)
	b       213$
	nop
207$:
	jal     camera_80285F60
	lw      $a0, 0x0040($sp)
	b       213$
	nop
211$:
	jal     camera_80284D38
	lw      $a0, 0x0040($sp)
213$:
	b       L80286D64
	nop
215$:
	lw      $t7, 0x0040($sp)
	lbu     $t8, 0x0000($t7)
	addiu   $t9, $t8, -0x0001
	sltiu   $at, $t9, 0x0011
	beqz    $at, L80286D64
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(camera_80337218)
	addu    $at, $at, $t9
	lw      $t9, %lo(camera_80337218)($at)
	jr      $t9
	nop
.globl L80286C84
L80286C84:
	jal     camera_802839E4
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286C94
L80286C94:
	jal     camera_80285D20
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CA4
L80286CA4:
	jal     camera_80283A34
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CB4
L80286CB4:
	jal     camera_80285F60
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CC4
L80286CC4:
	jal     camera_80281588
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CD4
L80286CD4:
	jal     camera_8028146C
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CE4
L80286CE4:
	jal     camera_802817FC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CF4
L80286CF4:
	jal     camera_80284CFC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D04
L80286D04:
	jal     camera_80284CFC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D14
L80286D14:
	jal     camera_80282C3C
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D24
L80286D24:
	jal     camera_80282C7C
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D34
L80286D34:
	jal     camera_802851DC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D44
L80286D44:
	jal     camera_80282CE0
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D54
L80286D54:
	jal     camera_802850AC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D64
L80286D64:
	jal     camera_8028C2C8
	lw      $a0, 0x0040($sp)
	andi    $s1, $v0, 0x00FF
	move    $a1, $s1
	jal     camera_8028C13C
	lw      $a0, 0x0040($sp)
	jal     camera_80287DC0
	lw      $a0, 0x0040($sp)
	lui     $at, %hi(object_80361180)
	sh      $0, %lo(object_80361180)($at)
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x0006
	beq     $t0, $at, 385$
	nop
	lw      $t1, 0x0040($sp)
	lbu     $t2, 0x0030($t1)
	bnez    $t2, 313$
	nop
	lui     $t3, %hi(cont1)
	lw      $t3, %lo(cont1)($t3)
	lhu     $t4, 0x0010($t3)
	andi    $t5, $t4, 0x0010
	beqz    $t5, 313$
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0002
	beq     $v0, $at, 325$
	nop
313$:
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	andi    $t7, $t6, 0x0040
	bnez    $t7, 325$
	nop
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	li.u    $at, 0x010208B8
	li.l    $at, 0x010208B8
	lw      $t9, 0x0000($t8)
	bne     $t9, $at, 370$
	nop
325$:
	lw      $t0, 0x0040($sp)
	lbu     $t1, 0x0030($t0)
	bnez    $t1, 347$
	nop
	lui     $t2, %hi(cont1)
	lw      $t2, %lo(cont1)($t2)
	lhu     $t3, 0x0012($t2)
	andi    $t4, $t3, 0x0010
	beqz    $t4, 347$
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, 347$
	nop
	lui     $t5, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t5, %lo(_camera_bss_48-0x48+0x16C)($t5)
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	ori     $t6, $t5, 0x0020
	sh      $t6, %lo(_camera_bss_48-0x48+0x16C)($at)
	jal     camera_8028B920
	nop
347$:
	mtc1    $0, $f8
	lui     $at, %hi(camdata+0xAC)
	swc1    $f8, %lo(camdata+0xAC)($at)
	mtc1    $0, $f10
	lui     $at, %hi(camdata+0xB0)
	swc1    $f10, %lo(camdata+0xB0)($at)
	la.u    $t7, camdata
	la.l    $t7, camdata
	addiu   $a0, $t7, 0x0080
	jal     camera_8028AAD8
	addiu   $a1, $t7, 0x008C
	lw      $t8, 0x0040($sp)
	sh      $v0, 0x003A($t8)
	lw      $t9, 0x0040($sp)
	lh      $t0, 0x003A($t9)
	sh      $t0, 0x0002($t9)
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	li      $at, -0x0041
	and     $t2, $t1, $at
	lui     $at, %hi(camera_8033C848)
	b       383$
	sh      $t2, %lo(camera_8033C848)($at)
370$:
	lui     $t3, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t3, %lo(_camera_bss_48-0x48+0x16C)($t3)
	andi    $t4, $t3, 0x0020
	beqz    $t4, 383$
	nop
	jal     camera_8028B920
	nop
	lui     $t5, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t5, %lo(_camera_bss_48-0x48+0x16C)($t5)
	li      $at, -0x0021
	and     $t6, $t5, $at
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	sh      $t6, %lo(_camera_bss_48-0x48+0x16C)($at)
383$:
	b       398$
	nop
385$:
	lui     $t7, %hi(cont1)
	lw      $t7, %lo(cont1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t0, $t8, 0x0010
	beqz    $t0, 398$
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, 398$
	nop
	jal     camera_8028B8EC
	nop
398$:
	jal     camera_80286420
	lw      $a0, 0x0040($sp)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	lui     $at, %hi(camdata+0xB8)
	lw      $t1, 0x0000($t9)
	sw      $t1, %lo(camdata+0xB8)($at)
	b       407$
	nop
407$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl camera_80286F68
camera_80286F68:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $0, 0x0034($sp)
	la.u    $t6, _camera_bss_238-0x238+0x268
	la.l    $t6, _camera_bss_238-0x238+0x268
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0020($sp)
	la.u    $t8, _camera_bss_238-0x238+0x268
	la.l    $t8, _camera_bss_238-0x238+0x268
	addiu   $t9, $t8, 0x0028
	sw      $t9, 0x001C($sp)
	lw      $t0, 0x0038($sp)
	lui     $at, %hi(camerap)
	sw      $t0, %lo(camerap)($at)
	lui     $at, %hi(camera_8033C848)
	sh      $0, %lo(camera_8033C848)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x168)
	sh      $0, %lo(_camera_bss_48-0x48+0x168)($at)
	lui     $at, %hi(camera_8033C84A)
	sh      $0, %lo(camera_8033C84A)($at)
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $0, %lo(_camera_bss_330-0x330+0x53C)($at)
	lui     $at, %hi(_camera_bss_330-0x330+0x53A)
	sh      $0, %lo(_camera_bss_330-0x330+0x53A)($at)
	lui     $at, %hi(camera_8033CBCC)
	sw      $0, %lo(camera_8033CBCC)($at)
	lui     $at, %hi(camera_8033CBC8)
	sw      $0, %lo(camera_8033CBC8)($at)
	lui     $at, %hi(camera_8032DF24)
	sw      $0, %lo(camera_8032DF24)($at)
	lui     $at, %hi(camera_8032DF28)
	sw      $0, %lo(camera_8032DF28)($at)
	lui     $at, %hi(camera_8032DF2C)
	sw      $0, %lo(camera_8032DF2C)($at)
	lui     $at, %hi(camera_8032DF30)
	sw      $0, %lo(camera_8032DF30)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x16E)
	sh      $0, %lo(_camera_bss_48-0x48+0x16E)($at)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_48-0x48+0xA0
	la.l    $a0, _camera_bss_48-0x48+0xA0
	addiu   $a0, $a0, 0x0014
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $at, %hi(_camera_bss_48-0x48+0xB0)
	sw      $0, %lo(_camera_bss_48-0x48+0xB0)($at)
	li      $t1, -0x0001
	lui     $at, %hi(camera_8032DF2C)
	sw      $t1, %lo(camera_8032DF2C)($at)
	li      $t2, -0x0001
	lui     $at, %hi(camera_8032DF28)
	sw      $t2, %lo(camera_8032DF28)($at)
	lui     $at, %hi(camera_8033C848)
	sh      $0, %lo(camera_8033C848)($at)
	lui     $t3, %hi(camera_8033C848)
	lh      $t3, %lo(camera_8033C848)($t3)
	lui     $at, %hi(camera_8033C848)
	ori     $t4, $t3, 0x0800
	sh      $t4, %lo(camera_8033C848)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x166)
	sh      $0, %lo(_camera_bss_48-0x48+0x166)($at)
	lui     $at, %hi(camera_8033C84A)
	sh      $0, %lo(camera_8033C84A)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x16A)
	sh      $0, %lo(_camera_bss_48-0x48+0x16A)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	sh      $0, %lo(_camera_bss_48-0x48+0x16C)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x250)
	sh      $0, %lo(_camera_bss_238-0x238+0x250)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $0, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x254)
	sh      $0, %lo(_camera_bss_238-0x238+0x254)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x23E)
	sh      $0, %lo(_camera_bss_238-0x238+0x23E)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x240)
	sh      $0, %lo(_camera_bss_238-0x238+0x240)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x23A)
	sh      $0, %lo(_camera_bss_238-0x238+0x23A)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x23C)
	sh      $0, %lo(_camera_bss_238-0x238+0x23C)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss_238-0x238+0x25C)
	swc1    $f4, %lo(_camera_bss_238-0x238+0x25C)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss_238-0x238+0x260)
	swc1    $f6, %lo(_camera_bss_238-0x238+0x260)($at)
	mtc1    $0, $f8
	lui     $at, %hi(_camera_bss_238-0x238+0x244)
	swc1    $f8, %lo(_camera_bss_238-0x238+0x244)($at)
	mtc1    $0, $f10
	lui     $at, %hi(_camera_bss_238-0x238+0x24C)
	swc1    $f10, %lo(_camera_bss_238-0x238+0x24C)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x24A)
	sh      $0, %lo(_camera_bss_238-0x238+0x24A)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x248)
	sh      $0, %lo(_camera_bss_238-0x238+0x248)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x256)
	sh      $0, %lo(_camera_bss_238-0x238+0x256)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x258)
	sh      $0, %lo(_camera_bss_238-0x238+0x258)($at)
	lw      $t5, 0x0038($sp)
	sb      $0, 0x0064($t5)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	sh      $0, 0x0016($t6)
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	sh      $0, 0x0018($t7)
	lui     $t8, %hi(luigi_cam)
	lw      $t8, %lo(luigi_cam)($t8)
	sh      $0, 0x0016($t8)
	lui     $t9, %hi(luigi_cam)
	lw      $t9, %lo(luigi_cam)($t9)
	sh      $0, 0x0018($t9)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	sh      $0, 0x001E($t0)
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	sw      $0, 0x0020($t1)
	la.u    $t2, camdata
	la.l    $t2, camdata
	sh      $0, 0x0052($t2)
	la.u    $t3, camdata
	la.l    $t3, camdata
	sh      $0, 0x0054($t3)
	la.u    $t4, camdata
	la.l    $t4, camdata
	sh      $0, 0x0056($t4)
	la.u    $t5, camdata
	la.l    $t5, camdata
	sh      $0, 0x006C($t5)
	la.u    $t6, camdata
	la.l    $t6, camdata
	sh      $0, 0x006E($t6)
	la.u    $t7, camdata
	la.l    $t7, camdata
	sh      $0, 0x0070($t7)
	mtc1    $0, $f16
	la.u    $t8, camdata
	la.l    $t8, camdata
	swc1    $f16, 0x0060($t8)
	mtc1    $0, $f18
	la.u    $t9, camdata
	la.l    $t9, camdata
	swc1    $f18, 0x0064($t9)
	mtc1    $0, $f4
	la.u    $t0, camdata
	la.l    $t0, camdata
	swc1    $f4, 0x0068($t0)
	lui     $at, %hi(camdata+0xB8)
	sw      $0, %lo(camdata+0xB8)($at)
	jal     camera_8029AB94
	li      $a0, 0x0002
	li      $at, 0x42340000
	mtc1    $at, $f6
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f6, %lo(_camera_bss_48-0x48+0x84)($at)
	mtc1    $0, $f8
	lui     $at, %hi(_camera_bss_48-0x48+0x88)
	swc1    $f8, %lo(_camera_bss_48-0x48+0x88)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x8C)
	sw      $0, %lo(_camera_bss_48-0x48+0x8C)($at)
	mtc1    $0, $f10
	lui     $at, %hi(_camera_bss_48-0x48+0x90)
	swc1    $f10, %lo(_camera_bss_48-0x48+0x90)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x94)
	sh      $0, %lo(_camera_bss_48-0x48+0x94)($at)
	lui     $at, %hi(camera_8032DF50)
	sb      $0, %lo(camera_8032DF50)($at)
	lui     $at, %hi(camera_8032DF54)
	sb      $0, %lo(camera_8032DF54)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x15C)
	sw      $0, %lo(_camera_bss_48-0x48+0x15C)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x160)
	sw      $0, %lo(_camera_bss_48-0x48+0x160)($at)
	b       181$
	nop
181$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8028724C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0034($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x74)
	sh      $0, %lo(_camera_bss_48-0x48+0x74)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x76)
	sh      $0, %lo(_camera_bss_48-0x48+0x76)($at)
	lui     $t6, %hi(camera_stagescene)
	lw      $t6, %lo(camera_stagescene)($t6)
	bgez    $t6, 15$
	sra     $t7, $t6, 4
	addiu   $at, $t6, 0x000F
	sra     $t7, $at, 4
15$:
	lui     $at, %hi(camera_prevstage)
	sw      $t7, %lo(camera_prevstage)($at)
	lui     $t0, %hi(scenep)
	lw      $t0, %lo(scenep)($t0)
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	lb      $t1, 0x0000($t0)
	lui     $at, %hi(camera_stagescene)
	sll     $t9, $t8, 4
	addu    $t2, $t9, $t1
	sw      $t2, %lo(camera_stagescene)($at)
	lui     $t3, %hi(_camera_bss_48-0x48+0x164)
	lh      $t3, %lo(_camera_bss_48-0x48+0x164)($t3)
	lui     $at, %hi(_camera_bss_48-0x48+0x164)
	andi    $t4, $t3, 0x0004
	sh      $t4, %lo(_camera_bss_48-0x48+0x164)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x78)
	sb      $0, %lo(_camera_bss_48-0x48+0x78)($at)
	lw      $t5, 0x0038($sp)
	lui     $at, %hi(camdata+0x3C)
	lbu     $t6, 0x0000($t5)
	sb      $t6, %lo(camdata+0x3C)($at)
	lw      $t7, 0x0038($sp)
	lui     $at, %hi(camdata+0x3D)
	lbu     $t8, 0x0001($t7)
	sb      $t8, %lo(camdata+0x3D)($at)
	lui     $at, %hi(camera_8033725C)
	lwc1    $f4, %lo(camera_8033725C)($at)
	lui     $at, %hi(camdata+0xAC)
	swc1    $f4, %lo(camdata+0xAC)($at)
	lui     $at, %hi(camera_80337260)
	lwc1    $f6, %lo(camera_80337260)($at)
	lui     $at, %hi(camdata+0xB0)
	swc1    $f6, %lo(camdata+0xB0)($at)
	lui     $at, %hi(camera_80337264)
	lwc1    $f8, %lo(camera_80337264)($at)
	lui     $at, %hi(camdata+0xA4)
	swc1    $f8, %lo(camdata+0xA4)($at)
	lui     $at, %hi(camera_80337268)
	lwc1    $f10, %lo(camera_80337268)($at)
	lui     $at, %hi(camdata+0xA4)
	swc1    $f10, %lo(camdata+0xA4)($at)
	lui     $at, %hi(camdata+0x7A)
	sh      $0, %lo(camdata+0x7A)($at)
	lui     $at, %hi(camdata+0xB4)
	sh      $0, %lo(camdata+0xB4)($at)
	lui     $at, %hi(camdata+0xBC)
	sh      $0, %lo(camdata+0xBC)($at)
	lui     $t0, %hi(camera_8033C84A)
	lh      $t0, %lo(camera_8033C84A)($t0)
	li      $at, -0x0002
	and     $t9, $t0, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t9, %lo(camera_8033C84A)($at)
	la.u    $a0, _camera_bss_238-0x238+0x2B0
	la.l    $a0, _camera_bss_238-0x238+0x2B0
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	la.u    $a0, _camera_bss_48-0x48+0x68
	la.l    $a0, _camera_bss_48-0x48+0x68
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	la.u    $a0, _camera_bss_48-0x48+0xC8
	jal     camera_8028FC9C
	la.l    $a0, _camera_bss_48-0x48+0xC8
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f16, %lo(_camera_bss_48-0x48+0xCC)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xE4)
	swc1    $f16, %lo(_camera_bss_48-0x48+0xE4)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xDC)
	lwc1    $f18, %lo(_camera_bss_48-0x48+0xDC)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xF0)
	swc1    $f18, %lo(_camera_bss_48-0x48+0xF0)($at)
	lui     $t1, %hi(_camera_bss_48-0x48+0xC8)
	lw      $t1, %lo(_camera_bss_48-0x48+0xC8)($t1)
	lui     $at, %hi(_camera_bss_48-0x48+0xE0)
	sw      $t1, %lo(_camera_bss_48-0x48+0xE0)($at)
	lui     $t2, %hi(_camera_bss_48-0x48+0xD4)
	lw      $t2, %lo(_camera_bss_48-0x48+0xD4)($t2)
	lui     $at, %hi(_camera_bss_48-0x48+0xEC)
	sw      $t2, %lo(_camera_bss_48-0x48+0xEC)($at)
	lui     $t3, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t3, %lo(_camera_bss_48-0x48+0xD0)($t3)
	lui     $at, %hi(_camera_bss_48-0x48+0xE8)
	sh      $t3, %lo(_camera_bss_48-0x48+0xE8)($at)
	lui     $t4, %hi(_camera_bss_48-0x48+0xD8)
	lh      $t4, %lo(_camera_bss_48-0x48+0xD8)($t4)
	lui     $at, %hi(_camera_bss_48-0x48+0xF4)
	sh      $t4, %lo(_camera_bss_48-0x48+0xF4)($at)
	sw      $0, 0x0024($sp)
109$:
	lw      $t6, 0x0024($sp)
	lui     $at, %hi(_camera_bss_330-0x330+0x330)
	li      $t5, -0x0001
	sll     $t7, $t6, 3
	addu    $at, $at, $t7
	sb      $t5, %lo(_camera_bss_330-0x330+0x330)($at)
	lw      $t0, 0x0024($sp)
	lui     $at, %hi(_camera_bss_330-0x330+0x430)
	li      $t8, -0x0001
	sll     $t9, $t0, 3
	addu    $at, $at, $t9
	sb      $t8, %lo(_camera_bss_330-0x330+0x430)($at)
	lw      $t1, 0x0024($sp)
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x0020
	bnez    $at, 109$
	sw      $t2, 0x0024($sp)
	lui     $at, %hi(_camera_bss_330-0x330+0x530)
	sh      $0, %lo(_camera_bss_330-0x330+0x530)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss_330-0x330+0x534)
	swc1    $f4, %lo(_camera_bss_330-0x330+0x534)($at)
	lui     $at, %hi(_camera_bss_330-0x330+0x538)
	sh      $0, %lo(_camera_bss_330-0x330+0x538)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f6, %lo(_camera_bss_48-0x48+0x150)($at)
	mtc1    $0, $f8
	lui     $at, %hi(_camera_bss_48-0x48+0x14C)
	swc1    $f8, %lo(_camera_bss_48-0x48+0x14C)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x148)
	sh      $0, %lo(_camera_bss_48-0x48+0x148)($at)
	sw      $0, 0x0024($sp)
142$:
	lw      $t4, 0x0024($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x108)
	li      $t3, -0x0001
	sll     $t6, $t4, 4
	addu    $at, $at, $t6
	sb      $t3, %lo(_camera_bss_48-0x48+0x108)($at)
	lw      $t5, 0x0024($sp)
	addiu   $t7, $t5, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, 142$
	sw      $t7, 0x0024($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x154)
	sh      $0, %lo(_camera_bss_48-0x48+0x154)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x156)
	sh      $0, %lo(_camera_bss_48-0x48+0x156)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x158)
	sh      $0, %lo(_camera_bss_48-0x48+0x158)($at)
	lw      $t0, 0x0038($sp)
	sb      $0, 0x0030($t0)
	mtc1    $0, $f10
	addiu   $t8, $sp, 0x0028
	swc1    $f10, 0x0000($t8)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	addiu   $t9, $sp, 0x0028
	swc1    $f16, 0x0004($t9)
	li      $at, 0x43C80000
	mtc1    $at, $f18
	addiu   $t1, $sp, 0x0028
	swc1    $f18, 0x0008($t1)
	lui     $t2, %hi(stage_index)
	lh      $t2, %lo(stage_index)($t2)
	addiu   $t4, $t2, -0x0006
	sltiu   $at, $t4, 0x001D
	beqz    $at, L802876EC
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(camera_8033726C)
	addu    $at, $at, $t4
	lw      $t4, %lo(camera_8033726C)($at)
	jr      $t4
	nop
.globl L8028752C
L8028752C:
	lui     $t3, %hi(demop)
	lw      $t3, %lo(demop)($t3)
	bnez    $t3, 193$
	nop
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x0090
	b       201$
	nop
193$:
	lui     $t6, %hi(camera_8032DF30)
	lw      $t6, %lo(camera_8032DF30)($t6)
	beqz    $t6, 201$
	nop
	lui     $t7, %hi(camera_8032DF30)
	lw      $t7, %lo(camera_8032DF30)($t7)
	li      $t5, 0x0002
	sw      $t5, 0x0088($t7)
201$:
	b       L802876EC
	nop
.globl L80287578
L80287578:
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x0090
	b       L802876EC
	nop
.globl L8028758C
L8028758C:
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x0090
	b       L802876EC
	nop
.globl L802875A0
L802875A0:
	li      $at, 0xC4A60000
	mtc1    $at, $f12
	li      $at, 0x43820000
	mtc1    $at, $f14
	li.u    $a2, 0x4591C000
	jal     camera_802892D8
	li.l    $a2, 0x4591C000
	li      $at, 0x0001
	beq     $v0, $at, 231$
	nop
	li      $at, 0xC3C80000
	mtc1    $at, $f4
	addiu   $t0, $sp, 0x0028
	swc1    $f4, 0x0000($t0)
	li      $at, 0xC4480000
	mtc1    $at, $f6
	addiu   $t8, $sp, 0x0028
	swc1    $f6, 0x0008($t8)
231$:
	lui     $at, %hi(camera_803372E0)
	lwc1    $f12, %lo(camera_803372E0)($at)
	lui     $at, %hi(camera_803372E4)
	li.u    $a2, 0xC5CB6800
	li.l    $a2, 0xC5CB6800
	jal     camera_802892D8
	lwc1    $f14, %lo(camera_803372E4)($at)
	li      $at, 0x0001
	bne     $v0, $at, 244$
	nop
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x00B3
244$:
	li      $at, 0x45A90000
	mtc1    $at, $f12
	lui     $at, %hi(camera_803372E8)
	li.u    $a2, 0x45635000
	li.l    $a2, 0x45635000
	jal     camera_802892D8
	lwc1    $f14, %lo(camera_803372E8)($at)
	li      $at, 0x0001
	bne     $v0, $at, 257$
	nop
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x00B4
257$:
	li      $t9, 0x0010
	lui     $at, %hi(camdata+0x3C)
	sb      $t9, %lo(camdata+0x3C)($at)
	b       L802876EC
	nop
.globl L80287664
L80287664:
	li      $at, 0x43480000
	mtc1    $at, $f8
	addiu   $t1, $sp, 0x0028
	swc1    $f8, 0x0008($t1)
	b       L802876EC
	nop
.globl L8028767C
L8028767C:
	li      $at, 0xC3960000
	mtc1    $at, $f10
	addiu   $t2, $sp, 0x0028
	swc1    $f10, 0x0008($t2)
	b       L802876EC
	nop
.globl L80287694
L80287694:
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	lui     $at, %hi(camera_8033C848)
	ori     $t3, $t4, 0x0002
	sh      $t3, %lo(camera_8033C848)($at)
	b       L802876EC
	nop
.globl L802876B0
L802876B0:
	li      $at, 0x43160000
	mtc1    $at, $f16
	addiu   $t6, $sp, 0x0028
	swc1    $f16, 0x0008($t6)
	b       L802876EC
	nop
.globl L802876C8
L802876C8:
	la.u    $a0, camera_8032DF6C
	li.u    $a1, 0xC53A9000
	li.l    $a1, 0xC53A9000
	la.l    $a0, camera_8032DF6C
	li      $a2, 0x43EF0000
	jal     vecf_set
	li      $a3, 0xC5AE0000
	b       L802876EC
	nop
.globl L802876EC
L802876EC:
	lw      $t5, 0x0038($sp)
	li      $at, 0x000E
	lbu     $t7, 0x0000($t5)
	bne     $t7, $at, 306$
	nop
	lui     $t0, %hi(camera_8033C848)
	lh      $t0, %lo(camera_8033C848)($t0)
	lui     $at, %hi(camera_8033C848)
	ori     $t8, $t0, 0x0002
	sh      $t8, %lo(camera_8033C848)($at)
306$:
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0051
	beq     $s0, $at, 372$
	nop
	li      $at, 0x0052
	beq     $s0, $at, 338$
	nop
	li      $at, 0x0083
	beq     $s0, $at, 331$
	nop
	li      $at, 0x00A1
	beq     $s0, $at, 356$
	nop
	li      $at, 0x00A2
	beq     $s0, $at, 350$
	nop
	li      $at, 0x00D3
	beq     $s0, $at, 344$
	nop
	li      $at, 0x0241
	beq     $s0, $at, 379$
	nop
	b       384$
	nop
331$:
	addiu   $a0, $sp, 0x0028
	li      $a1, 0x0000
	li      $a2, 0x43FA0000
	jal     vecf_set
	li      $a3, 0xC2C80000
	b       384$
	nop
338$:
	li      $at, 0xC3960000
	mtc1    $at, $f18
	addiu   $t9, $sp, 0x0028
	swc1    $f18, 0x0008($t9)
	b       384$
	nop
344$:
	li      $at, 0xC3960000
	mtc1    $at, $f4
	addiu   $t1, $sp, 0x0028
	swc1    $f4, 0x0008($t1)
	b       384$
	nop
350$:
	li      $at, 0xC3960000
	mtc1    $at, $f6
	addiu   $t2, $sp, 0x0028
	swc1    $f6, 0x0008($t2)
	b       384$
	nop
356$:
	lui     $at, %hi(camera_803372EC)
	lwc1    $f12, %lo(camera_803372EC)($at)
	lui     $at, %hi(camera_803372F0)
	li.u    $a2, 0x44AEE000
	li.l    $a2, 0x44AEE000
	jal     camera_802892D8
	lwc1    $f14, %lo(camera_803372F0)($at)
	li      $at, 0x0001
	bne     $v0, $at, 370$
	nop
	li      $at, 0xC3960000
	mtc1    $at, $f8
	addiu   $t4, $sp, 0x0028
	swc1    $f8, 0x0008($t4)
370$:
	b       384$
	nop
372$:
	lui     $t3, %hi(camera_8033C848)
	lh      $t3, %lo(camera_8033C848)($t3)
	lui     $at, %hi(camera_8033C848)
	ori     $t6, $t3, 0x0002
	sh      $t6, %lo(camera_8033C848)($at)
	b       384$
	nop
379$:
	li      $t5, 0x0001
	lui     $at, %hi(camdata+0x3C)
	sb      $t5, %lo(camdata+0x3C)($at)
	b       384$
	nop
384$:
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lw      $a0, 0x0038($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a1, $t7, 0x0004
	addiu   $a3, $t7, 0x0010
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lw      $t0, 0x0038($sp)
	li      $at, 0x0003
	lbu     $t8, 0x0000($t0)
	beq     $t8, $at, 412$
	nop
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x0008($t9)
	addiu   $a3, $sp, 0x0034
	lwc1    $f12, 0x0004($t9)
	lw      $a2, 0x000C($t9)
	jal     bg_check_ground
	add.s   $f14, $f10, $f16
	li      $at, 0x42FA0000
	mtc1    $at, $f18
	lw      $t1, 0x0038($sp)
	add.s   $f4, $f0, $f18
	swc1    $f4, 0x0014($t1)
412$:
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0038($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $a1, 0x0038($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0038($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0038($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0024
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0038($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0018
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0038($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x008C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0038($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0080
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $t2, 0x0038($sp)
	li      $at, 0x000D
	lbu     $t4, 0x0000($t2)
	bne     $t4, $at, 461$
	nop
	lw      $t3, 0x0038($sp)
	jal     camera_8028D888
	lbu     $a0, 0x0000($t3)
461$:
	jal     camera_8028526C
	lw      $a0, 0x0038($sp)
	lw      $t6, 0x0038($sp)
	addiu   $a0, $t6, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t6, 0x0010
	lui     $at, %hi(camdata+0x7C)
	sh      $v0, %lo(camdata+0x7C)($at)
	lui     $t5, %hi(camdata+0x7C)
	lh      $t5, %lo(camdata+0x7C)($t5)
	lui     $at, %hi(camdata+0x7E)
	sh      $t5, %lo(camdata+0x7E)($at)
	lui     $t7, %hi(camdata+0x7C)
	lh      $t7, %lo(camdata+0x7C)($t7)
	lw      $t0, 0x0038($sp)
	sh      $t7, 0x0002($t0)
	lui     $t8, %hi(camdata+0x7C)
	lh      $t8, %lo(camdata+0x7C)($t8)
	lw      $t9, 0x0038($sp)
	sh      $t8, 0x003A($t9)
	b       483$
	nop
483$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_802879EC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	lui     $t6, %hi(camera_stagescene)
	lw      $t6, %lo(camera_stagescene)($t6)
	bgez    $t6, 9$
	sra     $t7, $t6, 5
	addiu   $at, $t6, 0x001F
	sra     $t7, $at, 5
9$:
	sw      $t7, 0x0028($sp)
	lui     $t8, %hi(camera_stagescene)
	lw      $t8, %lo(camera_stagescene)($t8)
	li      $t5, 0x0001
	andi    $t1, $t8, 0x000F
	addiu   $t2, $t1, -0x0001
	andi    $t9, $t8, 0x0010
	bgez    $t9, 20$
	sra     $t0, $t9, 2
	addiu   $at, $t9, 0x0003
	sra     $t0, $at, 2
20$:
	andi    $t3, $t2, 0x0003
	addu    $t4, $t0, $t3
	sllv    $t6, $t5, $t4
	sw      $t6, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	slti    $at, $t7, 0x0013
	bnez    $at, 30$
	nop
	sw      $0, 0x0028($sp)
	sw      $0, 0x0024($sp)
30$:
	lui     $t9, %hi(camera_8033C848)
	lh      $t9, %lo(camera_8033C848)($t9)
	andi    $t8, $t9, 0x8000
	beqz    $t8, 110$
	nop
	lui     $t1, %hi(_camera_bss_48-0x48+0x78)
	lbu     $t1, %lo(_camera_bss_48-0x48+0x78)($t1)
	slti    $at, $t1, 0x0002
	bnez    $at, 103$
	nop
	lw      $t2, 0x0028($sp)
	lui     $t0, %hi(camera_pause_table)
	lw      $t3, 0x0024($sp)
	addu    $t0, $t0, $t2
	lbu     $t0, %lo(camera_pause_table)($t0)
	and     $t5, $t0, $t3
	beqz    $t5, 101$
	nop
	lui     $t4, %hi(camerap)
	lw      $t4, %lo(camerap)($t4)
	lw      $t6, 0x0040($sp)
	lwc1    $f4, 0x0028($t4)
	swc1    $f4, 0x0028($t6)
	lui     $t7, %hi(mario_cam)
	lui     $t9, %hi(camerap)
	lw      $t9, %lo(camerap)($t9)
	lw      $t7, %lo(mario_cam)($t7)
	li      $at, 0x40000000
	lwc1    $f8, 0x0068($t9)
	lwc1    $f6, 0x0008($t7)
	mtc1    $at, $f16
	lw      $t8, 0x0040($sp)
	add.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($t8)
	lui     $t1, %hi(camerap)
	lw      $t1, %lo(camerap)($t1)
	lw      $t2, 0x0040($sp)
	lwc1    $f4, 0x002C($t1)
	swc1    $f4, 0x0030($t2)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0040($sp)
	addiu   $t0, $sp, 0x0030
	sw      $t0, 0x0010($sp)
	addiu   $a2, $sp, 0x0034
	addiu   $a3, $sp, 0x0032
	addiu   $a1, $a1, 0x0004
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0028
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0040($sp)
	lh      $t3, 0x0030($sp)
	li.u    $a2, 0x45BB8000
	li.l    $a2, 0x45BB8000
	li      $a3, 0x1000
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x001C
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
	lui     $t5, %hi(stage_index)
	lh      $t5, %lo(stage_index)($t5)
	li      $at, 0x000D
	beq     $t5, $at, 101$
	nop
	lw      $t4, 0x0040($sp)
	move    $a2, $0
	addiu   $a0, $t4, 0x001C
	jal     camera_802806A4
	addiu   $a1, $t4, 0x0028
101$:
	b       108$
	nop
103$:
	lui     $t6, %hi(_camera_bss_48-0x48+0x78)
	lbu     $t6, %lo(_camera_bss_48-0x48+0x78)($t6)
	lui     $at, %hi(_camera_bss_48-0x48+0x78)
	addiu   $t7, $t6, 0x0001
	sb      $t7, %lo(_camera_bss_48-0x48+0x78)($at)
108$:
	b       112$
	nop
110$:
	lui     $at, %hi(_camera_bss_48-0x48+0x78)
	sb      $0, %lo(_camera_bss_48-0x48+0x78)($at)
112$:
	b       114$
	nop
114$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl camera_80287BC4
camera_80287BC4:
	li      $t6, 0x0004
	lui     $at, %hi(_camera_bss_48-0x48+0x164)
	sh      $t6, %lo(_camera_bss_48-0x48+0x164)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287BE0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0018($t6)
	sh      $t7, 0x001E($sp)
	lw      $a0, 0x0024($sp)
	jal     arena_alloc
	li      $a1, 0x006C
	sw      $v0, 0x0018($sp)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	sw      $t8, 0x0018($t9)
	lh      $t0, 0x001E($sp)
	lw      $t1, 0x0018($sp)
	sb      $t0, 0x0000($t1)
	lh      $t2, 0x001E($sp)
	lw      $t3, 0x0018($sp)
	sb      $t2, 0x0001($t3)
	lw      $t4, 0x0018($sp)
	sb      $0, 0x0030($t4)
	lw      $t5, 0x0018($sp)
	sb      $0, 0x0064($t5)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0018($sp)
	lwc1    $f4, 0x0028($t6)
	swc1    $f4, 0x0028($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	lwc1    $f6, 0x002C($t8)
	swc1    $f6, 0x0068($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	lwc1    $f8, 0x0030($t0)
	swc1    $f8, 0x002C($t1)
	lw      $t2, 0x0018($sp)
	sh      $0, 0x0002($t2)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	addiu   $a0, $a0, 0x0010
	jal     vecf_cpy
	addiu   $a1, $a1, 0x001C
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0028
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80287CB8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0018($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(camdata+0x7A)
	lh      $t8, %lo(camdata+0x7A)($t8)
	lw      $t9, 0x0028($sp)
	sh      $t8, 0x003A($t9)
	lw      $a0, 0x0028($sp)
	la.u    $a1, camdata
	la.l    $a1, camdata
	addiu   $a1, $a1, 0x008C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x001C
	lw      $a0, 0x0028($sp)
	la.u    $a1, camdata
	la.l    $a1, camdata
	addiu   $a1, $a1, 0x0080
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0028
	jal     camera_802879EC
	lw      $a0, 0x0028($sp)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_stage_camera
s_stage_camera:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0034($sp)
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x0038($sp)
	sw      $t7, 0x0028($sp)
	lw      $s0, 0x0030($sp)
	beqz    $s0, 18$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	b       27$
	nop
18$:
	lw      $a0, 0x002C($sp)
	jal     camera_80287BE0
	lw      $a1, 0x0038($sp)
	b       27$
	nop
23$:
	jal     camera_80287CB8
	lw      $a0, 0x002C($sp)
	b       27$
	nop
27$:
	b       31$
	move    $v0, $0
	b       31$
	nop
31$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80287DC0:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

camera_80287DD4:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

camera_80287DE8:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0004($a0)
	lwc1    $f16, 0x0004($a1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($a0)
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x0008($a1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287E28:
	lwc1    $f4, 0x00A0($a1)
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x00A4($a1)
	swc1    $f6, 0x0004($a0)
	lwc1    $f8, 0x00A8($a1)
	swc1    $f8, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287E50:
	lwc1    $f4, 0x0000($a1)
	swc1    $f4, 0x00A0($a0)
	lwc1    $f6, 0x0004($a1)
	swc1    $f6, 0x00A4($a0)
	lwc1    $f8, 0x0008($a1)
	swc1    $f8, 0x00A8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287E78:
	lw      $t6, 0x00C4($a1)
	sh      $t6, 0x0000($a0)
	lw      $t7, 0x00C8($a1)
	sh      $t7, 0x0002($a0)
	lw      $t8, 0x00CC($a1)
	sh      $t8, 0x0004($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287EA0:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	sw      $a3, 0x005C($sp)
	swc1    $f12, 0x0050($sp)
	sdc1    $f20, 0x0010($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0050($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    18$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0050($sp)
18$:
	li      $at, 0x3F800000
	lwc1    $f16, 0x0050($sp)
	mtc1    $at, $f10
	mtc1    $at, $f4
	addiu   $t6, $sp, 0x0040
	sub.s   $f18, $f10, $f16
	mtc1    $at, $f10
	li      $at, 0x40C00000
	sub.s   $f6, $f4, $f16
	sub.s   $f4, $f10, $f16
	mul.s   $f8, $f18, $f6
	mtc1    $at, $f6
	mul.s   $f18, $f8, $f4
	div.s   $f10, $f18, $f6
	swc1    $f10, 0x0000($t6)
	lwc1    $f16, 0x0050($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	mul.s   $f8, $f16, $f16
	lui     $at, %hi(camera_803372F4)
	addiu   $t7, $sp, 0x0040
	mul.s   $f4, $f8, $f16
	lwc1    $f16, %lo(camera_803372F4)($at)
	div.s   $f6, $f4, $f18
	sub.s   $f10, $f6, $f8
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0004($t7)
	lwc1    $f18, 0x0050($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	neg.s   $f6, $f18
	addiu   $t8, $sp, 0x0040
	mul.s   $f8, $f6, $f18
	nop
	mul.s   $f10, $f8, $f18
	mtc1    $at, $f8
	mul.s   $f6, $f18, $f18
	div.s   $f4, $f10, $f16
	div.s   $f10, $f6, $f8
	mtc1    $at, $f6
	lui     $at, %hi(camera_803372F8)
	div.s   $f8, $f18, $f6
	add.s   $f16, $f4, $f10
	lwc1    $f10, %lo(camera_803372F8)($at)
	add.s   $f4, $f16, $f8
	add.s   $f18, $f4, $f10
	swc1    $f18, 0x0008($t8)
	lwc1    $f6, 0x0050($sp)
	li      $at, 0x40C00000
	mtc1    $at, $f4
	mul.s   $f16, $f6, $f6
	addiu   $t9, $sp, 0x0040
	mul.s   $f8, $f16, $f6
	div.s   $f10, $f8, $f4
	swc1    $f10, 0x000C($t9)
	lw      $t1, 0x0058($sp)
	addiu   $t0, $sp, 0x0040
	lwc1    $f18, 0x0000($t0)
	lw      $t2, 0x005C($sp)
	lwc1    $f16, 0x0000($t1)
	lwc1    $f8, 0x0004($t0)
	lwc1    $f4, 0x0000($t2)
	mul.s   $f6, $f18, $f16
	lw      $t3, 0x0060($sp)
	lwc1    $f16, 0x0008($t0)
	mul.s   $f10, $f8, $f4
	lwc1    $f8, 0x0000($t3)
	lw      $t4, 0x0064($sp)
	lw      $t5, 0x0054($sp)
	mul.s   $f4, $f16, $f8
	lwc1    $f16, 0x000C($t0)
	add.s   $f18, $f6, $f10
	lwc1    $f10, 0x0000($t4)
	mul.s   $f8, $f10, $f16
	add.s   $f6, $f18, $f4
	add.s   $f18, $f8, $f6
	swc1    $f18, 0x0000($t5)
	lw      $t7, 0x0058($sp)
	addiu   $t6, $sp, 0x0040
	lwc1    $f4, 0x0000($t6)
	lw      $t8, 0x005C($sp)
	lwc1    $f10, 0x0004($t7)
	lwc1    $f8, 0x0004($t6)
	lwc1    $f6, 0x0004($t8)
	mul.s   $f16, $f4, $f10
	lw      $t9, 0x0060($sp)
	lwc1    $f10, 0x0008($t6)
	mul.s   $f18, $f8, $f6
	lwc1    $f8, 0x0004($t9)
	lw      $t1, 0x0064($sp)
	lw      $t2, 0x0054($sp)
	mul.s   $f6, $f10, $f8
	lwc1    $f10, 0x000C($t6)
	add.s   $f4, $f16, $f18
	lwc1    $f18, 0x0004($t1)
	mul.s   $f8, $f18, $f10
	add.s   $f16, $f4, $f6
	add.s   $f4, $f8, $f16
	swc1    $f4, 0x0004($t2)
	lw      $t4, 0x0058($sp)
	addiu   $t3, $sp, 0x0040
	lwc1    $f6, 0x0000($t3)
	lw      $t0, 0x005C($sp)
	lwc1    $f18, 0x0008($t4)
	lwc1    $f8, 0x0004($t3)
	lwc1    $f16, 0x0008($t0)
	mul.s   $f10, $f6, $f18
	lw      $t5, 0x0060($sp)
	lwc1    $f18, 0x0008($t3)
	mul.s   $f4, $f8, $f16
	lwc1    $f8, 0x0008($t5)
	lw      $t7, 0x0064($sp)
	lw      $t8, 0x0054($sp)
	mul.s   $f16, $f18, $f8
	lwc1    $f18, 0x000C($t3)
	add.s   $f6, $f10, $f4
	lwc1    $f4, 0x0008($t7)
	mul.s   $f8, $f4, $f18
	add.s   $f10, $f6, $f16
	add.s   $f6, $f8, $f10
	swc1    $f6, 0x0008($t8)
	li      $at, 0xBF000000
	mtc1    $at, $f16
	lwc1    $f4, 0x0050($sp)
	lui     $at, %hi(camera_803372FC)
	lwc1    $f6, %lo(camera_803372FC)($at)
	mul.s   $f18, $f16, $f4
	addiu   $t9, $sp, 0x0040
	mul.s   $f8, $f18, $f4
	add.s   $f10, $f8, $f4
	sub.s   $f16, $f10, $f6
	swc1    $f16, 0x0000($t9)
	li      $at, 0x3FC00000
	mtc1    $at, $f18
	lwc1    $f8, 0x0050($sp)
	li      $at, 0x40000000
	mtc1    $at, $f6
	mul.s   $f4, $f18, $f8
	li      $at, 0x3F000000
	addiu   $t1, $sp, 0x0040
	mul.s   $f10, $f4, $f8
	mtc1    $at, $f4
	mul.s   $f16, $f6, $f8
	sub.s   $f18, $f10, $f16
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0004($t1)
	li      $at, 0xBFC00000
	mtc1    $at, $f8
	lwc1    $f10, 0x0050($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	mul.s   $f16, $f8, $f10
	addiu   $t6, $sp, 0x0040
	mul.s   $f18, $f16, $f10
	add.s   $f4, $f18, $f10
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t6)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0050($sp)
	lui     $at, %hi(camera_80337300)
	lwc1    $f6, %lo(camera_80337300)($at)
	mul.s   $f10, $f16, $f18
	addiu   $t2, $sp, 0x0040
	mul.s   $f4, $f10, $f18
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x000C($t2)
	lw      $t0, 0x0058($sp)
	addiu   $t4, $sp, 0x0040
	lwc1    $f16, 0x0000($t4)
	lw      $t5, 0x005C($sp)
	lwc1    $f10, 0x0000($t0)
	lwc1    $f4, 0x0004($t4)
	lwc1    $f6, 0x0000($t5)
	mul.s   $f18, $f16, $f10
	lw      $t7, 0x0060($sp)
	lwc1    $f10, 0x0008($t4)
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0000($t7)
	lw      $t3, 0x0064($sp)
	mul.s   $f6, $f10, $f4
	lwc1    $f10, 0x000C($t4)
	add.s   $f16, $f18, $f8
	lwc1    $f8, 0x0000($t3)
	mul.s   $f4, $f8, $f10
	add.s   $f18, $f16, $f6
	add.s   $f16, $f4, $f18
	swc1    $f16, 0x003C($sp)
	lw      $t9, 0x0058($sp)
	addiu   $t8, $sp, 0x0040
	lwc1    $f6, 0x0000($t8)
	lw      $t1, 0x005C($sp)
	lwc1    $f8, 0x0004($t9)
	lwc1    $f4, 0x0004($t8)
	lwc1    $f18, 0x0004($t1)
	mul.s   $f10, $f6, $f8
	lw      $t6, 0x0060($sp)
	lwc1    $f8, 0x0008($t8)
	mul.s   $f16, $f4, $f18
	lwc1    $f4, 0x0004($t6)
	lw      $t2, 0x0064($sp)
	mul.s   $f18, $f8, $f4
	lwc1    $f8, 0x000C($t8)
	add.s   $f6, $f10, $f16
	lwc1    $f16, 0x0004($t2)
	mul.s   $f4, $f16, $f8
	add.s   $f10, $f6, $f18
	add.s   $f6, $f4, $f10
	swc1    $f6, 0x0038($sp)
	lw      $t5, 0x0058($sp)
	addiu   $t0, $sp, 0x0040
	lwc1    $f18, 0x0000($t0)
	lw      $t7, 0x005C($sp)
	lwc1    $f16, 0x0008($t5)
	lwc1    $f4, 0x0004($t0)
	lwc1    $f10, 0x0008($t7)
	mul.s   $f8, $f18, $f16
	lw      $t3, 0x0060($sp)
	lwc1    $f16, 0x0008($t0)
	mul.s   $f6, $f4, $f10
	lwc1    $f4, 0x0008($t3)
	lw      $t4, 0x0064($sp)
	mul.s   $f10, $f16, $f4
	lwc1    $f16, 0x000C($t0)
	add.s   $f18, $f8, $f6
	lwc1    $f6, 0x0008($t4)
	mul.s   $f4, $f6, $f16
	add.s   $f8, $f18, $f10
	add.s   $f18, $f4, $f8
	swc1    $f18, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0034($sp)
	mul.s   $f6, $f10, $f10
	nop
	mul.s   $f4, $f16, $f16
	jal     sqrtf
	add.s   $f12, $f6, $f4
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     ATAN2
	lwc1    $f14, 0x0038($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x102)
	sh      $v0, %lo(_camera_bss_48-0x48+0x102)($at)
	lwc1    $f12, 0x0034($sp)
	jal     ATAN2
	lwc1    $f14, 0x003C($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x104)
	sh      $v0, %lo(_camera_bss_48-0x48+0x104)($at)
	b       268$
	nop
268$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

camera_802882E4:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	sw      $a2, 0x0078($sp)
	sw      $a3, 0x007C($sp)
	sw      $0, 0x006C($sp)
	sw      $0, 0x0038($sp)
	lw      $t6, 0x007C($sp)
	lwc1    $f4, 0x0000($t6)
	swc1    $f4, 0x0034($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x002C($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0028($sp)
	lw      $t7, 0x0078($sp)
	lh      $t8, 0x0000($t7)
	sw      $t8, 0x0024($sp)
	lw      $t9, 0x0078($sp)
	lh      $t0, 0x0000($t9)
	bgez    $t0, 28$
	nop
	sw      $0, 0x0024($sp)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0034($sp)
28$:
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x0074($sp)
	li      $at, -0x0001
	sll     $t3, $t2, 3
	addu    $t4, $t1, $t3
	lb      $t5, 0x0000($t4)
	beq     $t5, $at, 44$
	nop
	lb      $t6, 0x0008($t4)
	li      $at, -0x0001
	beq     $t6, $at, 44$
	nop
	lb      $t7, 0x0010($t4)
	li      $at, -0x0001
	bne     $t7, $at, 46$
	nop
44$:
	b       204$
	li      $v0, 0x0001
46$:
	sw      $0, 0x0038($sp)
47$:
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x0038($sp)
	lw      $t1, 0x0074($sp)
	addu    $t0, $t8, $t9
	sll     $t2, $t0, 3
	addu    $t3, $t1, $t2
	lh      $t5, 0x0002($t3)
	sll     $t6, $t9, 2
	subu    $t6, $t6, $t9
	mtc1    $t5, $f16
	sll     $t6, $t6, 2
	addu    $t4, $sp, $t6
	cvt.s.w $f18, $f16
	swc1    $f18, 0x003C($t4)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0038($sp)
	lw      $t2, 0x0074($sp)
	addu    $t0, $t7, $t8
	sll     $t1, $t0, 3
	addu    $t3, $t2, $t1
	lh      $t5, 0x0004($t3)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	mtc1    $t5, $f4
	sll     $t9, $t9, 2
	addu    $t6, $sp, $t9
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0040($t6)
	lw      $t4, 0x0024($sp)
	lw      $t7, 0x0038($sp)
	lw      $t1, 0x0074($sp)
	addu    $t0, $t4, $t7
	sll     $t2, $t0, 3
	addu    $t3, $t1, $t2
	lh      $t5, 0x0006($t3)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	mtc1    $t5, $f8
	sll     $t8, $t8, 2
	addu    $t9, $sp, $t8
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0044($t9)
	lw      $t6, 0x0038($sp)
	addiu   $t4, $t6, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, 47$
	sw      $t4, 0x0038($sp)
	addiu   $t0, $sp, 0x003C
	addiu   $t1, $t0, 0x0018
	addiu   $t2, $t0, 0x0024
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	move    $a2, $t0
	addiu   $a3, $t0, 0x000C
	lwc1    $f12, 0x0034($sp)
	jal     camera_80287EA0
	lw      $a1, 0x0070($sp)
	lw      $t5, 0x0078($sp)
	lw      $t3, 0x0074($sp)
	lh      $t7, 0x0000($t5)
	sll     $t8, $t7, 3
	addu    $t9, $t3, $t8
	lbu     $t6, 0x0009($t9)
	beqz    $t6, 130$
	nop
	lw      $t1, 0x0078($sp)
	lw      $t4, 0x0074($sp)
	lh      $t0, 0x0000($t1)
	sll     $t2, $t0, 3
	addu    $t5, $t4, $t2
	lbu     $t7, 0x0009($t5)
	mtc1    $t7, $f16
	bgez    $t7, 125$
	cvt.s.w $f18, $f16
	li      $at, 0x4F800000
	mtc1    $at, $f4
	nop
	add.s   $f18, $f18, $f4
125$:
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	div.s   $f8, $f6, $f18
	swc1    $f8, 0x002C($sp)
130$:
	lw      $t8, 0x0078($sp)
	lw      $t3, 0x0074($sp)
	lh      $t9, 0x0000($t8)
	sll     $t6, $t9, 3
	addu    $t1, $t3, $t6
	lbu     $t0, 0x0011($t1)
	beqz    $t0, 156$
	nop
	lw      $t2, 0x0078($sp)
	lw      $t4, 0x0074($sp)
	lh      $t5, 0x0000($t2)
	sll     $t7, $t5, 3
	addu    $t8, $t4, $t7
	lbu     $t9, 0x0011($t8)
	mtc1    $t9, $f10
	bgez    $t9, 151$
	cvt.s.w $f16, $f10
	li      $at, 0x4F800000
	mtc1    $at, $f4
	nop
	add.s   $f16, $f16, $f4
151$:
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	div.s   $f18, $f6, $f16
	swc1    $f18, 0x0028($sp)
156$:
	lwc1    $f8, 0x0028($sp)
	lwc1    $f10, 0x002C($sp)
	lw      $t3, 0x007C($sp)
	sub.s   $f4, $f8, $f10
	lwc1    $f6, 0x0000($t3)
	mul.s   $f16, $f6, $f4
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0030($sp)
	lw      $t6, 0x007C($sp)
	lwc1    $f6, 0x0030($sp)
	li      $at, 0x3F800000
	lwc1    $f8, 0x0000($t6)
	mtc1    $at, $f16
	add.s   $f4, $f8, $f6
	swc1    $f4, 0x0000($t6)
	lw      $t1, 0x007C($sp)
	lwc1    $f10, 0x0000($t1)
	c.le.s  $f16, $f10
	nop
	bc1f    200$
	nop
	lw      $t0, 0x0078($sp)
	lh      $t2, 0x0000($t0)
	addiu   $t5, $t2, 0x0001
	sh      $t5, 0x0000($t0)
	lw      $t7, 0x0078($sp)
	lw      $t4, 0x0074($sp)
	li      $at, -0x0001
	lh      $t8, 0x0000($t7)
	sll     $t9, $t8, 3
	addu    $t3, $t4, $t9
	lb      $t6, 0x0018($t3)
	bne     $t6, $at, 194$
	nop
	lw      $t1, 0x0078($sp)
	sh      $0, 0x0000($t1)
	li      $t2, 0x0001
	sw      $t2, 0x006C($sp)
194$:
	lw      $t5, 0x007C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f18, 0x0000($t5)
	sub.s   $f6, $f18, $f8
	swc1    $f6, 0x0000($t5)
200$:
	b       204$
	lw      $v0, 0x006C($sp)
	b       204$
	nop
204$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

.globl camera_80288624
camera_80288624:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li      $t6, 0x0002
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x0001
	bne     $t7, $at, 24$
	nop
	lui     $t8, %hi(_camera_bss_48-0x48+0x164)
	lh      $t8, %lo(_camera_bss_48-0x48+0x164)($t8)
	andi    $t9, $t8, 0x0004
	bnez    $t9, 19$
	nop
	lui     $t0, %hi(_camera_bss_48-0x48+0x164)
	lh      $t0, %lo(_camera_bss_48-0x48+0x164)($t0)
	lui     $at, %hi(_camera_bss_48-0x48+0x164)
	ori     $t1, $t0, 0x0004
	sh      $t1, %lo(_camera_bss_48-0x48+0x164)($at)
19$:
	lui     $t2, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t2, %lo(_camera_bss_48-0x48+0x16C)($t2)
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	ori     $t3, $t2, 0x0008
	sh      $t3, %lo(_camera_bss_48-0x48+0x16C)($at)
24$:
	lw      $t4, 0x0020($sp)
	li      $at, 0x0002
	bne     $t4, $at, 46$
	nop
	lui     $t5, %hi(_camera_bss_48-0x48+0x164)
	lh      $t5, %lo(_camera_bss_48-0x48+0x164)($t5)
	andi    $t6, $t5, 0x0004
	beqz    $t6, 46$
	nop
	jal     camera_80288718
	li      $a0, 0x0002
	lui     $t7, %hi(_camera_bss_48-0x48+0x164)
	lh      $t7, %lo(_camera_bss_48-0x48+0x164)($t7)
	li      $at, -0x0005
	and     $t8, $t7, $at
	lui     $at, %hi(_camera_bss_48-0x48+0x164)
	sh      $t8, %lo(_camera_bss_48-0x48+0x164)($at)
	lui     $t9, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t9, %lo(_camera_bss_48-0x48+0x16C)($t9)
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	ori     $t0, $t9, 0x0010
	sh      $t0, %lo(_camera_bss_48-0x48+0x16C)($at)
46$:
	lui     $t1, %hi(_camera_bss_48-0x48+0x164)
	lh      $t1, %lo(_camera_bss_48-0x48+0x164)($t1)
	andi    $t2, $t1, 0x0004
	beqz    $t2, 53$
	nop
	li      $t3, 0x0001
	sw      $t3, 0x001C($sp)
53$:
	b       57$
	lw      $v0, 0x001C($sp)
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80288718:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x0002
	sw      $t6, 0x0004($sp)
	li      $at, 0x0001
	bne     $a0, $at, 37$
	nop
	lui     $t7, %hi(_camera_bss_48-0x48+0x164)
	lh      $t7, %lo(_camera_bss_48-0x48+0x164)($t7)
	andi    $t8, $t7, 0x0001
	bnez    $t8, 37$
	nop
	lui     $t9, %hi(_camera_bss_48-0x48+0x164)
	lh      $t9, %lo(_camera_bss_48-0x48+0x164)($t9)
	lui     $at, %hi(_camera_bss_48-0x48+0x164)
	ori     $t0, $t9, 0x0001
	sh      $t0, %lo(_camera_bss_48-0x48+0x164)($at)
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, 32$
	nop
	lui     $t3, %hi(_camera_bss_48-0x48+0x164)
	lh      $t3, %lo(_camera_bss_48-0x48+0x164)($t3)
	lui     $at, %hi(_camera_bss_48-0x48+0x164)
	ori     $t4, $t3, 0x0002
	sh      $t4, %lo(_camera_bss_48-0x48+0x164)($at)
	lui     $t5, %hi(camera_8033C848)
	lh      $t5, %lo(camera_8033C848)($t5)
	li      $at, -0x0003
	and     $t6, $t5, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t6, %lo(camera_8033C848)($at)
32$:
	lui     $t7, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t7, %lo(_camera_bss_48-0x48+0x16C)($t7)
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	ori     $t8, $t7, 0x0002
	sh      $t8, %lo(_camera_bss_48-0x48+0x16C)($at)
37$:
	li      $at, 0x0002
	bne     $a0, $at, 79$
	nop
	lui     $t9, %hi(_camera_bss_48-0x48+0x164)
	lh      $t9, %lo(_camera_bss_48-0x48+0x164)($t9)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 79$
	nop
	lui     $t1, %hi(_camera_bss_48-0x48+0x164)
	lh      $t1, %lo(_camera_bss_48-0x48+0x164)($t1)
	li      $at, -0x0002
	and     $t2, $t1, $at
	lui     $at, %hi(_camera_bss_48-0x48+0x164)
	sh      $t2, %lo(_camera_bss_48-0x48+0x164)($at)
	lui     $t3, %hi(_camera_bss_48-0x48+0x164)
	lh      $t3, %lo(_camera_bss_48-0x48+0x164)($t3)
	andi    $t4, $t3, 0x0002
	beqz    $t4, 68$
	nop
	lui     $t5, %hi(_camera_bss_48-0x48+0x164)
	lh      $t5, %lo(_camera_bss_48-0x48+0x164)($t5)
	li      $at, -0x0003
	and     $t6, $t5, $at
	lui     $at, %hi(_camera_bss_48-0x48+0x164)
	sh      $t6, %lo(_camera_bss_48-0x48+0x164)($at)
	lui     $t7, %hi(camera_8033C848)
	lh      $t7, %lo(camera_8033C848)($t7)
	lui     $at, %hi(camera_8033C848)
	ori     $t8, $t7, 0x0002
	b       74$
	sh      $t8, %lo(camera_8033C848)($at)
68$:
	lui     $t9, %hi(camera_8033C848)
	lh      $t9, %lo(camera_8033C848)($t9)
	li      $at, -0x0003
	and     $t0, $t9, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t0, %lo(camera_8033C848)($at)
74$:
	lui     $t1, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t1, %lo(_camera_bss_48-0x48+0x16C)($t1)
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	ori     $t2, $t1, 0x0004
	sh      $t2, %lo(_camera_bss_48-0x48+0x16C)($at)
79$:
	lui     $t3, %hi(_camera_bss_48-0x48+0x164)
	lh      $t3, %lo(_camera_bss_48-0x48+0x164)($t3)
	andi    $t4, $t3, 0x0001
	beqz    $t4, 86$
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0004($sp)
86$:
	b       90$
	lw      $v0, 0x0004($sp)
	b       90$
	nop
90$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80288888:
	andi    $a0, $a0, 0x00FF
	addiu   $t6, $a0, -0x0001
	sltiu   $at, $t6, 0x0006
	beqz    $at, 65$
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(camera_80337304)
	addu    $at, $at, $t6
	lw      $t6, %lo(camera_80337304)($at)
	jr      $t6
	nop
.globl L802888B4
L802888B4:
	li      $t7, 0x0600
	lui     $at, %hi(_camera_bss_48-0x48+0x148)
	sh      $t7, %lo(_camera_bss_48-0x48+0x148)($at)
	lui     $at, %hi(camera_8033731C)
	lwc1    $f4, %lo(camera_8033731C)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x150)($at)
	b       70$
	nop
.globl L802888D8
L802888D8:
	li      $t8, 0x0300
	lui     $at, %hi(_camera_bss_48-0x48+0x148)
	sh      $t8, %lo(_camera_bss_48-0x48+0x148)($at)
	lui     $at, %hi(camera_80337320)
	lwc1    $f6, %lo(camera_80337320)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f6, %lo(_camera_bss_48-0x48+0x150)($at)
	b       70$
	nop
.globl L802888FC
L802888FC:
	li      $t9, 0x1000
	lui     $at, %hi(_camera_bss_48-0x48+0x148)
	sh      $t9, %lo(_camera_bss_48-0x48+0x148)($at)
	lui     $at, %hi(camera_80337324)
	lwc1    $f8, %lo(camera_80337324)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f8, %lo(_camera_bss_48-0x48+0x150)($at)
	b       70$
	nop
.globl L80288920
L80288920:
	li      $t0, 0x0600
	lui     $at, %hi(_camera_bss_48-0x48+0x148)
	sh      $t0, %lo(_camera_bss_48-0x48+0x148)($at)
	lui     $at, %hi(camera_80337328)
	lwc1    $f10, %lo(camera_80337328)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f10, %lo(_camera_bss_48-0x48+0x150)($at)
	b       70$
	nop
.globl L80288944
L80288944:
	li      $t1, 0x0600
	lui     $at, %hi(_camera_bss_48-0x48+0x148)
	sh      $t1, %lo(_camera_bss_48-0x48+0x148)($at)
	lui     $at, %hi(camera_8033732C)
	lwc1    $f16, %lo(camera_8033732C)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f16, %lo(_camera_bss_48-0x48+0x150)($at)
	b       70$
	nop
.globl L80288968
L80288968:
	li      $t2, 0x0400
	lui     $at, %hi(_camera_bss_48-0x48+0x148)
	sh      $t2, %lo(_camera_bss_48-0x48+0x148)($at)
	lui     $at, %hi(camera_80337330)
	lwc1    $f18, %lo(camera_80337330)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f18, %lo(_camera_bss_48-0x48+0x150)($at)
	b       70$
	nop
65$:
	lui     $at, %hi(_camera_bss_48-0x48+0x148)
	sh      $0, %lo(_camera_bss_48-0x48+0x148)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x150)($at)
70$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_802889B0:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	lui     $t6, %hi(_camera_bss_48-0x48+0x148)
	lh      $t6, %lo(_camera_bss_48-0x48+0x148)($t6)
	bnez    $t6, 15$
	nop
	addiu   $a0, $sp, 0x0060
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	b       136$
	nop
15$:
	sw      $0, 0x006C($sp)
16$:
	lw      $t7, 0x006C($sp)
	lui     $t9, %hi(_camera_bss_48-0x48+0x110)
	sll     $t8, $t7, 4
	addu    $t9, $t9, $t8
	lh      $t9, %lo(_camera_bss_48-0x48+0x110)($t9)
	sll     $t0, $t7, 2
	subu    $t0, $t0, $t7
	mtc1    $t9, $f4
	sll     $t0, $t0, 2
	addu    $t1, $sp, $t0
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0030($t1)
	lw      $t2, 0x006C($sp)
	lui     $t4, %hi(_camera_bss_48-0x48+0x112)
	sll     $t3, $t2, 4
	addu    $t4, $t4, $t3
	lh      $t4, %lo(_camera_bss_48-0x48+0x112)($t4)
	sll     $t5, $t2, 2
	subu    $t5, $t5, $t2
	mtc1    $t4, $f8
	sll     $t5, $t5, 2
	addu    $t6, $sp, $t5
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0034($t6)
	lw      $t8, 0x006C($sp)
	lui     $t7, %hi(_camera_bss_48-0x48+0x114)
	sll     $t9, $t8, 4
	addu    $t7, $t7, $t9
	lh      $t7, %lo(_camera_bss_48-0x48+0x114)($t7)
	sll     $t0, $t8, 2
	subu    $t0, $t0, $t8
	mtc1    $t7, $f16
	sll     $t0, $t0, 2
	addu    $t1, $sp, $t0
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0038($t1)
	lw      $t3, 0x006C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, 16$
	sw      $t4, 0x006C($sp)
	addiu   $t2, $sp, 0x0030
	addiu   $t5, $t2, 0x0018
	addiu   $t6, $t2, 0x0024
	lui     $at, %hi(_camera_bss_48-0x48+0x14C)
	lwc1    $f12, %lo(_camera_bss_48-0x48+0x14C)($at)
	sw      $t6, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	move    $a2, $t2
	addiu   $a3, $t2, 0x000C
	jal     camera_80287EA0
	addiu   $a1, $sp, 0x0060
	lui     $at, %hi(_camera_bss_48-0x48+0x14C)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0x14C)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	lwc1    $f6, %lo(_camera_bss_48-0x48+0x150)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x14C)
	add.s   $f8, $f4, $f6
	swc1    $f8, %lo(_camera_bss_48-0x48+0x14C)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	nop
	c.le.s  $f10, $f8
	nop
	bc1f    136$
	nop
	sw      $0, 0x006C($sp)
83$:
	lw      $t9, 0x006C($sp)
	la.u    $t0, _camera_bss_48-0x48+0x108
	la.l    $t0, _camera_bss_48-0x48+0x108
	sll     $t7, $t9, 4
	addiu   $t8, $t7, 0x0008
	addiu   $t1, $t7, 0x0018
	addu    $a1, $t1, $t0
	jal     vecs_cpy
	addu    $a0, $t8, $t0
	lw      $t3, 0x006C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0003
	bnez    $at, 83$
	sw      $t4, 0x006C($sp)
	lui     $t5, %hi(_camera_bss_48-0x48+0x148)
	lh      $t5, %lo(_camera_bss_48-0x48+0x148)($t5)
	la.u    $a0, _camera_bss_48-0x48+0x108
	la.l    $a0, _camera_bss_48-0x48+0x108
	addiu   $a0, $a0, 0x0038
	move    $a1, $t5
	move    $a2, $t5
	bgez    $t5, 108$
	sra     $a3, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $a3, $at, 1
108$:
	jal     camera_80289C00
	nop
	lui     $at, %hi(_camera_bss_48-0x48+0x14C)
	lwc1    $f16, %lo(_camera_bss_48-0x48+0x14C)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lui     $at, %hi(_camera_bss_48-0x48+0x14C)
	sub.s   $f4, $f16, $f18
	swc1    $f4, %lo(_camera_bss_48-0x48+0x14C)($at)
	jal     randf
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	mul.s   $f10, $f0, $f6
	swc1    $f10, %lo(_camera_bss_48-0x48+0x150)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	lwc1    $f8, %lo(_camera_bss_48-0x48+0x150)($at)
	lui     $at, %hi(camera_80337334)
	lwc1    $f16, %lo(camera_80337334)($at)
	c.lt.s  $f8, $f16
	nop
	bc1f    136$
	nop
	lui     $at, %hi(camera_80337338)
	lwc1    $f18, %lo(camera_80337338)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f18, %lo(_camera_bss_48-0x48+0x150)($at)
136$:
	addiu   $t2, $sp, 0x0060
	lwc1    $f4, 0x0000($t2)
	la.u    $a0, _camera_bss_48-0x48+0x154
	la.l    $a0, _camera_bss_48-0x48+0x154
	trunc.w.s $f6, $f4
	li      $a2, 0x0008
	mfc1    $a1, $f6
	jal     camera_802894B4
	nop
	addiu   $t9, $sp, 0x0060
	lwc1    $f10, 0x0004($t9)
	la.u    $a0, _camera_bss_48-0x48+0x156
	la.l    $a0, _camera_bss_48-0x48+0x156
	trunc.w.s $f8, $f10
	li      $a2, 0x0008
	mfc1    $a1, $f8
	jal     camera_802894B4
	nop
	addiu   $t7, $sp, 0x0060
	lwc1    $f16, 0x0008($t7)
	la.u    $a0, _camera_bss_48-0x48+0x158
	la.l    $a0, _camera_bss_48-0x48+0x158
	trunc.w.s $f18, $f16
	li      $a2, 0x0008
	mfc1    $a1, $f18
	jal     camera_802894B4
	nop
	lui     $t0, %hi(_camera_bss_48-0x48+0x154)
	lui     $t3, %hi(_camera_bss_48-0x48+0x156)
	lh      $t3, %lo(_camera_bss_48-0x48+0x156)($t3)
	lh      $t0, %lo(_camera_bss_48-0x48+0x154)($t0)
	or      $t4, $t0, $t3
	beqz    $t4, 194$
	nop
	addiu   $t5, $sp, 0x0028
	sw      $t5, 0x0010($sp)
	lw      $a0, 0x0070($sp)
	lw      $a1, 0x0074($sp)
	addiu   $a2, $sp, 0x002C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x002A
	lui     $t6, %hi(_camera_bss_48-0x48+0x154)
	lh      $t6, %lo(_camera_bss_48-0x48+0x154)($t6)
	lh      $t2, 0x002A($sp)
	addu    $t9, $t2, $t6
	sh      $t9, 0x002A($sp)
	lui     $t7, %hi(_camera_bss_48-0x48+0x156)
	lh      $t7, %lo(_camera_bss_48-0x48+0x156)($t7)
	lh      $t8, 0x0028($sp)
	addu    $t1, $t8, $t7
	sh      $t1, 0x0028($sp)
	lh      $t0, 0x0028($sp)
	lw      $a0, 0x0070($sp)
	lw      $a1, 0x0074($sp)
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x002A($sp)
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
194$:
	lui     $at, %hi(_camera_bss_48-0x48+0x148)
	sh      $0, %lo(_camera_bss_48-0x48+0x148)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x150)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x150)($at)
	b       201$
	nop
201$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

camera_80288CE4:
	andi    $a0, $a0, 0xFFFF
	andi    $a1, $a1, 0xFFFF
	andi    $a2, $a2, 0xFFFF
	andi    $t6, $a1, 0x000F
	move    $a1, $t6
	andi    $t7, $a1, 0xFFFF
	move    $a1, $t7
	andi    $t8, $a2, 0x000F
	move    $a2, $t8
	andi    $t9, $a2, 0xFFFF
	move    $a2, $t9
	andi    $t0, $a1, 0x0002
	beqz    $t0, 23$
	nop
	ori     $t1, $a0, 0x0002
	move    $a0, $t1
	andi    $t2, $a0, 0xFFFF
	move    $a0, $t2
	li      $at, -0x0002
	and     $t3, $a0, $at
	move    $a0, $t3
	andi    $t4, $a0, 0xFFFF
	move    $a0, $t4
23$:
	andi    $t5, $a2, 0x0002
	bnez    $t5, 31$
	nop
	li      $at, -0x0003
	and     $t6, $a0, $at
	move    $a0, $t6
	andi    $t7, $a0, 0xFFFF
	move    $a0, $t7
31$:
	andi    $t8, $a1, 0x0001
	beqz    $t8, 43$
	nop
	ori     $t9, $a0, 0x0001
	move    $a0, $t9
	andi    $t0, $a0, 0xFFFF
	move    $a0, $t0
	li      $at, -0x0003
	and     $t1, $a0, $at
	move    $a0, $t1
	andi    $t2, $a0, 0xFFFF
	move    $a0, $t2
43$:
	andi    $t3, $a2, 0x0001
	bnez    $t3, 51$
	nop
	li      $at, -0x0002
	and     $t4, $a0, $at
	move    $a0, $t4
	andi    $t5, $a0, 0xFFFF
	move    $a0, $t5
51$:
	andi    $t6, $a1, 0x0008
	beqz    $t6, 63$
	nop
	ori     $t7, $a0, 0x0008
	move    $a0, $t7
	andi    $t8, $a0, 0xFFFF
	move    $a0, $t8
	li      $at, -0x0005
	and     $t9, $a0, $at
	move    $a0, $t9
	andi    $t0, $a0, 0xFFFF
	move    $a0, $t0
63$:
	andi    $t1, $a2, 0x0008
	bnez    $t1, 71$
	nop
	li      $at, -0x0009
	and     $t2, $a0, $at
	move    $a0, $t2
	andi    $t3, $a0, 0xFFFF
	move    $a0, $t3
71$:
	andi    $t4, $a1, 0x0004
	beqz    $t4, 83$
	nop
	ori     $t5, $a0, 0x0004
	move    $a0, $t5
	andi    $t6, $a0, 0xFFFF
	move    $a0, $t6
	li      $at, -0x0009
	and     $t7, $a0, $at
	move    $a0, $t7
	andi    $t8, $a0, 0xFFFF
	move    $a0, $t8
83$:
	andi    $t9, $a2, 0x0004
	bnez    $t9, 91$
	nop
	li      $at, -0x0005
	and     $t0, $a0, $at
	move    $a0, $t0
	andi    $t1, $a0, 0xFFFF
	move    $a0, $t1
91$:
	jr      $ra
	move    $v0, $a0
	jr      $ra
	nop
	jr      $ra
	nop

camera_80288E68:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sh      $0, 0x001E($sp)
	lw      $t6, 0x0020($sp)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, 19$
	nop
	lui     $t8, %hi(cont1)
	lw      $t8, %lo(cont1)($t8)
	lhu     $t9, 0x0010($t8)
	andi    $t0, $t9, 0x0010
	beqz    $t0, 23$
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, 23$
	nop
19$:
	lh      $t1, 0x001E($sp)
	ori     $t2, $t1, 0x0004
	b       35$
	sh      $t2, 0x001E($sp)
23$:
	jal     camera_80288718
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, 32$
	nop
	lh      $t3, 0x001E($sp)
	ori     $t4, $t3, 0x0001
	b       35$
	sh      $t4, 0x001E($sp)
32$:
	lh      $t5, 0x001E($sp)
	ori     $t6, $t5, 0x0002
	sh      $t6, 0x001E($sp)
35$:
	lui     $t7, %hi(camera_8033C848)
	lh      $t7, %lo(camera_8033C848)($t7)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 43$
	nop
	lh      $t9, 0x001E($sp)
	ori     $t0, $t9, 0x0008
	sh      $t0, 0x001E($sp)
43$:
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	andi    $t2, $t1, 0x2000
	beqz    $t2, 51$
	nop
	lh      $t3, 0x001E($sp)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x001E($sp)
51$:
	jal     hud_set_camera
	lh      $a0, 0x001E($sp)
	b       57$
	lh      $v0, 0x001E($sp)
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80288F5C:
	addiu   $sp, $sp, -0x0098
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0098($sp)
	sw      $a1, 0x009C($sp)
	sw      $a2, 0x00A0($sp)
	sw      $0, 0x006C($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0098($sp)
	lwc1    $f4, 0x0000($t6)
	swc1    $f4, 0x0070($sp)
	lw      $t7, 0x0098($sp)
	lwc1    $f6, 0x0004($t7)
	swc1    $f6, 0x0074($sp)
	lw      $t8, 0x0098($sp)
	lwc1    $f8, 0x0008($t8)
	swc1    $f8, 0x0078($sp)
	lwc1    $f10, 0x00A0($sp)
	swc1    $f10, 0x0080($sp)
	lwc1    $f16, 0x009C($sp)
	swc1    $f16, 0x007C($sp)
	jal     bg_check_wall
	addiu   $a0, $sp, 0x0070
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	beqz    $t9, 135$
	nop
	lh      $t0, 0x0086($sp)
	sw      $0, 0x0020($sp)
	blez    $t0, 135$
	nop
30$:
	lh      $t1, 0x0086($sp)
	sll     $t2, $t1, 2
	addu    $t3, $sp, $t2
	lw      $t3, 0x0084($t3)
	sw      $t3, 0x006C($sp)
	lw      $t4, 0x0020($sp)
	addiu   $t6, $sp, 0x0024
	lw      $a1, 0x0098($sp)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	jal     vecf_cpy
	addu    $a0, $t5, $t6
	lw      $t7, 0x006C($sp)
	lwc1    $f18, 0x001C($t7)
	swc1    $f18, 0x0068($sp)
	lw      $t8, 0x006C($sp)
	lwc1    $f4, 0x0020($t8)
	swc1    $f4, 0x0064($sp)
	lw      $t9, 0x006C($sp)
	lwc1    $f6, 0x0024($t9)
	swc1    $f6, 0x0060($sp)
	lw      $t0, 0x006C($sp)
	lwc1    $f8, 0x0028($t0)
	swc1    $f8, 0x005C($sp)
	lw      $t1, 0x0020($sp)
	addiu   $t3, $sp, 0x0024
	lwc1    $f10, 0x0068($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t4, $t2, $t3
	lwc1    $f16, 0x0000($t4)
	lwc1    $f6, 0x0004($t4)
	lwc1    $f4, 0x0064($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f16, 0x0008($t4)
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0060($sp)
	mul.s   $f6, $f16, $f4
	add.s   $f10, $f18, $f8
	lwc1    $f8, 0x005C($sp)
	add.s   $f18, $f6, $f10
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0058($sp)
	lwc1    $f4, 0x0058($sp)
	mtc1    $0, $f6
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    84$
	nop
	b       87$
	swc1    $f4, 0x0054($sp)
84$:
	lwc1    $f10, 0x0058($sp)
	neg.s   $f18, $f10
	swc1    $f18, 0x0054($sp)
87$:
	lwc1    $f8, 0x0054($sp)
	lwc1    $f16, 0x00A0($sp)
	c.lt.s  $f8, $f16
	nop
	bc1f    129$
	nop
	lwc1    $f6, 0x00A0($sp)
	lwc1    $f4, 0x0058($sp)
	lwc1    $f18, 0x0068($sp)
	lw      $t5, 0x0020($sp)
	sub.s   $f10, $f6, $f4
	addiu   $t7, $sp, 0x0024
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	mul.s   $f8, $f18, $f10
	sll     $t6, $t6, 2
	addu    $t8, $t6, $t7
	lwc1    $f16, 0x0000($t8)
	add.s   $f6, $f16, $f8
	swc1    $f6, 0x0000($t8)
	lwc1    $f4, 0x00A0($sp)
	lwc1    $f18, 0x0058($sp)
	lwc1    $f16, 0x0060($sp)
	lw      $t9, 0x0020($sp)
	sub.s   $f10, $f4, $f18
	addiu   $t1, $sp, 0x0024
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	mul.s   $f8, $f16, $f10
	sll     $t0, $t0, 2
	addu    $t2, $t0, $t1
	lwc1    $f6, 0x0008($t2)
	add.s   $f4, $f6, $f8
	swc1    $f4, 0x0008($t2)
	lw      $t3, 0x0020($sp)
	addiu   $t5, $sp, 0x0024
	lw      $a0, 0x0098($sp)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	jal     vecf_cpy
	addu    $a1, $t4, $t5
129$:
	lw      $t6, 0x0020($sp)
	lh      $t8, 0x0086($sp)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t8
	bnez    $at, 30$
	sw      $t7, 0x0020($sp)
135$:
	b       139$
	lw      $v0, 0x001C($sp)
	b       139$
	nop
139$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0098
	jr      $ra
	nop

camera_80289198:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	sw      $0, 0x0004($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x000C($sp)
	c.eq.s  $f4, $f6
	nop
	bc1f    25$
	nop
	lwc1    $f8, 0x0004($a0)
	lwc1    $f10, 0x0010($sp)
	c.eq.s  $f8, $f10
	nop
	bc1f    25$
	nop
	lwc1    $f16, 0x0008($a0)
	lwc1    $f18, 0x0014($sp)
	c.eq.s  $f16, $f18
	nop
	bc1f    25$
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0004($sp)
25$:
	b       29$
	lw      $v0, 0x0004($sp)
	b       29$
	nop
29$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80289214:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $0, 0x002C($sp)
	addiu   $t6, $sp, 0x0028
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x002A
	lh      $t7, 0x002A($sp)
	lh      $t8, 0x003A($sp)
	slt     $at, $t8, $t7
	beqz    $at, 24$
	nop
	lh      $t9, 0x003A($sp)
	sh      $t9, 0x002A($sp)
	lw      $t0, 0x002C($sp)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x002C($sp)
24$:
	lh      $t2, 0x002A($sp)
	lh      $t3, 0x003E($sp)
	slt     $at, $t2, $t3
	beqz    $at, 34$
	nop
	lh      $t4, 0x003E($sp)
	sh      $t4, 0x002A($sp)
	lw      $t5, 0x002C($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x002C($sp)
34$:
	lh      $t7, 0x0028($sp)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x002A($sp)
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	b       45$
	lw      $v0, 0x002C($sp)
	b       45$
	nop
45$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_802892D8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $0, 0x0024($sp)
	addiu   $a0, $sp, 0x0018
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x002C($sp)
	jal     vecf_set
	lw      $a3, 0x0030($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	addiu   $a1, $sp, 0x0018
	jal     camera_8028AC28
	addiu   $a0, $a0, 0x0004
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    25$
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0024($sp)
25$:
	b       29$
	lw      $v0, 0x0024($sp)
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028935C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 16$
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     camera_802893F4
	lw      $a2, 0x0020($sp)
	b       19$
	nop
16$:
	lwc1    $f4, 0x001C($sp)
	lw      $t8, 0x0018($sp)
	swc1    $f4, 0x0000($t8)
19$:
	lw      $t9, 0x0018($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f6, 0x0000($t9)
	c.eq.s  $f6, $f8
	nop
	bc1f    30$
	nop
	b       34$
	move    $v0, $0
	b       32$
	nop
30$:
	b       34$
	li      $v0, 0x0001
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802893F4:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    13$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0008($sp)
13$:
	lwc1    $f10, 0x0004($sp)
	lwc1    $f16, 0x0000($a0)
	lwc1    $f4, 0x0008($sp)
	lwc1    $f8, 0x0000($a0)
	sub.s   $f18, $f10, $f16
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0000($a0)
	lwc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x0004($sp)
	c.eq.s  $f16, $f18
	nop
	bc1f    31$
	nop
	b       35$
	move    $v0, $0
	b       33$
	nop
31$:
	b       35$
	li      $v0, 0x0001
33$:
	b       35$
	nop
35$:
	jr      $ra
	nop

camera_80289488:
	sw      $a2, 0x0008($sp)
	sub.s   $f4, $f14, $f12
	lwc1    $f6, 0x0008($sp)
	mul.s   $f8, $f4, $f6
	add.s   $f12, $f8, $f12
	b       9$
	mov.s   $f0, $f12
	b       9$
	nop
9$:
	jr      $ra
	nop

camera_802894B4:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0000($a0)
	sh      $t6, 0x0006($sp)
	bnez    $a2, 11$
	nop
	b       33$
	sh      $a1, 0x0000($a0)
11$:
	lh      $t7, 0x0006($sp)
	subu    $t8, $t7, $a1
	sh      $t8, 0x0006($sp)
	lh      $t9, 0x0006($sp)
	div     $0, $t9, $a2
	mflo    $t0
	subu    $t1, $t9, $t0
	sh      $t1, 0x0006($sp)
	bnez    $a2, 22$
	nop
	break   7
22$:
	li      $at, -0x0001
	bne     $a2, $at, 28$
	li      $at, 0x80000000
	bne     $t9, $at, 28$
	nop
	break   6
28$:
	lh      $t2, 0x0006($sp)
	addu    $t3, $t2, $a1
	sh      $t3, 0x0006($sp)
	lh      $t4, 0x0006($sp)
	sh      $t4, 0x0000($a0)
33$:
	lh      $t5, 0x0000($a0)
	bne     $t5, $a1, 40$
	nop
	b       44$
	move    $v0, $0
	b       42$
	nop
40$:
	b       44$
	li      $v0, 0x0001
42$:
	b       44$
	nop
44$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028956C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	sh      $a0, 0x0006($sp)
	bnez    $a2, 14$
	nop
	sll     $a0, $a1, 16
	sra     $t6, $a0, 16
	b       35$
	move    $a0, $t6
14$:
	lh      $t7, 0x0006($sp)
	subu    $t8, $t7, $a1
	sh      $t8, 0x0006($sp)
	lh      $t9, 0x0006($sp)
	div     $0, $t9, $a2
	mflo    $t0
	subu    $t1, $t9, $t0
	sh      $t1, 0x0006($sp)
	bnez    $a2, 25$
	nop
	break   7
25$:
	li      $at, -0x0001
	bne     $a2, $at, 31$
	li      $at, 0x80000000
	bne     $t9, $at, 31$
	nop
	break   6
31$:
	lh      $t2, 0x0006($sp)
	addu    $t3, $t2, $a1
	sh      $t3, 0x0006($sp)
	lh      $a0, 0x0006($sp)
35$:
	b       39$
	move    $v0, $a0
	b       39$
	nop
39$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80289610:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lw      $a2, 0x0020($sp)
	jal     camera_802893F4
	lw      $a1, 0x0000($t6)
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lw      $a2, 0x0024($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_802893F4
	lw      $a1, 0x0004($t7)
	lw      $a0, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lw      $a2, 0x0028($sp)
	addiu   $a0, $a0, 0x0008
	jal     camera_802893F4
	lw      $a1, 0x0008($t8)
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80289684:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lw      $a2, 0x0020($sp)
	jal     camera_8028935C
	lw      $a1, 0x0000($t6)
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lw      $a2, 0x0024($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_8028935C
	lw      $a1, 0x0004($t7)
	lw      $a0, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lw      $a2, 0x0028($sp)
	addiu   $a0, $a0, 0x0008
	jal     camera_8028935C
	lw      $a1, 0x0008($t8)
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802896F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lh      $a2, 0x0022($sp)
	jal     camera_802894B4
	lh      $a1, 0x0000($t6)
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lh      $a2, 0x0026($sp)
	addiu   $a0, $a0, 0x0002
	jal     camera_802894B4
	lh      $a1, 0x0002($t7)
	lw      $a0, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lh      $a2, 0x002A($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_802894B4
	lh      $a1, 0x0004($t8)
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028976C:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0000($a0)
	subu    $t7, $a1, $t6
	sh      $t7, 0x0006($sp)
	bgez    $a2, 16$
	nop
	subu    $t8, $0, $a2
	move    $a2, $t8
	sll     $t9, $a2, 16
	move    $a2, $t9
	sra     $t0, $a2, 16
	move    $a2, $t0
16$:
	lh      $t1, 0x0006($sp)
	blez    $t1, 32$
	nop
	lh      $t2, 0x0006($sp)
	subu    $t3, $t2, $a2
	sh      $t3, 0x0006($sp)
	lh      $t4, 0x0006($sp)
	bltz    $t4, 29$
	nop
	lh      $t5, 0x0006($sp)
	subu    $t6, $a1, $t5
	b       30$
	sh      $t6, 0x0000($a0)
29$:
	sh      $a1, 0x0000($a0)
30$:
	b       43$
	nop
32$:
	lh      $t7, 0x0006($sp)
	addu    $t8, $t7, $a2
	sh      $t8, 0x0006($sp)
	lh      $t9, 0x0006($sp)
	bgtz    $t9, 42$
	nop
	lh      $t0, 0x0006($sp)
	subu    $t1, $a1, $t0
	b       43$
	sh      $t1, 0x0000($a0)
42$:
	sh      $a1, 0x0000($a0)
43$:
	lh      $t2, 0x0000($a0)
	bne     $t2, $a1, 50$
	nop
	b       54$
	move    $v0, $0
	b       52$
	nop
50$:
	b       54$
	li      $v0, 0x0001
52$:
	b       54$
	nop
54$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028984C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	subu    $t6, $a1, $a0
	sh      $t6, 0x0006($sp)
	bgez    $a2, 17$
	nop
	subu    $t7, $0, $a2
	move    $a2, $t7
	sll     $t8, $a2, 16
	move    $a2, $t8
	sra     $t9, $a2, 16
	move    $a2, $t9
17$:
	lh      $t0, 0x0006($sp)
	blez    $t0, 38$
	nop
	lh      $t1, 0x0006($sp)
	subu    $t2, $t1, $a2
	sh      $t2, 0x0006($sp)
	lh      $t3, 0x0006($sp)
	bltz    $t3, 33$
	nop
	lh      $t4, 0x0006($sp)
	subu    $a0, $a1, $t4
	sll     $t5, $a0, 16
	move    $a0, $t5
	sra     $t6, $a0, 16
	b       36$
	move    $a0, $t6
33$:
	sll     $a0, $a1, 16
	sra     $t7, $a0, 16
	move    $a0, $t7
36$:
	b       54$
	nop
38$:
	lh      $t8, 0x0006($sp)
	addu    $t9, $t8, $a2
	sh      $t9, 0x0006($sp)
	lh      $t0, 0x0006($sp)
	bgtz    $t0, 51$
	nop
	lh      $t1, 0x0006($sp)
	subu    $a0, $a1, $t1
	sll     $t2, $a0, 16
	move    $a0, $t2
	sra     $t3, $a0, 16
	b       54$
	move    $a0, $t3
51$:
	sll     $a0, $a1, 16
	sra     $t4, $a0, 16
	move    $a0, $t4
54$:
	b       58$
	move    $v0, $a0
	b       58$
	nop
58$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028993C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 16$
	nop
	lw      $a0, 0x0018($sp)
	lh      $a1, 0x001E($sp)
	jal     camera_8028976C
	lh      $a2, 0x0022($sp)
	b       19$
	nop
16$:
	lh      $t8, 0x001E($sp)
	lw      $t9, 0x0018($sp)
	sh      $t8, 0x0000($t9)
19$:
	lw      $t0, 0x0018($sp)
	lh      $t2, 0x001E($sp)
	lh      $t1, 0x0000($t0)
	bne     $t1, $t2, 28$
	nop
	b       32$
	move    $v0, $0
	b       30$
	nop
28$:
	b       32$
	li      $v0, 0x0001
30$:
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802899CC:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x0000($a0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0010($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    19$
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f18
	lwc1    $f4, 0x0010($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0010($sp)
19$:
	lwc1    $f8, 0x0004($sp)
	mtc1    $0, $f10
	nop
	c.lt.s  $f10, $f8
	nop
	bc1f    46$
	nop
	lwc1    $f16, 0x0004($sp)
	lwc1    $f18, 0x0010($sp)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0004($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f6
	nop
	bc1f    42$
	nop
	lwc1    $f10, 0x000C($sp)
	lwc1    $f16, 0x0004($sp)
	sub.s   $f18, $f10, $f16
	b       44$
	swc1    $f18, 0x0000($a0)
42$:
	lwc1    $f4, 0x000C($sp)
	swc1    $f4, 0x0000($a0)
44$:
	b       64$
	nop
46$:
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0010($sp)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($sp)
	lwc1    $f16, 0x0004($sp)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    62$
	nop
	lwc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x0004($sp)
	sub.s   $f8, $f4, $f6
	b       64$
	swc1    $f8, 0x0000($a0)
62$:
	lwc1    $f10, 0x000C($sp)
	swc1    $f10, 0x0000($a0)
64$:
	lwc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x000C($sp)
	c.eq.s  $f16, $f18
	nop
	bc1f    74$
	nop
	b       78$
	move    $v0, $0
	b       76$
	nop
74$:
	b       78$
	li      $v0, 0x0001
76$:
	b       78$
	nop
78$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl camera_80289B0C
camera_80289B0C:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sub.s   $f4, $f14, $f12
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0010($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    16$
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f10
	lwc1    $f16, 0x0010($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0010($sp)
16$:
	lwc1    $f4, 0x0004($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    40$
	nop
	lwc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0010($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($sp)
	lwc1    $f18, 0x0004($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f4, $f18
	nop
	bc1f    37$
	nop
	lwc1    $f6, 0x0004($sp)
	b       38$
	sub.s   $f12, $f14, $f6
37$:
	mov.s   $f12, $f14
38$:
	b       55$
	nop
40$:
	lwc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0010($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($sp)
	lwc1    $f18, 0x0004($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    54$
	nop
	lwc1    $f6, 0x0004($sp)
	b       55$
	sub.s   $f12, $f14, $f6
54$:
	mov.s   $f12, $f14
55$:
	b       59$
	mov.s   $f0, $f12
	b       59$
	nop
59$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80289C00:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	jal     randf
	nop
	swc1    $f0, 0x002C($sp)
	lh      $t6, 0x0036($sp)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0024($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f10, 0x0024($sp)
	lwc1    $f8, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	div.s   $f4, $f10, $f18
	mul.s   $f16, $f8, $f10
	sub.s   $f6, $f16, $f4
	trunc.w.s $f8, $f6
	mfc1    $t8, $f8
	nop
	sh      $t8, 0x0000($t9)
	jal     randf
	nop
	swc1    $f0, 0x002C($sp)
	lh      $t0, 0x003A($sp)
	mtc1    $t0, $f10
	nop
	cvt.s.w $f18, $f10
	swc1    $f18, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f4, 0x0020($sp)
	lwc1    $f16, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	div.s   $f10, $f4, $f8
	mul.s   $f6, $f16, $f4
	sub.s   $f18, $f6, $f10
	trunc.w.s $f16, $f18
	mfc1    $t2, $f16
	nop
	sh      $t2, 0x0002($t3)
	jal     randf
	nop
	swc1    $f0, 0x002C($sp)
	lh      $t4, 0x003E($sp)
	mtc1    $t4, $f4
	nop
	cvt.s.w $f8, $f4
	swc1    $f8, 0x001C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	lwc1    $f6, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	div.s   $f4, $f10, $f16
	mul.s   $f18, $f6, $f10
	sub.s   $f8, $f18, $f4
	trunc.w.s $f6, $f8
	mfc1    $t6, $f6
	nop
	sh      $t6, 0x0004($t7)
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80289D20:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	sh      $0, 0x002E($sp)
	la.u    $t6, camdata
	la.l    $t6, camdata
	lwc1    $f4, 0x0024($t6)
	lwc1    $f6, 0x0050($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	la.u    $t7, camdata
	la.l    $t7, camdata
	lwc1    $f10, 0x0028($t7)
	lwc1    $f16, 0x0054($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	la.u    $t8, camdata
	la.l    $t8, camdata
	lwc1    $f4, 0x002C($t8)
	lwc1    $f6, 0x0058($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f6, $f16, $f4
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0038($sp)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f16, 0x0038($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    146$
	nop
	lwc1    $f4, 0x0050($sp)
	addiu   $t9, $sp, 0x003C
	swc1    $f4, 0x0000($t9)
	lwc1    $f8, 0x0054($sp)
	addiu   $t0, $sp, 0x003C
	swc1    $f8, 0x0004($t0)
	lwc1    $f6, 0x0058($sp)
	addiu   $t1, $sp, 0x003C
	swc1    $f6, 0x0008($t1)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $t2, $sp, 0x0034
	sw      $t2, 0x0010($sp)
	addiu   $a0, $a0, 0x0024
	addiu   $a1, $sp, 0x003C
	addiu   $a2, $sp, 0x0038
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0036
	lwc1    $f10, 0x0038($sp)
	lwc1    $f18, 0x004C($sp)
	c.lt.s  $f10, $f18
	nop
	bc1f    146$
	nop
	la.u    $t3, camdata
	la.l    $t3, camdata
	addiu   $a0, $t3, 0x0024
	addiu   $a1, $t3, 0x0018
	addiu   $a2, $sp, 0x0032
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0030
	lh      $t4, 0x0036($sp)
	lh      $t5, 0x0032($sp)
	subu    $t6, $t4, $t5
	sh      $t6, 0x0036($sp)
	lh      $t7, 0x0034($sp)
	lh      $t8, 0x0030($sp)
	subu    $t9, $t7, $t8
	sh      $t9, 0x0034($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	lwc1    $f16, 0x0038($sp)
	sub.s   $f8, $f16, $f4
	swc1    $f8, 0x0038($sp)
	lwc1    $f6, 0x0038($sp)
	mtc1    $0, $f10
	nop
	c.lt.s  $f6, $f10
	nop
	bc1f    96$
	nop
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0038($sp)
96$:
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	lwc1    $f16, 0x004C($sp)
	sub.s   $f8, $f16, $f4
	swc1    $f8, 0x004C($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	lwc1    $f6, 0x004C($sp)
	c.lt.s  $f6, $f10
	nop
	bc1f    112$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x004C($sp)
112$:
	lwc1    $f16, 0x0038($sp)
	lwc1    $f4, 0x004C($sp)
	lh      $t0, 0x004A($sp)
	li      $at, 0x3F800000
	div.s   $f8, $f16, $f4
	mtc1    $t0, $f18
	mtc1    $at, $f6
	cvt.s.w $f16, $f18
	sub.s   $f10, $f6, $f8
	mul.s   $f4, $f16, $f10
	trunc.w.s $f6, $f4
	mfc1    $t2, $f6
	nop
	sh      $t2, 0x002E($sp)
	lh      $t3, 0x0036($sp)
	slti    $at, $t3, -0x1800
	bnez    $at, 140$
	nop
	slti    $at, $t3, 0x0401
	beqz    $at, 140$
	nop
	lh      $t4, 0x0034($sp)
	slti    $at, $t4, -0x1800
	bnez    $at, 140$
	nop
	slti    $at, $t4, 0x1801
	bnez    $at, 146$
	nop
140$:
	lh      $t5, 0x002E($sp)
	bgez    $t5, 145$
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
145$:
	sh      $t6, 0x002E($sp)
146$:
	b       150$
	lh      $v0, 0x002E($sp)
	b       150$
	nop
150$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_80289F88:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	lh      $t7, 0x003A($t6)
	sh      $t7, 0x001E($sp)
	lw      $t8, 0x0020($sp)
	lwc1    $f6, 0x0028($sp)
	lwc1    $f4, 0x0000($t8)
	c.le.s  $f6, $f4
	nop
	bc1f    20$
	nop
	lwc1    $f8, 0x0028($sp)
	lw      $t9, 0x0020($sp)
	swc1    $f8, 0x0000($t9)
20$:
	lw      $t0, 0x0020($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f10, 0x0000($t0)
	c.le.s  $f10, $f16
	nop
	bc1f    30$
	nop
	lwc1    $f18, 0x002C($sp)
	lw      $t1, 0x0020($sp)
	swc1    $f18, 0x0000($t1)
30$:
	lw      $t2, 0x0020($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f4, 0x0008($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    40$
	nop
	lwc1    $f8, 0x0030($sp)
	lw      $t3, 0x0020($sp)
	swc1    $f8, 0x0008($t3)
40$:
	lw      $t4, 0x0020($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f10, 0x0008($t4)
	c.le.s  $f10, $f16
	nop
	bc1f    50$
	nop
	lwc1    $f18, 0x0034($sp)
	lw      $t5, 0x0020($sp)
	swc1    $f18, 0x0008($t5)
50$:
	lw      $a0, 0x0024($sp)
	jal     camera_8028AAD8
	lw      $a1, 0x0020($sp)
	sh      $v0, 0x001E($sp)
	b       58$
	lh      $v0, 0x001E($sp)
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028A080:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0030
	sw      $0, 0x0008($sp)
	sw      $0, 0x0004($sp)
	subu    $t6, $a1, $a0
	addiu   $t7, $t6, 0x4000
	sh      $t7, 0x002E($sp)
	lh      $t8, 0x002E($sp)
	bgez    $t8, 17$
	nop
	sll     $a0, $a1, 16
	sra     $t9, $a0, 16
	b       23$
	move    $a0, $t9
17$:
	li      $at, 0x8000
	addu    $a0, $a1, $at
	sll     $t0, $a0, 16
	move    $a0, $t0
	sra     $t1, $a0, 16
	move    $a0, $t1
23$:
	b       27$
	move    $v0, $a0
	b       27$
	nop
27$:
	jr      $ra
	addiu   $sp, $sp, 0x0030

camera_8028A0F4:
	addiu   $sp, $sp, -0x0040
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	sh      $0, 0x0026($sp)
	sh      $0, 0x0024($sp)
	sh      $0, 0x0022($sp)
	sw      $0, 0x0004($sp)
	lh      $t6, 0x000A($a0)
	addiu   $t7, $sp, 0x0038
	sh      $t6, 0x0000($t7)
	lh      $t8, 0x0010($a0)
	addiu   $t9, $sp, 0x0038
	sh      $t8, 0x0002($t9)
	lh      $t0, 0x0016($a0)
	addiu   $t1, $sp, 0x0038
	sh      $t0, 0x0004($t1)
	lh      $t2, 0x000C($a0)
	addiu   $t3, $sp, 0x0030
	sh      $t2, 0x0000($t3)
	lh      $t4, 0x0012($a0)
	addiu   $t5, $sp, 0x0030
	sh      $t4, 0x0002($t5)
	lh      $t6, 0x0018($a0)
	addiu   $t7, $sp, 0x0030
	sh      $t6, 0x0004($t7)
	lh      $t8, 0x000E($a0)
	addiu   $t9, $sp, 0x0028
	sh      $t8, 0x0000($t9)
	lh      $t0, 0x0014($a0)
	addiu   $t1, $sp, 0x0028
	sh      $t0, 0x0002($t1)
	lh      $t2, 0x001A($a0)
	addiu   $t3, $sp, 0x0028
	sh      $t2, 0x0004($t3)
	sw      $0, 0x000C($sp)
36$:
	lw      $t4, 0x000C($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0008($sp)
	lw      $t6, 0x0008($sp)
	slti    $at, $t6, 0x0003
	bnez    $at, 44$
	nop
	sw      $0, 0x0008($sp)
44$:
	lw      $t7, 0x000C($sp)
	lw      $t2, 0x0008($sp)
	addiu   $t9, $sp, 0x0038
	sll     $t8, $t7, 1
	sll     $t3, $t2, 1
	addu    $t4, $t3, $t9
	addu    $t0, $t8, $t9
	lh      $t1, 0x0000($t0)
	lh      $t5, 0x0000($t4)
	mtc1    $0, $f8
	subu    $t6, $t1, $t5
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    64$
	nop
	b       79$
	swc1    $f6, 0x001C($sp)
64$:
	lw      $t7, 0x000C($sp)
	lw      $t9, 0x0008($sp)
	addiu   $t0, $sp, 0x0038
	sll     $t8, $t7, 1
	sll     $t4, $t9, 1
	addu    $t1, $t4, $t0
	addu    $t2, $t8, $t0
	lh      $t3, 0x0000($t2)
	lh      $t5, 0x0000($t1)
	subu    $t6, $t3, $t5
	subu    $t7, $0, $t6
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x001C($sp)
79$:
	lh      $t8, 0x0026($sp)
	lwc1    $f18, 0x001C($sp)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f8, $f4
	c.lt.s  $f8, $f18
	nop
	bc1f    93$
	nop
	lwc1    $f6, 0x001C($sp)
	trunc.w.s $f10, $f6
	mfc1    $t9, $f10
	nop
	sh      $t9, 0x0026($sp)
93$:
	lw      $t4, 0x000C($sp)
	lw      $t6, 0x0008($sp)
	addiu   $t1, $sp, 0x0030
	sll     $t0, $t4, 1
	sll     $t7, $t6, 1
	addu    $t8, $t7, $t1
	addu    $t3, $t0, $t1
	lh      $t5, 0x0000($t3)
	lh      $t2, 0x0000($t8)
	mtc1    $0, $f18
	subu    $t9, $t5, $t2
	mtc1    $t9, $f16
	nop
	cvt.s.w $f4, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    113$
	nop
	b       128$
	swc1    $f4, 0x0018($sp)
113$:
	lw      $t4, 0x000C($sp)
	lw      $t1, 0x0008($sp)
	addiu   $t3, $sp, 0x0030
	sll     $t0, $t4, 1
	sll     $t8, $t1, 1
	addu    $t5, $t8, $t3
	addu    $t6, $t0, $t3
	lh      $t7, 0x0000($t6)
	lh      $t2, 0x0000($t5)
	subu    $t9, $t7, $t2
	subu    $t4, $0, $t9
	mtc1    $t4, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0018($sp)
128$:
	lh      $t0, 0x0024($sp)
	lwc1    $f10, 0x0018($sp)
	mtc1    $t0, $f16
	nop
	cvt.s.w $f18, $f16
	c.lt.s  $f18, $f10
	nop
	bc1f    142$
	nop
	lwc1    $f4, 0x0018($sp)
	trunc.w.s $f8, $f4
	mfc1    $t1, $f8
	nop
	sh      $t1, 0x0024($sp)
142$:
	lw      $t8, 0x000C($sp)
	lw      $t9, 0x0008($sp)
	addiu   $t5, $sp, 0x0028
	sll     $t3, $t8, 1
	sll     $t4, $t9, 1
	addu    $t0, $t4, $t5
	addu    $t7, $t3, $t5
	lh      $t2, 0x0000($t7)
	lh      $t6, 0x0000($t0)
	mtc1    $0, $f10
	subu    $t1, $t2, $t6
	mtc1    $t1, $f6
	nop
	cvt.s.w $f16, $f6
	c.lt.s  $f10, $f16
	nop
	bc1f    162$
	nop
	b       177$
	swc1    $f16, 0x0014($sp)
162$:
	lw      $t8, 0x000C($sp)
	lw      $t5, 0x0008($sp)
	addiu   $t7, $sp, 0x0028
	sll     $t3, $t8, 1
	sll     $t0, $t5, 1
	addu    $t2, $t0, $t7
	addu    $t9, $t3, $t7
	lh      $t4, 0x0000($t9)
	lh      $t6, 0x0000($t2)
	subu    $t1, $t4, $t6
	subu    $t8, $0, $t1
	mtc1    $t8, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0014($sp)
177$:
	lh      $t3, 0x0022($sp)
	lwc1    $f8, 0x0014($sp)
	mtc1    $t3, $f6
	nop
	cvt.s.w $f10, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    191$
	nop
	lwc1    $f16, 0x0014($sp)
	trunc.w.s $f18, $f16
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x0022($sp)
191$:
	lw      $t0, 0x000C($sp)
	addiu   $t7, $t0, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, 36$
	sw      $t7, 0x000C($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0048($sp)
	c.eq.s  $f4, $f6
	nop
	bc1t    214$
	nop
	lh      $t2, 0x0024($sp)
	lwc1    $f16, 0x0048($sp)
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    214$
	nop
	li      $t4, 0x0001
	sw      $t4, 0x0004($sp)
214$:
	li      $at, 0xBF800000
	mtc1    $at, $f4
	lwc1    $f18, 0x0044($sp)
	c.eq.s  $f18, $f4
	nop
	bc1t    248$
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f8
	lwc1    $f6, 0x004C($sp)
	c.eq.s  $f6, $f8
	nop
	bc1t    248$
	nop
	lh      $t6, 0x0026($sp)
	lwc1    $f18, 0x0044($sp)
	mtc1    $t6, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    248$
	nop
	lh      $t1, 0x0022($sp)
	lwc1    $f8, 0x004C($sp)
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    248$
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0004($sp)
248$:
	b       252$
	lw      $v0, 0x0004($sp)
	b       252$
	nop
252$:
	jr      $ra
	addiu   $sp, $sp, 0x0040

camera_8028A4EC:
	addiu   $sp, $sp, -0x0020
	sw      $0, 0x001C($sp)
	lh      $t6, 0x0012($a1)
	lh      $t7, 0x000C($a1)
	lh      $t9, 0x001A($a1)
	lh      $t0, 0x0014($a1)
	subu    $t8, $t6, $t7
	lh      $t7, 0x0012($a1)
	subu    $t1, $t9, $t0
	multu   $t8, $t1
	lh      $t6, 0x0018($a1)
	lh      $t3, 0x0014($a1)
	lh      $t4, 0x000E($a1)
	subu    $t9, $t6, $t7
	subu    $t5, $t3, $t4
	mflo    $t2
	nop
	nop
	multu   $t5, $t9
	mflo    $t0
	subu    $t8, $t2, $t0
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0018($sp)
	lh      $t1, 0x0014($a1)
	lh      $t3, 0x000E($a1)
	lh      $t6, 0x0016($a1)
	lh      $t7, 0x0010($a1)
	subu    $t4, $t1, $t3
	lh      $t3, 0x0014($a1)
	subu    $t5, $t6, $t7
	multu   $t4, $t5
	lh      $t1, 0x001A($a1)
	lh      $t2, 0x0010($a1)
	lh      $t0, 0x000A($a1)
	subu    $t6, $t1, $t3
	subu    $t8, $t2, $t0
	mflo    $t9
	nop
	nop
	multu   $t8, $t6
	mflo    $t7
	subu    $t4, $t9, $t7
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0014($sp)
	lh      $t5, 0x0010($a1)
	lh      $t2, 0x000A($a1)
	lh      $t1, 0x0018($a1)
	lh      $t3, 0x0012($a1)
	subu    $t0, $t5, $t2
	lh      $t2, 0x0010($a1)
	subu    $t8, $t1, $t3
	multu   $t0, $t8
	lh      $t5, 0x0016($a1)
	lh      $t9, 0x0012($a1)
	lh      $t7, 0x000C($a1)
	subu    $t1, $t5, $t2
	subu    $t4, $t9, $t7
	mflo    $t6
	nop
	nop
	multu   $t4, $t1
	mflo    $t3
	subu    $t0, $t6, $t3
	mtc1    $t0, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0010($sp)
	lh      $t8, 0x000A($a1)
	lwc1    $f8, 0x0000($a0)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x000C($sp)
	lh      $t9, 0x000C($a1)
	lwc1    $f4, 0x0004($a0)
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0008($sp)
	lh      $t7, 0x000E($a1)
	lwc1    $f16, 0x0008($a0)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($sp)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f10, 0x0008($sp)
	lwc1    $f16, 0x0014($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f6, 0x0004($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0010($sp)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	mtc1    $0, $f18
	add.s   $f8, $f4, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    110$
	nop
	li      $t5, 0x0001
	sw      $t5, 0x001C($sp)
110$:
	b       114$
	lw      $v0, 0x001C($sp)
	b       114$
	nop
114$:
	jr      $ra
	addiu   $sp, $sp, 0x0020

camera_8028A6BC:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	sw      $a3, 0x0064($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0054($sp)
	sw      $0, 0x0050($sp)
	sw      $0, 0x004C($sp)
	lw      $t7, 0x0060($sp)
	beqz    $t7, 68$
	nop
	lh      $t8, 0x006A($sp)
	li      $at, -0x0001
	beq     $t8, $at, 21$
	nop
	lw      $t9, 0x0060($sp)
	lh      $t0, 0x0000($t9)
	beq     $t0, $t8, 68$
	nop
21$:
	lh      $t1, 0x0066($sp)
	bnez    $t1, 29$
	nop
	lw      $a0, 0x005C($sp)
	jal     camera_8028A4EC
	lw      $a1, 0x0060($sp)
	b       68$
	sw      $v0, 0x0054($sp)
29$:
	addiu   $t2, $sp, 0x0030
	sw      $t2, 0x0010($sp)
	lw      $a0, 0x0058($sp)
	lw      $a1, 0x005C($sp)
	addiu   $a2, $sp, 0x0034
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0032
	lh      $t3, 0x0030($sp)
	lh      $t4, 0x0066($sp)
	lw      $a0, 0x0058($sp)
	addiu   $a1, $sp, 0x0024
	addu    $t5, $t3, $t4
	sw      $t5, 0x0010($sp)
	lw      $a2, 0x0034($sp)
	jal     polar_to_cartesian
	lh      $a3, 0x0032($sp)
	addiu   $a0, $sp, 0x0024
	jal     camera_8028A4EC
	lw      $a1, 0x0060($sp)
	sw      $v0, 0x0050($sp)
	lh      $t6, 0x0030($sp)
	lh      $t7, 0x0066($sp)
	lw      $a0, 0x0058($sp)
	addiu   $a1, $sp, 0x0024
	subu    $t9, $t6, $t7
	sw      $t9, 0x0010($sp)
	lw      $a2, 0x0034($sp)
	jal     polar_to_cartesian
	lh      $a3, 0x0032($sp)
	addiu   $a0, $sp, 0x0024
	jal     camera_8028A4EC
	lw      $a1, 0x0060($sp)
	sw      $v0, 0x004C($sp)
	lw      $t0, 0x0050($sp)
	lw      $t8, 0x004C($sp)
	multu   $t0, $t8
	mflo    $t1
	sw      $t1, 0x0054($sp)
	nop
68$:
	b       72$
	lw      $v0, 0x0054($sp)
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

camera_8028A7EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0024($sp)
	jal     camera_8028A4EC
	addiu   $a0, $a0, 0x0004
	sw      $v0, 0x001C($sp)
	b       14$
	lw      $v0, 0x001C($sp)
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028A834:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	addiu   $t8, $sp, 0x001C
	sub.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x0000($t8)
	lw      $t9, 0x0030($sp)
	lw      $t0, 0x002C($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f4, 0x0004($t9)
	lwc1    $f8, 0x0004($t0)
	addiu   $t1, $sp, 0x001C
	sub.s   $f10, $f4, $f8
	mul.s   $f16, $f10, $f6
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x0004($t1)
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x002C($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f4, 0x0008($t2)
	lwc1    $f10, 0x0008($t3)
	addiu   $t4, $sp, 0x001C
	sub.s   $f6, $f4, $f10
	mul.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($t4)
	lw      $a0, 0x0028($sp)
	jal     vecf_cpy
	addiu   $a1, $sp, 0x001C
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028A8E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $0, 0x0024($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	addiu   $t8, $sp, 0x0018
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t8)
	lw      $t9, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	addiu   $t1, $sp, 0x0018
	lwc1    $f10, 0x0004($t9)
	lwc1    $f16, 0x0004($t0)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t1)
	lw      $t2, 0x002C($sp)
	lw      $t3, 0x0028($sp)
	addiu   $t4, $sp, 0x0018
	lwc1    $f4, 0x0008($t2)
	lwc1    $f6, 0x0008($t3)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t4)
	addiu   $t5, $sp, 0x0018
	move    $a0, $t5
	move    $a1, $t5
	jal     camera_8028AD4C
	lh      $a2, 0x0036($sp)
	lw      $t6, 0x0030($sp)
	addiu   $t7, $sp, 0x0018
	lwc1    $f18, 0x0000($t7)
	lwc1    $f10, 0x0000($t6)
	neg.s   $f16, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    72$
	nop
	c.lt.s  $f18, $f10
	nop
	bc1f    72$
	nop
	lwc1    $f4, 0x0004($t6)
	lwc1    $f8, 0x0004($t7)
	neg.s   $f6, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    72$
	nop
	c.lt.s  $f8, $f4
	nop
	bc1f    72$
	nop
	lwc1    $f16, 0x0008($t6)
	lwc1    $f10, 0x0008($t7)
	neg.s   $f18, $f16
	c.lt.s  $f18, $f10
	nop
	bc1f    72$
	nop
	lwc1    $f6, 0x0008($t7)
	lwc1    $f8, 0x0008($t6)
	c.lt.s  $f6, $f8
	nop
	bc1f    72$
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0024($sp)
72$:
	b       76$
	lw      $v0, 0x0024($sp)
	b       76$
	nop
76$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AA28:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x003C($sp)
	lw      $t7, 0x0038($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lw      $t8, 0x003C($sp)
	lw      $t9, 0x0038($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t0, 0x003C($sp)
	lw      $t1, 0x0038($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	sh      $v0, 0x002A($sp)
	b       39$
	lh      $v0, 0x002A($sp)
	b       39$
	nop
39$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8028AAD8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x0028($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f12, 0x001C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001A($sp)
	b       30$
	lh      $v0, 0x001A($sp)
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AB60:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f18, 0x0024($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     ATAN2
	lwc1    $f14, 0x0028($sp)
	lw      $t2, 0x0038($sp)
	sh      $v0, 0x0000($t2)
	lwc1    $f12, 0x0024($sp)
	jal     ATAN2
	lwc1    $f14, 0x002C($sp)
	lw      $t3, 0x003C($sp)
	sh      $v0, 0x0000($t3)
	b       45$
	nop
45$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028AC28:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x0028($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f6, $f16, $f4
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0018($sp)
	b       37$
	lwc1    $f0, 0x0018($sp)
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028ACCC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0008($t8)
	lwc1    $f16, 0x0008($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x001C($sp)
	b       28$
	lwc1    $f0, 0x001C($sp)
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AD4C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x001C
	jal     vecf_cpy
	lw      $a1, 0x002C($sp)
	lhu     $t6, 0x0032($sp)
	lui     $at, %hi(math_cos)
	addiu   $t9, $sp, 0x001C
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f6, 0x0000($t9)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	mul.s   $f8, $f4, $f6
	lwc1    $f16, %lo(math_sin)($at)
	lwc1    $f10, 0x0008($t9)
	lw      $t0, 0x0028($sp)
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f8, $f18
	swc1    $f4, 0x0000($t0)
	addiu   $t1, $sp, 0x001C
	lwc1    $f6, 0x0004($t1)
	lw      $t2, 0x0028($sp)
	swc1    $f6, 0x0004($t2)
	lhu     $t4, 0x0032($sp)
	lui     $at, %hi(math_cos)
	addiu   $t3, $sp, 0x001C
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	lwc1    $f10, 0x0008($t3)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t6
	mul.s   $f8, $f10, $f16
	lwc1    $f18, %lo(math_sin)($at)
	lwc1    $f4, 0x0000($t3)
	lw      $t7, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x0008($t7)
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AE1C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x001C
	jal     vecf_cpy
	lw      $a1, 0x002C($sp)
	lhu     $t7, 0x0032($sp)
	lui     $at, %hi(math_cos)
	addiu   $t6, $sp, 0x001C
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_cos)($at)
	lwc1    $f4, 0x0008($t6)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t9
	mul.s   $f8, $f4, $f6
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f16, 0x0004($t6)
	lw      $t0, 0x0028($sp)
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f8, $f18
	neg.s   $f6, $f4
	swc1    $f6, 0x0008($t0)
	lhu     $t1, 0x0032($sp)
	lui     $at, %hi(math_cos)
	addiu   $t4, $sp, 0x001C
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	lwc1    $f16, 0x0004($t4)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	mul.s   $f8, $f10, $f16
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f18, 0x0008($t4)
	lw      $t5, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0004($t5)
	addiu   $t7, $sp, 0x001C
	lwc1    $f16, 0x0000($t7)
	lw      $t8, 0x0028($sp)
	swc1    $f16, 0x0000($t8)
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AEF0:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	la.u    $t6, camdata
	la.l    $t6, camdata
	lh      $t7, 0x0052($t6)
	slt     $at, $t7, $a0
	beqz    $at, 19$
	nop
	la.u    $t8, camdata
	la.l    $t8, camdata
	sh      $a0, 0x0052($t8)
	lui     $at, %hi(camdata+0x5C)
	sh      $a1, %lo(camdata+0x5C)($at)
	lui     $at, %hi(camdata+0x5A)
	sh      $a2, %lo(camdata+0x5A)($at)
19$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028AF4C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	mtc1    $a0, $f4
	mtc1    $0, $f8
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    16$
	nop
	b       17$
	move    $t0, $a0
16$:
	subu    $t0, $0, $a0
17$:
	la.u    $t6, camdata
	la.l    $t6, camdata
	lh      $t7, 0x0054($t6)
	mtc1    $0, $f18
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    30$
	nop
	b       34$
	move    $a3, $t7
30$:
	la.u    $t8, camdata
	la.l    $t8, camdata
	lh      $a3, 0x0054($t8)
	subu    $a3, $0, $a3
34$:
	slt     $at, $a3, $t0
	beqz    $at, 44$
	nop
	la.u    $t9, camdata
	la.l    $t9, camdata
	sh      $a0, 0x0054($t9)
	lui     $at, %hi(camdata+0xA2)
	sh      $a1, %lo(camdata+0xA2)($at)
	lui     $at, %hi(camdata+0xA0)
	sh      $a2, %lo(camdata+0xA0)($at)
44$:
	b       46$
	nop
46$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028B00C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	la.u    $t6, camdata
	la.l    $t6, camdata
	lh      $t7, 0x0056($t6)
	slt     $at, $t7, $a0
	beqz    $at, 19$
	nop
	la.u    $t8, camdata
	la.l    $t8, camdata
	sh      $a0, 0x0056($t8)
	lui     $at, %hi(camdata+0x9C)
	sh      $a1, %lo(camdata+0x9C)($at)
	lui     $at, %hi(camdata+0x9A)
	sh      $a2, %lo(camdata+0x9A)($at)
19$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028B068:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lwc1    $f4, 0x0048($sp)
	addiu   $t6, $sp, 0x002C
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x004C($sp)
	addiu   $t7, $sp, 0x002C
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0050($sp)
	addiu   $t8, $sp, 0x002C
	swc1    $f8, 0x0008($t8)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $t9, $sp, 0x0024
	sw      $t9, 0x0010($sp)
	addiu   $a0, $a0, 0x0024
	addiu   $a1, $sp, 0x002C
	addiu   $a2, $sp, 0x0028
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0026
	lwc1    $f10, 0x0050($sp)
	lh      $a0, 0x003A($sp)
	lw      $a1, 0x0044($sp)
	lw      $a2, 0x0048($sp)
	lw      $a3, 0x004C($sp)
	jal     camera_80289D20
	swc1    $f10, 0x0010($sp)
	sh      $v0, 0x003A($sp)
	lh      $t0, 0x003A($sp)
	beqz    $t0, 39$
	nop
	lh      $a0, 0x003A($sp)
	lh      $a1, 0x003E($sp)
	jal     camera_8028AEF0
	lh      $a2, 0x0042($sp)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8028B11C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lwc1    $f4, 0x0048($sp)
	addiu   $t6, $sp, 0x002C
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x004C($sp)
	addiu   $t7, $sp, 0x002C
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0050($sp)
	addiu   $t8, $sp, 0x002C
	swc1    $f8, 0x0008($t8)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $t9, $sp, 0x0024
	sw      $t9, 0x0010($sp)
	addiu   $a0, $a0, 0x0024
	addiu   $a1, $sp, 0x002C
	addiu   $a2, $sp, 0x0028
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0026
	lwc1    $f10, 0x0050($sp)
	lh      $a0, 0x003A($sp)
	lw      $a1, 0x0044($sp)
	lw      $a2, 0x0048($sp)
	lw      $a3, 0x004C($sp)
	jal     camera_80289D20
	swc1    $f10, 0x0010($sp)
	sh      $v0, 0x003A($sp)
	lh      $t0, 0x003A($sp)
	beqz    $t0, 39$
	nop
	lh      $a0, 0x003A($sp)
	lh      $a1, 0x003E($sp)
	jal     camera_8028AF4C
	lh      $a2, 0x0042($sp)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8028B1D0:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	li      $at, -0x8000
	bne     $a1, $at, 11$
	nop
	lh      $t6, 0x0000($a0)
	li      $at, 0xC000
	andi    $t7, $t6, 0x8000
	addu    $t8, $t7, $at
	b       14$
	sh      $t8, 0x0000($a0)
11$:
	lh      $t9, 0x0000($a0)
	addu    $t0, $t9, $a1
	sh      $t0, 0x0000($a0)
14$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028B218:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	la.u    $t6, camdata
	la.l    $t6, camdata
	lh      $t7, 0x0054($t6)
	lh      $t8, 0x0052($t6)
	or      $t9, $t7, $t8
	beqz    $t9, 63$
	nop
	addiu   $t0, $sp, 0x0020
	sw      $t0, 0x0010($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0022
	la.u    $t1, camdata
	la.l    $t1, camdata
	lh      $t2, 0x0052($t1)
	lui     $t3, %hi(camdata+0x58)
	lhu     $t3, %lo(camdata+0x58)($t3)
	mtc1    $t2, $f4
	lh      $t6, 0x0022($sp)
	sra     $t4, $t3, 4
	cvt.s.w $f6, $f4
	sll     $t5, $t4, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f8, %lo(math_sin)($at)
	mtc1    $t6, $f16
	mul.s   $f10, $f6, $f8
	cvt.s.w $f18, $f16
	add.s   $f4, $f18, $f10
	trunc.w.s $f6, $f4
	mfc1    $t8, $f6
	nop
	sh      $t8, 0x0022($sp)
	lh      $t9, 0x0020($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	lui     $a1, %hi(camdata+0x5A)
	lh      $a1, %lo(camdata+0x5A)($a1)
	jal     camera_8028B1D0
	addiu   $a0, $a0, 0x0058
	la.u    $a0, camdata
	la.l    $a0, camdata
	lui     $a2, %hi(camdata+0x5C)
	lh      $a2, %lo(camdata+0x5C)($a2)
	addiu   $a0, $a0, 0x0052
	jal     camera_8028976C
	move    $a1, $0
	bnez    $v0, 63$
	nop
	lui     $at, %hi(camdata+0x58)
	sh      $0, %lo(camdata+0x58)($at)
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028B32C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	la.u    $t6, camdata
	la.l    $t6, camdata
	lh      $t7, 0x0054($t6)
	beqz    $t7, 61$
	nop
	addiu   $t8, $sp, 0x0020
	sw      $t8, 0x0010($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0022
	la.u    $t9, camdata
	la.l    $t9, camdata
	lh      $t0, 0x0054($t9)
	lui     $t1, %hi(camdata+0x9E)
	lhu     $t1, %lo(camdata+0x9E)($t1)
	mtc1    $t0, $f4
	lh      $t4, 0x0020($sp)
	sra     $t2, $t1, 4
	cvt.s.w $f6, $f4
	sll     $t3, $t2, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_sin)($at)
	mtc1    $t4, $f16
	mul.s   $f10, $f6, $f8
	cvt.s.w $f18, $f16
	add.s   $f4, $f18, $f10
	trunc.w.s $f6, $f4
	mfc1    $t6, $f6
	nop
	sh      $t6, 0x0020($sp)
	lh      $t7, 0x0020($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	lui     $a1, %hi(camdata+0xA0)
	lh      $a1, %lo(camdata+0xA0)($a1)
	jal     camera_8028B1D0
	addiu   $a0, $a0, 0x009E
	la.u    $a0, camdata
	la.l    $a0, camdata
	lui     $a2, %hi(camdata+0xA2)
	lh      $a2, %lo(camdata+0xA2)($a2)
	addiu   $a0, $a0, 0x0054
	jal     camera_8028976C
	move    $a1, $0
	bnez    $v0, 61$
	nop
	lui     $at, %hi(camdata+0x9E)
	sh      $0, %lo(camdata+0x9E)($at)
61$:
	b       63$
	nop
63$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028B438:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, camdata
	la.l    $t6, camdata
	lh      $t7, 0x0056($t6)
	beqz    $t7, 47$
	nop
	la.u    $a0, camdata
	la.l    $a0, camdata
	lui     $a1, %hi(camdata+0x9A)
	lh      $a1, %lo(camdata+0x9A)($a1)
	jal     camera_8028B1D0
	addiu   $a0, $a0, 0x0098
	la.u    $t8, camdata
	la.l    $t8, camdata
	lh      $t9, 0x0056($t8)
	lui     $t0, %hi(camdata+0x98)
	lhu     $t0, %lo(camdata+0x98)($t0)
	mtc1    $t9, $f4
	lw      $t3, 0x0020($sp)
	sra     $t1, $t0, 4
	cvt.s.w $f6, $f4
	lh      $t4, 0x0000($t3)
	sll     $t2, $t1, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	lwc1    $f8, %lo(math_sin)($at)
	mtc1    $t4, $f16
	mul.s   $f10, $f6, $f8
	cvt.s.w $f18, $f16
	add.s   $f4, $f18, $f10
	trunc.w.s $f6, $f4
	mfc1    $t6, $f6
	nop
	sh      $t6, 0x0000($t3)
	la.u    $a0, camdata
	la.l    $a0, camdata
	lui     $a2, %hi(camdata+0x9C)
	lh      $a2, %lo(camdata+0x9C)($a2)
	addiu   $a0, $a0, 0x0056
	jal     camera_8028976C
	move    $a1, $0
	bnez    $v0, 47$
	nop
	lui     $at, %hi(camdata+0x98)
	sh      $0, %lo(camdata+0x98)($at)
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028B50C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x2AAA
	sh      $t6, 0x003E($sp)
	lui     $t7, %hi(_camera_bss_238-0x238+0x252)
	lh      $t7, %lo(_camera_bss_238-0x238+0x252)($t7)
	sh      $t7, 0x003C($sp)
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0082
	beq     $s0, $at, 53$
	nop
	li      $at, 0x00E1
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0161
	beq     $s0, $at, 75$
	nop
	b       78$
	nop
23$:
	lw      $t8, 0x0040($sp)
	addiu   $t9, $sp, 0x002C
	lwc1    $f4, 0x0028($t8)
	swc1    $f4, 0x0000($t9)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	addiu   $t1, $sp, 0x002C
	lwc1    $f6, 0x0008($t0)
	swc1    $f6, 0x0004($t1)
	lw      $t2, 0x0040($sp)
	addiu   $t3, $sp, 0x002C
	lwc1    $f8, 0x002C($t2)
	swc1    $f8, 0x0008($t3)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	addiu   $a0, $sp, 0x002C
	jal     camera_8028AC28
	addiu   $a1, $a1, 0x0004
	swc1    $f0, 0x0038($sp)
	li      $at, 0x44480000
	mtc1    $at, $f10
	lwc1    $f16, 0x0038($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    51$
	nop
	li      $t4, 0x3800
	sh      $t4, 0x003E($sp)
51$:
	b       78$
	nop
53$:
	lh      $t5, 0x0046($sp)
	andi    $t6, $t5, 0xC000
	subu    $t7, $t6, $t5
	addiu   $t8, $t7, 0x2000
	sh      $t8, 0x003E($sp)
	lh      $t9, 0x003E($sp)
	bgez    $t9, 64$
	nop
	lh      $t0, 0x003E($sp)
	subu    $t1, $0, $t0
	sh      $t1, 0x003E($sp)
64$:
	lh      $t2, 0x003E($sp)
	bgez    $t2, 69$
	sra     $t3, $t2, 5
	addiu   $at, $t2, 0x001F
	sra     $t3, $at, 5
69$:
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 4
	sh      $t4, 0x003E($sp)
	b       78$
	nop
75$:
	sh      $0, 0x003E($sp)
	b       78$
	nop
78$:
	la.u    $t6, player_data
	la.l    $t6, player_data
	li      $at, 0x42000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t6)
	li      $at, 0x43000000
	mtc1    $at, $f8
	div.s   $f6, $f18, $f4
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t7, $f16
	nop
	sh      $t7, 0x002A($sp)
	lui     $t8, %hi(_camera_bss_238-0x238+0x23C)
	lh      $t8, %lo(_camera_bss_238-0x238+0x23C)($t8)
	bgez    $t8, 100$
	nop
	lh      $a1, 0x003E($sp)
	addiu   $a0, $sp, 0x003C
	lh      $a2, 0x002A($sp)
	jal     camera_8028976C
	subu    $a1, $0, $a1
100$:
	lui     $t9, %hi(_camera_bss_238-0x238+0x23C)
	lh      $t9, %lo(_camera_bss_238-0x238+0x23C)($t9)
	blez    $t9, 108$
	nop
	addiu   $a0, $sp, 0x003C
	lh      $a1, 0x003E($sp)
	jal     camera_8028976C
	lh      $a2, 0x002A($sp)
108$:
	lh      $t0, 0x003C($sp)
	slti    $at, $t0, -0x2AAA
	beqz    $at, 117$
	nop
	lh      $a1, 0x003E($sp)
	addiu   $a0, $sp, 0x003C
	li      $a2, 0x0200
	jal     camera_8028976C
	subu    $a1, $0, $a1
117$:
	lh      $t1, 0x003C($sp)
	slti    $at, $t1, 0x2AAB
	bnez    $at, 125$
	nop
	addiu   $a0, $sp, 0x003C
	lh      $a1, 0x003E($sp)
	jal     camera_8028976C
	li      $a2, 0x0200
125$:
	b       129$
	lh      $v0, 0x003C($sp)
	b       129$
	nop
129$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

camera_8028B724:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	li      $a1, 0x041D
	jal     Na_BgmPlay
	move    $a2, $0
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B754:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	li      $a1, 0x0F1E
	jal     Na_BgmPlay
	move    $a2, $0
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B784:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(cont1)
	lw      $t6, %lo(cont1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 10$
	nop
	jal     camera_8028B8EC
	nop
10$:
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B7C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(cont1)
	lw      $t6, %lo(cont1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x000F
	beqz    $t8, 10$
	nop
	jal     camera_8028B8EC
	nop
10$:
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B804:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(cont1)
	lw      $t6, %lo(cont1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x0002
	bnez    $t8, 11$
	nop
	andi    $t9, $t7, 0x0001
	beqz    $t9, 13$
	nop
11$:
	jal     camera_8028B8EC
	nop
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B850:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x70060081
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B884:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x70070081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x70070081
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B8B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x700F0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x700F0081
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B8EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x700E0081
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B920:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x701A8081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x701A8081
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B954:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t6, %lo(_camera_bss_48-0x48+0x16C)($t6)
	andi    $t7, $t6, 0x0002
	beqz    $t7, 9$
	nop
	jal     camera_8028B920
	nop
9$:
	lui     $t8, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t8, %lo(_camera_bss_48-0x48+0x16C)($t8)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 16$
	nop
	jal     camera_8028B920
	nop
16$:
	lui     $t0, %hi(_camera_bss_48-0x48+0x16C)
	lh      $t0, %lo(_camera_bss_48-0x48+0x16C)($t0)
	li      $at, -0x0007
	and     $t1, $t0, $at
	lui     $at, %hi(_camera_bss_48-0x48+0x16C)
	sh      $t1, %lo(_camera_bss_48-0x48+0x16C)($at)
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B9C4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	andi    $t7, $t6, 0x0010
	bnez    $t7, 12$
	nop
	andi    $t8, $t6, 0x000D
	bnez    $t8, 162$
	nop
12$:
	lui     $t9, %hi(cont1)
	lw      $t9, %lo(cont1)($t9)
	lhu     $t0, 0x0012($t9)
	andi    $t1, $t0, 0x0003
	beqz    $t1, 24$
	nop
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	li      $at, -0x0011
	and     $t3, $t2, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t3, %lo(camera_8033C848)($at)
24$:
	lui     $t4, %hi(cont1)
	lw      $t4, %lo(cont1)($t4)
	lhu     $t5, 0x0012($t4)
	andi    $t7, $t5, 0x0001
	beqz    $t7, 93$
	nop
	lui     $t6, %hi(_camera_bss_238-0x238+0x252)
	lh      $t6, %lo(_camera_bss_238-0x238+0x252)($t6)
	slti    $at, $t6, -0x07FF
	bnez    $at, 86$
	nop
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	andi    $t9, $t8, 0x0004
	bnez    $t9, 45$
	nop
	lui     $t0, %hi(camera_8033C848)
	lh      $t0, %lo(camera_8033C848)($t0)
	lui     $at, %hi(camera_8033C848)
	ori     $t1, $t0, 0x0004
	sh      $t1, %lo(camera_8033C848)($at)
45$:
	lw      $t2, 0x0020($sp)
	li      $at, 0x0001
	lbu     $t3, 0x0000($t2)
	bne     $t3, $at, 73$
	nop
	lui     $t4, %hi(_camera_bss_238-0x238+0x252)
	lh      $t4, %lo(_camera_bss_238-0x238+0x252)($t4)
	slti    $at, $t4, 0x22AB
	bnez    $at, 60$
	nop
	lui     $t5, %hi(_camera_bss_48-0x48+0x168)
	lh      $t5, %lo(_camera_bss_48-0x48+0x168)($t5)
	lui     $at, %hi(_camera_bss_48-0x48+0x168)
	ori     $t7, $t5, 0x0004
	sh      $t7, %lo(_camera_bss_48-0x48+0x168)($at)
60$:
	lui     $t6, %hi(_camera_bss_238-0x238+0x252)
	lh      $t6, %lo(_camera_bss_238-0x238+0x252)($t6)
	li      $at, 0x4AAA
	bne     $t6, $at, 69$
	nop
	jal     camera_8028B8EC
	nop
	b       71$
	nop
69$:
	jal     camera_8028B8B8
	nop
71$:
	b       84$
	nop
73$:
	lui     $t8, %hi(_camera_bss_238-0x238+0x252)
	lh      $t8, %lo(_camera_bss_238-0x238+0x252)($t8)
	li      $at, 0x2AAA
	bne     $t8, $at, 82$
	nop
	jal     camera_8028B8EC
	nop
	b       84$
	nop
82$:
	jal     camera_8028B8B8
	nop
84$:
	b       93$
	nop
86$:
	lui     $t9, %hi(camera_8033C848)
	lh      $t9, %lo(camera_8033C848)($t9)
	lui     $at, %hi(camera_8033C848)
	ori     $t0, $t9, 0x0001
	sh      $t0, %lo(camera_8033C848)($at)
	jal     camera_8028B850
	nop
93$:
	lui     $t1, %hi(cont1)
	lw      $t1, %lo(cont1)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, 162$
	nop
	lui     $t4, %hi(_camera_bss_238-0x238+0x252)
	lh      $t4, %lo(_camera_bss_238-0x238+0x252)($t4)
	slti    $at, $t4, 0x0800
	beqz    $at, 155$
	nop
	lui     $t5, %hi(camera_8033C848)
	lh      $t5, %lo(camera_8033C848)($t5)
	andi    $t7, $t5, 0x0008
	bnez    $t7, 114$
	nop
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	lui     $at, %hi(camera_8033C848)
	ori     $t8, $t6, 0x0008
	sh      $t8, %lo(camera_8033C848)($at)
114$:
	lw      $t9, 0x0020($sp)
	li      $at, 0x0001
	lbu     $t0, 0x0000($t9)
	bne     $t0, $at, 142$
	nop
	lui     $t1, %hi(_camera_bss_238-0x238+0x252)
	lh      $t1, %lo(_camera_bss_238-0x238+0x252)($t1)
	slti    $at, $t1, -0x22AA
	beqz    $at, 129$
	nop
	lui     $t2, %hi(_camera_bss_48-0x48+0x168)
	lh      $t2, %lo(_camera_bss_48-0x48+0x168)($t2)
	lui     $at, %hi(_camera_bss_48-0x48+0x168)
	ori     $t3, $t2, 0x0008
	sh      $t3, %lo(_camera_bss_48-0x48+0x168)($at)
129$:
	lui     $t4, %hi(_camera_bss_238-0x238+0x252)
	lh      $t4, %lo(_camera_bss_238-0x238+0x252)($t4)
	li      $at, -0x4AAA
	bne     $t4, $at, 138$
	nop
	jal     camera_8028B8EC
	nop
	b       140$
	nop
138$:
	jal     camera_8028B8B8
	nop
140$:
	b       153$
	nop
142$:
	lui     $t5, %hi(_camera_bss_238-0x238+0x252)
	lh      $t5, %lo(_camera_bss_238-0x238+0x252)($t5)
	li      $at, -0x2AAA
	bne     $t5, $at, 151$
	nop
	jal     camera_8028B8EC
	nop
	b       153$
	nop
151$:
	jal     camera_8028B8B8
	nop
153$:
	b       162$
	nop
155$:
	lui     $t7, %hi(camera_8033C848)
	lh      $t7, %lo(camera_8033C848)($t7)
	lui     $at, %hi(camera_8033C848)
	ori     $t6, $t7, 0x0001
	sh      $t6, %lo(camera_8033C848)($at)
	jal     camera_8028B850
	nop
162$:
	lui     $t8, %hi(cont1)
	lw      $t8, %lo(cont1)($t8)
	lhu     $t9, 0x0012($t8)
	andi    $t0, $t9, 0x0008
	beqz    $t0, 185$
	nop
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, 183$
	nop
	lui     $t3, %hi(camera_8033C848)
	lh      $t3, %lo(camera_8033C848)($t3)
	li      $at, -0x0003
	and     $t4, $t3, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t4, %lo(camera_8033C848)($at)
	jal     camera_8028B850
	nop
	b       185$
	nop
183$:
	jal     camera_802852F4
	lw      $a0, 0x0020($sp)
185$:
	lui     $t5, %hi(cont1)
	lw      $t5, %lo(cont1)($t5)
	lhu     $t7, 0x0012($t5)
	andi    $t6, $t7, 0x0004
	beqz    $t6, 212$
	nop
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	andi    $t9, $t8, 0x0002
	beqz    $t9, 205$
	nop
	lui     $t0, %hi(camera_8033C848)
	lh      $t0, %lo(camera_8033C848)($t0)
	lui     $at, %hi(camera_8033C848)
	ori     $t1, $t0, 0x1000
	sh      $t1, %lo(camera_8033C848)($at)
	jal     camera_8028B784
	nop
	b       212$
	nop
205$:
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	lui     $at, %hi(camera_8033C848)
	ori     $t3, $t2, 0x0002
	sh      $t3, %lo(camera_8033C848)($at)
	jal     camera_8028B884
	nop
212$:
	b       216$
	lh      $v0, 0x001E($sp)
	b       216$
	nop
216$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8028BD34
camera_8028BD34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	sw      $t6, 0x0018($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x0001
	bne     $t7, $at, 13$
	nop
	jal     camera_8028FE58
	li      $a0, 0x00AB
13$:
	lw      $t8, 0x0020($sp)
	li      $at, 0x0002
	bne     $t8, $at, 17$
	nop
17$:
	b       21$
	lw      $v0, 0x001C($sp)
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028BD98:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(cont1)
	lw      $t6, %lo(cont1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 49$
	nop
	lw      $t9, 0x0020($sp)
	li      $at, 0x000D
	lbu     $t0, 0x0000($t9)
	beq     $t0, $at, 29$
	nop
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, 29$
	nop
	lui     $t3, %hi(camera_8033C848)
	lh      $t3, %lo(camera_8033C848)($t3)
	li      $at, -0x0003
	and     $t4, $t3, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t4, %lo(camera_8033C848)($at)
	jal     camera_8028B850
	nop
	b       49$
	nop
29$:
	jal     camera_802852F4
	lw      $a0, 0x0020($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x24C)
	lwc1    $f4, %lo(_camera_bss_238-0x238+0x24C)($at)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f6, %lo(camera_8032DF4C)($at)
	c.lt.s  $f6, $f4
	nop
	bc1f    45$
	nop
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f8, %lo(camera_8032DF4C)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x244)
	neg.s   $f10, $f8
	b       49$
	swc1    $f10, %lo(_camera_bss_238-0x238+0x244)($at)
45$:
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f16, %lo(camera_8032DF4C)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x244)
	swc1    $f16, %lo(_camera_bss_238-0x238+0x244)($at)
49$:
	lw      $t5, 0x0020($sp)
	li      $at, 0x000D
	lbu     $t6, 0x0000($t5)
	beq     $t6, $at, 162$
	nop
	lui     $t7, %hi(cont1)
	lw      $t7, %lo(cont1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 95$
	nop
	lui     $t0, %hi(camera_8033C848)
	lh      $t0, %lo(camera_8033C848)($t0)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 81$
	nop
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	lui     $at, %hi(camera_8033C848)
	ori     $t3, $t2, 0x1000
	sh      $t3, %lo(camera_8033C848)($at)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f18, %lo(camera_8032DF4C)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_238-0x238+0x244)
	add.s   $f6, $f18, $f4
	swc1    $f6, %lo(_camera_bss_238-0x238+0x244)($at)
	jal     camera_8028B784
	nop
	b       95$
	nop
81$:
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	lui     $at, %hi(camera_8033C848)
	ori     $t5, $t4, 0x0002
	sh      $t5, %lo(camera_8033C848)($at)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f8, %lo(camera_8032DF4C)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f10
	lui     $at, %hi(_camera_bss_238-0x238+0x244)
	add.s   $f16, $f8, $f10
	swc1    $f16, %lo(_camera_bss_238-0x238+0x244)($at)
	jal     camera_8028B884
	nop
95$:
	li      $t6, 0x1000
	sh      $t6, 0x001E($sp)
	lui     $t7, %hi(cont1)
	lw      $t7, %lo(cont1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x0001
	beqz    $t9, 130$
	nop
	lui     $t0, %hi(camera_8033C848)
	lh      $t0, %lo(camera_8033C848)($t0)
	andi    $t1, $t0, 0x0008
	beqz    $t1, 115$
	nop
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	li      $at, -0x0009
	and     $t3, $t2, $at
	lui     $at, %hi(camera_8033C848)
	b       130$
	sh      $t3, %lo(camera_8033C848)($at)
115$:
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	lui     $at, %hi(camera_8033C848)
	ori     $t5, $t4, 0x0004
	sh      $t5, %lo(camera_8033C848)($at)
	lui     $t6, %hi(_camera_bss_238-0x238+0x248)
	lh      $t6, %lo(_camera_bss_238-0x238+0x248)($t6)
	bnez    $t6, 126$
	nop
	jal     camera_8028B8B8
	nop
126$:
	lh      $t7, 0x001E($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x248)
	subu    $t8, $0, $t7
	sh      $t8, %lo(_camera_bss_238-0x238+0x248)($at)
130$:
	lui     $t9, %hi(cont1)
	lw      $t9, %lo(cont1)($t9)
	lhu     $t0, 0x0012($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 162$
	nop
	lui     $t2, %hi(camera_8033C848)
	lh      $t2, %lo(camera_8033C848)($t2)
	andi    $t3, $t2, 0x0004
	beqz    $t3, 148$
	nop
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	li      $at, -0x0005
	and     $t5, $t4, $at
	lui     $at, %hi(camera_8033C848)
	b       162$
	sh      $t5, %lo(camera_8033C848)($at)
148$:
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	lui     $at, %hi(camera_8033C848)
	ori     $t7, $t6, 0x0008
	sh      $t7, %lo(camera_8033C848)($at)
	lui     $t8, %hi(_camera_bss_238-0x238+0x248)
	lh      $t8, %lo(_camera_bss_238-0x238+0x248)($t8)
	bnez    $t8, 159$
	nop
	jal     camera_8028B8B8
	nop
159$:
	lh      $t9, 0x001E($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x248)
	sh      $t9, %lo(_camera_bss_238-0x238+0x248)($at)
162$:
	b       164$
	nop
164$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028C038:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
4$:
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(_camera_bss_330-0x330+0x540)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $at, $at, $t7
	sw      $0, %lo(_camera_bss_330-0x330+0x540)($at)
	lw      $t8, 0x001C($sp)
	la.u    $t1, _camera_bss_330-0x330+0x540
	la.l    $t1, _camera_bss_330-0x330+0x540
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addiu   $t0, $t9, 0x0004
	addu    $a0, $t0, $t1
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	lw      $t2, 0x001C($sp)
	la.u    $t5, _camera_bss_330-0x330+0x540
	la.l    $t5, _camera_bss_330-0x330+0x540
	sll     $t3, $t2, 3
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addiu   $t4, $t3, 0x0010
	addu    $a0, $t4, $t5
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	lw      $t6, 0x001C($sp)
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addiu   $t8, $t7, 0x001C
	addu    $a0, $t8, $t9
	move    $a1, $0
	move    $a2, $0
	jal     vecs_set
	move    $a3, $0
	lw      $t0, 0x001C($sp)
	lui     $at, %hi(_camera_bss_330-0x330+0x562)
	sll     $t1, $t0, 3
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $at, $at, $t1
	sh      $0, %lo(_camera_bss_330-0x330+0x562)($at)
	lw      $t2, 0x001C($sp)
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x000A
	bnez    $at, 4$
	sw      $t3, 0x001C($sp)
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028C13C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	lbu     $t8, 0x001F($sp)
	lbu     $t7, 0x0030($t6)
	beq     $t7, $t8, 14$
	nop
	lbu     $t9, 0x001F($sp)
	lw      $t0, 0x0018($sp)
	sb      $t9, 0x0030($t0)
	jal     camera_8028C038
	lw      $a0, 0x0018($sp)
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028C18C:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	sb      $0, 0x0007($sp)
	sb      $0, 0x0006($sp)
	lui     $t6, %hi(save_level)
	lbu     $t6, %lo(save_level)($t6)
	addiu   $t7, $t6, -0x0001
	bgez    $t7, 11$
	sra     $t8, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t8, $at, 1
11$:
	sb      $t8, 0x0005($sp)
	lui     $t9, %hi(course_index)
	lh      $t9, %lo(course_index)($t9)
	sb      $t9, 0x0004($sp)
	lbu     $t0, 0x0005($sp)
	slti    $at, $t0, 0x0004
	bnez    $at, 20$
	nop
	sb      $0, 0x0005($sp)
20$:
	lbu     $t1, 0x0004($sp)
	slti    $at, $t1, 0x001A
	bnez    $at, 25$
	nop
	sb      $0, 0x0004($sp)
25$:
	lbu     $t2, 0x0004($sp)
	lbu     $t4, 0x0005($sp)
	lui     $t6, %hi(camera_windemo_table)
	sll     $t3, $t2, 2
	addu    $t5, $t3, $t4
	addu    $t6, $t6, $t5
	lbu     $t6, %lo(camera_windemo_table)($t6)
	sb      $t6, 0x0006($sp)
	lui     $t7, %hi(save_level)
	lbu     $t7, %lo(save_level)($t7)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 42$
	nop
	lbu     $t9, 0x0006($sp)
	andi    $t0, $t9, 0x000F
	b       45$
	sb      $t0, 0x0006($sp)
42$:
	lbu     $t1, 0x0006($sp)
	sra     $t2, $t1, 4
	sb      $t2, 0x0006($sp)
45$:
	lbu     $t3, 0x0006($sp)
	lui     $t4, %hi(camera_8032E018)
	addu    $t4, $t4, $t3
	lbu     $t4, %lo(camera_8032E018)($t4)
	sb      $t4, 0x0007($sp)
	b       54$
	lbu     $v0, 0x0007($sp)
	b       54$
	nop
54$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028C26C:
	addiu   $sp, $sp, -0x0008
	andi    $a0, $a0, 0x00FF
	andi    $a1, $a1, 0x00FF
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x1320
	lw      $t7, 0x0000($t6)
	bne     $t7, $at, 10$
	nop
	sh      $a0, 0x0006($sp)
10$:
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	li      $at, 0x1321
	lw      $t9, 0x0000($t8)
	bne     $t9, $at, 17$
	nop
	sh      $a1, 0x0006($sp)
17$:
	b       21$
	lbu     $v0, 0x0007($sp)
	b       21$
	nop
21$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028C2C8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	lbu     $t7, 0x0030($t6)
	sb      $t7, 0x0033($sp)
	lbu     $t8, 0x0033($sp)
	bnez    $t8, 299$
	nop
	lui     $t9, %hi(camera_8032DF50)
	lbu     $t9, %lo(camera_8032DF50)($t9)
	sb      $t9, 0x0033($sp)
	lui     $at, %hi(camera_8032DF50)
	sb      $0, %lo(camera_8032DF50)($at)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	li      $at, 0x0006
	lh      $t1, 0x001E($t0)
	bne     $t1, $at, 76$
	nop
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0041
	beq     $s0, $at, 54$
	nop
	li      $at, 0x0061
	beq     $s0, $at, 31$
	nop
	b       70$
	nop
31$:
	lw      $t2, 0x0038($sp)
	li      $at, 0x0011
	lbu     $t3, 0x0000($t2)
	beq     $t3, $at, 43$
	nop
	li      $at, 0x0004
	beq     $t3, $at, 43$
	nop
	lbu     $t4, 0x0064($t2)
	li      $at, 0x0002
	bne     $t4, $at, 48$
	nop
43$:
	li      $a0, 0x008C
	jal     camera_8028C26C
	li      $a1, 0x008D
	b       52$
	sb      $v0, 0x0033($sp)
48$:
	li      $a0, 0x0082
	jal     camera_8028C26C
	li      $a1, 0x0083
	sb      $v0, 0x0033($sp)
52$:
	b       76$
	nop
54$:
	lw      $t5, 0x0038($sp)
	li      $at, 0x0001
	lbu     $t6, 0x0064($t5)
	bne     $t6, $at, 64$
	nop
	li      $a0, 0x0082
	jal     camera_8028C26C
	li      $a1, 0x0083
	b       68$
	sb      $v0, 0x0033($sp)
64$:
	li      $a0, 0x008C
	jal     camera_8028C26C
	li      $a1, 0x008D
	sb      $v0, 0x0033($sp)
68$:
	b       76$
	nop
70$:
	li      $a0, 0x0082
	jal     camera_8028C26C
	li      $a1, 0x0083
	sb      $v0, 0x0033($sp)
	b       76$
	nop
76$:
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	li      $at, 0x0005
	lh      $t8, 0x001E($t7)
	bne     $t8, $at, 84$
	nop
	li      $t9, 0x008B
	sb      $t9, 0x0033($sp)
84$:
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	li      $at, 0x0001
	lh      $t1, 0x001E($t0)
	bne     $t1, $at, 92$
	nop
	li      $t3, 0x0085
	sb      $t3, 0x0033($sp)
92$:
	lui     $t2, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t2, %lo(_camera_bss_48-0x48+0xD0)($t2)
	slti    $at, $t2, 0x00D3
	bnez    $at, 102$
	nop
	slti    $at, $t2, 0x00FD
	beqz    $at, 102$
	nop
	li      $t4, 0x0086
	sb      $t4, 0x0033($sp)
102$:
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	lw      $s0, 0x0000($t5)
	sltiu   $at, $s0, 0x1927
	bnez    $at, 145$
	nop
	sltiu   $at, $s0, 0x192D
	bnez    $at, 134$
	nop
	li.u    $at, 0x00021317
	li.l    $at, 0x00021317
	sltu    $at, $s0, $at
	bnez    $at, 122$
	nop
	li.u    $at, 0x300032C7
	li.l    $at, 0x300032C7
	beq     $s0, $at, 224$
	nop
	b       266$
	nop
122$:
	li.u    $at, 0xFFFDECEF
	li.l    $at, 0xFFFDECEF
	addu    $t6, $s0, $at
	sltiu   $at, $t6, 0x0006
	beqz    $at, 266$
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(camera_8033733C)
	addu    $at, $at, $t6
	lw      $t6, %lo(camera_8033733C)($at)
	jr      $t6
	nop
134$:
	li      $at, 0x1928
	beq     $s0, $at, 165$
	nop
	li      $at, 0x192B
	beq     $s0, $at, 173$
	nop
	li      $at, 0x192C
	beq     $s0, $at, 191$
	nop
	b       266$
	nop
145$:
	li      $at, 0x1302
	beq     $s0, $at, 252$
	nop
	li      $at, 0x1303
	beq     $s0, $at, 257$
	nop
	li      $at, 0x1307
	beq     $s0, $at, 262$
	nop
	li      $at, 0x132E
	beq     $s0, $at, 220$
	nop
	li      $at, 0x1331
	beq     $s0, $at, 209$
	nop
	li      $at, 0x1926
	beq     $s0, $at, 169$
	nop
	b       266$
	nop
165$:
	li      $t7, 0x0087
	sb      $t7, 0x0033($sp)
	b       266$
	nop
169$:
	li      $t8, 0x00A0
	sb      $t8, 0x0033($sp)
	b       266$
	nop
173$:
	lui     $t9, %hi(camera_prevstage)
	lw      $t9, %lo(camera_prevstage)($t9)
	li      $at, 0x001E
	beq     $t9, $at, 184$
	nop
	li      $at, 0x0021
	beq     $t9, $at, 184$
	nop
	li      $at, 0x0022
	bne     $t9, $at, 187$
	nop
184$:
	li      $t0, 0x009D
	b       189$
	sb      $t0, 0x0033($sp)
187$:
	li      $t1, 0x00A9
	sb      $t1, 0x0033($sp)
189$:
	b       266$
	nop
191$:
	lui     $t3, %hi(camera_prevstage)
	lw      $t3, %lo(camera_prevstage)($t3)
	li      $at, 0x001E
	beq     $t3, $at, 202$
	nop
	li      $at, 0x0021
	beq     $t3, $at, 202$
	nop
	li      $at, 0x0022
	bne     $t3, $at, 205$
	nop
202$:
	li      $t2, 0x009E
	b       207$
	sb      $t2, 0x0033($sp)
205$:
	li      $t4, 0x00AA
	sb      $t4, 0x0033($sp)
207$:
	b       266$
	nop
209$:
	lw      $t5, 0x0038($sp)
	lbu     $t6, 0x0064($t5)
	bnez    $t6, 216$
	nop
	li      $t7, 0x0095
	b       218$
	sb      $t7, 0x0033($sp)
216$:
	li      $t8, 0x008C
	sb      $t8, 0x0033($sp)
218$:
	b       266$
	nop
220$:
	li      $t9, 0x0097
	sb      $t9, 0x0033($sp)
	b       266$
	nop
224$:
	li      $t0, 0x009F
	sb      $t0, 0x0033($sp)
	b       266$
	nop
.globl L8028C658
L8028C658:
	li      $t1, 0x009A
	sb      $t1, 0x0033($sp)
	b       266$
	nop
.globl L8028C668
L8028C668:
	li      $t3, 0x0099
	sb      $t3, 0x0033($sp)
	b       266$
	nop
.globl L8028C678
L8028C678:
	li      $t2, 0x0098
	sb      $t2, 0x0033($sp)
	b       266$
	nop
.globl L8028C688
L8028C688:
	li      $t4, 0x009C
	sb      $t4, 0x0033($sp)
	b       266$
	nop
.globl L8028C698
L8028C698:
	li      $t5, 0x009B
	sb      $t5, 0x0033($sp)
	b       266$
	nop
.globl L8028C6A8
L8028C6A8:
	li      $t6, 0x0098
	sb      $t6, 0x0033($sp)
	b       266$
	nop
252$:
	jal     camera_8028C18C
	lw      $a0, 0x0038($sp)
	sb      $v0, 0x0033($sp)
	b       266$
	nop
257$:
	jal     camera_8028C18C
	lw      $a0, 0x0038($sp)
	sb      $v0, 0x0033($sp)
	b       266$
	nop
262$:
	li      $t7, 0x00AF
	sb      $t7, 0x0033($sp)
	b       266$
	nop
266$:
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lh      $t9, 0x001E($t8)
	addiu   $t0, $t9, -0x0009
	sltiu   $at, $t0, 0x0005
	beqz    $at, 299$
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(camera_80337354)
	addu    $at, $at, $t0
	lw      $t0, %lo(camera_80337354)($at)
	jr      $t0
	nop
.globl L8028C724
L8028C724:
	li      $t1, 0x008E
	sb      $t1, 0x0033($sp)
	b       299$
	nop
.globl L8028C734
L8028C734:
	li      $t3, 0x00AE
	sb      $t3, 0x0033($sp)
	b       299$
	nop
.globl L8028C744
L8028C744:
	li      $t2, 0x00AC
	sb      $t2, 0x0033($sp)
	b       299$
	nop
.globl L8028C754
L8028C754:
	li      $t4, 0x00B1
	sb      $t4, 0x0033($sp)
	b       299$
	nop
.globl L8028C764
L8028C764:
	li      $t5, 0x00B2
	sb      $t5, 0x0033($sp)
	b       299$
	nop
299$:
	lw      $t6, 0x0038($sp)
	sb      $0, 0x0064($t6)
	b       305$
	lbu     $v0, 0x0033($sp)
	b       305$
	nop
305$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl camera_8028C7A0
camera_8028C7A0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0038($sp)
	swc1    $f12, 0x0030($sp)
	swc1    $f14, 0x0034($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	sw      $t6, 0x0020($sp)
	la.u    $t7, _camera_bss_238-0x238+0x268
	la.l    $t7, _camera_bss_238-0x238+0x268
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x001C($sp)
	la.u    $t9, _camera_bss_238-0x238+0x268
	la.l    $t9, _camera_bss_238-0x238+0x268
	addiu   $t0, $t9, 0x0028
	sw      $t0, 0x0018($sp)
	lui     $t3, %hi(scenep)
	lw      $t3, %lo(scenep)($t3)
	lui     $t1, %hi(stage_index)
	lh      $t1, %lo(stage_index)($t1)
	lb      $t4, 0x0000($t3)
	lui     $at, %hi(camera_stagescene)
	sll     $t2, $t1, 4
	addu    $t5, $t2, $t4
	sw      $t5, %lo(camera_stagescene)($at)
	lwc1    $f4, 0x0030($sp)
	addiu   $t6, $sp, 0x0024
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0034($sp)
	addiu   $t7, $sp, 0x0024
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0038($sp)
	addiu   $t8, $sp, 0x0024
	swc1    $f8, 0x0008($t8)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x000C
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	la.u    $a0, camdata
	la.l    $a0, camdata
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0024
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0018
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	lw      $t9, 0x0020($sp)
	lwc1    $f18, 0x0034($sp)
	lh      $t0, 0x0076($t9)
	mtc1    $t0, $f10
	nop
	cvt.s.w $f16, $f10
	add.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x0076($t9)
	lw      $a0, 0x001C($sp)
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	lw      $a0, 0x001C($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x000C
	lw      $a0, 0x0018($sp)
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	lw      $a0, 0x0018($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x000C
	b       80$
	nop
80$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028C8F0:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 41$
	nop
	lwc1    $f4, 0x0014($a0)
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    27$
	nop
	lwc1    $f8, 0x0014($a0)
	lwc1    $f10, 0x0008($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0014($a0)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f18, 0x0014($a0)
	c.lt.s  $f4, $f18
	nop
	bc1f    25$
	nop
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0014($a0)
25$:
	b       39$
	nop
27$:
	lwc1    $f8, 0x0014($a0)
	lwc1    $f10, 0x0008($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0014($a0)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f18, 0x0014($a0)
	c.lt.s  $f18, $f4
	nop
	bc1f    39$
	nop
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0014($a0)
39$:
	b       43$
	nop
41$:
	lwc1    $f8, 0x0004($sp)
	swc1    $f8, 0x0014($a0)
43$:
	b       45$
	nop
45$:
	jr      $ra
	nop

camera_8028C9AC:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	b       6$
	nop
6$:
	jr      $ra
	nop

camera_8028C9CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $at, %hi(camera_80337368)
	lwc1    $f4, %lo(camera_80337368)($at)
	li      $at, 0x43480000
	mtc1    $at, $f6
	addiu   $t6, $sp, 0x0020
	move    $a0, $t6
	move    $a3, $t6
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	swc1    $f4, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f6, 0x0014($sp)
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lh      $t9, 0x003A($sp)
	lh      $t8, 0x0012($t7)
	addu    $t0, $t8, $t9
	sh      $t0, 0x0026($sp)
	lhu     $t1, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0034($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	mul.s   $f16, $f8, $f10
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f6, %lo(math_sin)($at)
	lwc1    $f18, 0x000C($t4)
	lw      $t5, 0x0028($sp)
	mul.s   $f10, $f6, $f8
	add.s   $f4, $f18, $f16
	sub.s   $f18, $f4, $f10
	swc1    $f18, 0x000C($t5)
	lhu     $t6, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x002C($sp)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f16, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	mul.s   $f8, $f16, $f6
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f4, 0x0034($sp)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	mul.s   $f18, $f4, $f10
	lw      $t0, 0x0028($sp)
	lwc1    $f16, 0x0004($t9)
	add.s   $f6, $f16, $f18
	add.s   $f4, $f8, $f6
	swc1    $f4, 0x0004($t0)
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0008($t1)
	lw      $t2, 0x0028($sp)
	add.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f8
	swc1    $f6, 0x0008($t2)
	b       75$
	nop
75$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028CB08:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lh      $t8, 0x001A($sp)
	lh      $t7, 0x0012($t6)
	addu    $t9, $t7, $t8
	sh      $t9, 0x0006($sp)
	lhu     $t0, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x000C($sp)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	mul.s   $f8, $f4, $f6
	lwc1    $f16, %lo(math_sin)($at)
	lwc1    $f10, 0x0014($sp)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0004($t3)
	add.s   $f6, $f4, $f18
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0010($a0)
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	lwc1    $f4, 0x0010($sp)
	lwc1    $f16, 0x0008($t4)
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x0014($a0)
	lhu     $t5, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0014($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	mul.s   $f10, $f8, $f6
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lwc1    $f8, 0x000C($sp)
	lwc1    $f18, %lo(math_sin)($at)
	lwc1    $f16, 0x000C($t8)
	mul.s   $f6, $f18, $f8
	add.s   $f4, $f16, $f10
	sub.s   $f16, $f4, $f6
	swc1    $f16, 0x0018($a0)
	b       56$
	nop
56$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028CBF0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	addiu   $a0, $sp, 0x0024
	jal     vecf_cpy
	lw      $a1, 0x0034($sp)
	lw      $t7, 0x003C($sp)
	lw      $t6, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lhu     $t8, 0x0000($t7)
	lwc1    $f4, 0x0008($t6)
	lwc1    $f16, 0x0004($t6)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t0
	mul.s   $f8, $f4, $f6
	lwc1    $f10, %lo(math_sin)($at)
	addiu   $t1, $sp, 0x0018
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f8, $f18
	neg.s   $f6, $f4
	swc1    $f6, 0x0008($t1)
	lw      $t2, 0x003C($sp)
	lw      $t7, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lhu     $t3, 0x0000($t2)
	lwc1    $f16, 0x0004($t7)
	lwc1    $f18, 0x0008($t7)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	mul.s   $f8, $f10, $f16
	lwc1    $f4, %lo(math_sin)($at)
	addiu   $t8, $sp, 0x0018
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0004($t8)
	lw      $t9, 0x0038($sp)
	addiu   $t0, $sp, 0x0018
	lwc1    $f16, 0x0000($t9)
	swc1    $f16, 0x0000($t0)
	lw      $t6, 0x003C($sp)
	lui     $at, %hi(math_cos)
	addiu   $t4, $sp, 0x0018
	lhu     $t1, 0x0002($t6)
	lwc1    $f4, 0x0000($t4)
	lwc1    $f6, 0x0008($t4)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	mul.s   $f8, $f18, $f4
	lwc1    $f10, %lo(math_sin)($at)
	lw      $t7, 0x0034($sp)
	lw      $t5, 0x0030($sp)
	mul.s   $f16, $f6, $f10
	lwc1    $f18, 0x0000($t7)
	add.s   $f4, $f18, $f16
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x0000($t5)
	lw      $t9, 0x0034($sp)
	addiu   $t8, $sp, 0x0018
	lwc1    $f10, 0x0004($t8)
	lwc1    $f18, 0x0004($t9)
	lw      $t0, 0x0030($sp)
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x0004($t0)
	lw      $t1, 0x003C($sp)
	lui     $at, %hi(math_cos)
	addiu   $t6, $sp, 0x0018
	lhu     $t2, 0x0002($t1)
	lwc1    $f8, 0x0008($t6)
	lw      $t7, 0x0034($sp)
	sra     $t4, $t2, 4
	sll     $t3, $t4, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	mul.s   $f6, $f8, $f4
	lwc1    $f8, 0x0000($t6)
	lwc1    $f16, %lo(math_sin)($at)
	lwc1    $f10, 0x0008($t7)
	lw      $t5, 0x0030($sp)
	mul.s   $f4, $f16, $f8
	add.s   $f18, $f10, $f6
	sub.s   $f10, $f18, $f4
	swc1    $f10, 0x0008($t5)
	b       101$
	nop
101$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028CD94:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	addiu   $a0, $sp, 0x001C
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0038($sp)
	jal     vecf_set
	lw      $a3, 0x003C($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	addiu   $a2, $sp, 0x001C
	jal     camera_8028CBF0
	lw      $a3, 0x0030($sp)
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028CDEC:
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x1320
	lw      $t7, 0x0000($t6)
	bne     $t7, $at, 8$
	nop
	b       10$
	sh      $0, 0x0000($a0)
8$:
	li      $t8, -0x8000
	sh      $t8, 0x0000($a0)
10$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028CE24:
	addiu   $sp, $sp, -0x0098
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0098($sp)
	sw      $a1, 0x009C($sp)
	sw      $a2, 0x00A0($sp)
	sw      $a3, 0x00A4($sp)
	sw      $s0, 0x0028($sp)
	sdc1    $f20, 0x0020($sp)
	lui     $t6, %hi(_camera_bss_48-0x48+0xB0)
	lw      $t6, %lo(_camera_bss_48-0x48+0xB0)($t6)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x007C($sp)
	lui     $t7, %hi(_camera_bss_48-0x48+0xB0)
	lw      $t7, %lo(_camera_bss_48-0x48+0xB0)($t7)
	sh      $t7, 0x007A($sp)
	sh      $0, 0x0078($sp)
	lw      $a0, 0x0098($sp)
	jal     vecf_cpy
	lw      $a1, 0x00A0($sp)
	lw      $a0, 0x009C($sp)
	jal     vecf_cpy
	lw      $a1, 0x00A4($sp)
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	andi    $t9, $t8, 0x0400
	beqz    $t9, 91$
	nop
	sw      $0, 0x0044($sp)
30$:
	lw      $t1, 0x0044($sp)
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	lw      $t0, 0x00A8($sp)
	sll     $t2, $t1, 2
	addu    $t5, $t4, $t2
	addu    $t3, $t0, $t2
	lwc1    $f8, 0x0000($t3)
	lwc1    $f10, 0x0004($t5)
	lui     $at, %hi(_camera_bss_48-0x48+0xB4)
	addu    $at, $at, $t2
	add.s   $f16, $f8, $f10
	lwc1    $f18, %lo(_camera_bss_48-0x48+0xB4)($at)
	addu    $t6, $sp, $t2
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0054($t6)
	lw      $t8, 0x0044($sp)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	lw      $t7, 0x00AC($sp)
	sll     $t9, $t8, 2
	addu    $t3, $t0, $t9
	addu    $t1, $t7, $t9
	lwc1    $f6, 0x0000($t1)
	lwc1    $f8, 0x0004($t3)
	lui     $at, %hi(_camera_bss_48-0x48+0xB4)
	addu    $at, $at, $t9
	add.s   $f10, $f6, $f8
	lwc1    $f16, %lo(_camera_bss_48-0x48+0xB4)($at)
	addu    $t4, $sp, $t9
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0048($t4)
	lw      $t5, 0x0044($sp)
	addiu   $t2, $t5, 0x0001
	slti    $at, $t2, 0x0003
	bnez    $at, 30$
	sw      $t2, 0x0044($sp)
	la.u    $t6, _camera_bss_48-0x48+0xA0
	la.l    $t6, _camera_bss_48-0x48+0xA0
	addiu   $t8, $t6, 0x000A
	sw      $t8, 0x0010($sp)
	addiu   $a2, $t6, 0x000C
	addiu   $a3, $t6, 0x0008
	lw      $a0, 0x00A4($sp)
	jal     cartesian_to_polar
	addiu   $a1, $sp, 0x0048
	la.u    $t7, _camera_bss_48-0x48+0xA0
	la.l    $t7, _camera_bss_48-0x48+0xA0
	addiu   $t1, $t7, 0x0002
	sw      $t1, 0x0010($sp)
	addiu   $a2, $t7, 0x0004
	move    $a3, $t7
	lw      $a0, 0x00A4($sp)
	jal     cartesian_to_polar
	addiu   $a1, $sp, 0x0054
	lui     $t0, %hi(camera_8033C84A)
	lh      $t0, %lo(camera_8033C84A)($t0)
	li      $at, -0x0401
	and     $t3, $t0, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t3, %lo(camera_8033C84A)($at)
91$:
	lui     $t9, %hi(_camera_bss_48-0x48+0xB0)
	lw      $t9, %lo(_camera_bss_48-0x48+0xB0)($t9)
	blez    $t9, 353$
	nop
	li      $t4, 0x0001
	sh      $t4, 0x0078($sp)
	addiu   $t5, $sp, 0x0084
	sw      $t5, 0x0010($sp)
	lw      $a0, 0x00A4($sp)
	lw      $a1, 0x00A0($sp)
	addiu   $a2, $sp, 0x008C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0086
	lui     $at, %hi(_camera_bss_48-0x48+0xA4)
	lwc1    $f6, %lo(_camera_bss_48-0x48+0xA4)($at)
	lwc1    $f4, 0x008C($sp)
	mtc1    $0, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    115$
	nop
	b       120$
	mov.s   $f20, $f8
115$:
	lui     $at, %hi(_camera_bss_48-0x48+0xA4)
	lwc1    $f18, %lo(_camera_bss_48-0x48+0xA4)($at)
	lwc1    $f16, 0x008C($sp)
	sub.s   $f20, $f16, $f18
	neg.s   $f20, $f20
120$:
	lwc1    $f4, 0x007C($sp)
	div.s   $f6, $f20, $f4
	swc1    $f6, 0x0090($sp)
	lui     $t6, %hi(_camera_bss_48-0x48+0xA0)
	lh      $t6, %lo(_camera_bss_48-0x48+0xA0)($t6)
	lh      $t2, 0x0086($sp)
	mtc1    $0, $f16
	subu    $t8, $t2, $t6
	mtc1    $t8, $f10
	nop
	cvt.s.w $f8, $f10
	c.lt.s  $f16, $f8
	nop
	bc1f    137$
	nop
	b       142$
	move    $s0, $t8
137$:
	lui     $t1, %hi(_camera_bss_48-0x48+0xA0)
	lh      $t1, %lo(_camera_bss_48-0x48+0xA0)($t1)
	lh      $t7, 0x0086($sp)
	subu    $s0, $t7, $t1
	subu    $s0, $0, $s0
142$:
	lh      $t0, 0x007A($sp)
	div     $0, $s0, $t0
	mflo    $t3
	sh      $t3, 0x0094($sp)
	bnez    $t0, 149$
	nop
	break   7
149$:
	li      $at, -0x0001
	bne     $t0, $at, 155$
	li      $at, 0x80000000
	bne     $s0, $at, 155$
	nop
	break   6
155$:
	lui     $t4, %hi(_camera_bss_48-0x48+0xA2)
	lh      $t4, %lo(_camera_bss_48-0x48+0xA2)($t4)
	lh      $t9, 0x0084($sp)
	mtc1    $0, $f6
	subu    $t5, $t9, $t4
	mtc1    $t5, $f18
	nop
	cvt.s.w $f4, $f18
	c.lt.s  $f6, $f4
	nop
	bc1f    169$
	nop
	b       174$
	move    $s0, $t5
169$:
	lui     $t6, %hi(_camera_bss_48-0x48+0xA2)
	lh      $t6, %lo(_camera_bss_48-0x48+0xA2)($t6)
	lh      $t2, 0x0084($sp)
	subu    $s0, $t2, $t6
	subu    $s0, $0, $s0
174$:
	lh      $t8, 0x007A($sp)
	div     $0, $s0, $t8
	mflo    $t7
	sh      $t7, 0x0096($sp)
	bnez    $t8, 181$
	nop
	break   7
181$:
	li      $at, -0x0001
	bne     $t8, $at, 187$
	li      $at, 0x80000000
	bne     $s0, $at, 187$
	nop
	break   6
187$:
	la.u    $a0, _camera_bss_48-0x48+0xA0
	la.l    $a0, _camera_bss_48-0x48+0xA0
	addiu   $a0, $a0, 0x0004
	lw      $a1, 0x008C($sp)
	jal     camera_802899CC
	lw      $a2, 0x0090($sp)
	la.u    $a0, _camera_bss_48-0x48+0xA0
	la.l    $a0, _camera_bss_48-0x48+0xA0
	addiu   $a0, $a0, 0x0002
	lh      $a1, 0x0084($sp)
	jal     camera_8028976C
	lh      $a2, 0x0096($sp)
	la.u    $a0, _camera_bss_48-0x48+0xA0
	la.l    $a0, _camera_bss_48-0x48+0xA0
	lh      $a1, 0x0086($sp)
	jal     camera_8028976C
	lh      $a2, 0x0094($sp)
	lui     $t1, %hi(_camera_bss_48-0x48+0xA2)
	lh      $t1, %lo(_camera_bss_48-0x48+0xA2)($t1)
	lui     $a2, %hi(_camera_bss_48-0x48+0xA4)
	lui     $a3, %hi(_camera_bss_48-0x48+0xA0)
	lh      $a3, %lo(_camera_bss_48-0x48+0xA0)($a3)
	lw      $a2, %lo(_camera_bss_48-0x48+0xA4)($a2)
	lw      $a0, 0x00A4($sp)
	addiu   $a1, $sp, 0x006C
	jal     polar_to_cartesian
	sw      $t1, 0x0010($sp)
	addiu   $t0, $sp, 0x0084
	sw      $t0, 0x0010($sp)
	lw      $a0, 0x00A0($sp)
	lw      $a1, 0x00A4($sp)
	addiu   $a2, $sp, 0x008C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0086
	lui     $t3, %hi(_camera_bss_48-0x48+0xA8)
	lui     $t9, %hi(_camera_bss_48-0x48+0xB2)
	lh      $t9, %lo(_camera_bss_48-0x48+0xB2)($t9)
	lh      $t3, %lo(_camera_bss_48-0x48+0xA8)($t3)
	div     $0, $t3, $t9
	mflo    $t4
	sh      $t4, 0x0094($sp)
	bnez    $t9, 231$
	nop
	break   7
231$:
	li      $at, -0x0001
	bne     $t9, $at, 237$
	li      $at, 0x80000000
	bne     $t3, $at, 237$
	nop
	break   6
237$:
	lui     $t5, %hi(_camera_bss_48-0x48+0xAA)
	lui     $t2, %hi(_camera_bss_48-0x48+0xB2)
	lh      $t2, %lo(_camera_bss_48-0x48+0xB2)($t2)
	lh      $t5, %lo(_camera_bss_48-0x48+0xAA)($t5)
	div     $0, $t5, $t2
	mflo    $t6
	sh      $t6, 0x0096($sp)
	bnez    $t2, 247$
	nop
	break   7
247$:
	li      $at, -0x0001
	bne     $t2, $at, 253$
	li      $at, 0x80000000
	bne     $t5, $at, 253$
	nop
	break   6
253$:
	lui     $t8, %hi(_camera_bss_48-0x48+0xB0)
	lw      $t8, %lo(_camera_bss_48-0x48+0xB0)($t8)
	lui     $at, %hi(_camera_bss_48-0x48+0xAC)
	lwc1    $f10, %lo(_camera_bss_48-0x48+0xAC)($at)
	mtc1    $t8, $f8
	nop
	cvt.s.w $f16, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0090($sp)
	la.u    $a0, _camera_bss_48-0x48+0xA0
	la.l    $a0, _camera_bss_48-0x48+0xA0
	addiu   $a0, $a0, 0x0008
	lh      $a1, 0x0086($sp)
	jal     camera_8028976C
	lh      $a2, 0x0094($sp)
	la.u    $a0, _camera_bss_48-0x48+0xA0
	la.l    $a0, _camera_bss_48-0x48+0xA0
	addiu   $a0, $a0, 0x000A
	lh      $a1, 0x0084($sp)
	jal     camera_8028976C
	lh      $a2, 0x0096($sp)
	la.u    $a0, _camera_bss_48-0x48+0xA0
	la.l    $a0, _camera_bss_48-0x48+0xA0
	addiu   $a0, $a0, 0x000C
	li      $a1, 0x0000
	jal     camera_802899CC
	lw      $a2, 0x0090($sp)
	lui     $t7, %hi(_camera_bss_48-0x48+0xAA)
	lh      $t7, %lo(_camera_bss_48-0x48+0xAA)($t7)
	lui     $a2, %hi(_camera_bss_48-0x48+0xAC)
	lui     $a3, %hi(_camera_bss_48-0x48+0xA8)
	lh      $a3, %lo(_camera_bss_48-0x48+0xA8)($a3)
	lw      $a2, %lo(_camera_bss_48-0x48+0xAC)($a2)
	lw      $a0, 0x00A4($sp)
	addiu   $a1, $sp, 0x0060
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lw      $a0, 0x009C($sp)
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0060
	lw      $a0, 0x0098($sp)
	jal     vecf_cpy
	addiu   $a1, $sp, 0x006C
	lui     $t1, %hi(camerap)
	lw      $t1, %lo(camerap)($t1)
	lbu     $t0, 0x0030($t1)
	bnez    $t0, 306$
	nop
	lui     $t3, %hi(camera_8033C848)
	lh      $t3, %lo(camera_8033C848)($t3)
	andi    $t9, $t3, 0x2000
	bnez    $t9, 343$
	nop
306$:
	lw      $t4, 0x0098($sp)
	addiu   $a3, $sp, 0x003C
	lwc1    $f12, 0x0000($t4)
	lwc1    $f14, 0x0004($t4)
	jal     bg_check_ground
	lw      $a2, 0x0008($t4)
	swc1    $f0, 0x0040($sp)
	lui     $at, %hi(camera_8033736C)
	lwc1    $f6, %lo(camera_8033736C)($at)
	lwc1    $f4, 0x0040($sp)
	c.eq.s  $f4, $f6
	nop
	bc1t    334$
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0040($sp)
	lw      $t5, 0x0098($sp)
	add.s   $f20, $f8, $f10
	swc1    $f20, 0x0040($sp)
	lwc1    $f16, 0x0004($t5)
	c.lt.s  $f16, $f20
	nop
	bc1f    334$
	nop
	lwc1    $f18, 0x0040($sp)
	lw      $t2, 0x0098($sp)
	swc1    $f18, 0x0004($t2)
334$:
	lw      $t6, 0x0098($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	li      $a3, 0x0000
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	addiu   $a2, $t6, 0x0008
	jal     bg_hit_wall
	swc1    $f4, 0x0010($sp)
343$:
	lui     $t8, %hi(_camera_bss_48-0x48+0xB0)
	lw      $t8, %lo(_camera_bss_48-0x48+0xB0)($t8)
	lui     $at, %hi(_camera_bss_48-0x48+0xB0)
	addiu   $t7, $t8, -0x0001
	sw      $t7, %lo(_camera_bss_48-0x48+0xB0)($at)
	lw      $a0, 0x009C($sp)
	jal     camera_8028AAD8
	lw      $a1, 0x0098($sp)
	b       366$
	sh      $v0, 0x00B2($sp)
353$:
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss_48-0x48+0xA4)
	swc1    $f6, %lo(_camera_bss_48-0x48+0xA4)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xA0)
	sh      $0, %lo(_camera_bss_48-0x48+0xA0)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xA2)
	sh      $0, %lo(_camera_bss_48-0x48+0xA2)($at)
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	li      $at, -0x0801
	and     $t0, $t1, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t0, %lo(camera_8033C84A)($at)
366$:
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_48-0x48+0xA0
	la.l    $a0, _camera_bss_48-0x48+0xA0
	addiu   $a0, $a0, 0x0014
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       377$
	lh      $v0, 0x00B2($sp)
	b       377$
	nop
377$:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0020($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0098

camera_8028D41C:
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	li      $at, -0x0C01
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t7, %lo(camera_8033C84A)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0xB0)
	sw      $0, %lo(_camera_bss_48-0x48+0xB0)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028D44C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $0, 0x0024($sp)
	lh      $t6, 0x002E($sp)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0020($sp)
	lh      $t7, 0x0032($sp)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x001C($sp)
	lh      $t8, 0x0036($sp)
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0018($sp)
	la.u    $t9, camera_8032DF6C
	la.l    $t9, camera_8032DF6C
	lwc1    $f4, 0x0000($t9)
	lwc1    $f6, 0x0020($sp)
	c.eq.s  $f4, $f6
	nop
	bc1f    42$
	nop
	lwc1    $f8, 0x0004($t9)
	lwc1    $f10, 0x001C($sp)
	c.eq.s  $f8, $f10
	nop
	bc1f    42$
	nop
	lwc1    $f16, 0x0008($t9)
	lwc1    $f18, 0x0018($sp)
	c.eq.s  $f16, $f18
	nop
	bc1t    50$
	nop
42$:
	li      $t0, 0x0001
	sw      $t0, 0x0024($sp)
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	li      $at, -0x0002
	and     $t2, $t1, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t2, %lo(camera_8033C84A)($at)
50$:
	la.u    $a0, camera_8032DF6C
	la.l    $a0, camera_8032DF6C
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	jal     vecf_set
	lw      $a3, 0x0018($sp)
	lw      $t3, 0x0028($sp)
	li      $at, 0x000D
	lbu     $t4, 0x0000($t3)
	beq     $t4, $at, 80$
	nop
	lui     $t5, %hi(camera_8033C84A)
	lh      $t5, %lo(camera_8033C84A)($t5)
	li      $at, -0x0002
	and     $t6, $t5, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t6, %lo(camera_8033C84A)($at)
	lw      $t8, 0x0028($sp)
	li      $t7, 0x000D
	sb      $t7, 0x0000($t8)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	lw      $a0, 0x0028($sp)
	la.u    $t9, camera_8032DF6C
	la.l    $t9, camera_8032DF6C
	lw      $a1, 0x0000($t9)
	lw      $a3, 0x0008($t9)
	lw      $a2, 0x0008($t0)
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
80$:
	b       84$
	lw      $v0, 0x0024($sp)
	b       84$
	nop
84$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028D5AC:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x000E
	beq     $t6, $at, 16$
	nop
	li      $t7, 0x000E
	sb      $t7, 0x0000($a0)
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	li      $at, -0x0002
	and     $t9, $t8, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t9, %lo(camera_8033C84A)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x256)
	sh      $0, %lo(_camera_bss_238-0x238+0x256)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x258)
	sh      $0, %lo(_camera_bss_238-0x238+0x258)($at)
16$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028D5FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000B
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, 17$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x000B
	jal     camera_80286088
	li      $a2, 0x000F
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	lh      $t9, 0x003A($t8)
	addiu   $t0, $t9, -0x2000
	sh      $t0, %lo(_camera_bss_238-0x238+0x252)($at)
17$:
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028D658:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x0004
	beq     $t6, $at, 12$
	nop
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	li      $at, -0x0002
	and     $t8, $t7, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t8, %lo(camera_8033C84A)($at)
	li      $t9, 0x0004
	sb      $t9, 0x0000($a0)
12$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028D698:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	addiu   $t7, $sp, 0x0024
	lwc1    $f4, 0x0028($t6)
	swc1    $f4, 0x0000($t7)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	addiu   $t9, $sp, 0x0024
	lwc1    $f6, 0x0008($t8)
	swc1    $f6, 0x0004($t9)
	lw      $t0, 0x0030($sp)
	addiu   $t1, $sp, 0x0024
	lwc1    $f8, 0x002C($t0)
	swc1    $f8, 0x0008($t1)
	lw      $t2, 0x0030($sp)
	li      $at, 0x0001
	lbu     $t3, 0x0000($t2)
	beq     $t3, $at, 58$
	nop
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	addiu   $a0, $sp, 0x0024
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0004
	lw      $t5, 0x0030($sp)
	sll     $s0, $v0, 16
	sra     $t4, $s0, 16
	move    $s0, $t4
	addiu   $a0, $t5, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t5, 0x0010
	subu    $t6, $s0, $v0
	addiu   $t7, $t6, 0x4000
	sh      $t7, 0x0022($sp)
	lh      $t8, 0x0022($sp)
	blez    $t8, 47$
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0001
	jal     camera_80286088
	lh      $a2, 0x0036($sp)
	b       56$
	nop
47$:
	lw      $t0, 0x0030($sp)
	li      $t9, 0x0001
	sb      $t9, 0x0000($t0)
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	li      $at, -0x0002
	and     $t2, $t1, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t2, %lo(camera_8033C84A)($at)
56$:
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $0, %lo(_camera_bss_238-0x238+0x252)($at)
58$:
	b       60$
	nop
60$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028D79C:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x000C
	beq     $t6, $at, 55$
	nop
	lui     $at, %hi(_camera_bss_238-0x238+0x2C0)
	sw      $a1, %lo(_camera_bss_238-0x238+0x2C0)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x2BC)
	sw      $0, %lo(_camera_bss_238-0x238+0x2BC)($at)
	mtc1    $0, $f4
	la.u    $t7, _camera_bss_238-0x238+0x2C8
	la.l    $t7, _camera_bss_238-0x238+0x2C8
	swc1    $f4, 0x0000($t7)
	mtc1    $0, $f6
	la.u    $t8, _camera_bss_238-0x238+0x2C8
	la.l    $t8, _camera_bss_238-0x238+0x2C8
	swc1    $f6, 0x0004($t8)
	mtc1    $0, $f8
	la.u    $t9, _camera_bss_238-0x238+0x2C8
	la.l    $t9, _camera_bss_238-0x238+0x2C8
	swc1    $f8, 0x0008($t9)
	lui     $t0, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t0, %lo(_camera_bss_238-0x238+0x2C0)($t0)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f10, 0x001C($t0)
	lwc1    $f16, 0x0004($t0)
	add.s   $f18, $f10, $f16
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x0010($a0)
	lui     $t1, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t1, %lo(_camera_bss_238-0x238+0x2C0)($t1)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f8, 0x0020($t1)
	lwc1    $f10, 0x0008($t1)
	add.s   $f16, $f8, $f10
	div.s   $f4, $f16, $f18
	swc1    $f4, 0x0014($a0)
	lui     $t2, %hi(_camera_bss_238-0x238+0x2C0)
	lw      $t2, %lo(_camera_bss_238-0x238+0x2C0)($t2)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f6, 0x0024($t2)
	lwc1    $f8, 0x000C($t2)
	add.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($a0)
	lui     $t3, %hi(camera_8033C84A)
	lh      $t3, %lo(camera_8033C84A)($t3)
	li      $at, -0x0002
	and     $t4, $t3, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t4, %lo(camera_8033C84A)($at)
	li      $t5, 0x000C
	sb      $t5, 0x0000($a0)
55$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028D888:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0061
	beq     $s0, $at, 24$
	nop
	li      $at, 0x0141
	beq     $s0, $at, 14$
	nop
	b       34$
	nop
14$:
	la.u    $a0, camera_8032DF6C
	li.u    $a1, 0x44218000
	li.u    $a3, 0xC4BD2000
	li.l    $a3, 0xC4BD2000
	li.l    $a1, 0x44218000
	la.l    $a0, camera_8032DF6C
	jal     vecf_set
	li      $a2, 0x430F0000
	b       34$
	nop
24$:
	la.u    $a0, camera_8032DF6C
	li.u    $a1, 0xC4104000
	li.u    $a3, 0x44B46000
	li.l    $a3, 0x44B46000
	li.l    $a1, 0xC4104000
	la.l    $a0, camera_8032DF6C
	jal     vecf_set
	li      $a2, 0x430F0000
	b       34$
	nop
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028D92C:
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x4000
	bnez    $t8, 14$
	nop
	lbu     $t9, 0x0000($a0)
	li      $at, 0x0003
	beq     $t9, $at, 14$
	nop
	lbu     $t0, 0x0000($a0)
	li      $at, 0x0008
	bne     $t0, $at, 19$
	nop
14$:
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	lui     $at, %hi(camera_8033C84A)
	ori     $t2, $t1, 0x1000
	sh      $t2, %lo(camera_8033C84A)($at)
19$:
	lui     $t3, %hi(stage_index)
	lh      $t3, %lo(stage_index)($t3)
	li      $at, 0x0017
	beq     $t3, $at, 30$
	nop
	li      $at, 0x000B
	beq     $t3, $at, 30$
	nop
	li      $at, 0x001C
	bne     $t3, $at, 36$
	nop
30$:
	lui     $t4, %hi(camera_8033C84A)
	lh      $t4, %lo(camera_8033C84A)($t4)
	li      $at, -0x1001
	and     $t5, $t4, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t5, %lo(camera_8033C84A)($at)
36$:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x0003
	bne     $t6, $at, 46$
	nop
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lw      $t8, 0x0000($t7)
	andi    $t9, $t8, 0x6000
	beqz    $t9, 50$
	nop
46$:
	lbu     $t0, 0x0000($a0)
	li      $at, 0x000A
	bne     $t0, $at, 55$
	nop
50$:
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	lui     $at, %hi(camera_8033C84A)
	ori     $t2, $t1, 0x1000
	sh      $t2, %lo(camera_8033C84A)($at)
55$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl camera_8028DA18
camera_8028DA18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D5AC
	lw      $a0, 0x0018($sp)
	li      $t6, 0x4000
	lui     $at, %hi(_camera_bss_238-0x238+0x256)
	sh      $t6, %lo(_camera_bss_238-0x238+0x256)($at)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DA50
camera_8028DA50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D5AC
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(camera_80337370)
	lwc1    $f6, %lo(camera_80337370)($at)
	lwc1    $f4, 0x0014($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    33$
	nop
	lui     $at, %hi(camera_80337374)
	lwc1    $f8, %lo(camera_80337374)($at)
	lw      $t7, 0x0018($sp)
	swc1    $f8, 0x0014($t7)
	lw      $t8, 0x0018($sp)
	la.u    $t9, camdata
	la.l    $t9, camdata
	lwc1    $f10, 0x0014($t8)
	swc1    $f10, 0x0028($t9)
	lw      $t0, 0x0018($sp)
	la.u    $t1, camdata
	la.l    $t1, camdata
	lwc1    $f16, 0x0014($t0)
	swc1    $f16, 0x0010($t1)
	lui     $t2, %hi(camera_8033C84A)
	lh      $t2, %lo(camera_8033C84A)($t2)
	li      $at, -0x0002
	and     $t3, $t2, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t3, %lo(camera_8033C84A)($at)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DAEC
camera_8028DAEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, 13$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0B9E
	li      $a2, 0x01DE
	jal     camera_8028D44C
	li      $a3, -0x0F87
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DB38
camera_8028DB38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, 13$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0B89
	li      $a2, 0x031E
	jal     camera_8028D44C
	li      $a3, -0x0F67
13$:
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(camera_80337378)
	lwc1    $f6, %lo(camera_80337378)($at)
	lwc1    $f4, 0x0014($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    25$
	nop
	lui     $at, %hi(camera_8033737C)
	lwc1    $f8, %lo(camera_8033737C)($at)
	lw      $t9, 0x0018($sp)
	swc1    $f8, 0x0014($t9)
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DBB4
camera_8028DBB4:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x000D
	beq     $t6, $at, 12$
	nop
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	li      $at, -0x0002
	and     $t8, $t7, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t8, %lo(camera_8033C84A)($at)
	li      $t9, 0x000D
	sb      $t9, 0x0000($a0)
12$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl camera_8028DBF4
camera_8028DBF4:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	lui     $at, %hi(camera_8033C848)
	ori     $t7, $t6, 0x0040
	sh      $t7, %lo(camera_8033C848)($at)
	b       8$
	nop
8$:
	jr      $ra
	nop

.globl camera_8028DC1C
camera_8028DC1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x1000
	sh      $t7, %lo(camera_8033C84A)($at)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x000E
	jal     camera_80286088
	li      $a2, 0x003C
	li      $t8, 0x1D27
	lui     $at, %hi(_camera_bss_238-0x238+0x256)
	sh      $t8, %lo(_camera_bss_238-0x238+0x256)($at)
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DC70
camera_8028DC70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x003C
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028DCA4:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0xCC)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x000C($sp)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    37$
	nop
	lui     $at, %hi(_camera_bss_48-0x48+0xE4)
	lwc1    $f16, %lo(_camera_bss_48-0x48+0xE4)($at)
	c.lt.s  $f4, $f16
	nop
	bc1f    37$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f18, 0x000C($sp)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x0014($a0)
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x000C($sp)
	la.u    $t6, camdata
	la.l    $t6, camdata
	sub.s   $f4, $f10, $f16
	swc1    $f4, 0x0010($t6)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f18, 0x000C($sp)
	la.u    $t7, camdata
	la.l    $t7, camdata
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x0028($t7)
37$:
	b       39$
	nop
39$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl camera_8028DD48
camera_8028DD48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0xC2CC0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0014($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    51$
	nop
	lw      $a0, 0x0028($sp)
	la.u    $a1, camdata
	la.l    $a1, camdata
	addiu   $t7, $sp, 0x0024
	sw      $t7, 0x0010($sp)
	addiu   $a1, $a1, 0x0024
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0028($sp)
	lh      $t8, 0x0024($sp)
	la.u    $a1, camdata
	la.l    $a1, camdata
	addiu   $a1, $a1, 0x0024
	li      $a2, 0x43960000
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	li      $at, 0xC4480000
	mtc1    $at, $f8
	la.u    $t9, camdata
	la.l    $t9, camdata
	swc1    $f8, 0x0028($t9)
	la.u    $t0, camdata
	la.l    $t0, camdata
	lwc1    $f10, 0x0028($t0)
	lw      $t1, 0x0028($sp)
	swc1    $f10, 0x0014($t1)
	la.u    $t2, camdata
	la.l    $t2, camdata
	lwc1    $f16, 0x0028($t2)
	swc1    $f16, 0x0010($t2)
	lui     $t3, %hi(camera_8033C84A)
	lh      $t3, %lo(camera_8033C84A)($t3)
	li      $at, -0x0002
	and     $t4, $t3, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t4, %lo(camera_8033C84A)($at)
51$:
	b       53$
	nop
53$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_8028DE2C
camera_8028DE2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028DCA4
	li      $a1, 0x44C00000
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DE5C
camera_8028DE5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x45133000
	li.l    $a1, 0x45133000
	jal     camera_8028DCA4
	lw      $a0, 0x0018($sp)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DE90
camera_8028DE90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x44E66000
	li.l    $a1, 0x44E66000
	jal     camera_8028DCA4
	lw      $a0, 0x0018($sp)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DEC4
camera_8028DEC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x44E66000
	li.l    $a1, 0x44E66000
	jal     camera_8028DCA4
	lw      $a0, 0x0018($sp)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DEF8
camera_8028DEF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028FE58
	li      $a0, 0x00A4
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DF24
camera_8028DF24:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x1000
	sh      $t7, %lo(camera_8033C84A)($at)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x005A
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DF6C
camera_8028DF6C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x1000
	sh      $t7, %lo(camera_8033C84A)($at)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0002
	jal     camera_80286088
	li      $a2, 0x005A
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028DFB4
camera_8028DFB4:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x252)
	lh      $t6, %lo(_camera_bss_238-0x238+0x252)($t6)
	slti    $at, $t6, 0x2AAA
	beqz    $at, 9$
	nop
	li      $t7, 0x2AAA
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $t7, %lo(_camera_bss_238-0x238+0x252)($at)
9$:
	b       11$
	nop
11$:
	jr      $ra
	nop

.globl camera_8028DFE8
camera_8028DFE8:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x252)
	lh      $t6, %lo(_camera_bss_238-0x238+0x252)($t6)
	slti    $at, $t6, 0x3AAB
	bnez    $at, 9$
	nop
	li      $t7, 0x3AAA
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $t7, %lo(_camera_bss_238-0x238+0x252)($at)
9$:
	b       11$
	nop
11$:
	jr      $ra
	nop

.globl camera_8028E01C
camera_8028E01C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x1000
	sh      $t7, %lo(camera_8033C84A)($at)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0001
	jal     camera_80286088
	li      $a2, 0x005A
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E064
camera_8028E064:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E098
camera_8028E098:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x192C
	lw      $t7, 0x0000($t6)
	beq     $t7, $at, 15$
	nop
	li      $at, 0x192B
	beq     $t7, $at, 15$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028C13C
	li      $a1, 0x00B5
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E0EC
camera_8028E0EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $t6, camera_8032DF6C
	la.l    $t6, camera_8032DF6C
	lui     $at, %hi(camera_80337380)
	lwc1    $f4, %lo(camera_80337380)($at)
	lwc1    $f6, 0x0000($t6)
	li      $at, 0x43BD0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	lui     $at, %hi(camera_80337384)
	lwc1    $f4, %lo(camera_80337384)($at)
	lwc1    $f6, 0x0008($t6)
	lwc1    $f16, 0x0004($t6)
	mfc1    $a1, $f8
	sub.s   $f8, $f4, $f6
	la.u    $a0, _camera_bss_238-0x238+0x2B0
	la.l    $a0, _camera_bss_238-0x238+0x2B0
	sub.s   $f18, $f10, $f16
	mfc1    $a3, $f8
	mfc1    $a2, $f18
	jal     vecf_set
	nop
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E164
camera_8028E164:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0010($t6)
	lwc1    $f14, 0x0014($t6)
	jal     bg_check_ground
	lw      $a2, 0x0018($t6)
	swc1    $f0, 0x0018($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0xCC)($at)
	lui     $at, %hi(camera_80337388)
	lwc1    $f6, %lo(camera_80337388)($at)
	c.lt.s  $f6, $f4
	nop
	bc1f    37$
	nop
	lui     $at, %hi(camera_8033738C)
	lwc1    $f10, %lo(camera_8033738C)($at)
	lwc1    $f8, 0x0018($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    37$
	nop
	lui     $t7, %hi(_camera_bss_238-0x238+0x248)
	lh      $t7, %lo(_camera_bss_238-0x238+0x248)($t7)
	bnez    $t7, 37$
	nop
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x44B22000
	li.u    $a3, 0x44BFA000
	li.l    $a3, 0x44BFA000
	li.l    $a2, 0x44B22000
	li      $a1, 0xC3630000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8028E210
camera_8028E210:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0010($t6)
	lwc1    $f14, 0x0014($t6)
	jal     bg_check_ground
	lw      $a2, 0x0018($t6)
	swc1    $f0, 0x0018($sp)
	li      $at, 0xC2DC0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    28$
	nop
	lui     $t7, %hi(_camera_bss_238-0x238+0x248)
	lh      $t7, %lo(_camera_bss_238-0x238+0x248)($t7)
	bnez    $t7, 28$
	nop
	lw      $a0, 0x0020($sp)
	li.u    $a3, 0xC4AEC000
	li.l    $a3, 0xC4AEC000
	li      $a1, 0xC4750000
	li      $a2, 0x43790000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8028E298
camera_8028E298:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, 20$
	nop
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	li      $at, -0x0002
	and     $t9, $t8, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t9, %lo(camera_8033C84A)($at)
	lw      $t0, 0x0018($sp)
	jal     camera_8028D888
	lbu     $a0, 0x0000($t0)
	lw      $t2, 0x0018($sp)
	li      $t1, 0x000D
	sb      $t1, 0x0000($t2)
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E300
camera_8028E300:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0011
	jal     camera_80286088
	li      $a2, 0x0014
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028E334:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0011
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x001E
	b       16$
	nop
14$:
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E38C
camera_8028E38C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E3B8
camera_8028E3B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028E38C
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0002
	sb      $t6, 0x0064($t7)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E3F0
camera_8028E3F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028E298
	lw      $a0, 0x0018($sp)
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E41C
camera_8028E41C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, campos_bbh_library
	la.l    $a1, campos_bbh_library
	jal     camera_8028D79C
	lw      $a0, 0x0018($sp)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E450
camera_8028E450:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E47C
camera_8028E47C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	jal     camera_8028D658
	lw      $a0, 0x0028($sp)
	addiu   $a0, $sp, 0x001C
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x43960000
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0024
	addiu   $a2, $sp, 0x001C
	addiu   $a1, $t6, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t6, 0x0010
	lui     $at, %hi(camera_80337390)
	lwc1    $f4, %lo(camera_80337390)($at)
	la.u    $t7, camdata
	la.l    $t7, camdata
	swc1    $f4, 0x0028($t7)
	lw      $a0, 0x0028($sp)
	la.u    $a1, camdata
	la.l    $a1, camdata
	addiu   $a1, $a1, 0x0024
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	li      $at, -0x0002
	and     $t9, $t8, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t9, %lo(camera_8033C84A)($at)
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_8028E524
camera_8028E524:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x03BC
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x07CA
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E55C
camera_8028E55C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	jal     camera_8028E524
	lw      $a0, 0x0018($sp)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E594
camera_8028E594:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0A1F
	li      $a2, 0x0190
	jal     camera_8028D44C
	li      $a3, 0x0504
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E5CC
camera_8028E5CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DC9
	li      $a2, 0x0154
	jal     camera_8028D44C
	li      $a3, -0x0568
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E604
camera_8028E604:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x01F4
	li      $a2, 0x02E4
	jal     camera_8028D44C
	li      $a3, -0x051A
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E63C
camera_8028E63C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x087C
	li      $a2, 0x00C8
	jal     camera_8028D44C
	li      $a3, 0x02A3
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E674
camera_8028E674:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x087C
	li      $a2, 0x00C8
	jal     camera_8028D44C
	li      $a3, 0x02A3
	li      $at, 0x0001
	bne     $v0, $at, 14$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E6C4
camera_8028E6C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0606
	li      $a2, 0x0140
	jal     camera_8028D44C
	li      $a3, -0x0133
	li      $at, 0x0001
	bne     $v0, $at, 14$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E714
camera_8028E714:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0606
	li      $a2, 0x0140
	jal     camera_8028D44C
	li      $a3, -0x0133
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E758
camera_8028E758:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0765
	li      $a2, 0x0140
	jal     camera_8028D44C
	li      $a3, 0x0917
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E790
camera_8028E790:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x055B
	li      $a2, 0x0168
	jal     camera_8028D44C
	li      $a3, -0x0516
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E7C8
camera_8028E7C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x055B
	li      $a2, 0x0168
	jal     camera_8028D44C
	li      $a3, -0x0516
	li      $at, 0x0001
	bne     $v0, $at, 14$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E818
camera_8028E818:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0843
	li      $a2, 0x0104
	jal     camera_8028D44C
	li      $a3, -0x0304
	li      $at, 0x0001
	bne     $v0, $at, 14$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E868
camera_8028E868:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E8A0
camera_8028E8A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E8CC
camera_8028E8CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, 19$
	nop
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	lui     $at, %hi(camera_80337394)
	lwc1    $f4, %lo(camera_80337394)($at)
	lw      $t8, 0x0018($sp)
	swc1    $f4, 0x0014($t8)
	lui     $at, %hi(camera_80337398)
	lwc1    $f6, %lo(camera_80337398)($at)
	la.u    $t9, camdata
	la.l    $t9, camdata
	swc1    $f6, 0x0028($t9)
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E930
camera_8028E930:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0B74
	li      $a2, 0x0128
	jal     camera_8028D44C
	li      $a3, 0x114D
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E974
camera_8028E974:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E9A0
camera_8028E9A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DA5
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x0269
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028E9D8
camera_8028E9D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DA5
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x0269
	li      $at, 0x0001
	bne     $v0, $at, 14$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028EA28
camera_8028EA28:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DAE
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x04C1
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028EA60
camera_8028EA60:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DAE
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x04C1
	li      $at, 0x0001
	bne     $v0, $at, 14$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028EAB0
camera_8028EAB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x029E
	li      $a2, 0x01CC
	jal     camera_8028D44C
	li      $a3, 0x0174
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028EAE8
camera_8028EAE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x029E
	li      $a2, 0x01CC
	jal     camera_8028D44C
	li      $a3, 0x0174
	li      $at, 0x0001
	bne     $v0, $at, 14$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028EB38
camera_8028EB38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0083
	li      $a2, 0x017C
	jal     camera_8028D44C
	li      $a3, -0x0107
	li      $at, 0x0001
	bne     $v0, $at, 14$
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028EB88
camera_8028EB88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x00D2
	li      $a2, 0x01A4
	jal     camera_8028D44C
	li      $a3, 0x0C25
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028EBC0
camera_8028EBC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x00CC
	li      $a2, 0x0327
	jal     camera_8028D44C
	li      $a3, 0x00CC
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8028EC04
camera_8028EC04:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0010
	sh      $t7, %lo(camera_8033C84A)($at)
	b       8$
	nop
8$:
	jr      $ra
	nop

.globl camera_8028EC2C
camera_8028EC2C:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	li      $at, -0x0011
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t7, %lo(camera_8033C84A)($at)
	b       9$
	nop
9$:
	jr      $ra
	nop

camera_8028EC58:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0024($sp)
	lui     $s0, %hi(_camera_bss_48-0x48+0xD0)
	lh      $s0, %lo(_camera_bss_48-0x48+0xD0)($s0)
	li      $at, 0x000B
	beq     $s0, $at, 18$
	nop
	li      $at, 0x0066
	beq     $s0, $at, 27$
	nop
	li      $at, 0x0079
	beq     $s0, $at, 36$
	nop
	b       45$
	nop
18$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x005A
	lw      $t6, 0x0024($sp)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0024($sp)
	b       45$
	nop
27$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
	lw      $t8, 0x0024($sp)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0024($sp)
	b       45$
	nop
36$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x005A
	lw      $t0, 0x0024($sp)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0024($sp)
	b       45$
	nop
45$:
	b       49$
	lw      $v0, 0x0024($sp)
	b       49$
	nop
49$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028ED30:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
	jal     camera_8028EC58
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	bnez    $t6, 18$
	nop
	lbu     $t7, 0x0027($sp)
	beqz    $t7, 18$
	nop
	lw      $a0, 0x0020($sp)
	lbu     $a1, 0x0027($sp)
	jal     camera_80286088
	li      $a2, 0x005A
18$:
	b       22$
	lw      $v0, 0x001C($sp)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028ED98:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(_camera_bss_48-0x48+0xD0)
	lh      $s0, %lo(_camera_bss_48-0x48+0xD0)($s0)
	li      $at, 0x000B
	beq     $s0, $at, 20$
	nop
	li      $at, 0x0066
	beq     $s0, $at, 31$
	nop
	li      $at, 0x0069
	beq     $s0, $at, 53$
	nop
	li      $at, 0x0079
	beq     $s0, $at, 42$
	nop
	b       59$
	nop
20$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0004
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, 29$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
29$:
	b       63$
	nop
31$:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0004
	lbu     $t9, 0x0000($t8)
	beq     $t9, $at, 40$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
40$:
	b       63$
	nop
42$:
	lw      $t0, 0x0028($sp)
	li      $at, 0x0004
	lbu     $t1, 0x0000($t0)
	beq     $t1, $at, 51$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
51$:
	b       63$
	nop
53$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x000E
	jal     camera_80286088
	li      $a2, 0x005A
	b       63$
	nop
59$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0001
	jal     camera_80286088
	li      $a2, 0x005A
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028EEB0:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0068($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	sh      $t6, 0x0066($sp)
	lui     $t7, %hi(scenep)
	lw      $t7, %lo(scenep)($t7)
	lb      $t8, 0x0000($t7)
	sb      $t8, 0x0063($sp)
	sw      $0, 0x0040($sp)
	lw      $t9, 0x0068($sp)
	lbu     $t0, 0x0000($t9)
	sb      $t0, 0x0027($sp)
	lw      $t1, 0x0068($sp)
	li      $at, 0x0006
	lbu     $t2, 0x0000($t1)
	bne     $t2, $at, 24$
	nop
	lui     $t3, %hi(_camera_bss_238-0x238+0x26A)
	lh      $t3, %lo(_camera_bss_238-0x238+0x26A)($t3)
	lw      $t4, 0x0068($sp)
	sb      $t3, 0x0000($t4)
24$:
	jal     camera_8028D92C
	lw      $a0, 0x0068($sp)
	lh      $t5, 0x0066($sp)
	slti    $at, $t5, 0x0029
	bnez    $at, 32$
	nop
	li      $t6, 0x0028
	sh      $t6, 0x0066($sp)
32$:
	lh      $t7, 0x0066($sp)
	lui     $t9, %hi(camctl_table)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camctl_table)($t9)
	beqz    $t9, 210$
	nop
	sw      $0, 0x005C($sp)
	lh      $t0, 0x0066($sp)
	lw      $t3, 0x005C($sp)
	lui     $t2, %hi(camctl_table)
	sll     $t1, $t0, 2
	addu    $t2, $t2, $t1
	lw      $t2, %lo(camctl_table)($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $t5, $t2, $t4
	lw      $t6, 0x0004($t5)
	beqz    $t6, 210$
	nop
53$:
	lh      $t7, 0x0066($sp)
	lw      $t0, 0x005C($sp)
	lui     $t9, %hi(camctl_table)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camctl_table)($t9)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $t3, $t9, $t1
	lb      $t2, 0x0000($t3)
	lb      $t4, 0x0063($sp)
	bne     $t2, $t4, 158$
	nop
	lh      $t5, 0x0066($sp)
	lw      $t8, 0x005C($sp)
	lui     $t7, %hi(camctl_table)
	sll     $t6, $t5, 2
	addu    $t7, $t7, $t6
	lw      $t7, %lo(camctl_table)($t7)
	sll     $t0, $t8, 2
	subu    $t0, $t0, $t8
	sll     $t0, $t0, 3
	addu    $t9, $t7, $t0
	lh      $t1, 0x0008($t9)
	lh      $t3, 0x000A($t9)
	lh      $t2, 0x000C($t9)
	mtc1    $t1, $f4
	mtc1    $t3, $f6
	mtc1    $t2, $f8
	cvt.s.w $f4, $f4
	addiu   $a0, $sp, 0x0050
	cvt.s.w $f6, $f6
	mfc1    $a1, $f4
	cvt.s.w $f8, $f8
	mfc1    $a2, $f6
	mfc1    $a3, $f8
	jal     vecf_set
	nop
	lh      $t4, 0x0066($sp)
	lw      $t8, 0x005C($sp)
	lui     $t6, %hi(camctl_table)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(camctl_table)($t6)
	sll     $t7, $t8, 2
	subu    $t7, $t7, $t8
	sll     $t7, $t7, 3
	addu    $t0, $t6, $t7
	lh      $t1, 0x000E($t0)
	lh      $t3, 0x0010($t0)
	lh      $t9, 0x0012($t0)
	mtc1    $t1, $f10
	mtc1    $t3, $f16
	mtc1    $t9, $f18
	cvt.s.w $f10, $f10
	addiu   $a0, $sp, 0x0044
	cvt.s.w $f16, $f16
	mfc1    $a1, $f10
	cvt.s.w $f18, $f18
	mfc1    $a2, $f16
	mfc1    $a3, $f18
	jal     vecf_set
	nop
	lh      $t2, 0x0066($sp)
	lw      $t8, 0x005C($sp)
	lui     $t5, %hi(camctl_table)
	sll     $t4, $t2, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(camctl_table)($t5)
	sll     $t6, $t8, 2
	lui     $a0, %hi(mario_cam)
	subu    $t6, $t6, $t8
	lw      $a0, %lo(mario_cam)($a0)
	sll     $t6, $t6, 3
	addu    $t7, $t5, $t6
	lh      $a3, 0x0014($t7)
	addiu   $a1, $sp, 0x0050
	addiu   $a2, $sp, 0x0044
	jal     camera_8028A8E8
	addiu   $a0, $a0, 0x0004
	li      $at, 0x0001
	bne     $v0, $at, 158$
	nop
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	andi    $t3, $t1, 0x1000
	bnez    $t3, 158$
	nop
	lh      $t0, 0x0066($sp)
	lw      $t4, 0x005C($sp)
	lui     $t2, %hi(camctl_table)
	sll     $t9, $t0, 2
	addu    $t2, $t2, $t9
	lw      $t2, %lo(camctl_table)($t2)
	sll     $t8, $t4, 2
	subu    $t8, $t8, $t4
	sll     $t8, $t8, 3
	addu    $t5, $t2, $t8
	lw      $t9, 0x0004($t5)
	lw      $a0, 0x0068($sp)
	jalr    $t9
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0040($sp)
158$:
	lh      $t7, 0x0066($sp)
	lw      $t0, 0x005C($sp)
	lui     $t3, %hi(camctl_table)
	sll     $t1, $t7, 2
	addu    $t3, $t3, $t1
	lw      $t3, %lo(camctl_table)($t3)
	sll     $t4, $t0, 2
	subu    $t4, $t4, $t0
	sll     $t4, $t4, 3
	addu    $t2, $t3, $t4
	lb      $t8, 0x0000($t2)
	li      $at, -0x0001
	bne     $t8, $at, 194$
	nop
	lw      $t5, 0x0040($sp)
	bnez    $t5, 194$
	nop
	lui     $t9, %hi(camera_8033C84A)
	lh      $t9, %lo(camera_8033C84A)($t9)
	andi    $t6, $t9, 0x1000
	bnez    $t6, 194$
	nop
	lh      $t7, 0x0066($sp)
	lw      $t3, 0x005C($sp)
	lui     $t0, %hi(camctl_table)
	sll     $t1, $t7, 2
	addu    $t0, $t0, $t1
	lw      $t0, %lo(camctl_table)($t0)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $t2, $t0, $t4
	lw      $t9, 0x0004($t2)
	lw      $a0, 0x0068($sp)
	jalr    $t9
	nop
194$:
	lw      $t8, 0x005C($sp)
	addiu   $t5, $t8, 0x0001
	sw      $t5, 0x005C($sp)
	lh      $t6, 0x0066($sp)
	lw      $t3, 0x005C($sp)
	lui     $t1, %hi(camctl_table)
	sll     $t7, $t6, 2
	addu    $t1, $t1, $t7
	lw      $t1, %lo(camctl_table)($t1)
	sll     $t0, $t3, 2
	subu    $t0, $t0, $t3
	sll     $t0, $t0, 3
	addu    $t4, $t1, $t0
	lw      $t2, 0x0004($t4)
	bnez    $t2, 53$
	nop
210$:
	lui     $t9, %hi(camera_8033C84A)
	lh      $t9, %lo(camera_8033C84A)($t9)
	andi    $t8, $t9, 0x1000
	bnez    $t8, 467$
	nop
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	slti    $at, $s0, 0x00B3
	bnez    $at, 240$
	nop
	li      $at, 0x00D1
	beq     $s0, $at, 345$
	nop
	li      $at, 0x00D2
	beq     $s0, $at, 347$
	nop
	li      $at, 0x00E1
	beq     $s0, $at, 351$
	nop
	li      $at, 0x0171
	beq     $s0, $at, 414$
	nop
	li      $at, 0x0172
	beq     $s0, $at, 419$
	nop
	li      $at, 0x0181
	beq     $s0, $at, 260$
	nop
	b       467$
	nop
240$:
	li      $at, 0x0041
	beq     $s0, $at, 310$
	nop
	li      $at, 0x0081
	beq     $s0, $at, 340$
	nop
	li      $at, 0x0082
	beq     $s0, $at, 335$
	nop
	li      $at, 0x0091
	beq     $s0, $at, 356$
	nop
	li      $at, 0x00B1
	beq     $s0, $at, 386$
	nop
	li      $at, 0x00B2
	beq     $s0, $at, 400$
	nop
	b       467$
	nop
260$:
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	li      $at, 0x04A8
	lw      $t6, 0x0000($t5)
	bne     $t6, $at, 272$
	nop
	lw      $a0, 0x0068($sp)
	li      $a1, 0x0009
	jal     camera_80286088
	li      $a2, 0x003C
	b       308$
	nop
272$:
	lui     $s0, %hi(_camera_bss_48-0x48+0xD0)
	lh      $s0, %lo(_camera_bss_48-0x48+0xD0)($s0)
	li      $at, 0x0065
	beq     $s0, $at, 291$
	nop
	li      $at, 0x0069
	beq     $s0, $at, 282$
	nop
	b       305$
	nop
282$:
	lw      $a0, 0x0068($sp)
	li      $a1, 0x000E
	jal     camera_80286088
	li      $a2, 0x005A
	li      $t7, 0x4000
	lui     $at, %hi(_camera_bss_238-0x238+0x256)
	sh      $t7, %lo(_camera_bss_238-0x238+0x256)($at)
	b       308$
	nop
291$:
	lui     $t3, %hi(level_index)
	lh      $t3, %lo(level_index)($t3)
	li      $at, 0x0001
	bne     $t3, $at, 300$
	nop
	jal     camera_8028D5FC
	lw      $a0, 0x0068($sp)
	b       303$
	nop
300$:
	lw      $a0, 0x0068($sp)
	jal     camera_8028D698
	li      $a1, 0x003C
303$:
	b       308$
	nop
305$:
	lw      $a0, 0x0068($sp)
	jal     camera_8028D698
	li      $a1, 0x003C
308$:
	b       467$
	nop
310$:
	la.u    $a0, camera_8032DF6C
	li.u    $a3, 0x45425000
	li.l    $a3, 0x45425000
	la.l    $a0, camera_8032DF6C
	li      $a1, 0x43520000
	jal     camera_80289198
	li      $a2, 0x43D20000
	li      $at, 0x0001
	bne     $v0, $at, 333$
	nop
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	li      $at, 0x44E10000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    333$
	nop
	lw      $a0, 0x0068($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x001E
333$:
	b       467$
	nop
335$:
	lw      $a0, 0x0068($sp)
	jal     camera_8028ED30
	li      $a1, 0x0002
	b       467$
	nop
340$:
	lw      $a0, 0x0068($sp)
	jal     camera_8028ED30
	li      $a1, 0x0001
	b       467$
	nop
345$:
	b       467$
	nop
347$:
	jal     camera_8028ED98
	lw      $a0, 0x0068($sp)
	b       467$
	nop
351$:
	lw      $a0, 0x0068($sp)
	jal     camera_8028ED30
	li      $a1, 0x0002
	b       467$
	nop
356$:
	lw      $a0, 0x0068($sp)
	jal     camera_8028ED30
	move    $a1, $0
	bnez    $v0, 384$
	nop
	lui     $t0, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t0, %lo(_camera_bss_48-0x48+0xD0)($t0)
	li      $at, 0x0065
	bne     $t0, $at, 370$
	nop
	jal     camera_8028D5FC
	lw      $a0, 0x0068($sp)
	b       384$
	nop
370$:
	lw      $t4, 0x0068($sp)
	li      $at, 0x0004
	lbu     $t2, 0x0000($t4)
	bne     $t2, $at, 381$
	nop
	lw      $a0, 0x0068($sp)
	li      $a1, 0x0001
	jal     camera_80286088
	li      $a2, 0x003C
	b       384$
	nop
381$:
	lw      $a0, 0x0068($sp)
	jal     camera_8028D698
	li      $a1, 0x003C
384$:
	b       467$
	nop
386$:
	lui     $t9, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t9, %lo(_camera_bss_48-0x48+0xD0)($t9)
	li      $at, 0x001B
	bne     $t9, $at, 398$
	nop
	b       393$
	nop
393$:
	lw      $t5, 0x0068($sp)
	li      $t8, 0x0001
	sb      $t8, 0x0001($t5)
	b       398$
	nop
398$:
	b       467$
	nop
400$:
	lui     $t6, %hi(_camera_bss_48-0x48+0xD0)
	lh      $t6, %lo(_camera_bss_48-0x48+0xD0)($t6)
	li      $at, 0x001C
	bne     $t6, $at, 412$
	nop
	b       407$
	nop
407$:
	lw      $t3, 0x0068($sp)
	li      $t7, 0x0004
	sb      $t7, 0x0001($t3)
	b       412$
	nop
412$:
	b       467$
	nop
414$:
	li      $t1, 0x0002
	lui     $at, %hi(camdata+0x3D)
	sb      $t1, %lo(camdata+0x3D)($at)
	b       467$
	nop
419$:
	lw      $t0, 0x0068($sp)
	li      $at, 0x0003
	lbu     $t4, 0x0000($t0)
	beq     $t4, $at, 462$
	nop
	li      $at, 0x0008
	beq     $t4, $at, 462$
	nop
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	li      $at, 0x00100000
	lw      $t9, 0x0000($t2)
	and     $t8, $t9, $at
	bnez    $t8, 443$
	nop
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f8, %lo(_camera_bss_48-0x48+0xCC)($at)
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	c.lt.s  $f10, $f8
	nop
	bc1f    449$
	nop
443$:
	lw      $a0, 0x0068($sp)
	li      $a1, 0x000E
	jal     camera_80286088
	li      $a2, 0x003C
	b       462$
	nop
449$:
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	li      $at, 0x44480000
	mtc1    $at, $f18
	lwc1    $f16, 0x0008($t5)
	c.lt.s  $f16, $f18
	nop
	bc1f    462$
	nop
	lw      $a0, 0x0068($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x003C
462$:
	li      $t6, 0x0010
	lui     $at, %hi(camdata+0x3D)
	sb      $t6, %lo(camdata+0x3D)($at)
	b       467$
	nop
467$:
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	li      $at, -0x1001
	and     $t3, $t7, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t3, %lo(camera_8033C84A)($at)
	lbu     $t1, 0x0027($sp)
	li      $at, 0x0006
	bne     $t1, $at, 484$
	nop
	lw      $t0, 0x0068($sp)
	lui     $at, %hi(_camera_bss_238-0x238+0x26A)
	lbu     $t4, 0x0000($t0)
	sh      $t4, %lo(_camera_bss_238-0x238+0x26A)($at)
	lbu     $t2, 0x0027($sp)
	lw      $t9, 0x0068($sp)
	sb      $t2, 0x0000($t9)
484$:
	lw      $t8, 0x0068($sp)
	lbu     $t5, 0x0000($t8)
	sh      $t5, 0x0064($sp)
	b       491$
	lh      $v0, 0x0064($sp)
	b       491$
	nop
491$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

camera_8028F670:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	li      $a3, 0x0000
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	addiu   $a2, $t6, 0x0008
	jal     bg_hit_wall
	swc1    $f4, 0x0010($sp)
	lw      $t7, 0x0030($sp)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0004($t7)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x0000($t7)
	lw      $a2, 0x0008($t7)
	jal     bg_check_ground
	add.s   $f14, $f6, $f8
	swc1    $f0, 0x0028($sp)
	lw      $t8, 0x0030($sp)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lwc1    $f10, 0x0004($t8)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x0000($t8)
	lw      $a2, 0x0008($t8)
	jal     bg_check_roof
	sub.s   $f14, $f10, $f16
	swc1    $f0, 0x002C($sp)
	lui     $at, %hi(camera_8033739C)
	lwc1    $f18, %lo(camera_8033739C)($at)
	lwc1    $f4, 0x0028($sp)
	c.eq.s  $f18, $f4
	nop
	bc1t    61$
	nop
	lui     $at, %hi(camera_803373A0)
	lwc1    $f6, %lo(camera_803373A0)($at)
	lwc1    $f8, 0x002C($sp)
	c.eq.s  $f6, $f8
	nop
	bc1f    61$
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x0004($t9)
	c.lt.s  $f4, $f18
	nop
	bc1f    61$
	nop
	lwc1    $f6, 0x0028($sp)
	lw      $t0, 0x0030($sp)
	swc1    $f6, 0x0004($t0)
61$:
	lui     $at, %hi(camera_803373A4)
	lwc1    $f8, %lo(camera_803373A4)($at)
	lwc1    $f10, 0x0028($sp)
	c.eq.s  $f8, $f10
	nop
	bc1f    89$
	nop
	lui     $at, %hi(camera_803373A8)
	lwc1    $f16, %lo(camera_803373A8)($at)
	lwc1    $f4, 0x002C($sp)
	c.eq.s  $f16, $f4
	nop
	bc1t    89$
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x002C($sp)
	lw      $t1, 0x0030($sp)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0004($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    89$
	nop
	lwc1    $f16, 0x002C($sp)
	lw      $t2, 0x0030($sp)
	swc1    $f16, 0x0004($t2)
89$:
	lui     $at, %hi(camera_803373AC)
	lwc1    $f4, %lo(camera_803373AC)($at)
	lwc1    $f18, 0x0028($sp)
	c.eq.s  $f4, $f18
	nop
	bc1t    163$
	nop
	lui     $at, %hi(camera_803373B0)
	lwc1    $f6, %lo(camera_803373B0)($at)
	lwc1    $f10, 0x002C($sp)
	c.eq.s  $f6, $f10
	nop
	bc1t    163$
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f8, 0x0028($sp)
	add.s   $f4, $f8, $f16
	swc1    $f4, 0x0028($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x002C($sp)
	sub.s   $f10, $f18, $f6
	swc1    $f10, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f16, 0x0028($sp)
	lwc1    $f8, 0x0004($t3)
	c.le.s  $f8, $f16
	nop
	bc1f    128$
	nop
	lwc1    $f4, 0x002C($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    128$
	nop
	lwc1    $f18, 0x0028($sp)
	lw      $t4, 0x0030($sp)
	swc1    $f18, 0x0004($t4)
128$:
	lw      $t5, 0x0030($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f6, 0x0004($t5)
	c.lt.s  $f10, $f6
	nop
	bc1f    143$
	nop
	lwc1    $f16, 0x002C($sp)
	c.le.s  $f16, $f6
	nop
	bc1f    143$
	nop
	lwc1    $f8, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	swc1    $f8, 0x0004($t6)
143$:
	lw      $t7, 0x0030($sp)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x0004($t7)
	c.le.s  $f4, $f18
	nop
	bc1f    163$
	nop
	lwc1    $f10, 0x002C($sp)
	c.le.s  $f10, $f4
	nop
	bc1f    163$
	nop
	lwc1    $f6, 0x0028($sp)
	lwc1    $f16, 0x002C($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f18
	add.s   $f8, $f6, $f16
	lw      $t8, 0x0030($sp)
	mul.s   $f4, $f8, $f18
	swc1    $f4, 0x0004($t8)
163$:
	b       165$
	nop
165$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028F914:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0088($sp)
	sw      $a1, 0x008C($sp)
	sw      $a2, 0x0090($sp)
	sw      $a3, 0x0094($sp)
	sw      $0, 0x0028($sp)
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	addiu   $t6, $sp, 0x002E
	sw      $t6, 0x0010($sp)
	lw      $a1, 0x008C($sp)
	addiu   $a2, $sp, 0x0048
	addiu   $a3, $sp, 0x0030
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0004
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	li      $at, -0x0021
	and     $t8, $t7, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t8, %lo(camera_8033C84A)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0068($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0044($sp)
	li      $at, 0x43160000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x003C($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0038($sp)
	sw      $0, 0x0024($sp)
39$:
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	lw      $t9, 0x008C($sp)
	lwc1    $f6, 0x0044($sp)
	lwc1    $f18, 0x0004($t0)
	lwc1    $f16, 0x0000($t9)
	sub.s   $f4, $f16, $f18
	mul.s   $f8, $f4, $f6
	add.s   $f10, $f8, $f18
	swc1    $f10, 0x005C($sp)
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	lw      $t1, 0x008C($sp)
	lwc1    $f8, 0x0044($sp)
	lwc1    $f4, 0x0008($t2)
	lwc1    $f16, 0x0004($t1)
	sub.s   $f6, $f16, $f4
	mul.s   $f18, $f6, $f8
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0060($sp)
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	lw      $t3, 0x008C($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f6, 0x000C($t4)
	lwc1    $f16, 0x0008($t3)
	sub.s   $f8, $f16, $f6
	mul.s   $f4, $f8, $f18
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0064($sp)
	lwc1    $f16, 0x003C($sp)
	swc1    $f16, 0x006C($sp)
	addiu   $a0, $sp, 0x003C
	li      $a1, 0x437A0000
	jal     camera_802899CC
	li      $a2, 0x41F00000
	jal     bg_check_wall
	addiu   $a0, $sp, 0x005C
	beqz    $v0, 208$
	nop
	lh      $t5, 0x0072($sp)
	sll     $t6, $t5, 2
	addu    $t7, $sp, $t6
	lw      $t7, 0x0070($t7)
	sw      $t7, 0x0058($sp)
	lw      $t8, 0x0024($sp)
	slti    $at, $t8, 0x0005
	bnez    $at, 116$
	nop
	lui     $t9, %hi(camera_8033C84A)
	lh      $t9, %lo(camera_8033C84A)($t9)
	lui     $at, %hi(camera_8033C84A)
	ori     $t0, $t9, 0x0020
	sh      $t0, %lo(camera_8033C84A)($at)
	lw      $t1, 0x0028($sp)
	bgtz    $t1, 116$
	nop
	li      $t2, 0x0001
	sw      $t2, 0x0028($sp)
	lh      $t3, 0x0072($sp)
	sll     $t4, $t3, 2
	addu    $t5, $sp, $t4
	lw      $t5, 0x0070($t5)
	sw      $t5, 0x0058($sp)
	lw      $t6, 0x0058($sp)
	lwc1    $f12, 0x0024($t6)
	jal     ATAN2
	lwc1    $f14, 0x001C($t6)
	addiu   $t7, $v0, 0x4000
	sh      $t7, 0x0036($sp)
	lh      $a0, 0x002E($sp)
	jal     camera_8028A080
	lh      $a1, 0x0036($sp)
	lw      $t9, 0x0090($sp)
	li      $at, 0x8000
	addu    $t8, $v0, $at
	sh      $t8, 0x0000($t9)
116$:
	lui     $t1, %hi(mario_cam)
	lw      $t1, %lo(mario_cam)($t1)
	lw      $t0, 0x008C($sp)
	lwc1    $f6, 0x0044($sp)
	lwc1    $f18, 0x0004($t1)
	lwc1    $f8, 0x0000($t0)
	sub.s   $f4, $f8, $f18
	mul.s   $f10, $f4, $f6
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x005C($sp)
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	lw      $t2, 0x008C($sp)
	lwc1    $f10, 0x0044($sp)
	lwc1    $f4, 0x0008($t3)
	lwc1    $f8, 0x0004($t2)
	sub.s   $f6, $f8, $f4
	mul.s   $f18, $f6, $f10
	add.s   $f16, $f18, $f4
	swc1    $f16, 0x0060($sp)
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	lw      $t4, 0x008C($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f6, 0x000C($t5)
	lwc1    $f8, 0x0008($t4)
	sub.s   $f10, $f8, $f6
	mul.s   $f4, $f10, $f18
	add.s   $f16, $f4, $f6
	swc1    $f16, 0x0064($sp)
	lwc1    $f8, 0x0038($sp)
	swc1    $f8, 0x006C($sp)
	addiu   $a0, $sp, 0x0038
	li      $a1, 0x43480000
	jal     camera_802899CC
	li      $a2, 0x41A00000
	jal     bg_check_wall
	addiu   $a0, $sp, 0x005C
	beqz    $v0, 208$
	nop
	lh      $t6, 0x0072($sp)
	sll     $t7, $t6, 2
	addu    $t8, $sp, $t7
	lw      $t8, 0x0070($t8)
	sw      $t8, 0x0058($sp)
	lw      $t9, 0x0058($sp)
	lwc1    $f12, 0x0024($t9)
	jal     ATAN2
	lwc1    $f14, 0x001C($t9)
	sh      $v0, 0x0034($sp)
	lh      $t0, 0x0034($sp)
	addiu   $t1, $t0, 0x4000
	sh      $t1, 0x0036($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	li      $t2, 0x0028
	sw      $t2, 0x0010($sp)
	lw      $a1, 0x008C($sp)
	lw      $a2, 0x0058($sp)
	lh      $a3, 0x0096($sp)
	jal     camera_8028A6BC
	addiu   $a0, $a0, 0x0004
	bnez    $v0, 208$
	nop
	lw      $a0, 0x0088($sp)
	jal     camera_8028A7EC
	lw      $a1, 0x0058($sp)
	li      $at, 0x0001
	bne     $v0, $at, 208$
	nop
	lw      $a0, 0x0058($sp)
	li      $a1, 0xBF800000
	li      $a2, 0x43160000
	jal     camera_8028A0F4
	li      $a3, 0xBF800000
	bnez    $v0, 208$
	nop
	lh      $a0, 0x002E($sp)
	jal     camera_8028A080
	lh      $a1, 0x0036($sp)
	lw      $t4, 0x0090($sp)
	li      $at, 0x8000
	addu    $t3, $v0, $at
	sh      $t3, 0x0000($t4)
	lw      $a0, 0x0090($sp)
	lh      $a1, 0x0034($sp)
	jal     camera_8028976C
	lh      $a2, 0x0096($sp)
	li      $t5, 0x0003
	sw      $t5, 0x0028($sp)
	li      $t6, 0x0008
	sw      $t6, 0x0024($sp)
208$:
	li      $at, 0x3E000000
	mtc1    $at, $f18
	lwc1    $f10, 0x0044($sp)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0044($sp)
	lw      $t7, 0x0024($sp)
	addiu   $t8, $t7, 0x0001
	slti    $at, $t8, 0x0008
	bnez    $at, 39$
	sw      $t8, 0x0024($sp)
	b       222$
	lw      $v0, 0x0028($sp)
	b       222$
	nop
222$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

camera_8028FC9C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object_80361180)
	lh      $t6, %lo(object_80361180)($t6)
	sh      $t6, 0x001A($sp)
	li      $t7, 0x0001
	lui     $at, %hi(object_80361180)
	sh      $t7, %lo(object_80361180)($at)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0004($t8)
	lw      $a2, 0x000C($t8)
	jal     bg_check_ground
	add.s   $f14, $f4, $f6
	lui     $at, %hi(camera_803373B4)
	lwc1    $f8, %lo(camera_803373B4)($at)
	c.eq.s  $f0, $f8
	nop
	bc1t    30$
	nop
	lw      $t9, 0x001C($sp)
	lw      $t1, 0x0020($sp)
	lh      $t0, 0x0000($t9)
	b       32$
	sh      $t0, 0x0008($t1)
30$:
	lw      $t2, 0x0020($sp)
	sh      $0, 0x0008($t2)
32$:
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0008($t3)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0004($t3)
	lw      $a2, 0x000C($t3)
	jal     bg_check_roof
	sub.s   $f14, $f10, $f16
	lui     $at, %hi(camera_803373B8)
	lwc1    $f18, %lo(camera_803373B8)($at)
	c.eq.s  $f0, $f18
	nop
	bc1t    53$
	nop
	lw      $t4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lh      $t5, 0x0000($t4)
	b       55$
	sh      $t5, 0x0010($t6)
53$:
	lw      $t7, 0x0020($sp)
	sh      $0, 0x0010($t7)
55$:
	lui     $at, %hi(object_80361180)
	sh      $0, %lo(object_80361180)($at)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	lw      $a3, 0x0020($sp)
	lwc1    $f12, 0x0004($t8)
	lw      $a2, 0x000C($t8)
	jal     bg_check_ground
	add.s   $f14, $f4, $f6
	lw      $t9, 0x0020($sp)
	swc1    $f0, 0x0004($t9)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	li      $at, 0x41200000
	mtc1    $at, $f10
	lw      $a3, 0x0020($sp)
	lwc1    $f8, 0x0008($t0)
	lwc1    $f12, 0x0004($t0)
	lw      $a2, 0x000C($t0)
	addiu   $a3, $a3, 0x000C
	jal     bg_check_roof
	sub.s   $f14, $f8, $f10
	lw      $t1, 0x0020($sp)
	swc1    $f0, 0x0014($t1)
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	lwc1    $f12, 0x0004($t2)
	jal     bg_check_water
	lwc1    $f14, 0x000C($t2)
	lw      $t3, 0x0020($sp)
	swc1    $f0, 0x0030($t3)
	lh      $t4, 0x001A($sp)
	lui     $at, %hi(object_80361180)
	sh      $t4, %lo(object_80361180)($at)
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028FE24:
	andi    $a0, $a0, 0x00FF
	lui     $at, %hi(camera_8032DF50)
	sb      $a0, %lo(camera_8032DF50)($at)
	lui     $at, %hi(camera_8032DF54)
	sb      $0, %lo(camera_8032DF54)($at)
	lui     $at, %hi(camera_8032DF24)
	sw      $a1, %lo(camera_8032DF24)($at)
	lui     $at, %hi(camera_8033CBC8)
	sw      $0, %lo(camera_8033CBC8)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028FE58:
	andi    $a0, $a0, 0x00FF
	lui     $at, %hi(camera_8032DF50)
	sb      $a0, %lo(camera_8032DF50)($at)
	lui     $at, %hi(camera_8032DF5C)
	sb      $0, %lo(camera_8032DF5C)($at)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028FE84:
	andi    $a0, $a0, 0x00FF
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, 12$
	nop
	lui     $t8, %hi(camera_8032DF50)
	lbu     $t8, %lo(camera_8032DF50)($t8)
	bnez    $t8, 12$
	nop
	lui     $at, %hi(camera_8032DF50)
	sb      $a0, %lo(camera_8032DF50)($at)
12$:
	lui     $t9, %hi(camerap)
	lw      $t9, %lo(camerap)($t9)
	lbu     $t0, 0x0030($t9)
	bne     $t0, $a0, 26$
	nop
	lui     $t1, %hi(camera_8032DF5C)
	lbu     $t1, %lo(camera_8032DF5C)($t1)
	beqz    $t1, 26$
	nop
	lui     $v0, %hi(camera_8032DF5C)
	jr      $ra
	lbu     $v0, %lo(camera_8032DF5C)($v0)
	b       28$
	nop
26$:
	jr      $ra
	move    $v0, $0
28$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl camera_8028FF04
camera_8028FF04:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sh      $0, 0x001E($sp)
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, 41$
	nop
	lui     $t8, %hi(camera_8032DF50)
	lbu     $t8, %lo(camera_8032DF50)($t8)
	bnez    $t8, 41$
	nop
	lui     $t9, %hi(camera_8032DF54)
	lbu     $t9, %lo(camera_8032DF54)($t9)
	lbu     $t0, 0x0023($sp)
	beq     $t9, $t0, 36$
	nop
	lbu     $a0, 0x0023($sp)
	jal     camera_8028FE24
	lw      $a1, 0x0024($sp)
	lh      $t1, 0x002A($sp)
	li      $at, -0x0001
	beq     $t1, $at, 31$
	nop
	lh      $t2, 0x002A($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x170)
	b       34$
	sh      $t2, %lo(_camera_bss_48-0x48+0x170)($at)
31$:
	li      $t3, 0x0001
	lui     $at, %hi(_camera_bss_48-0x48+0x170)
	sh      $t3, %lo(_camera_bss_48-0x48+0x170)($at)
34$:
	b       39$
	nop
36$:
	lui     $t4, %hi(camera_8032DF5C)
	lbu     $t4, %lo(camera_8032DF5C)($t4)
	sh      $t4, 0x001E($sp)
39$:
	lui     $at, %hi(camera_8032DF54)
	sb      $0, %lo(camera_8032DF54)($at)
41$:
	b       45$
	lh      $v0, 0x001E($sp)
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8028FFC8
camera_8028FFC8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lbu     $a0, 0x0023($sp)
	lw      $a1, 0x0024($sp)
	jal     camera_8028FF04
	li      $a2, -0x0001
	sh      $v0, 0x001E($sp)
	b       13$
	lh      $v0, 0x001E($sp)
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8029000C
camera_8029000C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sh      $0, 0x001E($sp)
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, 27$
	nop
	lui     $t8, %hi(camera_8032DF50)
	lbu     $t8, %lo(camera_8032DF50)($t8)
	bnez    $t8, 27$
	nop
	lui     $t9, %hi(camera_8032DF54)
	lbu     $t9, %lo(camera_8032DF54)($t9)
	lbu     $t0, 0x0023($sp)
	beq     $t9, $t0, 25$
	nop
	lbu     $a0, 0x0023($sp)
	jal     camera_8028FE24
	lw      $a1, 0x0024($sp)
	li      $t1, 0x0001
	b       27$
	sh      $t1, 0x001E($sp)
25$:
	li      $t2, -0x0001
	sh      $t2, 0x001E($sp)
27$:
	b       31$
	lh      $v0, 0x001E($sp)
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80290098:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	addiu   $a0, $t6, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t6, 0x0010
	lw      $t7, 0x0018($sp)
	sh      $v0, 0x003A($t7)
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x003A($t8)
	sh      $t9, 0x0002($t8)
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802900E0:
	lui     $at, %hi(_camera_bss_330-0x330+0x530)
	sh      $0, %lo(_camera_bss_330-0x330+0x530)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss_330-0x330+0x534)
	swc1    $f4, %lo(_camera_bss_330-0x330+0x534)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80290104:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $t6, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t6, %lo(_camera_bss_330-0x330+0x53C)($at)
	lw      $t7, 0x0018($sp)
	sb      $0, 0x0030($t7)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss_238-0x238+0x308
	la.l    $a1, _camera_bss_238-0x238+0x308
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss_238-0x238+0x308
	la.l    $a1, _camera_bss_238-0x238+0x308
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290168:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lh      $t6, 0x0022($sp)
	sh      $t6, 0x001E($sp)
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	jal     save_file_write
	addiu   $a0, $a0, -0x0001
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802901A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lb      $t6, 0x001F($sp)
	lw      $t7, 0x0018($sp)
	sb      $t6, 0x0000($t7)
	lbu     $t8, 0x0023($sp)
	lw      $t9, 0x0018($sp)
	sb      $t8, 0x0001($t9)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0024($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0002
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802901FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t0, 0x0024($sp)
	lw      $t9, 0x002C($sp)
	lw      $t6, 0x0020($sp)
	sll     $t1, $t0, 3
	lw      $t8, 0x0028($sp)
	addu    $t2, $t9, $t1
	sll     $t7, $t6, 3
	lb      $a1, 0x0000($t2)
	lbu     $a2, 0x0001($t2)
	addiu   $a3, $t2, 0x0002
	jal     camera_802901A4
	addu    $a0, $t7, $t8
	lw      $t3, 0x0020($sp)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0020($sp)
21$:
	lw      $t0, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t5, 0x0020($sp)
	sll     $t9, $t0, 3
	lw      $t7, 0x0028($sp)
	addu    $t1, $t8, $t9
	sll     $t6, $t5, 3
	lb      $a1, 0x0000($t1)
	lbu     $a2, 0x0001($t1)
	addiu   $a3, $t1, 0x0002
	jal     camera_802901A4
	addu    $a0, $t6, $t7
	lw      $t2, 0x0020($sp)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0020($sp)
	lw      $t4, 0x0024($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	lw      $t6, 0x002C($sp)
	sll     $t0, $t7, 3
	addu    $t8, $t6, $t0
	lb      $t9, 0x0000($t8)
	addiu   $t1, $t9, 0x0001
	sltu    $t1, $0, $t1
	beqz    $t1, 50$
	nop
	bnez    $t1, 21$
	nop
50$:
	lw      $t2, 0x0024($sp)
	slti    $at, $t2, 0x0011
	beqz    $at, 21$
	nop
	lw      $t6, 0x0024($sp)
	lw      $t3, 0x0020($sp)
	lw      $t7, 0x002C($sp)
	lw      $t5, 0x0028($sp)
	sll     $t0, $t6, 3
	sll     $t4, $t3, 3
	addu    $t8, $t7, $t0
	lbu     $a2, 0x0001($t8)
	addiu   $a3, $t8, 0x0002
	move    $a1, $0
	jal     camera_802901A4
	addu    $a0, $t4, $t5
	lw      $t9, 0x0020($sp)
	lw      $t5, 0x0024($sp)
	lw      $t4, 0x002C($sp)
	lw      $t3, 0x0028($sp)
	addiu   $t1, $t9, 0x0001
	sll     $t6, $t5, 3
	sll     $t2, $t1, 3
	addu    $a3, $t4, $t6
	addiu   $a3, $a3, 0x0002
	move    $a1, $0
	move    $a2, $0
	jal     camera_802901A4
	addu    $a0, $t2, $t3
	lw      $t7, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	addiu   $t0, $t7, 0x0002
	sll     $t3, $t2, 3
	sll     $t8, $t0, 3
	addu    $a3, $t1, $t3
	addiu   $a3, $a3, 0x0002
	move    $a1, $0
	move    $a2, $0
	jal     camera_802901A4
	addu    $a0, $t8, $t9
	lw      $t5, 0x0020($sp)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	addiu   $t4, $t5, 0x0003
	sll     $t9, $t8, 3
	sll     $t6, $t4, 3
	addu    $a3, $t0, $t9
	addiu   $a3, $a3, 0x0002
	li      $a1, -0x0001
	move    $a2, $0
	jal     camera_802901A4
	addu    $a0, $t6, $t7
	b       107$
	nop
107$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_802903B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53C)($t6)
	sh      $t6, 0x001E($sp)
	jal     pl_demo_80257640
	lw      $a0, 0x0020($sp)
	li      $at, 0x0002
	bne     $v0, $at, 13$
	nop
	li      $t7, 0x7FFF
	sh      $t7, 0x001E($sp)
13$:
	b       17$
	lh      $v0, 0x001E($sp)
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029040C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	li      $a0, 0x0003
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $v0, %lo(_camera_bss_330-0x330+0x53C)($at)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80290440
camera_80290440:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	li      $a0, 0x0001
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $v0, %lo(_camera_bss_330-0x330+0x53C)($at)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290474:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	li      $a0, 0x0002
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $v0, %lo(_camera_bss_330-0x330+0x53C)($at)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802904A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SeqMute
	li      $a2, 0x0028
	jal     camera_8028B724
	nop
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802904E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	jal     Na_SeqUnmute
	li      $a1, 0x003C
	jal     camera_8028B754
	nop
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029051C:
	sw      $a0, 0x0000($sp)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss_238-0x238+0x25C)
	swc1    $f4, %lo(_camera_bss_238-0x238+0x25C)($at)
	b       6$
	nop
6$:
	jr      $ra
	nop

camera_8029053C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(cont2)
	lw      $t6, %lo(cont2)($t6)
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0004($t6)
	la.u    $a0, _camera_bss_48-0x48+0x76
	la.l    $a0, _camera_bss_48-0x48+0x76
	mul.s   $f8, $f4, $f6
	li      $a2, 0x0004
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	nop
	sll     $t8, $a1, 16
	move    $a1, $t8
	sra     $t9, $a1, 16
	move    $a1, $t9
	jal     camera_802894B4
	subu    $a1, $0, $a1
	lui     $t0, %hi(cont2)
	lw      $t0, %lo(cont2)($t0)
	lui     $at, %hi(camera_803373BC)
	lwc1    $f18, %lo(camera_803373BC)($at)
	lwc1    $f16, 0x0008($t0)
	la.u    $a0, _camera_bss_48-0x48+0x74
	la.l    $a0, _camera_bss_48-0x48+0x74
	mul.s   $f4, $f16, $f18
	li      $a2, 0x0004
	trunc.w.s $f6, $f4
	mfc1    $a1, $f6
	nop
	sll     $t2, $a1, 16
	move    $a1, $t2
	sra     $t3, $a1, 16
	move    $a1, $t3
	jal     camera_802894B4
	subu    $a1, $0, $a1
	lw      $t4, 0x0030($sp)
	addiu   $t5, $sp, 0x0028
	sw      $t5, 0x0010($sp)
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x002A
	addiu   $a0, $t4, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t4, 0x0004
	lh      $t6, 0x002A($sp)
	li      $t7, 0x3800
	subu    $t8, $t7, $t6
	sh      $t8, 0x0026($sp)
	lh      $t9, 0x0026($sp)
	bgez    $t9, 58$
	nop
	sh      $0, 0x0026($sp)
58$:
	lh      $t0, 0x003A($sp)
	lh      $t1, 0x0026($sp)
	slt     $at, $t1, $t0
	beqz    $at, 65$
	nop
	lh      $t2, 0x0026($sp)
	sh      $t2, 0x003A($sp)
65$:
	lh      $t3, 0x002A($sp)
	li      $t4, -0x3800
	subu    $t5, $t4, $t3
	sh      $t5, 0x0026($sp)
	lh      $t7, 0x0026($sp)
	blez    $t7, 73$
	nop
	sh      $0, 0x0026($sp)
73$:
	lh      $t6, 0x0036($sp)
	lh      $t8, 0x0026($sp)
	slt     $at, $t6, $t8
	beqz    $at, 80$
	nop
	lh      $t9, 0x0026($sp)
	sh      $t9, 0x0036($sp)
80$:
	lui     $t0, %hi(_camera_bss_48-0x48+0x74)
	lh      $t0, %lo(_camera_bss_48-0x48+0x74)($t0)
	lh      $t1, 0x003A($sp)
	slt     $at, $t1, $t0
	beqz    $at, 89$
	nop
	lh      $t2, 0x003A($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x74)
	sh      $t2, %lo(_camera_bss_48-0x48+0x74)($at)
89$:
	lui     $t4, %hi(_camera_bss_48-0x48+0x74)
	lh      $t4, %lo(_camera_bss_48-0x48+0x74)($t4)
	lh      $t3, 0x0036($sp)
	slt     $at, $t4, $t3
	beqz    $at, 98$
	nop
	lh      $t5, 0x0036($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x74)
	sh      $t5, %lo(_camera_bss_48-0x48+0x74)($at)
98$:
	lui     $t7, %hi(_camera_bss_48-0x48+0x76)
	lh      $t7, %lo(_camera_bss_48-0x48+0x76)($t7)
	lh      $t6, 0x0042($sp)
	slt     $at, $t6, $t7
	beqz    $at, 107$
	nop
	lh      $t8, 0x0042($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x76)
	sh      $t8, %lo(_camera_bss_48-0x48+0x76)($at)
107$:
	lui     $t9, %hi(_camera_bss_48-0x48+0x76)
	lh      $t9, %lo(_camera_bss_48-0x48+0x76)($t9)
	lh      $t0, 0x003E($sp)
	slt     $at, $t9, $t0
	beqz    $at, 116$
	nop
	lh      $t1, 0x003E($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x76)
	sh      $t1, %lo(_camera_bss_48-0x48+0x76)($at)
116$:
	lui     $t4, %hi(_camera_bss_48-0x48+0x74)
	lh      $t4, %lo(_camera_bss_48-0x48+0x74)($t4)
	lh      $t2, 0x002A($sp)
	addu    $t3, $t2, $t4
	sh      $t3, 0x002A($sp)
	lui     $t7, %hi(_camera_bss_48-0x48+0x76)
	lh      $t7, %lo(_camera_bss_48-0x48+0x76)($t7)
	lh      $t5, 0x0028($sp)
	addu    $t6, $t5, $t7
	sh      $t6, 0x0028($sp)
	lw      $a0, 0x0030($sp)
	lh      $t8, 0x0028($sp)
	la.u    $a1, _camera_bss_48-0x48+0x68
	la.l    $a1, _camera_bss_48-0x48+0x68
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x002A($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	lw      $a1, 0x0030($sp)
	la.u    $a0, _camera_bss_48-0x48+0x68
	la.l    $a0, _camera_bss_48-0x48+0x68
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	b       142$
	nop
142$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80290784:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_238-0x238+0x308
	la.l    $a0, _camera_bss_238-0x238+0x308
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_238-0x238+0x308
	la.l    $a0, _camera_bss_238-0x238+0x308
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $at, %hi(_camera_bss_238-0x238+0x25C)
	lwc1    $f4, %lo(_camera_bss_238-0x238+0x25C)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x320)
	swc1    $f4, %lo(_camera_bss_238-0x238+0x320)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x260)
	lwc1    $f6, %lo(_camera_bss_238-0x238+0x260)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x324)
	swc1    $f6, %lo(_camera_bss_238-0x238+0x324)($at)
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802907F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss_238-0x238+0x308
	la.l    $a1, _camera_bss_238-0x238+0x308
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss_238-0x238+0x308
	la.l    $a1, _camera_bss_238-0x238+0x308
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $at, %hi(_camera_bss_238-0x238+0x320)
	lwc1    $f4, %lo(_camera_bss_238-0x238+0x320)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x25C)
	swc1    $f4, %lo(_camera_bss_238-0x238+0x25C)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x324)
	lwc1    $f6, %lo(_camera_bss_238-0x238+0x324)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x260)
	swc1    $f6, %lo(_camera_bss_238-0x238+0x260)($at)
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290864:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029051C
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_238-0x238+0x308
	la.l    $a0, _camera_bss_238-0x238+0x308
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	la.u    $t7, _camera_bss_238-0x238+0x308
	la.l    $t7, _camera_bss_238-0x238+0x308
	lwc1    $f4, 0x0004($t6)
	swc1    $f4, 0x000C($t7)
	lw      $t8, 0x0018($sp)
	la.u    $t9, _camera_bss_238-0x238+0x308
	la.l    $t9, _camera_bss_238-0x238+0x308
	lwc1    $f6, 0x0008($t8)
	swc1    $f6, 0x0010($t9)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	la.u    $t1, _camera_bss_238-0x238+0x308
	la.l    $t1, _camera_bss_238-0x238+0x308
	lwc1    $f8, 0x000C($t0)
	swc1    $f8, 0x0014($t1)
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802908E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss_238-0x238+0x308
	la.l    $a1, _camera_bss_238-0x238+0x308
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss_238-0x238+0x308
	la.l    $a1, _camera_bss_238-0x238+0x308
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290938:
	lh      $t6, 0x0000($a1)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0000($a0)
	lh      $t7, 0x0002($a1)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0004($a0)
	lh      $t8, 0x0004($a1)
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80290984:
	lwc1    $f4, 0x0000($a1)
	trunc.w.s $f6, $f4
	mfc1    $t7, $f6
	nop
	sh      $t7, 0x0000($a0)
	lwc1    $f8, 0x0004($a1)
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sh      $t9, 0x0002($a0)
	lwc1    $f16, 0x0008($a1)
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	sh      $t1, 0x0004($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_802909D0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	lw      $t6, 0x0038($sp)
	addiu   $t7, $sp, 0x0024
	sw      $t7, 0x0010($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $t6, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t6, 0x0004
	lh      $t8, 0x0026($sp)
	lh      $t9, 0x003E($sp)
	addu    $t0, $t8, $t9
	sh      $t0, 0x0026($sp)
	lh      $t1, 0x0024($sp)
	lh      $t2, 0x0042($sp)
	addu    $t3, $t1, $t2
	sh      $t3, 0x0024($sp)
	lw      $t4, 0x0038($sp)
	lh      $t5, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $t4, 0x0010
	addiu   $a1, $t4, 0x0004
	jal     polar_to_cartesian
	sw      $t5, 0x0010($sp)
	b       31$
	nop
31$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80290A5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8027F8B8
	li      $a0, 0x0001
	jal     camera_8029ABB0
	li      $a0, 0x0001
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290A90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8027F8B8
	li      $a0, 0x0002
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290ABC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	addiu   $t6, $sp, 0x0020
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x002C($sp)
	lw      $a1, 0x0028($sp)
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0022
	lh      $t7, 0x0022($sp)
	lh      $t8, 0x0036($sp)
	addu    $t9, $t7, $t8
	sh      $t9, 0x0022($sp)
	lh      $t0, 0x0020($sp)
	lh      $t1, 0x003A($sp)
	addu    $t2, $t0, $t1
	sh      $t2, 0x0020($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0030($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lh      $t3, 0x0020($sp)
	lw      $a0, 0x002C($sp)
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80290B54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x8000
	sh      $t7, %lo(camera_8033C84A)($at)
	lw      $t8, 0x0018($sp)
	addiu   $a0, $t8, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t8, 0x0010
	lui     $at, %hi(_camera_bss_48-0x48+0x100)
	sh      $v0, %lo(_camera_bss_48-0x48+0x100)($at)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290BA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SeqMute
	li      $a2, 0x0028
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290BD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	jal     Na_SeqUnmute
	li      $a1, 0x003C
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290C08:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl camera_80290C1C
camera_80290C1C:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl camera_80290C30
camera_80290C30:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

camera_80290C44:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0xC1D00000
	li      $a2, 0x0000
	li      $a3, 0xC3090000
	jal     vecf_set
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x4593A800
	li.l    $a2, 0x4593A800
	li      $a1, 0x43250000
	li      $a3, 0x43A20000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290C9C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sdc1    $f20, 0x0010($sp)
	addiu   $a0, $sp, 0x0024
	li      $a1, 0x0000
	li      $a2, 0x42A00000
	jal     vecf_set
	li      $a3, 0x0000
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $t7, 0x0030($sp)
	mtc1    $0, $f10
	lwc1    $f4, 0x0008($t6)
	lwc1    $f6, 0x0014($t7)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    22$
	nop
	b       29$
	mov.s   $f20, $f8
22$:
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lw      $t9, 0x0030($sp)
	lwc1    $f16, 0x0008($t8)
	lwc1    $f18, 0x0014($t9)
	sub.s   $f20, $f16, $f18
	neg.s   $f20, $f20
29$:
	lui     $at, %hi(camera_803373C0)
	lwc1    $f4, %lo(camera_803373C0)($at)
	addiu   $t0, $sp, 0x0024
	mul.s   $f6, $f20, $f4
	swc1    $f6, 0x0008($t0)
	addiu   $t1, $sp, 0x0024
	li      $at, 0xC2C80000
	mtc1    $at, $f8
	lwc1    $f10, 0x0008($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    46$
	nop
	li      $at, 0xC2C80000
	mtc1    $at, $f16
	addiu   $t2, $sp, 0x0024
	swc1    $f16, 0x0008($t2)
46$:
	lui     $t3, %hi(mario_cam)
	lw      $t3, %lo(mario_cam)($t3)
	lw      $a0, 0x0030($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a1, $t3, 0x0004
	addiu   $a3, $t3, 0x0010
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	b       56$
	nop
56$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl camera_80290D90
camera_80290D90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80290C44
	la.l    $a0, camera_80290C44
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80290C9C
	la.l    $a0, camera_80290C9C
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       24$
	nop
24$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_80290E00
camera_80290E00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x444E8000
	li.l    $a2, 0x444E8000
	li      $a1, 0x42AA0000
	li      $a3, 0x437A0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0020($sp)
	li      $a1, 0xC24C0000
	li      $a2, 0x44770000
	li      $a3, 0xC34A0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       25$
	nop
25$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80290E74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	mtc1    $0, $f4
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x0148($t6)
	jal     camera_802900E0
	nop
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290EB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032EFA0
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032EFA0
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032EFF0
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032EFF0
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80290F1C
camera_80290F1C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80290E74
	la.l    $a0, camera_80290E74
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80290EB0
	la.l    $a0, camera_80290EB0
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       24$
	nop
24$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_80290F8C
camera_80290F8C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, campath_8032EFF0
	la.l    $t6, campath_8032EFF0
	lh      $t8, 0x0004($t6)
	lh      $t7, 0x0002($t6)
	lh      $t9, 0x0006($t6)
	mtc1    $t8, $f6
	mtc1    $t7, $f4
	mtc1    $t9, $f18
	cvt.s.w $f8, $f6
	li      $at, 0x42A00000
	mtc1    $at, $f10
	lw      $a0, 0x0020($sp)
	cvt.s.w $f4, $f4
	addiu   $a0, $a0, 0x0004
	cvt.s.w $f18, $f18
	mfc1    $a1, $f4
	add.s   $f16, $f8, $f10
	mfc1    $a3, $f18
	mfc1    $a2, $f16
	jal     vecf_set
	nop
	la.u    $t0, campath_8032EFA0
	la.l    $t0, campath_8032EFA0
	lh      $t3, 0x0006($t0)
	lh      $t1, 0x0002($t0)
	lh      $t2, 0x0004($t0)
	mtc1    $t3, $f8
	mtc1    $t1, $f4
	mtc1    $t2, $f6
	cvt.s.w $f10, $f8
	li      $at, 0x43160000
	mtc1    $at, $f16
	lw      $a0, 0x0020($sp)
	cvt.s.w $f4, $f4
	addiu   $a0, $a0, 0x0010
	cvt.s.w $f6, $f6
	mfc1    $a1, $f4
	add.s   $f18, $f10, $f16
	mfc1    $a2, $f6
	mfc1    $a3, $f18
	jal     vecf_set
	nop
	li      $t4, 0x2000
	sw      $t4, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x0800
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       54$
	nop
54$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80291074:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x4519F000
	li.l    $a2, 0x4519F000
	li      $a1, 0x43330000
	li      $a3, 0xC4980000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	li      $at, 0x420C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	lw      $t7, 0x0018($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0014($t7)
	lui     $t8, %hi(camera_8032DF24)
	lw      $t8, %lo(camera_8032DF24)($t8)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t8)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x00A0($t8)
	add.s   $f18, $f10, $f16
	lw      $a3, 0x00A8($t8)
	addiu   $a0, $a0, 0x0004
	mfc1    $a2, $f18
	jal     vecf_set
	nop
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80291108
camera_80291108:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80291074
	la.l    $a0, camera_80291074
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	li      $at, 0x420C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x3CA3D70A
	add.s   $f8, $f4, $f6
	li.l    $a2, 0x3CA3D70A
	addiu   $a0, $a0, 0x0014
	mfc1    $a1, $f8
	jal     camera_802893F4
	nop
	lui     $t7, %hi(camera_8032DF24)
	lw      $t7, %lo(camera_8032DF24)($t7)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t7)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x3E19999A
	add.s   $f18, $f10, $f16
	li.l    $a2, 0x3E19999A
	addiu   $a0, $a0, 0x0008
	mfc1    $a1, $f18
	jal     camera_802893F4
	nop
	li      $t8, 0x2000
	sw      $t8, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       44$
	nop
44$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802911C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802900E0
	nop
	li      $at, 0x43160000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x0050($t6)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291208:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F048
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032F048
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	lwc1    $f6, 0x0074($t7)
	lwc1    $f4, 0x00A4($t6)
	lw      $t8, 0x0018($sp)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x0014($t8)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0014($t8)
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029127C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0050
	li      $a1, 0x42B40000
	jal     camera_802899CC
	li      $a2, 0x3F000000
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802912B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $a1, campath_8032F048
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032F048
	jal     camera_802882E4
	addiu   $a0, $sp, 0x001C
	addiu   $t6, $sp, 0x001C
	lwc1    $f4, 0x0000($t6)
	lw      $t7, 0x0028($sp)
	swc1    $f4, 0x0010($t7)
	addiu   $t8, $sp, 0x001C
	lwc1    $f6, 0x0008($t8)
	lw      $t9, 0x0028($sp)
	swc1    $f6, 0x0018($t9)
	lui     $t1, %hi(camera_8032DF24)
	lw      $t1, %lo(camera_8032DF24)($t1)
	addiu   $t0, $sp, 0x001C
	lwc1    $f8, 0x0004($t0)
	lwc1    $f10, 0x00A4($t1)
	lw      $a0, 0x0028($sp)
	addiu   $t2, $sp, 0x001C
	add.s   $f16, $f8, $f10
	li.u    $a2, 0x3D8F5C29
	li.l    $a2, 0x3D8F5C29
	addiu   $a0, $a0, 0x0014
	swc1    $f16, 0x0004($t0)
	jal     camera_802893F4
	lw      $a1, 0x0004($t2)
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_80291354
camera_80291354:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_802911C8
	la.l    $a0, camera_802911C8
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80291208
	la.l    $a0, camera_80291208
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x012B
	la.u    $a0, camera_802912B8
	la.l    $a0, camera_802912B8
	lw      $a1, 0x0020($sp)
	li      $a2, 0x012C
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029127C
	la.l    $a0, camera_8029127C
	lw      $a1, 0x0020($sp)
	li      $a2, 0x012C
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	lwc1    $f6, 0x0050($t7)
	lwc1    $f4, 0x00A4($t6)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	lw      $a3, 0x00A8($t6)
	addiu   $a0, $a0, 0x0004
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	li      $t8, 0x2000
	sw      $t8, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       50$
	nop
50$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8029142C
camera_8029142C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80290E74
	la.l    $a0, camera_80290E74
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lw      $a0, 0x0020($sp)
	la.u    $a1, campath_8032F0E8
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032F0E8
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0020($sp)
	la.u    $a1, campath_8032F130
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032F130
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       36$
	nop
36$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802914CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F178
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032F178
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80291514
camera_80291514:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80290E74
	la.l    $a0, camera_80290E74
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802914CC
	la.l    $a0, camera_802914CC
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802914CC
	la.l    $a0, camera_802914CC
	lw      $a1, 0x0020($sp)
	li      $a2, 0x00FA
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $a0, 0x0007
	jal     camera_8029A37C
	li      $a1, 0x012C
	li      $a0, 0x0009
	jal     camera_8029A37C
	li      $a1, 0x0154
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x44748000
	li.u    $a3, 0xC4874000
	li.l    $a3, 0xC4874000
	li.l    $a2, 0x44748000
	li      $a1, 0xC3230000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x0800
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       44$
	nop
44$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_802915D4
camera_802915D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x4475C000
	li.u    $a3, 0xC49F2000
	li.l    $a3, 0xC49F2000
	li.l    $a2, 0x4475C000
	li      $a1, 0x41300000
	jal     vecf_set
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0xC3EC8000
	li.u    $a2, 0x44728000
	li.l    $a2, 0x44728000
	li.l    $a1, 0xC3EC8000
	li      $a3, 0xC4900000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x0800
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       28$
	nop
28$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80291654:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x000D
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x44814000
	li.l    $a2, 0x44814000
	li      $a1, 0x43AF0000
	li      $a3, 0xC4980000
	jal     vecf_set
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x447F4000
	li.l    $a2, 0x447F4000
	li      $a1, 0xC3150000
	li      $a3, 0xC4980000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802916B8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	jal     camera_8029AB94
	li      $a0, 0x0002
	li.u    $a2, 0x44858000
	li.u    $a3, 0xC4A24000
	li.l    $a3, 0xC4A24000
	li.l    $a2, 0x44858000
	addiu   $a0, $sp, 0x0020
	jal     vecf_set
	li      $a1, 0x43690000
	li.u    $a2, 0x44718000
	li.u    $a3, 0xC48AE000
	li.l    $a3, 0xC48AE000
	li.l    $a2, 0x44718000
	addiu   $a0, $sp, 0x002C
	jal     vecf_set
	li      $a1, 0xC37A0000
	lui     $at, %hi(camera_803373C4)
	lwc1    $f4, %lo(camera_803373C4)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3E4CCCCD
	li.u    $a3, 0x3DCCCCCD
	li.l    $a3, 0x3DCCCCCD
	li.l    $a2, 0x3E4CCCCD
	addiu   $a1, $sp, 0x002C
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	lui     $at, %hi(camera_803373C8)
	lwc1    $f6, %lo(camera_803373C8)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3E4CCCCD
	li.u    $a3, 0x3DCCCCCD
	li.l    $a3, 0x3DCCCCCD
	li.l    $a2, 0x3E4CCCCD
	addiu   $a1, $sp, 0x0020
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       43$
	nop
43$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl camera_80291774
camera_80291774:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80291654
	la.l    $a0, camera_80291654
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802916B8
	la.l    $a0, camera_802916B8
	lw      $a1, 0x0020($sp)
	li      $a2, 0x009B
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x0800
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       24$
	nop
24$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802917E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F1B8
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032F1B8
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x442EC000
	li.u    $a3, 0xC42FC000
	li.l    $a3, 0xC42FC000
	li.l    $a1, 0x442EC000
	li      $a2, 0x44D20000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029184C:
	sw      $a0, 0x0000($sp)
	li      $at, 0x42140000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	b       7$
	nop
7$:
	jr      $ra
	nop

.globl camera_80291870
camera_80291870:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80290E74
	la.l    $a0, camera_80290E74
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802917E4
	la.l    $a0, camera_802917E4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029184C
	la.l    $a0, camera_8029184C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x01F3
	la.u    $a0, camera_802917E4
	la.l    $a0, camera_802917E4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x01F4
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $a0, 0x0008
	jal     camera_8029A37C
	li      $a1, 0x0258
	li      $a0, 0x0008
	jal     camera_8029A37C
	li      $a1, 0x0260
	li      $a0, 0x0008
	jal     camera_8029A37C
	li      $a1, 0x0270
	li      $a0, 0x0008
	jal     camera_8029A37C
	li      $a1, 0x02C6
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80291924
camera_80291924:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x0001
	lw      $t6, 0x0018($sp)
	sb      $0, 0x0030($t6)
	li      $t7, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t7, %lo(_camera_bss_330-0x330+0x53C)($at)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291964:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x0000
	li      $a2, 0x43160000
	jal     vecf_set
	li      $a3, 0xC4160000
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	addiu   $a0, $t6, 0x0028
	addiu   $a2, $t6, 0x0004
	addiu   $a1, $t7, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t7, 0x0010
	lui     $at, %hi(camera_803373CC)
	lwc1    $f4, %lo(camera_803373CC)($at)
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x002C($t8)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802919DC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $t6, $sp, 0x0028
	sw      $t6, 0x0010($sp)
	addiu   $a1, $a1, 0x0028
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x002A
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0004
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0030($sp)
	addiu   $t7, $sp, 0x0020
	sw      $t7, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $sp, 0x0024
	jal     camera_802893F4
	lw      $a1, 0x002C($sp)
	addiu   $a0, $sp, 0x0022
	lh      $a1, 0x002A($sp)
	jal     camera_802894B4
	li      $a2, 0x0020
	lh      $a1, 0x0028($sp)
	addiu   $a0, $sp, 0x0020
	li      $a2, 0x0014
	jal     camera_802894B4
	addiu   $a1, $a1, 0x1200
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0030($sp)
	lh      $t8, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	b       50$
	nop
50$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80291AB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x001C
	move    $a1, $0
	move    $a3, $0
	jal     vecs_set
	lh      $a2, 0x0012($t6)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x004C
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291B18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0054
	li      $a1, 0xC2200000
	jal     camera_802899CC
	li      $a2, 0x40000000
	li      $at, 0x40A00000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x004C($t6)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291B68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0054
	li      $a1, 0x0000
	jal     camera_802899CC
	li      $a2, 0x40000000
	mtc1    $0, $f4
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x004C($t6)
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lw      $a1, 0x0004($t7)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0010
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lw      $a1, 0x000C($t8)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0018
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291BF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	addiu   $t7, $t6, 0x0010
	move    $a0, $t7
	move    $a1, $t7
	addiu   $a2, $t8, 0x004C
	jal     camera_8028CBF0
	addiu   $a3, $t8, 0x001C
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291C3C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lui     $at, %hi(camera_803373D0)
	lwc1    $f6, %lo(camera_803373D0)($at)
	lwc1    $f4, 0x0008($t6)
	li      $at, 0x3F000000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	lui     $at, %hi(camera_803373D4)
	lwc1    $f18, %lo(camera_803373D4)($at)
	addiu   $a0, $sp, 0x0024
	mul.s   $f16, $f8, $f10
	lw      $a1, 0x0004($t6)
	lw      $a3, 0x000C($t6)
	add.s   $f4, $f16, $f18
	mfc1    $a2, $f4
	jal     vecf_set
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lw      $a0, 0x0030($sp)
	li.u    $a3, 0x3F4CCCCD
	li.l    $a3, 0x3F4CCCCD
	addiu   $a1, $sp, 0x0024
	li      $a2, 0x3F000000
	addiu   $a0, $a0, 0x0004
	jal     camera_80289610
	swc1    $f6, 0x0010($sp)
	b       33$
	nop
33$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl camera_80291CD0
camera_80291CD0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	la.u    $a0, camera_80291964
	la.l    $a0, camera_80291964
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802919DC
	la.l    $a0, camera_802919DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x006D
	la.u    $a0, camera_80291C3C
	la.l    $a0, camera_80291C3C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80291AB4
	la.l    $a0, camera_80291AB4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x006E
	jal     camera_8029A2F8
	li      $a3, 0x006E
	la.u    $a0, camera_80291B18
	la.l    $a0, camera_80291B18
	lw      $a1, 0x0018($sp)
	li      $a2, 0x006E
	jal     camera_8029A2F8
	li      $a3, 0x009F
	la.u    $a0, camera_80291B68
	la.l    $a0, camera_80291B68
	lw      $a1, 0x0018($sp)
	li      $a2, 0x00A0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80291BF4
	la.l    $a0, camera_80291BF4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x006E
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291DB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0100
	li      $a1, 0x3F000000
	li      $a2, 0x3F000000
	jal     vecf_set
	li      $a3, 0x3F000000
	la.u    $a0, _camera_bss_330-0x330+0x540
	li.u    $a1, 0x3C23D70A
	li.l    $a1, 0x3C23D70A
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x00DC
	addu    $a2, $a1, $0
	jal     vecf_set
	addu    $a3, $a1, $0
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0094
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lw      $t6, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	lwc1    $f6, 0x0008($t7)
	lwc1    $f4, 0x0008($t6)
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x00B8
	sub.s   $f8, $f4, $f6
	li      $a1, 0x0000
	li      $a3, 0x0000
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	mtc1    $0, $f10
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	swc1    $f10, 0x012C($t8)
	mtc1    $0, $f16
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	swc1    $f16, 0x0124($t9)
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291E84:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	addiu   $a0, $sp, 0x0024
	li      $a1, 0xC4160000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0xC3C80000
	lui     $at, %hi(camera_803373D8)
	lwc1    $f4, %lo(camera_803373D8)($at)
	la.u    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0094
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0024
	jal     camera_80289610
	swc1    $f4, 0x0010($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x00BC
	li      $a1, 0x0000
	jal     camera_802899CC
	li      $a2, 0x40000000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x00C0
	li      $a1, 0xC3480000
	jal     camera_802899CC
	li      $a2, 0x40C00000
	b       33$
	nop
33$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80291F18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $a0, 0x0124
	jal     camera_802899CC
	li      $a1, 0x41700000
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	addiu   $a0, $t6, 0x0094
	lw      $a2, 0x0124($t6)
	jal     camera_802899CC
	li      $a1, 0xC4FA0000
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0124($t7)
	addiu   $a0, $t7, 0x0098
	li      $a1, 0x44960000
	div.s   $f8, $f4, $f6
	mfc1    $a2, $f8
	jal     camera_802899CC
	nop
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0124($t8)
	addiu   $a0, $t8, 0x009C
	li      $a1, 0x447A0000
	div.s   $f18, $f10, $f16
	mfc1    $a2, $f18
	jal     camera_802899CC
	nop
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	addiu   $a0, $t9, 0x00B8
	lw      $a2, 0x0124($t9)
	jal     camera_802899CC
	li      $a1, 0x0000
	la.u    $t0, _camera_bss_330-0x330+0x540
	la.l    $t0, _camera_bss_330-0x330+0x540
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0124($t0)
	addiu   $a0, $t0, 0x00BC
	li      $a1, 0x44960000
	div.s   $f8, $f4, $f6
	mfc1    $a2, $f8
	jal     camera_802899CC
	nop
	la.u    $t1, _camera_bss_330-0x330+0x540
	la.l    $t1, _camera_bss_330-0x330+0x540
	li      $at, 0x3FC00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0124($t1)
	addiu   $a0, $t1, 0x00C0
	li      $a1, 0x447A0000
	div.s   $f18, $f10, $f16
	mfc1    $a2, $f18
	jal     camera_802899CC
	nop
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292038:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x012C
	li      $a1, 0x42B40000
	jal     camera_802899CC
	li      $a2, 0x40200000
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	la.u    $a2, _camera_bss_330-0x330+0x540
	la.l    $a2, _camera_bss_330-0x330+0x540
	addiu   $a2, $a2, 0x0094
	addiu   $a0, $sp, 0x0034
	addiu   $a1, $t6, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t6, 0x0010
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	la.u    $a2, _camera_bss_330-0x330+0x540
	la.l    $a2, _camera_bss_330-0x330+0x540
	addiu   $a2, $a2, 0x00B8
	addiu   $a0, $sp, 0x0028
	addiu   $a1, $t7, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t7, 0x0010
	lw      $a1, 0x0040($sp)
	addiu   $t8, $sp, 0x0020
	sw      $t8, 0x0010($sp)
	addiu   $a0, $sp, 0x0034
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lw      $a2, 0x012C($t9)
	addiu   $a0, $sp, 0x0024
	jal     camera_802899CC
	li      $a1, 0x0000
	lw      $a1, 0x0040($sp)
	lh      $t0, 0x0020($sp)
	addiu   $a0, $sp, 0x0034
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	lui     $at, %hi(camera_803373DC)
	lwc1    $f4, %lo(camera_803373DC)($at)
	lw      $a0, 0x0040($sp)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0034
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lw      $a0, 0x0040($sp)
	li.u    $a3, 0x3F4CCCCD
	li.l    $a3, 0x3F4CCCCD
	addiu   $a1, $sp, 0x0028
	li      $a2, 0x3F000000
	addiu   $a0, $a0, 0x0004
	jal     camera_80289610
	swc1    $f6, 0x0010($sp)
	b       71$
	nop
71$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl camera_80292164
camera_80292164:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	la.u    $a0, camera_80291DB0
	la.l    $a0, camera_80291DB0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80291E84
	la.l    $a0, camera_80291E84
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x008C
	la.u    $a0, camera_80291F18
	la.l    $a0, camera_80291F18
	lw      $a1, 0x0018($sp)
	li      $a2, 0x008D
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292038
	la.l    $a0, camera_80292038
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802921FC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	mtc1    $0, $f4
	addiu   $t6, $sp, 0x0020
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x003C($sp)
	addiu   $t7, $sp, 0x0020
	swc1    $f6, 0x0008($t7)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	addiu   $t8, $sp, 0x0020
	swc1    $f8, 0x0004($t8)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	addiu   $a0, $sp, 0x002C
	addiu   $a2, $sp, 0x0020
	addiu   $a1, $t9, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t9, 0x0010
	lwc1    $f10, 0x0040($sp)
	lw      $a0, 0x0038($sp)
	addiu   $a1, $sp, 0x002C
	mfc1    $a2, $f10
	mfc1    $a3, $f10
	swc1    $f10, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       32$
	nop
32$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8029228C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x44160000
	addiu   $a0, $sp, 0x0026
	li      $a1, 0x1000
	jal     camera_802894B4
	li      $a2, 0x0010
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t7, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80292324:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	li      $t6, 0x0200
	sw      $t6, 0x0010($sp)
	li      $a2, 0x0000
	move    $a3, $0
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       15$
	nop
15$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80292370:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	li      $a2, 0xC1700000
	move    $a3, $0
	sw      $0, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       14$
	nop
14$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802923B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	li      $a2, 0x41A00000
	move    $a3, $0
	sw      $0, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       14$
	nop
14$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80292400:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

camera_80292414:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	lw      $a0, 0x0018($sp)
	jal     camera_802921FC
	li      $a1, 0xC2C80000
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029244C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a2, 0x3CF5C28F
	li.l    $a2, 0x3CF5C28F
	lw      $a0, 0x0018($sp)
	jal     camera_802921FC
	li      $a1, 0xC3480000
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292484:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0200
	li      $a1, 0x0028
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_802924B8
camera_802924B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	lui     $at, %hi(camera_8032DF34)
	sh      $0, %lo(camera_8032DF34)($at)
	jal     camera_8029AB94
	li      $a0, 0x0002
	la.u    $a0, camera_80292414
	la.l    $a0, camera_80292414
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0014
	la.u    $a0, camera_8029228C
	la.l    $a0, camera_8029228C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0027
	la.u    $a0, camera_80292484
	la.l    $a0, camera_80292484
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0028
	lw      $t8, 0x0018($sp)
	li      $at, 0x00AF
	lbu     $t9, 0x0030($t8)
	beq     $t9, $at, 61$
	nop
	la.u    $a0, camera_8029244C
	la.l    $a0, camera_8029244C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x004B
	jal     camera_8029A2F8
	li      $a3, 0x0066
	la.u    $a0, camera_80292324
	la.l    $a0, camera_80292324
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0032
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292370
	la.l    $a0, camera_80292370
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0032
	jal     camera_8029A2F8
	li      $a3, 0x0050
	la.u    $a0, camera_802923B8
	la.l    $a0, camera_802923B8
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x005A
	b       86$
	nop
61$:
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	li      $at, 0x1307
	lw      $t1, 0x0000($t0)
	beq     $t1, $at, 86$
	nop
	li      $at, 0x1303
	beq     $t1, $at, 86$
	nop
	li      $at, 0x1302
	beq     $t1, $at, 86$
	nop
	li      $t2, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t2, %lo(_camera_bss_330-0x330+0x53C)($at)
	lw      $t3, 0x0018($sp)
	sb      $0, 0x0030($t3)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
	lui     $t4, %hi(camera_8033C84A)
	lh      $t4, %lo(camera_8033C84A)($t4)
	lui     $at, %hi(camera_8033C84A)
	ori     $t5, $t4, 0x4000
	sh      $t5, %lo(camera_8033C84A)($at)
86$:
	b       88$
	nop
88$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292628:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0030($sp)
	addiu   $t6, $sp, 0x002C
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lh      $t7, 0x002C($sp)
	lh      $t8, 0x0036($sp)
	subu    $t9, $t7, $t8
	sh      $t9, 0x0026($sp)
	lh      $t0, 0x0026($sp)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 26$
	nop
	lh      $t2, 0x0026($sp)
	subu    $t3, $0, $t2
	sh      $t3, 0x0026($sp)
26$:
	lh      $t4, 0x0026($sp)
	lh      $t5, 0x003A($sp)
	slt     $at, $t5, $t4
	beqz    $at, 39$
	nop
	lh      $t6, 0x0036($sp)
	sh      $t6, 0x002C($sp)
	lh      $t7, 0x002C($sp)
	lw      $t8, 0x0030($sp)
	sh      $t7, 0x003A($t8)
	lh      $t9, 0x002C($sp)
	lw      $t0, 0x0030($sp)
	sh      $t9, 0x0002($t0)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_802926DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(save_level)
	lbu     $t6, %lo(save_level)($t6)
	li      $at, 0x0004
	bne     $t6, $at, 17$
	nop
	lui     $t7, %hi(course_index)
	lh      $t7, %lo(course_index)($t7)
	li      $at, 0x0003
	bne     $t7, $at, 17$
	nop
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	jal     camera_80292628
	li      $a2, 0x4000
17$:
	lui     $t8, %hi(save_level)
	lbu     $t8, %lo(save_level)($t8)
	li      $at, 0x0001
	bne     $t8, $at, 31$
	nop
	lui     $t9, %hi(course_index)
	lh      $t9, %lo(course_index)($t9)
	li      $at, 0x0009
	bne     $t9, $at, 31$
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, -0x8000
	jal     camera_80292628
	li      $a2, 0x5000
31$:
	lui     $t0, %hi(save_level)
	lbu     $t0, %lo(save_level)($t0)
	li      $at, 0x0005
	bne     $t0, $at, 45$
	nop
	lui     $t1, %hi(course_index)
	lh      $t1, %lo(course_index)($t1)
	li      $at, 0x000B
	bne     $t1, $at, 45$
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, -0x8000
	jal     camera_80292628
	li      $a2, 0x0800
45$:
	lw      $a1, 0x0020($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0148
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	la.u    $t3, _camera_bss_330-0x330+0x540
	la.l    $t3, _camera_bss_330-0x330+0x540
	li      $t2, 0x2000
	sh      $t2, 0x013C($t3)
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802927D0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x0004($t6)
	add.s   $f8, $f4, $f6
	lw      $a3, 0x000C($t6)
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	lui     $at, %hi(camera_803373E0)
	lwc1    $f10, %lo(camera_803373E0)($at)
	la.u    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0148
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0024
	jal     camera_80289610
	swc1    $f10, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0148
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80292868:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	li      $t6, 0x1800
	sh      $t6, 0x0026($sp)
	lui     $t7, %hi(save_level)
	lbu     $t7, %lo(save_level)($t7)
	li      $at, 0x0006
	bne     $t7, $at, 15$
	nop
	lui     $t8, %hi(course_index)
	lh      $t8, %lo(course_index)($t8)
	li      $at, 0x000A
	beq     $t8, $at, 25$
	nop
15$:
	lui     $t9, %hi(save_level)
	lbu     $t9, %lo(save_level)($t9)
	li      $at, 0x0004
	bne     $t9, $at, 27$
	nop
	lui     $t0, %hi(course_index)
	lh      $t0, %lo(course_index)($t0)
	li      $at, 0x000E
	bne     $t0, $at, 27$
	nop
25$:
	li      $t1, 0x0800
	sh      $t1, 0x0026($sp)
27$:
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0030($sp)
	addiu   $t2, $sp, 0x002C
	sw      $t2, 0x0010($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $sp, 0x0028
	jal     camera_802893F4
	li      $a1, 0x44480000
	addiu   $a0, $sp, 0x002E
	lh      $a1, 0x0026($sp)
	jal     camera_802894B4
	li      $a2, 0x0010
	lw      $t3, 0x0030($sp)
	addiu   $a0, $sp, 0x002C
	li      $a2, 0x0008
	jal     camera_802894B4
	lh      $a1, 0x0002($t3)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0030($sp)
	lh      $t4, 0x002C($sp)
	lw      $a2, 0x0028($sp)
	lh      $a3, 0x002E($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	b       63$
	nop
63$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80292974:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3ECCCCCD
	li.l    $a2, 0x3ECCCCCD
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x43700000
	lw      $t7, 0x0028($sp)
	addiu   $a0, $sp, 0x0024
	li      $a2, 0x0008
	jal     camera_802894B4
	lh      $a1, 0x0002($t7)
	addiu   $a0, $sp, 0x0026
	li      $a1, 0x1000
	jal     camera_802894B4
	li      $a2, 0x0005
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t8, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	b       39$
	nop
39$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80292A20:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x0009
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292A4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0300
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80292A80
camera_80292A80:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	li      $at, 0x1303
	lw      $t9, 0x0000($t8)
	bne     $t9, $at, 52$
	nop
	la.u    $a0, camera_802926DC
	la.l    $a0, camera_802926DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802927D0
	la.l    $a0, camera_802927D0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292868
	la.l    $a0, camera_80292868
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x003E
	la.u    $a0, camera_80292974
	la.l    $a0, camera_80292974
	lw      $a1, 0x0018($sp)
	li      $a2, 0x003F
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292A20
	la.l    $a0, camera_80292A20
	lw      $a1, 0x0018($sp)
	li      $a2, 0x003F
	jal     camera_8029A2F8
	li      $a3, 0x003F
	la.u    $a0, camera_80292A4C
	la.l    $a0, camera_80292A4C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x0046
	b       88$
	nop
52$:
	la.u    $a0, camera_802926DC
	la.l    $a0, camera_802926DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802927D0
	la.l    $a0, camera_802927D0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292868
	la.l    $a0, camera_80292868
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0020
	la.u    $a0, camera_80292974
	la.l    $a0, camera_80292974
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0021
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292A20
	la.l    $a0, camera_80292A20
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0021
	jal     camera_8029A2F8
	li      $a3, 0x0021
	la.u    $a0, camera_80292A4C
	la.l    $a0, camera_80292A4C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0028
88$:
	jal     camera_80288888
	li      $a0, 0x0001
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292C00:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0148
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	li      $at, 0x42820000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x012C($t6)
	lw      $t7, 0x0028($sp)
	li      $at, 0x0001
	lbu     $t8, 0x0000($t7)
	bne     $t8, $at, 34$
	nop
	lw      $t9, 0x0028($sp)
	addiu   $a0, $sp, 0x001C
	lw      $a1, 0x0028($t9)
	lw      $a2, 0x0068($t9)
	jal     vecf_set
	lw      $a3, 0x002C($t9)
	lw      $a1, 0x0028($sp)
	addiu   $a0, $sp, 0x001C
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	lw      $t0, 0x0028($sp)
	sh      $v0, 0x0002($t0)
	lw      $t1, 0x0028($sp)
	lh      $t2, 0x0002($t1)
	sh      $t2, 0x003A($t1)
34$:
	lui     $t3, %hi(save_level)
	lbu     $t3, %lo(save_level)($t3)
	li      $at, 0x0006
	bne     $t3, $at, 48$
	nop
	lui     $t4, %hi(course_index)
	lh      $t4, %lo(course_index)($t4)
	li      $at, 0x0004
	bne     $t4, $at, 48$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x5600
	jal     camera_80292628
	li      $a2, 0x0800
48$:
	lui     $t5, %hi(save_level)
	lbu     $t5, %lo(save_level)($t5)
	li      $at, 0x0002
	bne     $t5, $at, 62$
	nop
	lui     $t6, %hi(course_index)
	lh      $t6, %lo(course_index)($t6)
	li      $at, 0x000C
	bne     $t6, $at, 62$
	nop
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	jal     camera_80292628
	li      $a2, 0x0800
62$:
	lui     $t7, %hi(save_level)
	lbu     $t7, %lo(save_level)($t7)
	li      $at, 0x0001
	bne     $t7, $at, 76$
	nop
	lui     $t8, %hi(course_index)
	lh      $t8, %lo(course_index)($t8)
	li      $at, 0x000A
	bne     $t8, $at, 76$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x2000
	jal     camera_80292628
	li      $a2, 0x0800
76$:
	lui     $t9, %hi(save_level)
	lbu     $t9, %lo(save_level)($t9)
	li      $at, 0x0003
	bne     $t9, $at, 90$
	nop
	lui     $t0, %hi(course_index)
	lh      $t0, %lo(course_index)($t0)
	li      $at, 0x000F
	bne     $t0, $at, 90$
	nop
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	jal     camera_80292628
	li      $a2, 0x0800
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80292D80:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x44160000
	addiu   $a0, $sp, 0x0026
	li      $a1, 0x1000
	jal     camera_802894B4
	li      $a2, 0x0010
	lw      $t7, 0x0028($sp)
	addiu   $a0, $sp, 0x0024
	li      $a2, 0x0008
	jal     camera_802894B4
	lh      $a1, 0x0002($t7)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t8, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	b       39$
	nop
39$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80292E2C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x0004($t6)
	add.s   $f8, $f4, $f6
	lw      $a3, 0x000C($t6)
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	lui     $at, %hi(camera_803373E4)
	lwc1    $f10, %lo(camera_803373E4)($at)
	la.u    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0148
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0024
	jal     camera_80289610
	swc1    $f10, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0148
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80292EC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0148
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	lh      $t7, 0x0160($t6)
	addiu   $t8, $t7, -0x001D
	sh      $t8, 0x0160($t6)
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lh      $t0, 0x0162($t9)
	addiu   $t1, $t0, 0x001D
	sh      $t1, 0x0162($t9)
	la.u    $t2, _camera_bss_330-0x330+0x540
	la.l    $t2, _camera_bss_330-0x330+0x540
	lh      $a1, 0x0160($t2)
	lh      $a2, 0x0162($t2)
	jal     camera_802909D0
	lw      $a0, 0x0018($sp)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292F40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     camera_80292EC4
	lw      $a0, 0x0020($sp)
	lui     $a1, %hi(mario_cam)
	la.u    $t6, _camera_bss_330-0x330+0x540
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	la.l    $t6, _camera_bss_330-0x330+0x540
	lw      $a2, 0x012C($t6)
	sw      $0, 0x0010($sp)
	move    $a3, $0
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       18$
	nop
18$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80292F98:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	li      $t6, 0x0080
	sw      $t6, 0x0010($sp)
	li      $a2, 0x0000
	move    $a3, $0
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       15$
	nop
15$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80292FE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0400
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80293018
camera_80293018:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	la.u    $a0, camera_80292C00
	la.l    $a0, camera_80292C00
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80292E2C
	la.l    $a0, camera_80292E2C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80292D80
	la.l    $a0, camera_80292D80
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80292F40
	la.l    $a0, camera_80292F40
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0037
	jal     camera_8029A2F8
	li      $a3, 0x007C
	la.u    $a0, camera_80292F98
	la.l    $a0, camera_80292F98
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0037
	jal     camera_8029A2F8
	li      $a3, 0x007C
	la.u    $a0, camera_80292FE4
	la.l    $a0, camera_80292FE4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0028
	jal     camera_8029AB94
	li      $a0, 0x0002
	jal     camera_80288888
	li      $a0, 0x0005
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802930F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $a0, 0x0018($sp)
	la.u    $a2, _camera_bss_330-0x330+0x540
	la.l    $a2, _camera_bss_330-0x330+0x540
	addiu   $a2, $a2, 0x0124
	addiu   $a1, $t6, 0x0004
	addiu   $a3, $t6, 0x0010
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lw      $a0, 0x0018($sp)
	la.u    $a2, _camera_bss_330-0x330+0x540
	la.l    $a2, _camera_bss_330-0x330+0x540
	addiu   $a2, $a2, 0x0100
	addiu   $a1, $t7, 0x0004
	addiu   $a3, $t7, 0x0010
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293164:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0124
	li      $a1, 0x42180000
	li      $a2, 0x432B0000
	jal     vecf_set
	li      $a3, 0xC3780000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0100
	li      $a1, 0xC2640000
	li      $a2, 0x424C0000
	jal     vecf_set
	li      $a3, 0x433B0000
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802931C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0124
	li      $a1, 0xC3320000
	li      $a2, 0x42780000
	jal     vecf_set
	li      $a3, 0xC3040000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a1, 0x43958000
	li.l    $a1, 0x43958000
	addiu   $a0, $a0, 0x0100
	li      $a2, 0x42B60000
	jal     vecf_set
	li      $a3, 0x42680000
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293220:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $t6, 0x2800
	lui     $at, %hi(camdata+0xB4)
	sh      $t6, %lo(camdata+0xB4)($at)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x43BA8000
	li.l    $a2, 0x43BA8000
	addiu   $a0, $a0, 0x0124
	li      $a1, 0x42B20000
	jal     vecf_set
	li      $a3, 0xC3980000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0100
	li      $a1, 0x0000
	li      $a2, 0x42FE0000
	jal     vecf_set
	li      $a3, 0x0000
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029328C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(camdata+0xB4)
	sh      $0, %lo(camdata+0xB4)($at)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a3, 0xC4284000
	li.l    $a3, 0xC4284000
	addiu   $a0, $a0, 0x0124
	li      $a1, 0x43070000
	jal     vecf_set
	li      $a2, 0x431E0000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0100
	li      $a1, 0xC1A00000
	li      $a2, 0x43070000
	jal     vecf_set
	li      $a3, 0xC3460000
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802932F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0180
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293328:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80288888
	li      $a0, 0x0001
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293354:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	lw      $a0, 0x0018($sp)
	jal     camera_802921FC
	li      $a1, 0x0000
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8029338C
camera_8029338C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_8029228C
	la.l    $a0, camera_8029228C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x000A
	la.u    $a0, camera_80293354
	la.l    $a0, camera_80293354
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x000A
	la.u    $a0, camera_80293164
	la.l    $a0, camera_80293164
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802931C0
	la.l    $a0, camera_802931C0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0014
	jal     camera_8029A2F8
	li      $a3, 0x0014
	la.u    $a0, camera_80293220
	la.l    $a0, camera_80293220
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0023
	jal     camera_8029A2F8
	li      $a3, 0x0023
	la.u    $a0, camera_8029328C
	la.l    $a0, camera_8029328C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0034
	jal     camera_8029A2F8
	li      $a3, 0x0034
	la.u    $a0, camera_802930F0
	la.l    $a0, camera_802930F0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x000B
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802932F4
	la.l    $a0, camera_802932F4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0036
	jal     camera_8029A2F8
	li      $a3, 0x0036
	la.u    $a0, camera_80293328
	la.l    $a0, camera_80293328
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0034
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293488:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029ABB0
	li      $a0, 0x0002
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802934B4:
	sw      $a0, 0x0000($sp)
	lui     $t7, %hi(camera_8032DF30)
	lw      $t7, %lo(camera_8032DF30)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0088($t7)
	b       7$
	nop
7$:
	jr      $ra
	nop

camera_802934D8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	lh      $t7, 0x008A($t6)
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0078($t6)
	lh      $a3, 0x0088($t6)
	addiu   $a0, $t6, 0x004C
	sw      $t7, 0x0010($sp)
	jal     polar_to_cartesian
	addiu   $a1, $a1, 0x0010
	lui     $t8, %hi(camera_8032DF30)
	lw      $t8, %lo(camera_8032DF30)($t8)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x004C
	lw      $a1, 0x00A0($t8)
	lw      $a2, 0x00A4($t8)
	jal     vecf_set
	lw      $a3, 0x00A8($t8)
	b       24$
	nop
24$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80293548:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li      $at, 0x43160000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x001C($sp)
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	lhu     $t7, 0x00AE($t6)
	lui     $at, %hi(math_sin)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x42F00000
	mtc1    $at, $f8
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	la.u    $t0, _camera_bss_330-0x330+0x540
	la.l    $t0, _camera_bss_330-0x330+0x540
	lh      $t1, 0x00AE($t0)
	addiu   $t2, $t1, -0x0200
	sh      $t2, 0x00AE($t0)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0008
	lw      $a1, 0x001C($sp)
	jal     camera_802893F4
	li      $a2, 0x3F000000
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802935E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $t6, _camera_bss_330-0x330+0x540
	lw      $a0, 0x0018($sp)
	la.l    $t6, _camera_bss_330-0x330+0x540
	addiu   $a1, $t6, 0x004C
	addiu   $a2, $t6, 0x0004
	addiu   $a3, $t6, 0x0064
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293624:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0088
	li      $a1, 0x06C8
	jal     camera_802894B4
	li      $a2, 0x001E
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	addiu   $a0, $a0, 0x000C
	jal     camera_802893F4
	li      $a1, 0xC3480000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a1, 0x44098000
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	li.l    $a1, 0x44098000
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0078
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029369C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $a0, 0x000C
	jal     camera_802893F4
	li      $a1, 0x0000
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802936DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	li      $a0, 0x0001
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293708:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	move    $a0, $0
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293734:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x43D70000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x0078($t6)
	lui     $t7, %hi(camera_8032DF30)
	lw      $t7, %lo(camera_8032DF30)($t7)
	la.u    $t0, _camera_bss_330-0x330+0x540
	la.l    $t0, _camera_bss_330-0x330+0x540
	lw      $t8, 0x00C8($t7)
	addiu   $t9, $t8, -0x2000
	sh      $t9, 0x008A($t0)
	la.u    $t2, _camera_bss_330-0x330+0x540
	la.l    $t2, _camera_bss_330-0x330+0x540
	li      $t1, 0x0D90
	sh      $t1, 0x0088($t2)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x0000
	li      $a2, 0x42F00000
	jal     vecf_set
	li      $a3, 0xC4480000
	lui     $t3, %hi(camera_8032DF30)
	lw      $t3, %lo(camera_8032DF30)($t3)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0064
	lw      $a1, 0x00C4($t3)
	lw      $a2, 0x00C8($t3)
	jal     vecs_set
	lw      $a3, 0x00CC($t3)
	jal     camera_802934D8
	lw      $a0, 0x0018($sp)
	jal     camera_802935E0
	lw      $a0, 0x0018($sp)
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802937E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(stage_index)
	lh      $s0, %lo(stage_index)($s0)
	li      $at, 0x001E
	beq     $s0, $at, 14$
	nop
	li      $at, 0x0021
	beq     $s0, $at, 18$
	nop
	b       22$
	nop
14$:
	li      $t6, 0x0043
	sh      $t6, 0x0026($sp)
	b       24$
	nop
18$:
	li      $t7, 0x005C
	sh      $t7, 0x0026($sp)
	b       24$
	nop
22$:
	li      $t8, 0x005D
	sh      $t8, 0x0026($sp)
24$:
	jal     msg_open
	lh      $a0, 0x0026($sp)
	b       28$
	nop
28$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_8029386C
camera_8029386C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_802937E8
	la.l    $a0, camera_802937E8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 17$
	nop
	li      $t6, 0x7FFF
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t6, %lo(_camera_bss_330-0x330+0x53C)($at)
17$:
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_802938C8
camera_802938C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80293708
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sb      $0, 0x0030($t6)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	lui     $at, %hi(camera_8033C84A)
	ori     $t8, $t7, 0x4000
	sh      $t8, %lo(camera_8033C84A)($at)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	lh      $t0, 0x0012($t9)
	addiu   $t1, $t0, 0x4000
	sh      $t1, %lo(_camera_bss_238-0x238+0x252)($at)
	lui     $t3, %hi(camera_8032DF30)
	lw      $t3, %lo(camera_8032DF30)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x0088($t3)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80293944
camera_80293944:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0002
	jal     camera_8029A37C
	move    $a1, $0
	lui     $t6, %hi(camera_8032DF30)
	lw      $t6, %lo(camera_8032DF30)($t6)
	beqz    $t6, 88$
	nop
	la.u    $a0, camera_802936DC
	la.l    $a0, camera_802936DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80293734
	la.l    $a0, camera_80293734
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0005
	la.u    $a0, camera_802934B4
	la.l    $a0, camera_802934B4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0028
	la.u    $a0, camera_80293488
	la.l    $a0, camera_80293488
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0091
	jal     camera_8029A2F8
	li      $a3, 0x0091
	la.u    $a0, camera_802934D8
	la.l    $a0, camera_802934D8
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029369C
	la.l    $a0, camera_8029369C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0063
	la.u    $a0, camera_80293624
	la.l    $a0, camera_80293624
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0064
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80293548
	la.l    $a0, camera_80293548
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x008C
	la.u    $a0, camera_802935E0
	la.l    $a0, camera_802935E0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x003C
	jal     camera_8029A2F8
	li      $a3, 0x003C
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0052
	jal     camera_8029A2F8
	li      $a3, 0x0052
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x006D
	jal     camera_8029A2F8
	li      $a3, 0x006D
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x007F
	jal     camera_8029A2F8
	li      $a3, 0x007F
88$:
	b       90$
	nop
90$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293ABC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80290864
	lw      $a0, 0x0018($sp)
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293AE8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	beqz    $t6, 28$
	nop
	lui     $a1, %hi(camera_8032DF24)
	lw      $a1, %lo(camera_8032DF24)($a1)
	jal     camera_80287E28
	addiu   $a0, $sp, 0x0028
	lui     $t8, %hi(camera_8032DF24)
	lw      $t8, %lo(camera_8032DF24)($t8)
	addiu   $t7, $sp, 0x0028
	lwc1    $f4, 0x0004($t7)
	lwc1    $f6, 0x01FC($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($t7)
	lui     $at, %hi(camera_803373E8)
	lwc1    $f10, %lo(camera_803373E8)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0028
	swc1    $f10, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80293B70:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	lw      $a0, 0x0038($sp)
	addiu   $a1, $sp, 0x0020
	jal     camera_802826A0
	addiu   $a2, $sp, 0x002C
	lui     $at, %hi(camera_803373EC)
	lwc1    $f4, %lo(camera_803373EC)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0020
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lui     $at, %hi(camera_803373F0)
	lwc1    $f6, %lo(camera_803373F0)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x002C
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	b       29$
	nop
29$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80293BF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802908E8
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x000F
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80293C2C
camera_80293C2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80293ABC
	la.l    $a0, camera_80293ABC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80293AE8
	la.l    $a0, camera_80293AE8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	lui     $t8, %hi(camera_8033CBC8)
	lw      $t8, %lo(camera_8033CBC8)($t8)
	beqz    $t8, 27$
	nop
	li      $t9, 0x7FFF
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t9, %lo(_camera_bss_330-0x330+0x53C)($at)
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80293CB0
camera_80293CB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000B
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, 21$
	nop
	jal     camera_80288718
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, 21$
	nop
	la.u    $a0, camera_80293B70
	la.l    $a0, camera_80293B70
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       27$
	nop
21$:
	la.u    $a0, camera_80293BF4
	la.l    $a0, camera_80293BF4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
27$:
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	lui     $at, %hi(camera_8033C84A)
	ori     $t9, $t8, 0x0001
	sh      $t9, %lo(camera_8033C84A)($at)
	lui     $t0, %hi(camera_8033C84A)
	lh      $t0, %lo(camera_8033C84A)($t0)
	lui     $at, %hi(camera_8033C84A)
	ori     $t1, $t0, 0x4000
	sh      $t1, %lo(camera_8033C84A)($at)
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80293D5C
camera_80293D5C:
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	li      $t8, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t8, %lo(_camera_bss_330-0x330+0x53C)($at)
	sb      $0, 0x0030($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80293D90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0xC573B000
	li.u    $a3, 0xC5B13800
	li.l    $a3, 0xC5B13800
	li.l    $a1, 0xC573B000
	li      $a2, 0x421C0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293DD4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	lw      $t7, 0x0020($sp)
	li      $at, 0x3F000000
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x0014($t7)
	mtc1    $at, $f18
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f4, $f10
	swc1    $f6, 0x0008($t7)
	lui     $a1, %hi(mario_cam)
	lui     $at, %hi(camera_803373F4)
	lwc1    $f8, %lo(camera_803373F4)($at)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x3D4CCCCD
	li.u    $a3, 0x3ECCCCCD
	li.l    $a3, 0x3ECCCCCD
	li.l    $a2, 0x3D4CCCCD
	swc1    $f8, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       38$
	nop
38$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_80293E7C
camera_80293E7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80293D90
	la.l    $a0, camera_80293D90
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80293DD4
	la.l    $a0, camera_80293DD4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80293ED8
camera_80293ED8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	li      $t8, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t8, %lo(_camera_bss_330-0x330+0x53C)($at)
	lw      $t9, 0x0018($sp)
	sb      $0, 0x0030($t9)
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293F2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x45B63000
	li.u    $a3, 0x45791000
	li.l    $a3, 0x45791000
	li.l    $a1, 0x45B63000
	li      $a2, 0x42000000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80293F70
camera_80293F70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80293F2C
	la.l    $a0, camera_80293F2C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80293DD4
	la.l    $a0, camera_80293DD4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293FCC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	lui     $a1, %hi(camera_8032DF24)
	lw      $a1, %lo(camera_8032DF24)($a1)
	jal     camera_80287E28
	addiu   $a0, $a0, 0x0028
	jal     camera_80290864
	lw      $a0, 0x0018($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x0054($t6)
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294024:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3E19999A
	li.l    $a2, 0x3E19999A
	lw      $a1, 0x00A0($t6)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0004
	lui     $t7, %hi(camera_8032DF24)
	lw      $t7, %lo(camera_8032DF24)($t7)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3E19999A
	li.l    $a2, 0x3E19999A
	lw      $a1, 0x00A8($t7)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x000C
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294088:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	lw      $a1, 0x00A4($t6)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0008
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802940CC:
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	lwc1    $f6, 0x002C($t7)
	lwc1    $f4, 0x00A4($t6)
	lui     $at, %hi(camera_803373F8)
	lwc1    $f10, %lo(camera_803373F8)($at)
	sub.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f16, $f6
	swc1    $f18, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_8029410C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0040($sp)
	sw      $s1, 0x0020($sp)
	sw      $s0, 0x001C($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	sw      $t6, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0028
	lw      $a1, 0x0164($t7)
	lw      $a2, 0x0168($t7)
	jal     vecf_set
	lw      $a3, 0x016C($t7)
	lw      $a1, 0x0040($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $t8, $sp, 0x0038
	sw      $t8, 0x0010($sp)
	addiu   $a0, $a0, 0x0028
	addiu   $a2, $sp, 0x003C
	addiu   $a3, $sp, 0x003A
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0040($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0028
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sh      $v0, 0x0036($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0028
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0004
	sh      $v0, 0x0038($sp)
	lh      $t9, 0x0038($sp)
	lh      $t0, 0x0036($sp)
	mtc1    $0, $f8
	subu    $t1, $t9, $t0
	addiu   $t2, $t1, 0x4000
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    55$
	nop
	b       60$
	move    $s1, $t2
55$:
	lh      $t3, 0x0038($sp)
	lh      $t4, 0x0036($sp)
	li      $t6, -0x4000
	subu    $t5, $t3, $t4
	subu    $s1, $t6, $t5
60$:
	lh      $t7, 0x0038($sp)
	lh      $t8, 0x0036($sp)
	mtc1    $0, $f18
	subu    $t9, $t7, $t8
	addiu   $t0, $t9, -0x4000
	mtc1    $t0, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    74$
	nop
	b       79$
	move    $s0, $t0
74$:
	lh      $t1, 0x0038($sp)
	lh      $t2, 0x0036($sp)
	li      $t4, 0x4000
	subu    $t3, $t1, $t2
	subu    $s0, $t4, $t3
79$:
	slt     $at, $s1, $s0
	beqz    $at, 86$
	nop
	lh      $t6, 0x0038($sp)
	addiu   $t5, $t6, 0x4000
	b       89$
	sh      $t5, 0x0038($sp)
86$:
	lh      $t7, 0x0038($sp)
	addiu   $t8, $t7, -0x4000
	sh      $t8, 0x0038($sp)
89$:
	lw      $a1, 0x0040($sp)
	lh      $t9, 0x0038($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0028
	li      $a2, 0x43C80000
	li      $a3, 0x1000
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	lui     $t0, %hi(camera_8033C84A)
	lh      $t0, %lo(camera_8033C84A)($t0)
	li      $at, -0x0002
	and     $t1, $t0, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t1, %lo(camera_8033C84A)($at)
	b       107$
	nop
107$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x001C($sp)
	lw      $s1, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

camera_802942CC:
	sw      $a0, 0x0000($sp)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	b       7$
	nop
7$:
	jr      $ra
	nop

.globl camera_802942F0
camera_802942F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	la.u    $a0, camera_80293FCC
	la.l    $a0, camera_80293FCC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029410C
	la.l    $a0, camera_8029410C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001E
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80294024
	la.l    $a0, camera_80294024
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80294088
	la.l    $a0, camera_80294088
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001D
	la.u    $a0, camera_802940CC
	la.l    $a0, camera_802940CC
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001E
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802942CC
	la.l    $a0, camera_802942CC
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001E
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t8, %hi(camera_8033CBC8)
	lw      $t8, %lo(camera_8033CBC8)($t8)
	beqz    $t8, 51$
	nop
	li      $t9, 0x7FFF
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t9, %lo(_camera_bss_330-0x330+0x53C)($at)
51$:
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_802943D4
camera_802943D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802908E8
	lw      $a0, 0x0018($sp)
	li      $t6, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t6, %lo(_camera_bss_330-0x330+0x53C)($at)
	lw      $t7, 0x0018($sp)
	sb      $0, 0x0030($t7)
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	lwc1    $f4, 0x0054($t8)
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294428:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	lw      $a1, 0x0048($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $t6, $sp, 0x003C
	sw      $t6, 0x0010($sp)
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x0040
	addiu   $a3, $sp, 0x003E
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li      $at, 0x45FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0040($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    64$
	nop
	lw      $t7, 0x0048($sp)
	li      $at, 0x0096
	lbu     $t8, 0x0030($t7)
	bne     $t8, $at, 64$
	nop
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($sp)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0040($sp)
	lh      $t9, 0x0052($sp)
	sh      $t9, 0x003E($sp)
	la.u    $t0, _camera_bss_330-0x330+0x540
	la.l    $t0, _camera_bss_330-0x330+0x540
	addiu   $a0, $t0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $t0, 0x0070
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	li      $at, -0x0002
	and     $t2, $t1, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t2, %lo(camera_8033C84A)($at)
	lui     $t3, %hi(stage_index)
	lh      $t3, %lo(stage_index)($t3)
	li      $at, 0x0024
	bne     $t3, $at, 62$
	nop
	lw      $t5, 0x0048($sp)
	la.u    $t4, _camera_bss_330-0x330+0x540
	la.l    $t4, _camera_bss_330-0x330+0x540
	lwc1    $f18, 0x0078($t4)
	lwc1    $f6, 0x0070($t4)
	lwc1    $f4, 0x002C($t5)
	lwc1    $f8, 0x0028($t5)
	sub.s   $f12, $f18, $f4
	jal     ATAN2
	sub.s   $f14, $f6, $f8
	sh      $v0, 0x003C($sp)
62$:
	b       125$
	nop
64$:
	lw      $t6, 0x0048($sp)
	li      $at, 0x0096
	lbu     $t7, 0x0030($t6)
	bne     $t7, $at, 114$
	nop
	lw      $a0, 0x0048($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $t8, $sp, 0x002C
	sw      $t8, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	addiu   $a2, $sp, 0x0030
	addiu   $a3, $sp, 0x002E
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0048($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $t9, $sp, 0x0034
	sw      $t9, 0x0010($sp)
	addiu   $a1, $a1, 0x0070
	addiu   $a2, $sp, 0x0038
	addiu   $a3, $sp, 0x0036
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $sp, 0x0030
	jal     camera_802893F4
	lw      $a1, 0x0038($sp)
	addiu   $a0, $sp, 0x002E
	lh      $a1, 0x0036($sp)
	jal     camera_802894B4
	li      $a2, 0x000F
	addiu   $a0, $sp, 0x002C
	lh      $a1, 0x0034($sp)
	jal     camera_802894B4
	li      $a2, 0x000F
	lw      $a0, 0x0048($sp)
	lh      $t0, 0x002C($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0004
	lw      $a2, 0x0030($sp)
	lh      $a3, 0x002E($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	b       125$
	nop
114$:
	lui     $at, %hi(camera_803373FC)
	lwc1    $f10, %lo(camera_803373FC)($at)
	la.u    $t1, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $t1, _camera_bss_330-0x330+0x540
	addiu   $a0, $t1, 0x0004
	addiu   $a1, $t1, 0x0070
	addu    $a3, $a2, $0
	jal     camera_80289610
	swc1    $f10, 0x0010($sp)
125$:
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $sp, 0x0040
	jal     camera_802893F4
	lw      $a1, 0x004C($sp)
	addiu   $a0, $sp, 0x003E
	lh      $a1, 0x0052($sp)
	jal     camera_802894B4
	li      $a2, 0x0020
	lw      $a1, 0x0048($sp)
	lh      $t2, 0x003C($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x003E($sp)
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t2, 0x0010($sp)
	lw      $a0, 0x0048($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0048($sp)
	lh      $a1, 0x0056($sp)
	jal     camera_802909D0
	lh      $a2, 0x005A($sp)
	lw      $t3, 0x0048($sp)
	addiu   $t4, $sp, 0x003C
	sw      $t4, 0x0010($sp)
	addiu   $a2, $sp, 0x0040
	addiu   $a3, $sp, 0x003E
	addiu   $a0, $t3, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t3, 0x0004
	lh      $t5, 0x003E($sp)
	slti    $at, $t5, -0x3000
	beqz    $at, 168$
	nop
	li      $t6, -0x3000
	sh      $t6, 0x003E($sp)
168$:
	lh      $t7, 0x003E($sp)
	slti    $at, $t7, 0x3001
	bnez    $at, 174$
	nop
	li      $t8, 0x3000
	sh      $t8, 0x003E($sp)
174$:
	lw      $t9, 0x0048($sp)
	lh      $t0, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x003E($sp)
	addiu   $a0, $t9, 0x0010
	addiu   $a1, $t9, 0x0004
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	b       184$
	nop
184$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_80294718:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80290784
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	li      $at, 0x41F00000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x004C($t6)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	lui     $a1, %hi(camera_8032DF24)
	lw      $a1, %lo(camera_8032DF24)($a1)
	jal     camera_80287E28
	addiu   $a0, $a0, 0x0070
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x00D0
	move    $a1, $0
	move    $a2, $0
	jal     vecs_set
	move    $a3, $0
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802947A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	lh      $t7, 0x00D2($t6)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43960000
	li      $a2, 0x2000
	move    $a3, $0
	jal     camera_80294428
	sw      $t7, 0x0010($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x00D2
	li      $a1, 0x0400
	jal     camera_8028976C
	li      $a2, 0x0011
	jal     camera_80288888
	li      $a0, 0x0001
	b       22$
	nop
22$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029480C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	mtc1    $0, $f10
	lwc1    $f6, 0x0000($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    16$
	nop
	b       21$
	mov.s   $f20, $f8
16$:
	lw      $t7, 0x0028($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0000($t7)
	sub.s   $f20, $f16, $f18
	neg.s   $f20, $f20
21$:
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	lwc1    $f4, 0x004C($t8)
	div.s   $f6, $f20, $f4
	swc1    $f6, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     camera_802899CC
	lw      $a2, 0x0024($sp)
	b       32$
	nop
32$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_802948A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_238-0x238+0x308
	la.l    $a1, _camera_bss_238-0x238+0x308
	jal     camera_8028AC28
	addiu   $a0, $a0, 0x0010
	swc1    $f0, 0x001C($sp)
	li      $at, 0x45FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    54$
	nop
	lw      $a0, 0x0020($sp)
	la.u    $t6, _camera_bss_238-0x238+0x308
	la.l    $t6, _camera_bss_238-0x238+0x308
	lw      $a1, 0x0000($t6)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0020($sp)
	la.u    $t7, _camera_bss_238-0x238+0x308
	la.l    $t7, _camera_bss_238-0x238+0x308
	lw      $a1, 0x0004($t7)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0014
	lw      $a0, 0x0020($sp)
	la.u    $t8, _camera_bss_238-0x238+0x308
	la.l    $t8, _camera_bss_238-0x238+0x308
	lw      $a1, 0x0008($t8)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0018
	lw      $a0, 0x0020($sp)
	la.u    $t9, _camera_bss_238-0x238+0x308
	la.l    $t9, _camera_bss_238-0x238+0x308
	lw      $a1, 0x000C($t9)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0020($sp)
	la.u    $t0, _camera_bss_238-0x238+0x308
	la.l    $t0, _camera_bss_238-0x238+0x308
	lw      $a1, 0x0010($t0)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0008
	lw      $a0, 0x0020($sp)
	la.u    $t1, _camera_bss_238-0x238+0x308
	la.l    $t1, _camera_bss_238-0x238+0x308
	lw      $a1, 0x0014($t1)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x000C
	b       71$
	nop
54$:
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_238-0x238+0x308
	la.l    $a1, _camera_bss_238-0x238+0x308
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_238-0x238+0x308
	la.l    $a1, _camera_bss_238-0x238+0x308
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lui     $t2, %hi(camera_8033C84A)
	lh      $t2, %lo(camera_8033C84A)($t2)
	li      $at, -0x0002
	and     $t3, $t2, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t3, %lo(camera_8033C84A)($at)
71$:
	la.u    $t4, _camera_bss_330-0x330+0x540
	la.l    $t4, _camera_bss_330-0x330+0x540
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t4)
	c.lt.s  $f10, $f8
	nop
	bc1f    87$
	nop
	la.u    $t5, _camera_bss_330-0x330+0x540
	la.l    $t5, _camera_bss_330-0x330+0x540
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x004C($t5)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x004C($t5)
87$:
	b       89$
	nop
89$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_80294A14
camera_80294A14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	la.u    $a0, camera_80294718
	la.l    $a0, camera_80294718
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802947A4
	la.l    $a0, camera_802947A4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x008C
	la.u    $a0, camera_802948A0
	la.l    $a0, camera_802948A0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x008D
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80294A94
camera_80294A94:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $t6, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t6, %lo(_camera_bss_330-0x330+0x53C)($at)
	lw      $t7, 0x0018($sp)
	sb      $0, 0x0030($t7)
	jal     camera_802907F4
	lw      $a0, 0x0018($sp)
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	lui     $at, %hi(camera_8033C84A)
	ori     $t9, $t8, 0x0001
	sh      $t9, %lo(camera_8033C84A)($at)
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294AE8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0020
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	addiu   $a0, $sp, 0x0020
	li      $a2, 0x0008
	lh      $a1, 0x0012($t7)
	jal     camera_802894B4
	addiu   $a1, $a1, -0x3000
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t8, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	b       32$
	nop
32$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80294B78:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x1000
	li      $a3, 0x0300
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	b       11$
	nop
11$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80294BB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	li      $at, 0x428C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0074($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0074($t6)
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294C28:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80294B78
	lw      $a0, 0x0018($sp)
	jal     camera_80288888
	li      $a0, 0x0004
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80294C5C
camera_80294C5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80294BB4
	la.l    $a0, camera_80294BB4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80294C28
	la.l    $a0, camera_80294C28
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294CC4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $t7, camera_8032F1F0
	la.l    $t7, camera_8032F1F0
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x001C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x001C
	addiu   $a1, $t0, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t0, 0x0010
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80294D48:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li      $t6, -0x0400
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x1800
	jal     camera_80294428
	move    $a3, $0
	b       12$
	nop
12$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80294D88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80294AE8
	lw      $a0, 0x0018($sp)
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80294DB4
camera_80294DB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80294CC4
	la.l    $a0, camera_80294CC4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80294D48
	la.l    $a0, camera_80294D48
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	jal     camera_80288888
	li      $a0, 0x0001
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294E24:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $t7, camera_8032F1FC
	la.l    $t7, camera_8032F1FC
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x001C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x001C
	addiu   $a1, $t0, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t0, 0x0010
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80294EA8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li      $t6, 0x0400
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x1800
	jal     camera_80294428
	move    $a3, $0
	b       12$
	nop
12$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_80294EE8
camera_80294EE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80294E24
	la.l    $a0, camera_80294E24
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80294EA8
	la.l    $a0, camera_80294EA8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	jal     camera_80288888
	li      $a0, 0x0001
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294F58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294F94:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x2800
	li      $a3, 0x0200
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x009F
	lbu     $t7, 0x0030($t6)
	bne     $t7, $at, 16$
	nop
	jal     camera_80294AE8
	lw      $a0, 0x0020($sp)
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_80294FEC
camera_80294FEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	lwc1    $f4, 0x0004($t6)
	swc1    $f4, 0x0070($t7)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	lwc1    $f6, 0x0008($t8)
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0074($t9)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	la.u    $t1, _camera_bss_330-0x330+0x540
	la.l    $t1, _camera_bss_330-0x330+0x540
	lwc1    $f16, 0x000C($t0)
	swc1    $f16, 0x0078($t1)
	la.u    $a0, camera_80294F58
	la.l    $a0, camera_80294F58
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80294F94
	la.l    $a0, camera_80294F94
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t2, %hi(camera_8033C84A)
	lh      $t2, %lo(camera_8033C84A)($t2)
	lui     $at, %hi(camera_8033C84A)
	ori     $t3, $t2, 0x0001
	sh      $t3, %lo(camera_8033C84A)($at)
	jal     camera_80288888
	li      $a0, 0x0004
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802950B0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	la.u    $t7, camera_8032F208
	la.l    $t7, camera_8032F208
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0020
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	addiu   $a0, $sp, 0x002C
	addiu   $a2, $sp, 0x0020
	addiu   $a1, $t0, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t0, 0x0010
	lui     $at, %hi(camera_80337400)
	lwc1    $f4, %lo(camera_80337400)($at)
	la.u    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x002C
	jal     camera_80289610
	swc1    $f4, 0x0010($sp)
	b       32$
	nop
32$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80295140:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sdc1    $f20, 0x0018($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x2800
	li      $a3, 0x0200
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lwc1    $f12, 0x0004($t6)
	jal     bg_check_gas
	lwc1    $f14, 0x000C($t6)
	swc1    $f0, 0x0030($sp)
	lui     $at, %hi(camera_80337404)
	lwc1    $f6, %lo(camera_80337404)($at)
	lwc1    $f4, 0x0030($sp)
	c.eq.s  $f4, $f6
	nop
	bc1t    37$
	nop
	li      $at, 0x43020000
	mtc1    $at, $f10
	lwc1    $f8, 0x0030($sp)
	lw      $t7, 0x0038($sp)
	add.s   $f20, $f8, $f10
	swc1    $f20, 0x0030($sp)
	lwc1    $f16, 0x0014($t7)
	c.lt.s  $f16, $f20
	nop
	bc1f    37$
	nop
	lwc1    $f18, 0x0030($sp)
	lw      $t8, 0x0038($sp)
	swc1    $f18, 0x0014($t8)
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_802951F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0020
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lh      $t7, 0x0020($sp)
	addiu   $t8, $t7, 0x0100
	sh      $t8, 0x0020($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t9, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	b       28$
	nop
28$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_80295270
camera_80295270:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80294CC4
	la.l    $a0, camera_80294CC4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802951F0
	la.l    $a0, camera_802951F0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80295140
	la.l    $a0, camera_80295140
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802950B0
	la.l    $a0, camera_802950B0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0032
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	jal     camera_80288888
	li      $a0, 0x0004
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80295310:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0006
	bne     $t6, $at, 25$
	nop
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a1, 0x451B5000
	li.u    $a2, 0xC4C6A000
	li.u    $a3, 0xC5263000
	li.l    $a3, 0xC5263000
	li.l    $a2, 0xC4C6A000
	li.l    $a1, 0x451B5000
	jal     vecf_set
	addiu   $a0, $a0, 0x0070
25$:
	lui     $t7, %hi(stage_index)
	lh      $t7, %lo(stage_index)($t7)
	li      $at, 0x0007
	bne     $t7, $at, 39$
	nop
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a1, 0x45516000
	li.u    $a2, 0xC58F6800
	li.l    $a2, 0xC58F6800
	li.l    $a1, 0x45516000
	addiu   $a0, $a0, 0x0070
	jal     vecf_set
	li      $a3, 0x45960000
39$:
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802953DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44960000
	li      $a2, 0x2000
	li      $a3, 0x0200
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	b       11$
	nop
11$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_80295418
camera_80295418:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80295310
	la.l    $a0, camera_80295310
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802953DC
	la.l    $a0, camera_802953DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80295480:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029051C
	lw      $a0, 0x0018($sp)
	jal     camera_80290784
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0028
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $t6, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	li      $a2, 0x44A00000
	lw      $a1, 0x0028($t6)
	jal     vecf_set
	lw      $a3, 0x002C($t6)
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802954EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x000A
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80295518:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(camera_80337408)
	lwc1    $f4, %lo(camera_80337408)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0070
	addu    $a3, $a2, $0
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	b       22$
	nop
22$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80295580:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	jal     camera_8029AB94
	li      $a0, 0x0002
	li      $at, 0x42340000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0094
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x00B8
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0070
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0028($sp)
	lh      $t7, 0x0024($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	li      $a2, 0x44FA0000
	move    $a3, $0
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0014($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0014($t8)
	b       56$
	nop
56$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80295670:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x44FA0000
	lw      $a1, 0x0028($sp)
	lh      $t7, 0x0024($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t8)
	lw      $t9, 0x0028($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0014($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0014($t9)
	li      $at, 0x42340000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	jal     camera_80288888
	li      $a0, 0x0001
	b       48$
	nop
48$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80295740:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8027F8B8
	li      $a0, 0x0008
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029576C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0094
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x00B8
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	jal     camera_8027F8B8
	li      $a0, 0x0003
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_802957C8
camera_802957C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80295480
	la.l    $a0, camera_80295480
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80295518
	la.l    $a0, camera_80295518
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80295580
	la.l    $a0, camera_80295580
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001F
	jal     camera_8029A2F8
	li      $a3, 0x001F
	la.u    $a0, camera_80295670
	la.l    $a0, camera_80295670
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001F
	jal     camera_8029A2F8
	li      $a3, 0x008B
	la.u    $a0, camera_802954EC
	la.l    $a0, camera_802954EC
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0017
	jal     camera_8029A2F8
	li      $a3, 0x0017
	la.u    $a0, camera_8029576C
	la.l    $a0, camera_8029576C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x008C
	jal     camera_8029A2F8
	li      $a3, 0x008C
	la.u    $a0, camera_80295740
	la.l    $a0, camera_80295740
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001F
	jal     camera_8029A2F8
	li      $a3, 0x008B
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80295894
camera_80295894:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80293708
	lw      $a0, 0x0018($sp)
	jal     camera_80290104
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x001E
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802958D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $t6, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	li      $a2, 0x44A00000
	lw      $a1, 0x0028($t6)
	jal     vecf_set
	lw      $a3, 0x002C($t6)
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80295930
camera_80295930:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_802958D4
	la.l    $a0, camera_802958D4
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43480000
	li      $a2, 0x3000
	move    $a3, $0
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	jal     camera_80288888
	li      $a0, 0x0001
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lui     $at, %hi(camera_8033740C)
	lwc1    $f6, %lo(camera_8033740C)($at)
	lwc1    $f4, 0x0008($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    33$
	nop
	jal     camera_80293ED8
	lw      $a0, 0x0020($sp)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802959CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	jal     camera_8028AC28
	addiu   $a1, $a1, 0x0004
	swc1    $f0, 0x0024($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0148
	jal     camera_8028AC28
	addiu   $a1, $a1, 0x0004
	li      $at, 0x43480000
	mtc1    $at, $f4
	nop
	add.s   $f6, $f0, $f4
	swc1    $f6, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	li      $a2, 0x1000
	li      $a3, 0x0300
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	b       31$
	nop
31$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80295A58:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     camera_80290BA4
	lw      $a0, 0x0020($sp)
	jal     objlib_802A4750
	li      $a0, 0x0006
	lw      $t6, 0x0020($sp)
	li      $at, 0x000B
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, 25$
	nop
	lw      $a1, 0x0020($sp)
	la.u    $a0, _camera_bss_238-0x238+0x308
	la.l    $a0, _camera_bss_238-0x238+0x308
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0020($sp)
	la.u    $a0, _camera_bss_238-0x238+0x308
	la.l    $a0, _camera_bss_238-0x238+0x308
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	b       27$
	nop
25$:
	jal     camera_80290864
	lw      $a0, 0x0020($sp)
27$:
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	sh      $0, 0x013C($t8)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0124
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0128($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0128($t9)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	lui     $a1, %hi(camera_8032DF24)
	lw      $a1, %lo(camera_8032DF24)($a1)
	jal     camera_80287E28
	addiu   $a0, $a0, 0x0148
	lui     $t0, %hi(camera_8032DF24)
	lw      $t0, %lo(camera_8032DF24)($t0)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x01FC($t0)
	la.u    $t1, _camera_bss_330-0x330+0x540
	la.l    $t1, _camera_bss_330-0x330+0x540
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x014C($t1)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x014C($t1)
	la.u    $t2, _camera_bss_330-0x330+0x540
	la.l    $t2, _camera_bss_330-0x330+0x540
	addiu   $a0, $t2, 0x0124
	jal     camera_8028AAD8
	addiu   $a1, $t2, 0x0148
	la.u    $t3, _camera_bss_330-0x330+0x540
	la.l    $t3, _camera_bss_330-0x330+0x540
	sh      $v0, 0x0162($t3)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	la.u    $a1, camdata
	la.l    $a1, camdata
	addiu   $a1, $a1, 0x000C
	jal     camera_8028AAD8
	addiu   $a0, $a0, 0x0004
	sh      $v0, 0x0018($sp)
	la.u    $t5, _camera_bss_330-0x330+0x540
	la.l    $t5, _camera_bss_330-0x330+0x540
	lh      $t6, 0x0162($t5)
	lh      $t4, 0x0018($sp)
	subu    $t7, $t4, $t6
	andi    $t8, $t7, 0x8000
	beqz    $t8, 91$
	nop
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lh      $t0, 0x0162($t9)
	addiu   $t1, $t0, -0x6000
	b       96$
	sh      $t1, 0x0162($t9)
91$:
	la.u    $t2, _camera_bss_330-0x330+0x540
	la.l    $t2, _camera_bss_330-0x330+0x540
	lh      $t3, 0x0162($t2)
	addiu   $t5, $t3, 0x6000
	sh      $t5, 0x0162($t2)
96$:
	b       98$
	nop
98$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80295BF0:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $s0, 0x0020($sp)
	lui     $a2, %hi(mario_cam)
	lw      $a2, %lo(mario_cam)($a2)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	li.u    $a3, 0x3F333333
	li.l    $a3, 0x3F333333
	addiu   $a1, $a1, 0x0148
	addiu   $a0, $sp, 0x003C
	jal     camera_8028A834
	addiu   $a2, $a2, 0x0004
	lw      $a0, 0x0050($sp)
	addiu   $t6, $sp, 0x0048
	sw      $t6, 0x0010($sp)
	addiu   $a1, $sp, 0x003C
	addiu   $a2, $sp, 0x004C
	addiu   $a3, $sp, 0x004A
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0050($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0148
	jal     camera_8028AA28
	addiu   $a0, $a0, 0x0010
	sh      $v0, 0x004A($sp)
	lw      $a0, 0x0050($sp)
	lh      $t7, 0x0048($sp)
	addiu   $a1, $sp, 0x0030
	lw      $a2, 0x004C($sp)
	lh      $a3, 0x004A($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	addiu   $t9, $sp, 0x003C
	lwc1    $f6, 0x0004($t9)
	lwc1    $f4, 0x014C($t8)
	lui     $at, %hi(camera_80337410)
	lwc1    $f10, %lo(camera_80337410)($at)
	sub.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f16, $f6
	swc1    $f18, 0x0004($t9)
	lui     $at, %hi(camera_80337414)
	lwc1    $f4, %lo(camera_80337414)($at)
	lw      $a0, 0x0050($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x003C
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lw      $a1, 0x0050($sp)
	addiu   $a0, $sp, 0x0030
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	la.u    $t0, _camera_bss_330-0x330+0x540
	la.l    $t0, _camera_bss_330-0x330+0x540
	lwc1    $f8, 0x0128($t0)
	addiu   $t1, $sp, 0x0030
	swc1    $f8, 0x0004($t1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $t2, $sp, 0x0048
	sw      $t2, 0x0010($sp)
	addiu   $a0, $a0, 0x0124
	addiu   $a1, $sp, 0x0030
	addiu   $a2, $sp, 0x004C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x004A
	la.u    $t3, _camera_bss_330-0x330+0x540
	la.l    $t3, _camera_bss_330-0x330+0x540
	lh      $a1, 0x0162($t3)
	addiu   $a0, $sp, 0x0048
	jal     camera_802894B4
	li      $a2, 0x0010
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $sp, 0x004C
	jal     camera_802893F4
	li      $a1, 0x43340000
	lh      $t4, 0x0048($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0124
	addiu   $a1, $sp, 0x0030
	lw      $a2, 0x004C($sp)
	lh      $a3, 0x004A($sp)
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	la.u    $t5, _camera_bss_330-0x330+0x540
	la.l    $t5, _camera_bss_330-0x330+0x540
	addiu   $a0, $t5, 0x0148
	jal     camera_8028AA28
	addiu   $a1, $t5, 0x0124
	sll     $s0, $v0, 16
	sra     $t6, $s0, 16
	move    $s0, $t6
	andi    $t7, $s0, 0xFFFF
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	la.u    $t0, _camera_bss_330-0x330+0x540
	la.l    $t0, _camera_bss_330-0x330+0x540
	mul.s   $f6, $f10, $f16
	lwc1    $f18, 0x0128($t0)
	addiu   $t1, $sp, 0x0030
	add.s   $f4, $f6, $f18
	swc1    $f4, 0x0004($t1)
	lw      $a0, 0x0050($sp)
	addiu   $t2, $sp, 0x0030
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	lw      $a1, 0x0004($t2)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0014
	addiu   $t3, $sp, 0x0030
	lwc1    $f8, 0x0000($t3)
	lw      $t4, 0x0050($sp)
	swc1    $f8, 0x0010($t4)
	addiu   $t5, $sp, 0x0030
	lwc1    $f10, 0x0008($t5)
	lw      $t6, 0x0050($sp)
	swc1    $f10, 0x0018($t6)
	b       136$
	nop
136$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

camera_80295E24:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00A3
	lbu     $t7, 0x0030($t6)
	bne     $t7, $at, 13$
	nop
	lui     $a0, %hi(_camera_bss_48-0x48+0x170)
	jal     msg_open_prompt
	lh      $a0, %lo(_camera_bss_48-0x48+0x170)($a0)
	b       16$
	nop
13$:
	lui     $a0, %hi(_camera_bss_48-0x48+0x170)
	jal     msg_open
	lh      $a0, %lo(_camera_bss_48-0x48+0x170)($a0)
16$:
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	li      $t8, 0x0003
	sh      $t8, 0x013C($t9)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80295E8C
camera_80295E8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80295A58
	la.l    $a0, camera_80295A58
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80295BF0
	la.l    $a0, camera_80295BF0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80295E24
	la.l    $a0, camera_80295E24
	lw      $a1, 0x0018($sp)
	li      $a2, 0x000A
	jal     camera_8029A2F8
	li      $a3, 0x000A
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	lui     $t8, %hi(msg_answer)
	lw      $t8, %lo(msg_answer)($t8)
	beqz    $t8, 34$
	nop
	lui     $t9, %hi(msg_answer)
	lw      $t9, %lo(msg_answer)($t9)
	lui     $at, %hi(camera_8032DF5C)
	sb      $t9, %lo(camera_8032DF5C)($at)
34$:
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 67$
	nop
	la.u    $t0, _camera_bss_330-0x330+0x540
	la.l    $t0, _camera_bss_330-0x330+0x540
	lh      $t1, 0x013C($t0)
	beqz    $t1, 67$
	nop
	lw      $t2, 0x0018($sp)
	li      $at, 0x00A3
	lbu     $t3, 0x0030($t2)
	beq     $t3, $at, 52$
	nop
	li      $t4, 0x0003
	lui     $at, %hi(camera_8032DF5C)
	sb      $t4, %lo(camera_8032DF5C)($at)
52$:
	li      $t5, 0x7FFF
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t5, %lo(_camera_bss_330-0x330+0x53C)($at)
	jal     camera_802908E8
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x000F
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(camera_8033C84A)($at)
	jal     camera_80290BD8
	lw      $a0, 0x0018($sp)
67$:
	b       69$
	nop
69$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80295FB0
camera_80295FB0:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(camera_8033C84A)($at)
	b       8$
	nop
8$:
	jr      $ra
	nop

.globl camera_80295FD8
camera_80295FD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(camera_8033C84A)($at)
	lw      $t8, 0x0018($sp)
	sb      $0, 0x0030($t8)
	jal     objlib_802A4774
	li      $a0, 0x0006
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296020:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80290BA4
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x001E
	jal     camera_8029051C
	lw      $a0, 0x0018($sp)
	jal     camera_80290864
	lw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x250)
	lh      $t6, %lo(_camera_bss_238-0x238+0x250)($t6)
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	sh      $t6, 0x0040($t7)
	lui     $t8, %hi(_camera_bss_238-0x238+0x252)
	lh      $t8, %lo(_camera_bss_238-0x238+0x252)($t8)
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	sh      $t8, 0x0042($t9)
	li      $t0, -0x0830
	lui     $at, %hi(_camera_bss_238-0x238+0x250)
	sh      $t0, %lo(_camera_bss_238-0x238+0x250)($at)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $0, %lo(_camera_bss_238-0x238+0x252)($at)
	la.u    $t1, _camera_bss_330-0x330+0x540
	la.l    $t1, _camera_bss_330-0x330+0x540
	sh      $0, 0x001C($t1)
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802960B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	addiu   $a0, $sp, 0x0020
	move    $a1, $0
	move    $a3, $0
	jal     vecs_set
	lh      $a2, 0x0012($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	li      $at, 0x433E0000
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	mtc1    $at, $f6
	lw      $a0, 0x0028($sp)
	addiu   $a2, $sp, 0x0020
	li      $a3, 0x0000
	swc1    $f4, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	addiu   $a0, $a0, 0x0010
	jal     camera_8028CD94
	swc1    $f6, 0x0014($sp)
	li      $at, 0x428C0000
	mtc1    $at, $f8
	li      $at, 0xC1A00000
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	mtc1    $at, $f10
	lw      $a0, 0x0028($sp)
	addiu   $a2, $sp, 0x0020
	li      $a3, 0x0000
	swc1    $f8, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	addiu   $a0, $a0, 0x0004
	jal     camera_8028CD94
	swc1    $f10, 0x0014($sp)
	b       40$
	nop
40$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_80296160
camera_80296160:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, camera_80296020
	la.l    $a0, camera_80296020
	lw      $a1, 0x0030($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	lh      $s0, 0x001C($t8)
	beqz    $s0, 25$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 39$
	nop
	b       78$
	nop
25$:
	jal     msg_get
	nop
	li      $at, -0x0001
	beq     $v0, $at, 37$
	nop
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lh      $t0, 0x001C($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x001C($t9)
	jal     objlib_802A4750
	li      $a0, 0x0006
37$:
	b       78$
	nop
39$:
	jal     camera_802858A4
	lw      $a0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	move    $a0, $t2
	addiu   $a1, $t2, 0x0004
	jal     camera_80285808
	addiu   $a2, $t2, 0x0010
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 78$
	nop
	li      $t3, 0x7FFF
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t3, %lo(_camera_bss_330-0x330+0x53C)($at)
	jal     camera_802908E8
	lw      $a0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     camera_8028603C
	li      $a1, 0x000F
	lui     $t4, %hi(camera_8033C84A)
	lh      $t4, %lo(camera_8033C84A)($t4)
	lui     $at, %hi(camera_8033C84A)
	ori     $t5, $t4, 0x4000
	sh      $t5, %lo(camera_8033C84A)($at)
	jal     objlib_802A4774
	li      $a0, 0x0006
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	lh      $t7, 0x0040($t6)
	lui     $at, %hi(_camera_bss_238-0x238+0x250)
	sh      $t7, %lo(_camera_bss_238-0x238+0x250)($at)
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	lh      $t0, 0x0042($t8)
	lui     $at, %hi(_camera_bss_238-0x238+0x252)
	sh      $t0, %lo(_camera_bss_238-0x238+0x252)($at)
	jal     camera_80290BD8
	lw      $a0, 0x0030($sp)
78$:
	lui     $t1, %hi(camera_8033C84A)
	lh      $t1, %lo(camera_8033C84A)($t1)
	lui     $at, %hi(camera_8033C84A)
	ori     $t9, $t1, 0x4000
	sh      $t9, %lo(camera_8033C84A)($at)
	b       85$
	nop
85$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl camera_802962C8
camera_802962C8:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(camera_8033C84A)($at)
	b       8$
	nop
8$:
	jr      $ra
	nop

.globl camera_802962F0
camera_802962F0:
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(camera_8033C84A)($at)
	sb      $0, 0x0030($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80296318:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0100
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0118
	jal     vecs_cpy
	addiu   $a1, $a1, 0x0010
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x43B58000
	li.u    $a3, 0x4407C000
	li.l    $a3, 0x4407C000
	li.l    $a2, 0x43B58000
	addiu   $a0, $a0, 0x00DC
	jal     vecf_set
	li      $a1, 0x40C00000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a3, 0x4478C000
	li.l    $a3, 0x4478C000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x43090000
	jal     vecf_set
	li      $a2, 0x43620000
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802963B8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(camera_prevstage)
	lw      $s0, %lo(camera_prevstage)($s0)
	li      $at, 0x0007
	beq     $s0, $at, 20$
	nop
	li      $at, 0x000F
	beq     $s0, $at, 40$
	nop
	li      $at, 0x001C
	beq     $s0, $at, 30$
	nop
	li      $at, 0x001F
	beq     $s0, $at, 51$
	nop
	b       62$
	nop
20$:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0x45589000
	li.u    $a3, 0xC5391000
	li.l    $a3, 0xC5391000
	li.l    $a1, 0x45589000
	li      $a2, 0xC47C0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       86$
	nop
30$:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0x45589000
	li.u    $a3, 0xC5391000
	li.l    $a3, 0xC5391000
	li.l    $a1, 0x45589000
	li      $a2, 0xC47C0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       86$
	nop
40$:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0xC569D000
	li.u    $a2, 0x4544F000
	li.u    $a3, 0x45BD8800
	li.l    $a3, 0x45BD8800
	li.l    $a2, 0x4544F000
	li.l    $a1, 0xC569D000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       86$
	nop
51$:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0x44F68000
	li.u    $a2, 0x4549E000
	li.u    $a3, 0x45B81800
	li.l    $a3, 0x45B81800
	li.l    $a2, 0x4549E000
	li.l    $a1, 0x44F68000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       86$
	nop
62$:
	la.u    $t6, _camera_bss_330-0x330+0x540
	lw      $a0, 0x0038($sp)
	la.l    $t6, _camera_bss_330-0x330+0x540
	addiu   $a1, $t6, 0x0100
	addiu   $a2, $t6, 0x00B8
	addiu   $a3, $t6, 0x0118
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lw      $t7, 0x0038($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0014($t7)
	addiu   $a3, $sp, 0x0030
	lwc1    $f12, 0x0010($t7)
	lw      $a2, 0x0018($t7)
	jal     bg_check_ground
	add.s   $f14, $f4, $f6
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	lw      $t8, 0x0038($sp)
	add.s   $f10, $f0, $f8
	swc1    $f10, 0x0014($t8)
	b       86$
	nop
86$:
	b       88$
	nop
88$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8029652C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $t6, _camera_bss_330-0x330+0x540
	lw      $a0, 0x0018($sp)
	la.l    $t6, _camera_bss_330-0x330+0x540
	addiu   $a1, $t6, 0x0100
	addiu   $a2, $t6, 0x00DC
	addiu   $a3, $t6, 0x0118
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	lui     $t7, %hi(camera_prevstage)
	lw      $t7, %lo(camera_prevstage)($t7)
	li      $at, 0x001C
	beq     $t7, $at, 25$
	nop
	li      $at, 0x0007
	beq     $t7, $at, 25$
	nop
	li      $at, 0x000F
	beq     $t7, $at, 25$
	nop
	li      $at, 0x001F
	bne     $t7, $at, 59$
	nop
25$:
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lw      $t9, 0x0018($sp)
	lui     $at, %hi(camera_80337418)
	lwc1    $f4, 0x0004($t8)
	lwc1    $f6, 0x0010($t9)
	lwc1    $f10, %lo(camera_80337418)($at)
	sub.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f16, $f6
	swc1    $f18, 0x0004($t9)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	lw      $t1, 0x0018($sp)
	lui     $at, %hi(camera_8033741C)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f8, 0x0014($t1)
	lwc1    $f16, %lo(camera_8033741C)($at)
	sub.s   $f10, $f4, $f8
	mul.s   $f6, $f10, $f16
	add.s   $f18, $f6, $f8
	swc1    $f18, 0x0008($t1)
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	lw      $t3, 0x0018($sp)
	lui     $at, %hi(camera_80337420)
	lwc1    $f4, 0x000C($t2)
	lwc1    $f10, 0x0018($t3)
	lwc1    $f6, %lo(camera_80337420)($at)
	sub.s   $f16, $f4, $f10
	mul.s   $f8, $f16, $f6
	add.s   $f18, $f8, $f10
	b       70$
	swc1    $f18, 0x000C($t3)
59$:
	lui     $t4, %hi(mario_cam)
	lw      $t4, %lo(mario_cam)($t4)
	lw      $t5, 0x0018($sp)
	lui     $at, %hi(camera_80337424)
	lwc1    $f4, 0x0008($t4)
	lwc1    $f16, 0x0014($t5)
	lwc1    $f8, %lo(camera_80337424)($at)
	sub.s   $f6, $f4, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($t5)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029665C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $a0, 0x00DC
	jal     camera_802893F4
	li      $a1, 0xC1C00000
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029669C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x009D
	lbu     $t7, 0x0030($t6)
	bne     $t7, $at, 12$
	nop
	li      $a0, 0x0800
	li      $a1, 0x0040
	jal     camera_8028AEF0
	li      $a2, 0x0800
12$:
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802966E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8027F8B8
	li      $a0, 0x0001
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80296710
camera_80296710:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80296318
	la.l    $a0, camera_80296318
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802963B8
	la.l    $a0, camera_802963B8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029665C
	la.l    $a0, camera_8029665C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0012
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029652C
	la.l    $a0, camera_8029652C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029669C
	la.l    $a0, camera_8029669C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x007D
	jal     camera_8029A2F8
	li      $a3, 0x007D
	la.u    $a0, camera_802966E4
	la.l    $a0, camera_802966E4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0029
	jal     camera_8029A2F8
	li      $a3, 0x0029
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_802967C4
camera_802967C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sb      $0, 0x0030($t6)
	lw      $t7, 0x0018($sp)
	li      $at, 0x0004
	lbu     $t8, 0x0001($t7)
	bne     $t8, $at, 14$
	nop
	lw      $t0, 0x0018($sp)
	li      $t9, 0x0004
	b       17$
	sb      $t9, 0x0000($t0)
14$:
	lw      $t2, 0x0018($sp)
	li      $t1, 0x0010
	sb      $t1, 0x0000($t2)
17$:
	lui     $t3, %hi(camera_8033C84A)
	lh      $t3, %lo(camera_8033C84A)($t3)
	lui     $at, %hi(camera_8033C84A)
	ori     $t4, $t3, 0x4000
	sh      $t4, %lo(camera_8033C84A)($at)
	lui     $t5, %hi(camera_8033C84A)
	lh      $t5, %lo(camera_8033C84A)($t5)
	lui     $at, %hi(camera_8033C84A)
	ori     $t6, $t5, 0x0001
	sh      $t6, %lo(camera_8033C84A)($at)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x003C
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029685C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a3, 0x448B6000
	li.l    $a3, 0x448B6000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x43090000
	jal     vecf_set
	li      $a2, 0x43760000
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_802968A0
camera_802968A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80296318
	la.l    $a0, camera_80296318
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029685C
	la.l    $a0, camera_8029685C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802963B8
	la.l    $a0, camera_802963B8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029665C
	la.l    $a0, camera_8029665C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0012
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029652C
	la.l    $a0, camera_8029652C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802966E4
	la.l    $a0, camera_802966E4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0029
	jal     camera_8029A2F8
	li      $a3, 0x0029
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029695C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0100
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0118
	jal     vecs_cpy
	addiu   $a1, $a1, 0x0010
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a3, 0x4435C000
	li.l    $a3, 0x4435C000
	addiu   $a0, $a0, 0x00DC
	li      $a1, 0xC2280000
	jal     vecf_set
	li      $a2, 0x43AF0000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a3, 0x44946000
	li.l    $a3, 0x44946000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x42D60000
	jal     vecf_set
	li      $a2, 0x43620000
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_802969F8
camera_802969F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_8029695C
	la.l    $a0, camera_8029695C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802963B8
	la.l    $a0, camera_802963B8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029652C
	la.l    $a0, camera_8029652C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296A64:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(camera_prevstage)
	lw      $s0, %lo(camera_prevstage)($s0)
	li      $at, 0x0007
	beq     $s0, $at, 14$
	nop
	li      $at, 0x001C
	beq     $s0, $at, 24$
	nop
	b       34$
	nop
14$:
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x43B88000
	li.l    $a2, 0x43B88000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x433B0000
	jal     vecf_set
	li      $a3, 0xC3450000
	b       44$
	nop
24$:
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x43B88000
	li.l    $a2, 0x43B88000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x433B0000
	jal     vecf_set
	li      $a3, 0xC3450000
	b       44$
	nop
34$:
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a3, 0x44A36000
	li.l    $a3, 0x44A36000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x42D60000
	jal     vecf_set
	li      $a2, 0x43760000
	b       44$
	nop
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_80296B30
camera_80296B30:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_8029695C
	la.l    $a0, camera_8029695C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80296A64
	la.l    $a0, camera_80296A64
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802963B8
	la.l    $a0, camera_802963B8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029652C
	la.l    $a0, camera_8029652C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(camera_8033C84A)($at)
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296BC8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	jal     camera_80290864
	lw      $a0, 0x0028($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sh      $v0, 0x0024($sp)
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	li      $t6, 0x1200
	sh      $t6, 0x008A($t7)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	lh      $t9, 0x008A($t8)
	lh      $t1, 0x0012($t0)
	lh      $t3, 0x0024($sp)
	addu    $t2, $t9, $t1
	subu    $t4, $t3, $t2
	andi    $t5, $t4, 0xFF00
	sh      $t5, 0x0042($t8)
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80296C4C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lh      $t7, 0x0012($t6)
	addiu   $t8, $t7, 0x1000
	sh      $t8, 0x0026($sp)
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lh      $t0, 0x0042($t9)
	sw      $t0, 0x0020($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0030($sp)
	addiu   $t1, $sp, 0x0028
	sw      $t1, 0x0010($sp)
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x002A
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	la.u    $t2, _camera_bss_330-0x330+0x540
	la.l    $t2, _camera_bss_330-0x330+0x540
	lh      $t3, 0x008A($t2)
	li      $at, 0x1000
	beq     $t3, $at, 33$
	nop
	la.u    $t4, _camera_bss_330-0x330+0x540
	la.l    $t4, _camera_bss_330-0x330+0x540
	lh      $t5, 0x008A($t4)
	addiu   $t6, $t5, 0x0100
	sh      $t6, 0x008A($t4)
33$:
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	lh      $t8, 0x0042($t7)
	beqz    $t8, 43$
	nop
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lh      $t0, 0x0042($t9)
	addiu   $t1, $t0, 0x0100
	sh      $t1, 0x0042($t9)
43$:
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	la.u    $t5, _camera_bss_330-0x330+0x540
	la.l    $t5, _camera_bss_330-0x330+0x540
	lh      $t6, 0x008A($t5)
	lh      $t3, 0x0012($t2)
	lh      $t7, 0x0042($t5)
	addu    $t4, $t3, $t6
	addu    $t8, $t7, $t4
	sh      $t8, 0x0028($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0030($sp)
	lh      $t0, 0x0028($sp)
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x002A($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80296D60:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0020($sp)
	li      $a2, 0x0000
	li      $a3, -0x0020
	sw      $0, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       14$
	nop
14$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80296DA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x43430000
	addiu   $a0, $sp, 0x0026
	move    $a1, $0
	jal     camera_802894B4
	li      $a2, 0x0010
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t7, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lw      $a0, 0x0028($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	lw      $a1, 0x0004($t8)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0004
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	li      $at, 0x42DC0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t9)
	lw      $a0, 0x0028($sp)
	li.u    $a2, 0x3DCCCCCD
	add.s   $f8, $f4, $f6
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $a0, 0x0008
	mfc1    $a1, $f8
	jal     camera_802893F4
	nop
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	lw      $a0, 0x0028($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	lw      $a1, 0x000C($t0)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x000C
	b       63$
	nop
63$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80296EB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0018($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $t6, 0x0018($sp)
	li      $at, 0x42DC0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t6)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x001E
	li      $a1, 0x0800
	jal     camera_8028976C
	li      $a2, 0x0020
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	lh      $a1, 0x001C($t7)
	lh      $a2, 0x001E($t7)
	jal     camera_802909D0
	lw      $a0, 0x0018($sp)
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296F38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	lw      $a0, 0x0144($t6)
	jal     msg_open_prompt
	addiu   $a0, $a0, 0x000A
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296F70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802908E8
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x001E
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80296FA8
camera_80296FA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	lui     $at, %hi(camera_8033C84A)
	ori     $t9, $t8, 0x4000
	sh      $t9, %lo(camera_8033C84A)($at)
	la.u    $a0, camera_80296BC8
	la.l    $a0, camera_80296BC8
	lw      $a1, 0x0028($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80296DA8
	la.l    $a0, camera_80296DA8
	lw      $a1, 0x0028($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80296EB4
	la.l    $a0, camera_80296EB4
	lw      $a1, 0x0028($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80296C4C
	la.l    $a0, camera_80296C4C
	lw      $a1, 0x0028($sp)
	li      $a2, 0x001E
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80296D60
	la.l    $a0, camera_80296D60
	lw      $a1, 0x0028($sp)
	li      $a2, 0x000A
	jal     camera_8029A2F8
	li      $a3, 0x0046
	la.u    $a0, camera_80296F38
	la.l    $a0, camera_80296F38
	lw      $a1, 0x0028($sp)
	li      $a2, 0x000A
	jal     camera_8029A2F8
	li      $a3, 0x000A
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t0, $sp, 0x0020
	sw      $t0, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lui     $t1, %hi(msg_answer)
	lw      $t1, %lo(msg_answer)($t1)
	beqz    $t1, 68$
	nop
	lui     $t2, %hi(msg_answer)
	lw      $t2, %lo(msg_answer)($t2)
	la.u    $t3, _camera_bss_330-0x330+0x540
	la.l    $t3, _camera_bss_330-0x330+0x540
	sh      $t2, 0x00AC($t3)
68$:
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 98$
	nop
	la.u    $t4, _camera_bss_330-0x330+0x540
	la.l    $t4, _camera_bss_330-0x330+0x540
	lh      $t5, 0x00AC($t4)
	beqz    $t5, 98$
	nop
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	lh      $t7, 0x00AC($t6)
	lui     $at, %hi(camera_8032DF5C)
	sb      $t7, %lo(camera_8032DF5C)($at)
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	lh      $t9, 0x00AC($t8)
	li      $at, 0x0001
	bne     $t9, $at, 93$
	nop
	lui     $t0, %hi(camera_8032DF24)
	lw      $t0, %lo(camera_8032DF24)($t0)
	jal     camera_80290168
	lw      $a0, 0x0144($t0)
93$:
	jal     camera_80290104
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     camera_8028603C
	li      $a1, 0x001E
98$:
	b       100$
	nop
100$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80297148:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $a1, 0x0030($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0030($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0028
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	addiu   $a0, $sp, 0x0024
	li      $a1, 0xC34E0000
	li      $a2, 0x42D80000
	jal     vecf_set
	li      $a3, 0x436A0000
	addiu   $a0, $sp, 0x0018
	li      $a1, 0x42400000
	li      $a2, 0x42D00000
	jal     vecf_set
	li      $a3, 0xC3410000
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x004C
	addiu   $a2, $sp, 0x0024
	addiu   $a1, $t6, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t6, 0x0010
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x0018
	addiu   $a1, $t7, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t7, 0x0010
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8029720C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(camera_80337428)
	lwc1    $f4, %lo(camera_80337428)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x004C
	addu    $a3, $a2, $0
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	lui     $at, %hi(camera_8033742C)
	lwc1    $f6, %lo(camera_8033742C)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0070
	addu    $a3, $a2, $0
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       29$
	nop
29$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80297290:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x430C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	add.s   $f8, $f4, $f6
	li.u    $a2, 0x3D8F5C29
	li.l    $a2, 0x3D8F5C29
	addiu   $a0, $a0, 0x0074
	mfc1    $a1, $f8
	jal     camera_802893F4
	nop
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802972EC:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

camera_80297300:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(camera_80337430)
	lwc1    $f4, %lo(camera_80337430)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0004
	addu    $a3, $a2, $0
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	lui     $at, %hi(camera_80337434)
	lwc1    $f6, %lo(camera_80337434)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0028
	addu    $a3, $a2, $0
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       29$
	nop
29$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80297384:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029ABB0
	li      $a0, 0x0001
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_802973B0
camera_802973B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80297148
	la.l    $a0, camera_80297148
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029720C
	la.l    $a0, camera_8029720C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x007B
	la.u    $a0, camera_80297300
	la.l    $a0, camera_80297300
	lw      $a1, 0x0018($sp)
	li      $a2, 0x007C
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80297384
	la.l    $a0, camera_80297384
	lw      $a1, 0x0018($sp)
	li      $a2, 0x004F
	jal     camera_8029A2F8
	li      $a3, 0x004F
	la.u    $a0, camera_80297290
	la.l    $a0, camera_80297290
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x006E
	la.u    $a0, camera_802972EC
	la.l    $a0, camera_802972EC
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0070
	jal     camera_8029A2F8
	li      $a3, 0x0070
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297464:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lw      $a0, 0x0030($sp)
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	lw      $a1, 0x0034($sp)
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	sw      $v0, 0x0020($sp)
	lw      $a0, 0x0030($sp)
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	lw      $a1, 0x0038($sp)
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0030($sp)
	li      $a2, -0x8000
	addiu   $t7, $t6, 0x0004
	move    $a0, $t7
	jal     camera_8028AD4C
	move    $a1, $t7
	lw      $t8, 0x0030($sp)
	li      $a2, -0x8000
	addiu   $t9, $t8, 0x0010
	move    $a0, $t9
	jal     camera_8028AD4C
	move    $a1, $t9
	li.u    $a3, 0x4591C000
	li.l    $a3, 0x4591C000
	addiu   $a0, $sp, 0x0024
	li      $a1, 0xC4A60000
	jal     vecf_set
	li      $a2, 0x43820000
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x0010
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	addu    $t2, $t0, $t1
	sw      $t2, 0x0020($sp)
	b       59$
	lw      $v0, 0x001C($sp)
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80297560:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     msg_open
	li      $a0, 0x0014
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029758C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a0, 0x2428FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x2428FF81
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802975C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032ED50
	la.u    $a2, campath_8032EE08
	la.l    $a2, campath_8032EE08
	la.l    $a1, campath_8032ED50
	jal     camera_80297464
	lw      $a0, 0x0018($sp)
	beqz    $v0, 20$
	nop
	lui     $t6, %hi(camera_8033C848)
	lh      $t6, %lo(camera_8033C848)($t6)
	li      $at, -0x2001
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t7, %lo(camera_8033C848)($at)
	li      $t8, 0x7FFF
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t8, %lo(_camera_bss_330-0x330+0x53C)($at)
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8029762C
camera_8029762C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 30$
	nop
	lw      $a1, 0x0018($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0024
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0018($sp)
	la.u    $a0, camdata
	la.l    $a0, camdata
	addiu   $a0, $a0, 0x0018
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x4001
	sh      $t7, %lo(camera_8033C84A)($at)
	li      $t8, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t8, %lo(_camera_bss_330-0x330+0x53C)($at)
	lw      $t9, 0x0018($sp)
	sb      $0, 0x0030($t9)
30$:
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802976BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032EEC0
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032EEC0
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032EF30
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032EF30
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297728:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	sh      $0, 0x001E($t6)
	b       6$
	nop
6$:
	jr      $ra
	nop

camera_80297748:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x41000000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	jal     camera_8029AB94
	li      $a0, 0x000C
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297784:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_camera_bss_330-0x330+0x530)
	sh      $0, %lo(_camera_bss_330-0x330+0x530)($at)
	lui     $at, %hi(camera_80337438)
	lwc1    $f4, %lo(camera_80337438)($at)
	lui     $at, %hi(_camera_bss_330-0x330+0x534)
	swc1    $f4, %lo(_camera_bss_330-0x330+0x534)($at)
	jal     camera_80288888
	li      $a0, 0x0004
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802977C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80288888
	move    $a0, $0
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802977F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     msg_open
	li      $a0, 0x0021
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297820:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028B920
	nop
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8029784C
camera_8029784C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80297820
	la.l    $a0, camera_80297820
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0332
	jal     camera_8029A2F8
	li      $a3, 0x0332
	li      $a0, 0x0006
	jal     camera_8029A37C
	li      $a1, 0x0001
	la.u    $a0, camera_802904E4
	la.l    $a0, camera_802904E4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802975C4
	la.l    $a0, camera_802975C4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80297728
	la.l    $a0, camera_80297728
	lw      $a1, 0x0018($sp)
	li      $a2, 0x02CD
	jal     camera_8029A2F8
	li      $a3, 0x02CD
	lw      $t6, 0x0018($sp)
	li      $a2, 0x3B00
	li      $a3, -0x3B00
	addiu   $a0, $t6, 0x0010
	jal     camera_80289214
	addiu   $a1, $t6, 0x0004
	li      $at, 0x43C80000
	mtc1    $at, $f4
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x002C($t7)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80297908
camera_80297908:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	sh      $0, 0x001E($t6)
	la.u    $a0, camera_80297784
	la.l    $a0, camera_80297784
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802976BC
	la.l    $a0, camera_802976BC
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802977C8
	la.l    $a0, camera_802977C8
	lw      $a1, 0x0020($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x0046
	la.u    $a0, camera_802977F4
	la.l    $a0, camera_802977F4
	lw      $a1, 0x0020($sp)
	li      $a2, 0x00FA
	jal     camera_8029A2F8
	li      $a3, 0x00FA
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	lui     $at, %hi(_camera_bss_48-0x48+0xCC)
	lwc1    $f6, %lo(_camera_bss_48-0x48+0xCC)($at)
	lwc1    $f4, 0x0008($t7)
	lui     $at, %hi(camera_8033743C)
	lwc1    $f10, %lo(camera_8033743C)($at)
	sub.s   $f8, $f4, $f6
	li      $at, 0x42A00000
	mtc1    $at, $f18
	la.u    $a0, _camera_bss_330-0x330+0x540
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f6
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3ECCCCCD
	li.l    $a2, 0x3ECCCCCD
	addiu   $a0, $a0, 0x002C
	add.s   $f8, $f16, $f4
	mfc1    $a1, $f8
	jal     camera_802893F4
	nop
	lw      $t8, 0x0020($sp)
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lwc1    $f18, 0x002C($t9)
	lwc1    $f10, 0x0008($t8)
	c.lt.s  $f10, $f18
	nop
	bc1f    65$
	nop
	la.u    $t0, _camera_bss_330-0x330+0x540
	la.l    $t0, _camera_bss_330-0x330+0x540
	lwc1    $f6, 0x002C($t0)
	lw      $t1, 0x0020($sp)
	swc1    $f6, 0x0008($t1)
65$:
	lui     $t2, %hi(camera_8033C84A)
	lh      $t2, %lo(camera_8033C84A)($t2)
	lui     $at, %hi(camera_8033C84A)
	ori     $t3, $t2, 0x4000
	sh      $t3, %lo(camera_8033C84A)($at)
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_80297A38
camera_80297A38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x0002
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80297A64
camera_80297A64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0005
	jal     camera_8029A37C
	move    $a1, $0
	la.u    $a0, camera_80297748
	la.l    $a0, camera_80297748
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802904A8
	la.l    $a0, camera_802904A8
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0041
	jal     camera_8029A2F8
	li      $a3, 0x0041
	la.u    $a0, camera_802975C4
	la.l    $a0, camera_802975C4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80297560
	la.l    $a0, camera_80297560
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0041
	jal     camera_8029A2F8
	li      $a3, 0x0041
	la.u    $a0, camera_8029758C
	la.l    $a0, camera_8029758C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0053
	jal     camera_8029A2F8
	li      $a3, 0x0053
	lui     $t6, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53C)($t6)
	slti    $at, $t6, 0x0079
	bnez    $at, 49$
	nop
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 49$
	nop
	li      $t7, 0x7FFF
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t7, %lo(_camera_bss_330-0x330+0x53C)($at)
49$:
	lw      $t8, 0x0018($sp)
	li      $a2, 0x3B00
	li      $a3, -0x3B00
	addiu   $a0, $t8, 0x0010
	jal     camera_80289214
	addiu   $a1, $t8, 0x0004
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297B58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802900E0
	nop
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80297B84
camera_80297B84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80297B58
	la.l    $a0, camera_80297B58
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F444
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032F444
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F48C
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, campath_8032F48C
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	li      $a0, 0x0006
	jal     camera_8029A37C
	li      $a1, 0x0078
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297C14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802900E0
	nop
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80297C40
camera_80297C40:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	la.u    $a0, camera_80297C14
	la.l    $a0, camera_80297C14
	lw      $a1, 0x0038($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	slti    $at, $s0, 0x0163
	bnez    $at, 32$
	nop
	li      $at, 0x0171
	beq     $s0, $at, 144$
	nop
	li      $at, 0x0172
	beq     $s0, $at, 216$
	nop
	li      $at, 0x0181
	beq     $s0, $at, 80$
	nop
	li      $at, 0x01C1
	beq     $s0, $at, 208$
	nop
	li      $at, 0x0241
	beq     $s0, $at, 168$
	nop
	b       L80298024
	nop
32$:
	slti    $at, $s0, 0x0053
	bnez    $at, 61$
	nop
	slti    $at, $s0, 0x0142
	bnez    $at, 43$
	nop
	li      $at, 0x0162
	beq     $s0, $at, 128$
	nop
	b       L80298024
	nop
43$:
	slti    $at, $s0, 0x00F2
	bnez    $at, 51$
	nop
	li      $at, 0x0141
	beq     $s0, $at, 200$
	nop
	b       L80298024
	nop
51$:
	addiu   $t6, $s0, -0x0071
	sltiu   $at, $t6, 0x0081
	beqz    $at, L80298024
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(camera_80337440)
	addu    $at, $at, $t6
	lw      $t6, %lo(camera_80337440)($at)
	jr      $t6
	nop
61$:
	li      $at, 0x0041
	beq     $s0, $at, 104$
	nop
	li      $at, 0x0051
	beq     $s0, $at, 224$
	nop
	li      $at, 0x0052
	beq     $s0, $at, 96$
	nop
	b       L80298024
	nop
.globl L80297D60
L80297D60:
	la.u    $t7, campath_battlefield_eye
	la.l    $t7, campath_battlefield_eye
	sw      $t7, 0x0030($sp)
	la.u    $t8, campath_battlefield_look
	la.l    $t8, campath_battlefield_look
	sw      $t8, 0x0034($sp)
	b       255$
	nop
80$:
	la.u    $t9, campath_wf1_eye
	la.l    $t9, campath_wf1_eye
	sw      $t9, 0x0030($sp)
	la.u    $t0, campath_wf1_look
	la.l    $t0, campath_wf1_look
	sw      $t0, 0x0034($sp)
	b       255$
	nop
.globl L80297DA0
L80297DA0:
	la.u    $t1, campath_jrb1_eye
	la.l    $t1, campath_jrb1_eye
	sw      $t1, 0x0030($sp)
	la.u    $t2, campath_jrb1_look
	la.l    $t2, campath_jrb1_look
	sw      $t2, 0x0034($sp)
	b       255$
	nop
96$:
	la.u    $t3, campath_ccm2_eye
	la.l    $t3, campath_ccm2_eye
	sw      $t3, 0x0030($sp)
	la.u    $t4, campath_ccm2_look
	la.l    $t4, campath_ccm2_look
	sw      $t4, 0x0034($sp)
	b       255$
	nop
104$:
	la.u    $t5, campath_bbh1_eye
	la.l    $t5, campath_bbh1_eye
	sw      $t5, 0x0030($sp)
	la.u    $t6, campath_bbh1_look
	la.l    $t6, campath_bbh1_look
	sw      $t6, 0x0034($sp)
	b       255$
	nop
.globl L80297E00
L80297E00:
	la.u    $t7, campath_hmc1_eye
	la.l    $t7, campath_hmc1_eye
	sw      $t7, 0x0030($sp)
	la.u    $t8, campath_hmc1_look
	la.l    $t8, campath_hmc1_look
	sw      $t8, 0x0034($sp)
	b       255$
	nop
.globl L80297E20
L80297E20:
	la.u    $t9, campath_thi3_eye
	la.l    $t9, campath_thi3_eye
	sw      $t9, 0x0030($sp)
	la.u    $t0, campath_thi3_look
	la.l    $t0, campath_thi3_look
	sw      $t0, 0x0034($sp)
	b       255$
	nop
128$:
	la.u    $t1, campath_lll2_eye
	la.l    $t1, campath_lll2_eye
	sw      $t1, 0x0030($sp)
	la.u    $t2, campath_lll2_look
	la.l    $t2, campath_lll2_look
	sw      $t2, 0x0034($sp)
	b       255$
	nop
.globl L80297E60
L80297E60:
	la.u    $t3, campath_ssl1_eye
	la.l    $t3, campath_ssl1_eye
	sw      $t3, 0x0030($sp)
	la.u    $t4, campath_ssl1_look
	la.l    $t4, campath_ssl1_look
	sw      $t4, 0x0034($sp)
	b       255$
	nop
144$:
	la.u    $t5, campath_ddd1_eye
	la.l    $t5, campath_ddd1_eye
	sw      $t5, 0x0030($sp)
	la.u    $t6, campath_ddd1_look
	la.l    $t6, campath_ddd1_look
	sw      $t6, 0x0034($sp)
	b       255$
	nop
.globl L80297EA0
L80297EA0:
	la.u    $t7, campath_sl1_eye
	la.l    $t7, campath_sl1_eye
	sw      $t7, 0x0030($sp)
	la.u    $t8, campath_sl1_look
	la.l    $t8, campath_sl1_look
	sw      $t8, 0x0034($sp)
	b       255$
	nop
.globl L80297EC0
L80297EC0:
	la.u    $t9, campath_wdw1_eye
	la.l    $t9, campath_wdw1_eye
	sw      $t9, 0x0030($sp)
	la.u    $t0, campath_wdw1_look
	la.l    $t0, campath_wdw1_look
	sw      $t0, 0x0034($sp)
	b       255$
	nop
168$:
	la.u    $t1, campath_ttm1_eye
	la.l    $t1, campath_ttm1_eye
	sw      $t1, 0x0030($sp)
	la.u    $t2, campath_ttm1_look
	la.l    $t2, campath_ttm1_look
	sw      $t2, 0x0034($sp)
	b       255$
	nop
.globl L80297F00
L80297F00:
	la.u    $t3, campath_thi1_eye
	la.l    $t3, campath_thi1_eye
	sw      $t3, 0x0030($sp)
	la.u    $t4, campath_thi1_look
	la.l    $t4, campath_thi1_look
	sw      $t4, 0x0034($sp)
	b       255$
	nop
.globl L80297F20
L80297F20:
	la.u    $t5, campath_ttc1_eye
	la.l    $t5, campath_ttc1_eye
	sw      $t5, 0x0030($sp)
	la.u    $t6, campath_ttc1_look
	la.l    $t6, campath_ttc1_look
	sw      $t6, 0x0034($sp)
	b       255$
	nop
.globl L80297F40
L80297F40:
	la.u    $t7, campath_rr1_eye
	la.l    $t7, campath_rr1_eye
	sw      $t7, 0x0030($sp)
	la.u    $t8, campath_rr1_look
	la.l    $t8, campath_rr1_look
	sw      $t8, 0x0034($sp)
	b       255$
	nop
200$:
	la.u    $t9, campath_sa1_eye
	la.l    $t9, campath_sa1_eye
	sw      $t9, 0x0030($sp)
	la.u    $t0, campath_sa1_look
	la.l    $t0, campath_sa1_look
	sw      $t0, 0x0034($sp)
	b       255$
	nop
208$:
	la.u    $t1, campath_cotmc1_eye
	la.l    $t1, campath_cotmc1_eye
	sw      $t1, 0x0030($sp)
	la.u    $t2, campath_cotmc1_look
	la.l    $t2, campath_cotmc1_look
	sw      $t2, 0x0034($sp)
	b       255$
	nop
216$:
	la.u    $t3, campath_ddd2_eye
	la.l    $t3, campath_ddd2_eye
	sw      $t3, 0x0030($sp)
	la.u    $t4, campath_ddd2_look
	la.l    $t4, campath_ddd2_look
	sw      $t4, 0x0034($sp)
	b       255$
	nop
224$:
	lui     $a0, %hi(file_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(file_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_get_star
	addiu   $a0, $a0, -0x0001
	andi    $t5, $v0, 0x0010
	beqz    $t5, 241$
	nop
	la.u    $t6, campath_ccm1_eye
	la.l    $t6, campath_ccm1_eye
	sw      $t6, 0x0030($sp)
	la.u    $t7, campath_ccm1_look
	la.l    $t7, campath_ccm1_look
	b       247$
	sw      $t7, 0x0034($sp)
241$:
	la.u    $t8, campath_ccm1_eye
	la.l    $t8, campath_ccm1_eye
	sw      $t8, 0x0030($sp)
	la.u    $t9, campath_ccm1_look
	la.l    $t9, campath_ccm1_look
	sw      $t9, 0x0034($sp)
247$:
	b       255$
	nop
.globl L80298024
L80298024:
	la.u    $t0, campath_ccm1_eye
	la.l    $t0, campath_ccm1_eye
	sw      $t0, 0x0030($sp)
	la.u    $t1, campath_ccm1_look
	la.l    $t1, campath_ccm1_look
	sw      $t1, 0x0034($sp)
255$:
	la.u    $a0, _camera_bss_330-0x330+0x330
	la.l    $a0, _camera_bss_330-0x330+0x330
	jal     camera_802901FC
	lw      $a1, 0x0030($sp)
	la.u    $a0, _camera_bss_330-0x330+0x430
	la.l    $a0, _camera_bss_330-0x330+0x430
	jal     camera_802901FC
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	la.u    $a1, _camera_bss_330-0x330+0x330
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, _camera_bss_330-0x330+0x330
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0038($sp)
	la.u    $a1, _camera_bss_330-0x330+0x430
	la.u    $a2, _camera_bss_330-0x330+0x530
	la.u    $a3, _camera_bss_330-0x330+0x534
	la.l    $a3, _camera_bss_330-0x330+0x534
	la.l    $a2, _camera_bss_330-0x330+0x530
	la.l    $a1, _camera_bss_330-0x330+0x430
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	li      $t2, 0x4000
	sw      $t2, 0x0010($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x4000
	b       290$
	nop
290$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_802980DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0020
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    32$
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(mario_cam)
	lw      $t7, %lo(mario_cam)($t7)
	li      $at, 0x8800
	lh      $t8, 0x0012($t7)
	addu    $t9, $t8, $at
	sh      $t9, 0x0020($sp)
	li      $t0, 0x0800
	sh      $t0, 0x0022($sp)
32$:
	lui     $a0, %hi(mario_cam)
	lw      $a0, %lo(mario_cam)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t1, 0x0010($sp)
	b       44$
	nop
44$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8029819C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0028
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x001C
	jal     vecs_cpy
	addiu   $a1, $a1, 0x0010
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x43A28000
	li.l    $a2, 0x43A28000
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x42A00000
	jal     vecf_set
	li      $a3, 0x43480000
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80298218:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0008
	li      $a1, 0x42960000
	jal     camera_802899CC
	li      $a2, 0x41200000
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80298254:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0008
	li      $a1, 0x42FA0000
	jal     camera_802899CC
	li      $a2, 0x41200000
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80298290:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	lw      $a1, 0x0040($sp)
	addiu   $a0, $sp, 0x0034
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	lwc1    $f4, 0x0004($t6)
	swc1    $f4, 0x0028($t7)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lwc1    $f6, 0x000C($t8)
	swc1    $f6, 0x0030($t9)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $a0, 0x0004
	jal     camera_802893F4
	li      $a1, 0x0000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x000C
	li      $a1, 0x42FA0000
	jal     camera_802899CC
	li      $a2, 0x42480000
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li      $t0, 0x0010
	sw      $t0, 0x0010($sp)
	addiu   $a0, $a0, 0x001C
	li      $a2, 0x0010
	li      $a3, 0x0010
	jal     camera_802896F8
	addiu   $a1, $a1, 0x0010
	la.u    $t1, _camera_bss_330-0x330+0x540
	la.l    $t1, _camera_bss_330-0x330+0x540
	addiu   $a1, $t1, 0x0028
	addiu   $a2, $t1, 0x0004
	addiu   $a3, $t1, 0x001C
	jal     camera_8028CBF0
	addiu   $a0, $sp, 0x0034
	lui     $at, %hi(camera_80337644)
	lwc1    $f8, %lo(camera_80337644)($at)
	lw      $a0, 0x0040($sp)
	li.u    $a2, 0x3E19999A
	li.u    $a3, 0x3D4CCCCD
	li.l    $a3, 0x3D4CCCCD
	li.l    $a2, 0x3E19999A
	addiu   $a1, $sp, 0x0034
	swc1    $f8, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	b       69$
	nop
69$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl camera_802983B4
camera_802983B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     camera_8029051C
	lw      $a0, 0x0020($sp)
	la.u    $a0, camera_802980DC
	la.l    $a0, camera_802980DC
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0008
	la.u    $a0, camera_8029819C
	la.l    $a0, camera_8029819C
	lw      $a1, 0x0020($sp)
	li      $a2, 0x0008
	jal     camera_8029A2F8
	li      $a3, 0x0008
	la.u    $a0, camera_80298218
	la.l    $a0, camera_80298218
	lw      $a1, 0x0020($sp)
	li      $a2, 0x0008
	jal     camera_8029A2F8
	li      $a3, 0x001C
	la.u    $a0, camera_80298254
	la.l    $a0, camera_80298254
	lw      $a1, 0x0020($sp)
	li      $a2, 0x001D
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80298290
	la.l    $a0, camera_80298290
	lw      $a1, 0x0020($sp)
	li      $a2, 0x0008
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_80298458
camera_80298458:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80290B54
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sb      $0, 0x0030($t6)
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	lui     $at, %hi(camera_8033C84A)
	ori     $t8, $t7, 0x0001
	sh      $t8, %lo(camera_8033C84A)($at)
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802984A0:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl camera_802984B4
camera_802984B4:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	la.u    $a0, camera_802984A0
	la.l    $a0, camera_802984A0
	lw      $a1, 0x0058($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	jal     camera_8029AB94
	li      $a0, 0x0006
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	lui     $t8, %hi(wavedatap)
	lw      $t8, %lo(wavedatap)($t8)
	beqz    $t8, 182$
	nop
	addiu   $t9, $sp, 0x0024
	sh      $0, 0x0000($t9)
	lui     $t0, %hi(wavedatap)
	lw      $t0, %lo(wavedatap)($t0)
	li      $at, 0x43B40000
	mtc1    $at, $f6
	lwc1    $f4, 0x000C($t0)
	li      $at, 0x47800000
	mtc1    $at, $f10
	div.s   $f8, $f4, $f6
	addiu   $t3, $sp, 0x0024
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t2, $f18
	nop
	sh      $t2, 0x0002($t3)
	addiu   $t4, $sp, 0x0024
	sh      $0, 0x0004($t4)
	lui     $t5, %hi(wavedatap)
	lw      $t5, %lo(wavedatap)($t5)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0074($t5)
	addiu   $t6, $sp, 0x002C
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t6)
	addiu   $t7, $sp, 0x002C
	lwc1    $f10, 0x0000($t7)
	swc1    $f10, 0x0004($t7)
	mtc1    $0, $f16
	addiu   $t8, $sp, 0x002C
	swc1    $f16, 0x0008($t8)
	lui     $t9, %hi(wavedatap)
	lw      $t9, %lo(wavedatap)($t9)
	addiu   $t0, $sp, 0x0044
	lwc1    $f18, 0x0010($t9)
	swc1    $f18, 0x0000($t0)
	lui     $t1, %hi(wavedatap)
	lw      $t1, %lo(wavedatap)($t1)
	addiu   $t2, $sp, 0x0044
	lwc1    $f4, 0x0014($t1)
	swc1    $f4, 0x0004($t2)
	lui     $t3, %hi(wavedatap)
	lw      $t3, %lo(wavedatap)($t3)
	addiu   $t4, $sp, 0x0044
	lwc1    $f6, 0x0018($t3)
	swc1    $f6, 0x0008($t4)
	addiu   $a0, $sp, 0x0038
	addiu   $a1, $sp, 0x0044
	addiu   $a2, $sp, 0x002C
	jal     camera_8028CBF0
	addiu   $a3, $sp, 0x0024
	lui     $at, %hi(camera_80337648)
	lwc1    $f8, %lo(camera_80337648)($at)
	lw      $a0, 0x0058($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0038
	swc1    $f8, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lui     $t5, %hi(wavedatap)
	lw      $t5, %lo(wavedatap)($t5)
	li      $at, 0x447A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0074($t5)
	li      $at, 0x40000000
	mtc1    $at, $f4
	mul.s   $f18, $f10, $f16
	lui     $at, %hi(camera_8033764C)
	lwc1    $f8, %lo(camera_8033764C)($at)
	addiu   $t6, $sp, 0x002C
	div.s   $f6, $f18, $f4
	div.s   $f10, $f6, $f8
	neg.s   $f16, $f10
	swc1    $f16, 0x0008($t6)
	addiu   $a0, $sp, 0x0038
	addiu   $a1, $sp, 0x0044
	addiu   $a2, $sp, 0x002C
	jal     camera_8028CBF0
	addiu   $a3, $sp, 0x0024
	addiu   $t7, $sp, 0x0038
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x0004($t7)
	lwc1    $f12, 0x0000($t7)
	lw      $a2, 0x0008($t7)
	addiu   $a3, $sp, 0x0050
	jal     bg_check_ground
	add.s   $f14, $f18, $f4
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	nop
	add.s   $f8, $f0, $f6
	swc1    $f8, 0x0020($sp)
	addiu   $t8, $sp, 0x0038
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0020($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    126$
	nop
	lwc1    $f18, 0x0020($sp)
	addiu   $t9, $sp, 0x0038
	swc1    $f18, 0x0004($t9)
126$:
	lw      $t0, 0x0058($sp)
	li      $at, 0x0086
	lbu     $t1, 0x0030($t0)
	bne     $t1, $at, 144$
	nop
	lui     $at, %hi(camera_80337650)
	lwc1    $f4, %lo(camera_80337650)($at)
	lw      $a0, 0x0058($sp)
	li.u    $a2, 0x3E4CCCCD
	li.u    $a3, 0x3DCCCCCD
	li.l    $a3, 0x3DCCCCCD
	li.l    $a2, 0x3E4CCCCD
	addiu   $a1, $sp, 0x0038
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	b       154$
	nop
144$:
	lui     $at, %hi(camera_80337654)
	lwc1    $f6, %lo(camera_80337654)($at)
	lw      $a0, 0x0058($sp)
	li.u    $a2, 0x3F666666
	li.l    $a2, 0x3F666666
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0038
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
154$:
	lui     $t2, %hi(mario_cam)
	lw      $t2, %lo(mario_cam)($t2)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x0008($t2)
	addiu   $a3, $sp, 0x0054
	lwc1    $f12, 0x0004($t2)
	lw      $a2, 0x000C($t2)
	jal     bg_check_ground
	add.s   $f14, $f8, $f10
	lw      $t3, 0x0054($sp)
	lh      $t4, 0x0000($t3)
	slti    $at, $t4, 0x00A6
	bnez    $at, 172$
	nop
	slti    $at, $t4, 0x00FA
	bnez    $at, 182$
	nop
172$:
	lw      $t5, 0x0058($sp)
	sb      $0, 0x0030($t5)
	li      $t6, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t6, %lo(_camera_bss_330-0x330+0x53C)($at)
	lui     $t7, %hi(camera_8033C84A)
	lh      $t7, %lo(camera_8033C84A)($t7)
	lui     $at, %hi(camera_8033C84A)
	ori     $t8, $t7, 0x0001
	sh      $t8, %lo(camera_8033C84A)($at)
182$:
	lw      $t0, 0x0058($sp)
	li      $t9, 0x0004
	sb      $t9, 0x0000($t0)
	b       187$
	nop
187$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

camera_802987B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a3, 0x4494A000
	li.l    $a3, 0x4494A000
	addiu   $a0, $a0, 0x004C
	li      $a1, 0x43810000
	jal     vecf_set
	li      $a2, 0xC3B00000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0028
	li      $a1, 0x42820000
	li      $a2, 0xC31B0000
	jal     vecf_set
	li      $a3, 0x43DE0000
	lui     $t6, %hi(camera_prevstage)
	lw      $t6, %lo(camera_prevstage)($t6)
	li      $at, 0x0024
	bne     $t6, $at, 31$
	nop
	mtc1    $0, $f4
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	swc1    $f4, 0x002C($t7)
	mtc1    $0, $f6
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	swc1    $f6, 0x0030($t8)
31$:
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	sh      $0, 0x001C($t9)
	lui     $t0, %hi(mario_cam)
	lw      $t0, %lo(mario_cam)($t0)
	la.u    $t2, _camera_bss_330-0x330+0x540
	la.l    $t2, _camera_bss_330-0x330+0x540
	lh      $t1, 0x0012($t0)
	sh      $t1, 0x001E($t2)
	la.u    $t3, _camera_bss_330-0x330+0x540
	la.l    $t3, _camera_bss_330-0x330+0x540
	sh      $0, 0x0020($t3)
	la.u    $t4, _camera_bss_330-0x330+0x540
	lw      $a0, 0x0020($sp)
	la.l    $t4, _camera_bss_330-0x330+0x540
	addiu   $a1, $t4, 0x0004
	addiu   $a2, $t4, 0x0028
	addiu   $a3, $t4, 0x001C
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	la.u    $t5, _camera_bss_330-0x330+0x540
	lw      $a0, 0x0020($sp)
	la.l    $t5, _camera_bss_330-0x330+0x540
	addiu   $a1, $t5, 0x0004
	addiu   $a2, $t5, 0x004C
	addiu   $a3, $t5, 0x001C
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lw      $t6, 0x0020($sp)
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0014($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0010($t6)
	lw      $a2, 0x0018($t6)
	jal     bg_check_ground
	add.s   $f14, $f8, $f10
	swc1    $f0, 0x0018($sp)
	lui     $at, %hi(camera_80337658)
	lwc1    $f18, %lo(camera_80337658)($at)
	lwc1    $f16, 0x0018($sp)
	c.eq.s  $f16, $f18
	nop
	bc1t    97$
	nop
	li      $at, 0x42700000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lw      $t7, 0x0020($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lwc1    $f10, 0x0014($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    97$
	nop
	lwc1    $f16, 0x0018($sp)
	lw      $t8, 0x0020($sp)
	swc1    $f16, 0x0014($t8)
97$:
	b       99$
	nop
99$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029894C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $a0, 0x004C
	jal     camera_802893F4
	li      $a1, 0x43320000
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	li.u    $a1, 0x445E4000
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x445E4000
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0054
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	addiu   $a1, $t6, 0x0004
	addiu   $a2, $t6, 0x004C
	addiu   $a3, $t6, 0x001C
	jal     camera_8028CBF0
	addiu   $a0, $sp, 0x001C
	addiu   $t7, $sp, 0x001C
	lwc1    $f4, 0x0000($t7)
	lw      $t8, 0x0028($sp)
	swc1    $f4, 0x0010($t8)
	addiu   $t9, $sp, 0x001C
	lwc1    $f6, 0x0008($t9)
	lw      $t0, 0x0028($sp)
	swc1    $f6, 0x0018($t0)
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_802989E8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	addiu   $a0, $sp, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	addiu   $a3, $sp, 0x002C
	lwc1    $f12, 0x0004($t6)
	lw      $a2, 0x000C($t6)
	jal     bg_check_ground
	add.s   $f14, $f4, $f6
	addiu   $t7, $sp, 0x0020
	swc1    $f0, 0x0004($t7)
	lw      $t8, 0x002C($sp)
	beqz    $t8, 62$
	nop
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	addiu   $t0, $sp, 0x0020
	lwc1    $f10, 0x0004($t0)
	lwc1    $f8, 0x0008($t9)
	lui     $at, %hi(camera_8033765C)
	lwc1    $f18, %lo(camera_8033765C)($at)
	sub.s   $f16, $f8, $f10
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f4, $f10
	add.s   $f16, $f6, $f8
	swc1    $f16, 0x0004($t0)
	lui     $at, %hi(camera_80337660)
	lwc1    $f18, %lo(camera_80337660)($at)
	lw      $a0, 0x0030($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0020
	swc1    $f18, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lw      $t2, 0x0030($sp)
	addiu   $t1, $sp, 0x0020
	lwc1    $f4, 0x0004($t1)
	lwc1    $f10, 0x0014($t2)
	c.lt.s  $f4, $f10
	nop
	bc1f    62$
	nop
	lw      $a0, 0x0030($sp)
	addiu   $t3, $sp, 0x0020
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	lw      $a1, 0x0004($t3)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0014
62$:
	b       64$
	nop
64$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl camera_80298AF8
camera_80298AF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_802987B0
	la.l    $a0, camera_802987B0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029894C
	la.l    $a0, camera_8029894C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0005
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802989E8
	la.l    $a0, camera_802989E8
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0005
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_prevstage)
	lw      $t6, %lo(camera_prevstage)($t6)
	li      $at, 0x0024
	bne     $t6, $at, 34$
	nop
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x449DA000
	li.u    $a3, 0x455C1000
	li.l    $a3, 0x455C1000
	li.l    $a2, 0x449DA000
	li      $a1, 0xC3940000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
34$:
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80298BA0
camera_80298BA0:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	addiu   $a0, $sp, 0x0028
	li      $a1, 0x43480000
	li      $a2, 0x43960000
	jal     vecf_set
	li      $a3, 0x43480000
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	addiu   $a0, $sp, 0x0020
	move    $a1, $0
	move    $a3, $0
	jal     vecs_set
	lh      $a2, 0x0012($t6)
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0048($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x0020
	addiu   $a1, $a1, 0x0004
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0048($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	b       31$
	nop
31$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl camera_80298C2C
camera_80298C2C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x0004($t6)
	add.s   $f8, $f4, $f6
	lw      $a3, 0x000C($t6)
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	lui     $at, %hi(camera_80337664)
	lwc1    $f10, %lo(camera_80337664)($at)
	lw      $a0, 0x0030($sp)
	li.u    $a2, 0x3CA3D70A
	li.u    $a3, 0x3A83126F
	li.l    $a3, 0x3A83126F
	li.l    $a2, 0x3CA3D70A
	addiu   $a1, $sp, 0x0024
	swc1    $f10, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	jal     camera_80290098
	lw      $a0, 0x0030($sp)
	b       36$
	nop
36$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl camera_80298CCC
camera_80298CCC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0004
	sb      $t6, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	sb      $0, 0x0030($t8)
	li      $t9, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t9, %lo(_camera_bss_330-0x330+0x53C)($at)
	lui     $t0, %hi(camera_8033C84A)
	lh      $t0, %lo(camera_8033C84A)($t0)
	lui     $at, %hi(camera_8033C84A)
	ori     $t1, $t0, 0x0001
	sh      $t1, %lo(camera_8033C84A)($at)
	lui     $t2, %hi(camera_8033C84A)
	lh      $t2, %lo(camera_8033C84A)($t2)
	li      $at, -0x0003
	and     $t3, $t2, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t3, %lo(camera_8033C84A)($at)
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80298D44
camera_80298D44:
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	li      $at, -0x0002
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t7, %lo(camera_8033C84A)($at)
	lui     $t8, %hi(camera_8033C84A)
	lh      $t8, %lo(camera_8033C84A)($t8)
	lui     $at, %hi(camera_8033C84A)
	ori     $t9, $t8, 0x0002
	sh      $t9, %lo(camera_8033C84A)($at)
	li      $t0, 0x000A
	sb      $t0, 0x0000($a0)
	sb      $0, 0x0030($a0)
	li      $at, 0x44480000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_238-0x238+0x260)
	swc1    $f4, %lo(_camera_bss_238-0x238+0x260)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl camera_80298D9C
camera_80298D9C:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0048($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x0046
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0040
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0080
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0064
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0080
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	lh      $t9, 0x0042($t8)
	lw      $a1, 0x0048($sp)
	lw      $a2, 0x0030($t8)
	lh      $a3, 0x0040($t8)
	addiu   $a0, $t8, 0x0004
	sw      $t9, 0x0010($sp)
	jal     polar_to_cartesian
	addiu   $a1, $a1, 0x0010
	la.u    $t0, _camera_bss_330-0x330+0x540
	li      $at, 0x43C80000
	mtc1    $at, $f14
	la.l    $t0, _camera_bss_330-0x330+0x540
	lwc1    $f12, 0x0030($t0)
	li      $a2, 0x40A00000
	jal     convergef
	li      $a3, 0x40A00000
	la.u    $t1, _camera_bss_330-0x330+0x540
	la.l    $t1, _camera_bss_330-0x330+0x540
	swc1    $f0, 0x0030($t1)
	la.u    $t2, _camera_bss_330-0x330+0x540
	la.l    $t2, _camera_bss_330-0x330+0x540
	lh      $t3, 0x0042($t2)
	addiu   $t4, $t3, 0x0040
	sh      $t4, 0x0042($t2)
	la.u    $t5, _camera_bss_330-0x330+0x540
	la.l    $t5, _camera_bss_330-0x330+0x540
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0074($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0074($t5)
	lw      $t6, 0x0048($sp)
	la.u    $t7, _camera_bss_330-0x330+0x540
	la.l    $t7, _camera_bss_330-0x330+0x540
	lwc1    $f16, 0x0074($t7)
	lwc1    $f10, 0x0014($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0014($t6)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	lw      $t9, 0x0020($t8)
	beqz    $t9, 117$
	sw      $t9, 0x0044($sp)
	lw      $t0, 0x0044($sp)
	la.u    $t1, _camera_bss_330-0x330+0x540
	la.l    $t1, _camera_bss_330-0x330+0x540
	lwc1    $f4, 0x00A4($t0)
	swc1    $f4, 0x0008($t1)
	lw      $t3, 0x0044($sp)
	addiu   $t2, $sp, 0x0020
	lw      $t4, 0x00C4($t3)
	sh      $t4, 0x0000($t2)
	lw      $t5, 0x0044($sp)
	addiu   $t6, $sp, 0x0020
	lw      $t7, 0x00C8($t5)
	sh      $t7, 0x0002($t6)
	lw      $t8, 0x0044($sp)
	addiu   $t0, $sp, 0x0020
	lw      $t9, 0x00CC($t8)
	sh      $t9, 0x0004($t0)
	lw      $t1, 0x0044($sp)
	lw      $t3, 0x0048($sp)
	lwc1    $f6, 0x00A0($t1)
	swc1    $f6, 0x0004($t3)
	lw      $t4, 0x0044($sp)
	lw      $t2, 0x0048($sp)
	lwc1    $f8, 0x00A4($t4)
	swc1    $f8, 0x0008($t2)
	lw      $t5, 0x0044($sp)
	lw      $t7, 0x0048($sp)
	lwc1    $f10, 0x00A8($t5)
	swc1    $f10, 0x000C($t7)
	mtc1    $0, $f16
	addiu   $t6, $sp, 0x0028
	swc1    $f16, 0x0000($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	addiu   $t8, $sp, 0x0028
	swc1    $f18, 0x0004($t8)
	mtc1    $0, $f4
	addiu   $t9, $sp, 0x0028
	swc1    $f4, 0x0008($t9)
	lw      $t0, 0x0048($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x0020
	addiu   $t1, $t0, 0x0004
	move    $a0, $t1
	jal     camera_8028CBF0
	move    $a1, $t1
117$:
	lw      $t3, 0x0048($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0014($t3)
	addiu   $a3, $sp, 0x0034
	lwc1    $f12, 0x0010($t3)
	lw      $a2, 0x0018($t3)
	jal     bg_check_ground
	add.s   $f14, $f6, $f8
	li      $at, 0x42C80000
	mtc1    $at, $f10
	nop
	add.s   $f16, $f0, $f10
	swc1    $f16, 0x0038($sp)
	lw      $t4, 0x0048($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f18, 0x0014($t4)
	c.lt.s  $f18, $f4
	nop
	bc1f    141$
	nop
	lwc1    $f6, 0x0038($sp)
	lw      $t2, 0x0048($sp)
	swc1    $f6, 0x0014($t2)
141$:
	b       143$
	nop
143$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl camera_80298FE8
camera_80298FE8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	lui     $at, %hi(camera_8033C84A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(camera_8033C84A)($at)
	lui     $t8, %hi(mario_cam)
	lw      $t8, %lo(mario_cam)($t8)
	sh      $0, 0x001E($t8)
	lui     $t9, %hi(mario_cam)
	lw      $t9, %lo(mario_cam)($t9)
	lw      $t0, 0x0020($t9)
	beqz    $t0, 46$
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	la.u    $t2, _camera_bss_330-0x330+0x540
	la.l    $t2, _camera_bss_330-0x330+0x540
	lwc1    $f4, 0x00A0($t1)
	swc1    $f4, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	la.u    $t4, _camera_bss_330-0x330+0x540
	la.l    $t4, _camera_bss_330-0x330+0x540
	lwc1    $f6, 0x00A4($t3)
	swc1    $f6, 0x0008($t4)
	lw      $t5, 0x0024($sp)
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	lwc1    $f8, 0x00A8($t5)
	swc1    $f8, 0x000C($t6)
	lw      $t7, 0x0024($sp)
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lw      $t8, 0x00C4($t7)
	sh      $t8, 0x001C($t9)
	lw      $t0, 0x0024($sp)
	la.u    $t2, _camera_bss_330-0x330+0x540
	la.l    $t2, _camera_bss_330-0x330+0x540
	lw      $t1, 0x00C8($t0)
	sh      $t1, 0x001E($t2)
	lw      $t3, 0x0024($sp)
	la.u    $t5, _camera_bss_330-0x330+0x540
	la.l    $t5, _camera_bss_330-0x330+0x540
	lw      $t4, 0x00CC($t3)
	sh      $t4, 0x0020($t5)
46$:
	la.u    $t6, _camera_bss_330-0x330+0x540
	la.l    $t6, _camera_bss_330-0x330+0x540
	lw      $a1, 0x0030($sp)
	addiu   $t7, $t6, 0x0042
	sw      $t7, 0x0010($sp)
	addiu   $a0, $t6, 0x0004
	addiu   $a2, $t6, 0x0030
	addiu   $a3, $t6, 0x0040
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	mtc1    $0, $f10
	la.u    $t8, _camera_bss_330-0x330+0x540
	la.l    $t8, _camera_bss_330-0x330+0x540
	swc1    $f10, 0x0074($t8)
	mtc1    $0, $f16
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	swc1    $f16, 0x0098($t9)
	b       66$
	nop
66$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl camera_80299100
camera_80299100:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x0028
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80299154
camera_80299154:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss_330-0x330+0x540
	la.l    $a1, _camera_bss_330-0x330+0x540
	addiu   $a1, $a1, 0x0028
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_802991A8
camera_802991A8:
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lw      $t7, 0x0000($t6)
	xori    $t8, $t7, 0x1320
	xori    $t9, $t7, 0x1321
	sltu    $t9, $0, $t9
	sltu    $t8, $0, $t8
	and     $t0, $t8, $t9
	beqz    $t0, 14$
	nop
	li      $t1, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t1, %lo(_camera_bss_330-0x330+0x53C)($at)
	sb      $0, 0x0030($a0)
14$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl camera_802991F0
camera_802991F0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	jal     camera_8029051C
	lw      $a0, 0x0030($sp)
	jal     camera_8028CDEC
	addiu   $a0, $sp, 0x0022
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	lh      $t8, 0x0022($sp)
	la.u    $a0, _camera_bss_330-0x330+0x540
	lh      $t7, 0x0012($t6)
	la.l    $a0, _camera_bss_330-0x330+0x540
	addiu   $a0, $a0, 0x001C
	move    $a1, $0
	move    $a3, $0
	jal     vecs_set
	addu    $a2, $t7, $t8
	addiu   $a0, $sp, 0x0024
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	jal     vecf_set
	li      $a3, 0x437A0000
	lh      $t9, 0x0022($sp)
	bnez    $t9, 36$
	nop
	mtc1    $0, $f4
	addiu   $t0, $sp, 0x0024
	b       39$
	swc1    $f4, 0x0000($t0)
36$:
	mtc1    $0, $f6
	addiu   $t1, $sp, 0x0024
	swc1    $f6, 0x0000($t1)
39$:
	lui     $a1, %hi(mario_cam)
	lw      $a1, %lo(mario_cam)($a1)
	lw      $a0, 0x0030($sp)
	la.u    $a3, _camera_bss_330-0x330+0x540
	la.l    $a3, _camera_bss_330-0x330+0x540
	addiu   $a3, $a3, 0x001C
	addiu   $a2, $sp, 0x0024
	addiu   $a1, $a1, 0x0004
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	b       51$
	nop
51$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl camera_802992CC
camera_802992CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	lw      $t6, 0x0028($sp)
	addiu   $t7, $sp, 0x0024
	sw      $t7, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $t6, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t6, 0x0010
	addiu   $a0, $sp, 0x0020
	li      $a1, 0x43160000
	jal     camera_802899CC
	li      $a2, 0x40E00000
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $t8, 0x0004
	addiu   $a1, $t8, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	jal     camera_80290098
	lw      $a0, 0x0028($sp)
	b       33$
	nop
33$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_80299360
camera_80299360:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0010
	lbu     $t7, 0x0001($t6)
	bne     $t7, $at, 12$
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0010
	b       15$
	sb      $t8, 0x0000($t9)
12$:
	lw      $t1, 0x0018($sp)
	li      $t0, 0x0004
	sb      $t0, 0x0000($t1)
15$:
	lw      $t2, 0x0018($sp)
	sb      $0, 0x0030($t2)
	li      $t3, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t3, %lo(_camera_bss_330-0x330+0x53C)($at)
	lui     $t4, %hi(camera_8033C84A)
	lh      $t4, %lo(camera_8033C84A)($t4)
	lui     $at, %hi(camera_8033C84A)
	ori     $t5, $t4, 0x0001
	sh      $t5, %lo(camera_8033C84A)($at)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	li      $at, -0x0003
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t7, %lo(camera_8033C84A)($at)
	jal     camera_80290B54
	lw      $a0, 0x0018($sp)
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80299404
camera_80299404:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     camera_8029051C
	lw      $a0, 0x0020($sp)
	jal     camera_8028EEB0
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, 19$
	nop
	lw      $t8, 0x0020($sp)
	move    $a0, $t8
	addiu   $a1, $t8, 0x0004
	jal     camera_80282280
	addiu   $a2, $t8, 0x0010
	lw      $t9, 0x0020($sp)
	sh      $v0, 0x003A($t9)
19$:
	lw      $t0, 0x0020($sp)
	li      $at, 0x000C
	lbu     $t1, 0x0000($t0)
	bne     $t1, $at, 31$
	nop
	lw      $t2, 0x0020($sp)
	move    $a0, $t2
	addiu   $a1, $t2, 0x0004
	jal     camera_80281904
	addiu   $a2, $t2, 0x0010
	lw      $t3, 0x0020($sp)
	sh      $v0, 0x003A($t3)
31$:
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x003A($t4)
	sh      $t5, 0x0002($t4)
	lui     $t6, %hi(mario_cam)
	lw      $t6, %lo(mario_cam)($t6)
	li      $at, 0x1331
	lw      $t7, 0x0000($t6)
	beq     $t7, $at, 51$
	nop
	li      $at, 0x1320
	beq     $t7, $at, 51$
	nop
	li      $at, 0x1321
	beq     $t7, $at, 51$
	nop
	li      $t8, -0x8000
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $t8, %lo(_camera_bss_330-0x330+0x53C)($at)
	lw      $t9, 0x0020($sp)
	sb      $0, 0x0030($t9)
51$:
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802994E8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(_camera_bss_238-0x238+0x23A)
	lh      $t6, %lo(_camera_bss_238-0x238+0x23A)($t6)
	sh      $t6, 0x0022($sp)
	lw      $t7, 0x0030($sp)
	lbu     $t8, 0x0030($t7)
	sb      $t8, 0x001F($sp)
	lui     $t9, %hi(camera_8033C84A)
	lh      $t9, %lo(camera_8033C84A)($t9)
	li      $at, -0x0002
	and     $t0, $t9, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t0, %lo(camera_8033C84A)($at)
	lui     $t1, %hi(camera_8033C848)
	lh      $t1, %lo(camera_8033C848)($t1)
	li      $at, -0x0101
	and     $t2, $t1, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t2, %lo(camera_8033C848)($at)
	lw      $t3, 0x0030($sp)
	lbu     $t4, 0x0030($t3)
	addiu   $t5, $t4, -0x0082
	sltiu   $at, $t5, 0x0034
	beqz    $at, L8029A214
	nop
	sll     $t5, $t5, 2
	lui     $at, %hi(camera_80337668)
	addu    $at, $at, $t5
	lw      $t5, %lo(camera_80337668)($at)
	jr      $t5
	nop
.globl L8029956C
L8029956C:
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F60C+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F60C+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t9, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t9, %lo(_camera_bss_330-0x330+0x53A)($t9)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t9, 3
	lui     $t9, %hi(camdemo_8032F60C+0x00)
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F60C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802995B4
L802995B4:
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F624+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F624+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F624+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F624+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802995FC
L802995FC:
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F4D4+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F4D4+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F4D4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F4D4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299644
L80299644:
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F534+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F534+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t5, %lo(_camera_bss_330-0x330+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F534+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F534+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029968C
L8029968C:
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F554+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F554+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F554+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F554+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802996D4
L802996D4:
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F574+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F574+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F574+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F574+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029971C
L8029971C:
	lui     $t8, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F59C+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F59C+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F59C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F59C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299764
L80299764:
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F5C4+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F5C4+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F5C4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F5C4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802997AC
L802997AC:
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F5DC+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F5DC+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F5DC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F5DC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802997F4
L802997F4:
	lui     $t5, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t5, %lo(_camera_bss_330-0x330+0x53A)($t5)
	lui     $t7, %hi(camdemo_8032F5F4+0x04)
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lh      $t7, %lo(camdemo_8032F5F4+0x04)($t7)
	sh      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53A)($t8)
	lui     $t9, %hi(camdemo_8032F5F4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t8, 3
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F5F4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029983C
L8029983C:
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F634+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F634+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F634+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F634+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299884
L80299884:
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F63C+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F63C+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F63C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F63C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802998CC
L802998CC:
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F64C+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F64C+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t5, %lo(_camera_bss_330-0x330+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F64C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F64C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299914
L80299914:
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F65C+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F65C+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F65C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F65C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029995C
L8029995C:
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F674+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F674+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F674+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F674+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802999A4
L802999A4:
	lui     $t8, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F734+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F734+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F734+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F734+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802999EC
L802999EC:
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F74C+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F74C+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F74C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F74C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299A34
L80299A34:
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F74C+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F74C+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F74C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F74C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299A7C
L80299A7C:
	lui     $t5, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t5, %lo(_camera_bss_330-0x330+0x53A)($t5)
	lui     $t7, %hi(camdemo_8032F754+0x04)
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lh      $t7, %lo(camdemo_8032F754+0x04)($t7)
	sh      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53A)($t8)
	lui     $t9, %hi(camdemo_8032F754+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t8, 3
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F754+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299AC4
L80299AC4:
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F75C+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F75C+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F75C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F75C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299B0C
L80299B0C:
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F764+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F764+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F764+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F764+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299B54
L80299B54:
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F544+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F544+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t5, %lo(_camera_bss_330-0x330+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F544+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F544+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299B9C
L80299B9C:
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F564+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F564+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F564+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F564+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299BE4
L80299BE4:
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F56C+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F56C+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F56C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F56C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299C2C
L80299C2C:
	lui     $t8, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F76C+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F76C+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F76C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F76C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299C74
L80299C74:
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F774+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F774+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F774+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F774+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299CBC
L80299CBC:
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F69C+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F69C+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F69C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F69C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299D04
L80299D04:
	lui     $t5, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t5, %lo(_camera_bss_330-0x330+0x53A)($t5)
	lui     $t7, %hi(camdemo_8032F784+0x04)
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lh      $t7, %lo(camdemo_8032F784+0x04)($t7)
	sh      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53A)($t8)
	lui     $t9, %hi(camdemo_8032F784+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t8, 3
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F784+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299D4C
L80299D4C:
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F6F4+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F6F4+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F6F4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F6F4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299D94
L80299D94:
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F6FC+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F6FC+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F6FC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F6FC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299DDC
L80299DDC:
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F70C+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F70C+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t5, %lo(_camera_bss_330-0x330+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F70C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F70C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299E24
L80299E24:
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F714+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F714+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F714+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F714+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299E6C
L80299E6C:
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F71C+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F71C+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F71C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F71C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299EB4
L80299EB4:
	lui     $t8, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F72C+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F72C+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F72C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F72C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299EFC
L80299EFC:
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F794+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F794+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F794+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F794+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299F44
L80299F44:
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F7A4+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F7A4+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F7A4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F7A4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299F8C
L80299F8C:
	lui     $t5, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t5, %lo(_camera_bss_330-0x330+0x53A)($t5)
	lui     $t7, %hi(camdemo_8032F7B4+0x04)
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lh      $t7, %lo(camdemo_8032F7B4+0x04)($t7)
	sh      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53A)($t8)
	lui     $t9, %hi(camdemo_8032F7B4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t8, 3
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F7B4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299FD4
L80299FD4:
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F6AC+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F6AC+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F6AC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F6AC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A01C
L8029A01C:
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F6BC+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F6BC+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F6BC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F6BC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A064
L8029A064:
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F7C4+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F7C4+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t5, %lo(_camera_bss_330-0x330+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F7C4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F7C4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A0AC
L8029A0AC:
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F7D4+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F7D4+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F7D4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F7D4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A0F4
L8029A0F4:
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F7EC+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F7EC+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F7EC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F7EC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A13C
L8029A13C:
	lui     $t8, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F7D4+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F7D4+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F7D4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F7D4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A184
L8029A184:
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F6CC+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F6CC+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F6CC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F6CC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A1CC
L8029A1CC:
	lui     $t0, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F6DC+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F6DC+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t3, %lo(_camera_bss_330-0x330+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F6DC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F6DC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A214
L8029A214:
	lh      $t5, 0x0020($sp)
	beqz    $t5, 875$
	nop
	lui     $t6, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53C)($t6)
	andi    $t7, $t6, 0x8000
	bnez    $t7, 875$
	nop
	lui     $t8, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53C)($t8)
	slti    $at, $t8, 0x3FFF
	beqz    $at, 861$
	nop
	lui     $t0, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53C)($t0)
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	addiu   $t1, $t0, 0x0001
	sh      $t1, %lo(_camera_bss_330-0x330+0x53C)($at)
861$:
	lui     $t2, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53C)($t2)
	lh      $t3, 0x0020($sp)
	bne     $t2, $t3, 873$
	nop
	lui     $t4, %hi(_camera_bss_330-0x330+0x53A)
	lh      $t4, %lo(_camera_bss_330-0x330+0x53A)($t4)
	lui     $at, %hi(_camera_bss_330-0x330+0x53A)
	addiu   $t9, $t4, 0x0001
	sh      $t9, %lo(_camera_bss_330-0x330+0x53A)($at)
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $0, %lo(_camera_bss_330-0x330+0x53C)($at)
873$:
	b       882$
	nop
875$:
	lui     $t5, %hi(mario_cam)
	lw      $t5, %lo(mario_cam)($t5)
	sh      $0, 0x001E($t5)
	lui     $at, %hi(_camera_bss_330-0x330+0x53A)
	sh      $0, %lo(_camera_bss_330-0x330+0x53A)($at)
	lui     $at, %hi(_camera_bss_330-0x330+0x53C)
	sh      $0, %lo(_camera_bss_330-0x330+0x53C)($at)
882$:
	lui     $at, %hi(_camera_bss_238-0x238+0x23C)
	sh      $0, %lo(_camera_bss_238-0x238+0x23C)($at)
	lw      $t6, 0x0030($sp)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, 894$
	nop
	lbu     $t8, 0x001F($sp)
	beqz    $t8, 894$
	nop
	lbu     $t0, 0x001F($sp)
	lui     $at, %hi(camera_8032DF54)
	sb      $t0, %lo(camera_8032DF54)($at)
894$:
	b       896$
	nop
896$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8029A2F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lui     $t7, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t7, %lo(_camera_bss_330-0x330+0x53C)($t7)
	lh      $t6, 0x0022($sp)
	slt     $at, $t7, $t6
	bnez    $at, 25$
	nop
	lh      $t8, 0x0026($sp)
	li      $at, -0x0001
	beq     $t8, $at, 21$
	nop
	lui     $t9, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t9, %lo(_camera_bss_330-0x330+0x53C)($t9)
	slt     $at, $t8, $t9
	bnez    $at, 25$
	nop
21$:
	lw      $t9, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	jalr    $t9
	nop
25$:
	b       29$
	move    $v0, $0
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A37C:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	lui     $t6, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53C)($t6)
	bne     $a1, $t6, 8$
	nop
	lui     $at, %hi(camera_8033CBCC)
	sw      $a0, %lo(camera_8033CBCC)($at)
8$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

camera_8029A3B4:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	mtc1    $a0, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x90)
	lwc1    $f8, %lo(_camera_bss_48-0x48+0x90)($at)
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    22$
	nop
	mtc1    $a0, $f10
	lui     $at, %hi(_camera_bss_48-0x48+0x90)
	cvt.s.w $f16, $f10
	swc1    $f16, %lo(_camera_bss_48-0x48+0x90)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x98)
	sh      $a1, %lo(_camera_bss_48-0x48+0x98)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x96)
	sh      $a2, %lo(_camera_bss_48-0x48+0x96)($at)
22$:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8029A41C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lwc1    $f4, 0x0038($sp)
	lh      $a0, 0x0022($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	lw      $a3, 0x0034($sp)
	jal     camera_80289D20
	swc1    $f4, 0x0010($sp)
	sh      $v0, 0x0022($sp)
	lh      $t6, 0x0022($sp)
	beqz    $t6, 39$
	nop
	lh      $t7, 0x0022($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x90)
	lwc1    $f10, %lo(_camera_bss_48-0x48+0x90)($at)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    39$
	nop
	lh      $t8, 0x0022($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x90)
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, %lo(_camera_bss_48-0x48+0x90)($at)
	lh      $t9, 0x0026($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x98)
	sh      $t9, %lo(_camera_bss_48-0x48+0x98)($at)
	lh      $t0, 0x002A($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x96)
	sh      $t0, %lo(_camera_bss_48-0x48+0x96)($at)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029A4D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x90)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0x90)($at)
	mtc1    $0, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1t    51$
	nop
	lui     $t6, %hi(_camera_bss_48-0x48+0x94)
	lhu     $t6, %lo(_camera_bss_48-0x48+0x94)($t6)
	lui     $at, %hi(math_cos)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_cos)($at)
	lui     $at, %hi(_camera_bss_48-0x48+0x90)
	lwc1    $f10, %lo(_camera_bss_48-0x48+0x90)($at)
	li      $at, 0x43800000
	mtc1    $at, $f18
	mul.s   $f16, $f8, $f10
	lui     $at, %hi(_camera_bss_48-0x48+0x88)
	div.s   $f4, $f16, $f18
	swc1    $f4, %lo(_camera_bss_48-0x48+0x88)($at)
	lui     $t9, %hi(_camera_bss_48-0x48+0x94)
	lui     $t0, %hi(_camera_bss_48-0x48+0x96)
	lh      $t0, %lo(_camera_bss_48-0x48+0x96)($t0)
	lh      $t9, %lo(_camera_bss_48-0x48+0x94)($t9)
	lui     $at, %hi(_camera_bss_48-0x48+0x94)
	addu    $t1, $t9, $t0
	sh      $t1, %lo(_camera_bss_48-0x48+0x94)($at)
	lui     $t2, %hi(_camera_bss_48-0x48+0x98)
	lh      $t2, %lo(_camera_bss_48-0x48+0x98)($t2)
	la.u    $a0, _camera_bss_48-0x48+0x80
	la.l    $a0, _camera_bss_48-0x48+0x80
	mtc1    $t2, $f6
	addiu   $a0, $a0, 0x0010
	li      $a1, 0x0000
	cvt.s.w $f6, $f6
	mfc1    $a2, $f6
	jal     camera_802899CC
	nop
	lw      $t3, 0x0018($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x88)
	lwc1    $f10, %lo(_camera_bss_48-0x48+0x88)($at)
	lwc1    $f8, 0x001C($t3)
	add.s   $f16, $f8, $f10
	b       53$
	swc1    $f16, 0x001C($t3)
51$:
	lui     $at, %hi(_camera_bss_48-0x48+0x94)
	sh      $0, %lo(_camera_bss_48-0x48+0x94)($at)
53$:
	b       55$
	nop
55$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A5BC:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	li      $at, -0x0041
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t7, %lo(camera_8033C84A)($at)
	b       9$
	nop
9$:
	jr      $ra
	nop

camera_8029A5E8:
	sw      $a0, 0x0000($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	b       7$
	nop
7$:
	jr      $ra
	nop

camera_8029A60C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_48-0x48+0x80
	la.l    $a0, _camera_bss_48-0x48+0x80
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	addiu   $a0, $a0, 0x0004
	jal     camera_802899CC
	li      $a1, 0x41A00000
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A64C:
	sw      $a0, 0x0000($sp)
	li      $at, 0x42340000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	b       7$
	nop
7$:
	jr      $ra
	nop

camera_8029A670:
	sw      $a0, 0x0000($sp)
	li      $at, 0x41E80000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	b       7$
	nop
7$:
	jr      $ra
	nop

camera_8029A694:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	lwc1    $f6, %lo(_camera_bss_48-0x48+0x84)($at)
	li      $at, 0x42700000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	la.u    $a0, _camera_bss_48-0x48+0x80
	la.l    $a0, _camera_bss_48-0x48+0x80
	addiu   $a0, $a0, 0x0004
	div.s   $f16, $f8, $f10
	li      $a1, 0x41F00000
	mfc1    $a2, $f16
	jal     camera_802899CC
	nop
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A6F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8033C84A)
	lh      $t6, %lo(camera_8033C84A)($t6)
	li      $at, -0x0041
	and     $t7, $t6, $at
	lui     $at, %hi(camera_8033C84A)
	sh      $t7, %lo(camera_8033C84A)($at)
	lw      $t8, 0x0018($sp)
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, 19$
	nop
	li.u    $at, 0x0C400202
	li.l    $at, 0x0C400202
	bne     $t9, $at, 40$
	nop
19$:
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	lwc1    $f6, %lo(_camera_bss_48-0x48+0x84)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	la.u    $a0, _camera_bss_48-0x48+0x80
	la.l    $a0, _camera_bss_48-0x48+0x80
	addiu   $a0, $a0, 0x0004
	div.s   $f16, $f8, $f10
	li      $a1, 0x41F00000
	mfc1    $a2, $f16
	jal     camera_802899CC
	nop
	lui     $t0, %hi(camera_8033C84A)
	lh      $t0, %lo(camera_8033C84A)($t0)
	lui     $at, %hi(camera_8033C84A)
	ori     $t1, $t0, 0x0040
	b       57$
	sh      $t1, %lo(camera_8033C84A)($at)
40$:
	li      $at, 0x42340000
	mtc1    $at, $f18
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	sub.s   $f6, $f18, $f4
	la.u    $a0, _camera_bss_48-0x48+0x80
	la.l    $a0, _camera_bss_48-0x48+0x80
	addiu   $a0, $a0, 0x0004
	div.s   $f10, $f6, $f8
	li      $a1, 0x42340000
	mfc1    $a2, $f10
	jal     camera_802899CC
	nop
	lui     $at, %hi(_camera_bss_48-0x48+0x8C)
	sw      $0, %lo(_camera_bss_48-0x48+0x8C)($at)
57$:
	lw      $t2, 0x0018($sp)
	li      $at, 0x0091
	lw      $t3, 0x0090($t2)
	lw      $t4, 0x0024($t3)
	lbu     $t5, 0x0030($t4)
	bne     $t5, $at, 68$
	nop
	li      $at, 0x42340000
	mtc1    $at, $f16
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f16, %lo(_camera_bss_48-0x48+0x84)($at)
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A81C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_48-0x48+0x80
	la.l    $a0, _camera_bss_48-0x48+0x80
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x41F00000
	jal     camera_802899CC
	li      $a2, 0x3F800000
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A858:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_48-0x48+0x80
	la.l    $a0, _camera_bss_48-0x48+0x80
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x41F00000
	jal     camera_802899CC
	li      $a2, 0x3F800000
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A894:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_48-0x48+0x80
	la.l    $a0, _camera_bss_48-0x48+0x80
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x42700000
	jal     camera_802899CC
	li      $a2, 0x3F800000
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A8D0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	swc1    $f4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x000D
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lbu     $t9, 0x0000($t8)
	bne     $t9, $at, 20$
	nop
	lbu     $t0, 0x0030($t8)
	bnez    $t0, 20$
	nop
	li      $at, 0x42340000
	mtc1    $at, $f6
	b       24$
	swc1    $f6, 0x001C($sp)
20$:
	li      $at, 0x42340000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x001C($sp)
24$:
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	lwc1    $f12, %lo(_camera_bss_48-0x48+0x84)($at)
	lwc1    $f14, 0x001C($sp)
	li      $a2, 0x40000000
	jal     convergef
	li      $a3, 0x40000000
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f0, %lo(_camera_bss_48-0x48+0x84)($at)
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029A968:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss_48-0x48+0x80
	la.l    $a0, _camera_bss_48-0x48+0x80
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x42A00000
	jal     camera_802899CC
	li      $a2, 0x40600000
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A9A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	swc1    $f4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x000D
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lbu     $t9, 0x0000($t8)
	bne     $t9, $at, 20$
	nop
	lbu     $t0, 0x0030($t8)
	bnez    $t0, 20$
	nop
	li      $at, 0x42700000
	mtc1    $at, $f6
	b       24$
	swc1    $f6, 0x001C($sp)
20$:
	li      $at, 0x42340000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x001C($sp)
24$:
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	lwc1    $f12, %lo(_camera_bss_48-0x48+0x84)($at)
	lwc1    $f14, 0x001C($sp)
	li      $a2, 0x40000000
	jal     convergef
	li      $a3, 0x40000000
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	swc1    $f0, %lo(_camera_bss_48-0x48+0x84)($at)
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_stage_perspective
s_stage_perspective:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x002C($sp)
	sw      $t6, 0x0024($sp)
	la.u    $t7, player_data
	la.l    $t7, player_data
	sw      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss_48-0x48+0x80)
	lbu     $t8, %lo(_camera_bss_48-0x48+0x80)($t8)
	sb      $t8, 0x001F($sp)
	lw      $t9, 0x0028($sp)
	li      $at, 0x0001
	bne     $t9, $at, L8029AB5C
	nop
	lbu     $t0, 0x001F($sp)
	addiu   $t1, $t0, -0x0001
	sltiu   $at, $t1, 0x000D
	beqz    $at, L8029AB5C
	nop
	sll     $t1, $t1, 2
	lui     $at, %hi(camera_80337738)
	addu    $at, $at, $t1
	lw      $t1, %lo(camera_80337738)($at)
	jr      $t1
	nop
.globl L8029AAAC
L8029AAAC:
	jal     camera_8029A64C
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AABC
L8029AABC:
	jal     camera_8029A670
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AACC
L8029AACC:
	jal     camera_8029A694
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AADC
L8029AADC:
	jal     camera_8029A6F4
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AAEC
L8029AAEC:
	jal     camera_8029A9A4
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AAFC
L8029AAFC:
	jal     camera_8029A8D0
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB0C
L8029AB0C:
	jal     camera_8029A5E8
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB1C
L8029AB1C:
	jal     camera_8029A60C
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB2C
L8029AB2C:
	jal     camera_8029A968
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB3C
L8029AB3C:
	jal     camera_8029A858
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB4C
L8029AB4C:
	jal     camera_8029A894
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB5C
L8029AB5C:
	lui     $at, %hi(_camera_bss_48-0x48+0x84)
	lwc1    $f4, %lo(_camera_bss_48-0x48+0x84)($at)
	lw      $t2, 0x0024($sp)
	swc1    $f4, 0x001C($t2)
	jal     camera_8029A4D0
	lw      $a0, 0x0024($sp)
	b       82$
	move    $v0, $0
	b       82$
	nop
82$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8029AB94:
	andi    $a0, $a0, 0x00FF
	lui     $at, %hi(_camera_bss_48-0x48+0x80)
	sb      $a0, %lo(_camera_bss_48-0x48+0x80)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_8029ABB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lbu     $s0, 0x002B($sp)
	li      $at, 0x0001
	beq     $s0, $at, 13$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 19$
	nop
	b       25$
	nop
13$:
	li      $a0, 0x0100
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       25$
	nop
19$:
	li      $a0, 0x0400
	li      $a1, 0x0020
	jal     camera_8029A3B4
	li      $a2, 0x4000
	b       25$
	nop
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8029AC30:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	sw      $s0, 0x0028($sp)
	lbu     $s0, 0x003B($sp)
	li      $at, 0x0001
	beq     $s0, $at, 22$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 36$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 49$
	nop
	b       77$
	nop
22$:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x0044($sp)
	li.u    $a3, 0x453B8000
	li.l    $a3, 0x453B8000
	li      $a0, 0x0100
	li      $a1, 0x0030
	li      $a2, -0x8000
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	jal     camera_8029A41C
	swc1    $f8, 0x0018($sp)
	b       77$
	nop
36$:
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0044($sp)
	li      $a0, 0x0200
	li      $a1, 0x0030
	li      $a2, -0x8000
	li      $a3, 0x457A0000
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	jal     camera_8029A41C
	swc1    $f18, 0x0018($sp)
	b       77$
	nop
49$:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x0044($sp)
	li.u    $a3, 0x45BB8000
	li.l    $a3, 0x45BB8000
	li      $a0, 0x0300
	li      $a1, 0x0030
	li      $a2, -0x8000
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	jal     camera_8029A41C
	swc1    $f8, 0x0018($sp)
	b       77$
	nop
63$:
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0044($sp)
	li.u    $a3, 0x453B8000
	li.l    $a3, 0x453B8000
	li      $a0, 0x0800
	li      $a1, 0x0020
	li      $a2, 0x4000
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	jal     camera_8029A41C
	swc1    $f18, 0x0018($sp)
	b       77$
	nop
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8029AD80:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     randf
	nop
	swc1    $f0, 0x001C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	div.s   $f16, $f6, $f10
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x00A0($t6)
	sub.s   $f18, $f8, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A0($t6)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f8, 0x0028($sp)
	lwc1    $f10, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	div.s   $f18, $f8, $f4
	mul.s   $f16, $f10, $f8
	lwc1    $f10, 0x00A4($t7)
	sub.s   $f6, $f16, $f18
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A4($t7)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f16, 0x002C($sp)
	lwc1    $f4, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	div.s   $f6, $f16, $f10
	mul.s   $f18, $f4, $f16
	lwc1    $f4, 0x00A8($t8)
	sub.s   $f8, $f18, $f6
	add.s   $f16, $f4, $f8
	swc1    $f16, 0x00A8($t8)
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029AE40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     randf
	nop
	swc1    $f0, 0x001C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	div.s   $f16, $f6, $f10
	lw      $t1, 0x00C4($t0)
	mul.s   $f8, $f4, $f6
	sub.s   $f18, $f8, $f16
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	addu    $t2, $t1, $t9
	sw      $t2, 0x00C4($t0)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	div.s   $f18, $f10, $f16
	lw      $t8, 0x00C8($t7)
	mul.s   $f8, $f6, $f10
	sub.s   $f4, $f8, $f18
	trunc.w.s $f6, $f4
	mfc1    $t4, $f6
	nop
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	addu    $t1, $t8, $t6
	sw      $t1, 0x00C8($t7)
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029AEF8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	addiu   $a0, $sp, 0x0024
	jal     camera_80287E28
	lw      $a1, 0x0038($sp)
	addiu   $t6, $sp, 0x0030
	sw      $t6, 0x0010($sp)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x003C($sp)
	addiu   $a2, $sp, 0x0034
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0032
	lw      $t7, 0x0038($sp)
	lh      $t8, 0x0042($sp)
	lh      $t9, 0x0032($sp)
	lh      $a2, 0x004A($sp)
	lw      $a0, 0x00C4($t7)
	jal     camera_8028956C
	subu    $a1, $t8, $t9
	lw      $t0, 0x0038($sp)
	sw      $v0, 0x00C4($t0)
	lw      $t1, 0x0038($sp)
	lh      $t2, 0x0030($sp)
	lh      $t3, 0x0046($sp)
	lh      $a2, 0x004E($sp)
	lw      $a0, 0x00C8($t1)
	jal     camera_8028956C
	addu    $a1, $t2, $t3
	lw      $t4, 0x0038($sp)
	sw      $v0, 0x00C8($t4)
	b       36$
	nop
36$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8029AF98:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	la.u    $t6, camdata
	la.l    $t6, camdata
	addiu   $t7, $sp, 0x0028
	sw      $t7, 0x0010($sp)
	addiu   $a0, $t6, 0x008C
	addiu   $a1, $t6, 0x0080
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x002A
	lh      $t9, 0x002A($sp)
	lw      $t8, 0x0038($sp)
	lh      $t1, 0x0028($sp)
	mtc1    $t9, $f6
	lwc1    $f4, 0x010C($t8)
	lwc1    $f18, 0x0108($t8)
	cvt.s.w $f8, $f6
	mtc1    $t1, $f6
	la.u    $a0, camdata
	la.l    $a0, camdata
	lw      $a2, 0x0110($t8)
	addiu   $a0, $a0, 0x008C
	add.s   $f10, $f4, $f8
	addiu   $a1, $sp, 0x002C
	cvt.s.w $f4, $f6
	trunc.w.s $f16, $f10
	add.s   $f8, $f18, $f4
	mfc1    $a3, $f16
	trunc.w.s $f10, $f8
	mfc1    $t3, $f10
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
	lw      $a0, 0x0038($sp)
	jal     camera_80287E50
	addiu   $a1, $sp, 0x002C
	lw      $t4, 0x0038($sp)
	lw      $t5, 0x017C($t4)
	mtc1    $t5, $f16
	nop
	cvt.s.w $f6, $f16
	swc1    $f6, 0x0020($sp)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x003C($sp)
	jal     camera_802899CC
	lw      $a2, 0x0040($sp)
	lwc1    $f18, 0x0020($sp)
	lw      $t9, 0x0038($sp)
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sw      $t7, 0x017C($t9)
	b       57$
	nop
57$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl camera_8029B08C
camera_8029B08C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 64$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 82$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 105$
	nop
	b       121$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0400
	sw      $t0, 0x00D0($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x7500
	sw      $t2, 0x00D4($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, -0x3700
	sw      $t4, 0x00D8($t5)
	li      $at, 0x433A0000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0110($t6)
	li      $at, 0xC61C0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x010C($t8)
	li      $at, 0xC4400000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0108($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t7, 0x00FF
	sw      $t7, 0x017C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0064
	sh      $t1, 0x0040($t2)
	b       121$
	nop
64$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	jal     camera_8029AF98
	li      $a2, 0x0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0015
	bnez    $at, 80$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t8, $t6, 0x0001
	sw      $t8, 0x014C($t5)
80$:
	b       121$
	nop
82$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x437F0000
	jal     camera_8029AF98
	li      $a2, 0x40400000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x0154($t9)
	slti    $at, $t7, 0x0065
	bnez    $at, 103$
	nop
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 103$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
103$:
	b       121$
	nop
105$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	jal     camera_8029AF98
	li      $a2, 0x41000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x003D
	bnez    $at, 119$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
119$:
	b       121$
	nop
121$:
	b       123$
	nop
123$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8029B28C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lui     $a1, %hi(camerap)
	lw      $a1, %lo(camerap)($a1)
	lw      $a0, 0x0034($sp)
	jal     vecf_add
	addiu   $a1, $a1, 0x0010
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	addiu   $t7, $sp, 0x0024
	addiu   $t8, $t7, 0x0002
	sw      $t8, 0x0010($sp)
	move    $a3, $t7
	addiu   $a2, $sp, 0x002C
	addiu   $a0, $t6, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t6, 0x0004
	lui     $a0, %hi(camerap)
	lw      $a0, %lo(camerap)($a0)
	addiu   $t9, $sp, 0x0020
	sw      $t9, 0x0010($sp)
	lw      $a1, 0x0034($sp)
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x0022
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	addiu   $t0, $sp, 0x0024
	lh      $t3, 0x0002($t0)
	lh      $t4, 0x0020($sp)
	lui     $a0, %hi(camerap)
	lw      $a0, %lo(camerap)($a0)
	lh      $t1, 0x0000($t0)
	lh      $t2, 0x0022($sp)
	addu    $t5, $t3, $t4
	sw      $t5, 0x0010($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x002C($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	addu    $a3, $t1, $t2
	lw      $a0, 0x0030($sp)
	jal     camera_80287E50
	lw      $a1, 0x0034($sp)
	b       47$
	nop
47$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8029B358:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	addiu   $a0, $sp, 0x0030
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	addiu   $t6, $sp, 0x0028
	sw      $t6, 0x0010($sp)
	addiu   $a0, $sp, 0x0030
	lw      $a1, 0x004C($sp)
	addiu   $a2, $sp, 0x002C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x002A
	lh      $t7, 0x002A($sp)
	lw      $t8, 0x0048($sp)
	sw      $t7, 0x00D0($t8)
	lh      $t9, 0x0028($sp)
	lw      $t0, 0x0048($sp)
	sw      $t9, 0x00D4($t0)
	b       24$
	nop
24$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_8029B3C8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0038($sp)
	lwc1    $f4, 0x00FC($t6)
	trunc.w.s $f6, $f4
	mfc1    $t8, $f6
	nop
	sh      $t8, 0x001A($sp)
	lw      $a3, 0x0038($sp)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x003C($sp)
	addiu   $a2, $sp, 0x001A
	jal     camera_802882E4
	addiu   $a3, $a3, 0x00F8
	li      $at, 0x0001
	beq     $v0, $at, 30$
	nop
	lw      $a3, 0x0038($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0040($sp)
	addiu   $a2, $sp, 0x001A
	jal     camera_802882E4
	addiu   $a3, $a3, 0x00F8
	li      $at, 0x0001
	bne     $v0, $at, 33$
	nop
30$:
	lw      $t9, 0x001C($sp)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x001C($sp)
33$:
	lh      $t1, 0x001A($sp)
	lw      $t2, 0x0038($sp)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00FC($t2)
	lw      $a0, 0x0038($sp)
	jal     camera_8029B28C
	addiu   $a1, $sp, 0x002C
	lw      $a0, 0x0038($sp)
	jal     camera_8029B358
	addiu   $a1, $sp, 0x0020
	b       49$
	lw      $v0, 0x001C($sp)
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl camera_8029B49C
camera_8029B49C:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x002C($sp)
	sw      $s1, 0x0028($sp)
	sw      $s0, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 29$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 78$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 195$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 247$
	nop
	li      $at, 0x0064
	beq     $s0, $at, 407$
	nop
	li      $at, 0x0065
	beq     $s0, $at, 454$
	nop
	li      $at, 0x0066
	beq     $s0, $at, 524$
	nop
	b       587$
	nop
29$:
	jal     objlib_8029F66C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00F8($t8)
	li      $at, 0x40000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	la.u    $t1, o_13004988
	la.l    $t1, o_13004988
	li      $t0, 0x008E
	sw      $t0, 0x0018($sp)
	sw      $t1, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t9, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f8, 0x0010($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x01AC($t2)
	lui     $t3, %hi(camerap)
	lw      $t3, %lo(camerap)($t3)
	li      $at, 0x00B1
	lbu     $t4, 0x0030($t3)
	bne     $t4, $at, 71$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0064
	b       76$
	sw      $t5, 0x014C($t6)
71$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
76$:
	b       587$
	nop
78$:
	jal     objlib_8029F620
	nop
	lui     $t0, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t0, %lo(_camera_bss_330-0x330+0x53C)($t0)
	slti    $at, $t0, 0x015F
	bnez    $at, 109$
	nop
	slti    $at, $t0, 0x01CA
	beqz    $at, 109$
	nop
	lui     $t1, %hi(camerap)
	lw      $t1, %lo(camerap)($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x0010($t1)
	swc1    $f10, 0x00A0($t2)
	lui     $t3, %hi(camerap)
	lw      $t3, %lo(camerap)($t3)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0014($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t4)
	lui     $t5, %hi(camerap)
	lw      $t5, %lo(camerap)($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0018($t5)
	swc1    $f6, 0x00A8($t6)
109$:
	lui     $t8, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t8, %lo(_camera_bss_330-0x330+0x53C)($t8)
	slti    $at, $t8, 0x0035
	bnez    $at, 117$
	nop
	li.u    $a0, 0x6002FF01
	jal     object_levelsound
	li.l    $a0, 0x6002FF01
117$:
	lui     $a0, %hi(object)
	la.u    $a1, campath_8032F32C
	la.u    $a2, campath_8032F214
	la.l    $a2, campath_8032F214
	la.l    $a1, campath_8032F32C
	jal     camera_8029B3C8
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, 132$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x014C($t9)
	addiu   $t0, $t7, 0x0001
	sw      $t0, 0x014C($t9)
132$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0049
	lw      $s0, 0x0154($t1)
	beq     $s0, $at, 165$
	nop
	li      $at, 0x004A
	beq     $s0, $at, 172$
	nop
	li      $at, 0x0052
	beq     $s0, $at, 179$
	nop
	li      $at, 0x0054
	beq     $s0, $at, 186$
	nop
	li      $at, 0x0216
	beq     $s0, $at, 155$
	nop
	li      $at, 0x0245
	beq     $s0, $at, 160$
	nop
	b       193$
	nop
155$:
	li.u    $a0, 0x04568081
	jal     object_playsound
	li.l    $a0, 0x04568081
	b       193$
	nop
160$:
	li.u    $a0, 0x045E8081
	jal     object_playsound
	li.l    $a0, 0x045E8081
	b       193$
	nop
165$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F0($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x00F0($t2)
	b       193$
	nop
172$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F0($t5)
	addiu   $t8, $t6, -0x0001
	sw      $t8, 0x00F0($t5)
	b       193$
	nop
179$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x00F0($t7)
	addiu   $t9, $t0, 0x0001
	sw      $t9, 0x00F0($t7)
	b       193$
	nop
186$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F0($t1)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x00F0($t1)
	b       193$
	nop
193$:
	b       587$
	nop
195$:
	lui     $t2, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t2, %lo(_camera_bss_330-0x330+0x53C)($t2)
	slti    $at, $t2, 0x02D1
	bnez    $at, 242$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x014C($t6)
	addiu   $t5, $t8, 0x0001
	sw      $t5, 0x014C($t6)
	li      $at, 0x44AF0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0100($t0)
	li      $at, 0xC5800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0104($t9)
	li      $at, 0x45000000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0108($t7)
	li      $at, 0xC3480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x010C($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t4, 0x8000
	sw      $t4, 0x00C8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x00C8($t2)
	addiu   $t5, $t8, 0x4000
	sw      $t5, 0x00D4($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t6, 0x0800
	sw      $t6, 0x00C4($t0)
242$:
	li.u    $a0, 0x6002FF01
	jal     object_levelsound
	li.l    $a0, 0x6002FF01
	b       587$
	nop
247$:
	li.u    $a0, 0x6002FF01
	jal     object_levelsound
	li.l    $a0, 0x6002FF01
	li.u    $a3, 0x4591C000
	li.l    $a3, 0x4591C000
	addiu   $a0, $sp, 0x0058
	li      $a1, 0xC48D0000
	jal     vecf_set
	li      $a2, 0x440C0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x00C8($t9)
	addiu   $t3, $t7, 0x0200
	sw      $t3, 0x00C8($t9)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x42C80000
	mtc1    $at, $f14
	li.u    $a2, 0x3CF5C28F
	li.l    $a2, 0x3CF5C28F
	jal     camera_80289488
	lwc1    $f12, 0x0100($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	swc1    $f0, 0x0100($t1)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43480000
	mtc1    $at, $f12
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	jal     ATAN2
	sub.s   $f14, $f4, $f6
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00D0($t5)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x8000
	li      $a2, 0x0004
	lw      $a1, 0x00C8($t2)
	lw      $a0, 0x00D4($t2)
	jal     camera_8028956C
	addu    $a1, $a1, $at
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00D4($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $a0, $sp, 0x0058
	addiu   $a1, $sp, 0x004C
	lw      $t7, 0x00C8($t0)
	lw      $a2, 0x0100($t0)
	move    $a3, $0
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43160000
	mtc1    $at, $f8
	lwc1    $f10, 0x0104($t3)
	lui     $at, %hi(math_cos)
	addiu   $t2, $sp, 0x004C
	trunc.w.s $f16, $f10
	lwc1    $f6, 0x0004($t2)
	mfc1    $t4, $f16
	nop
	andi    $t1, $t4, 0xFFFF
	sra     $t8, $t1, 4
	sll     $t5, $t8, 2
	addu    $at, $at, $t5
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f4, $f8, $f18
	add.s   $f10, $f6, $f4
	swc1    $f10, 0x0004($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x0104($t6)
	lwc1    $f8, 0x0108($t6)
	add.s   $f18, $f16, $f8
	swc1    $f18, 0x0104($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x44000000
	mtc1    $at, $f14
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	jal     camera_80289488
	lwc1    $f12, 0x0108($t0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x0108($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t3, $sp, 0x004C
	lwc1    $f6, 0x0000($t3)
	lwc1    $f4, 0x010C($t9)
	add.s   $f10, $f6, $f4
	swc1    $f10, 0x0000($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f14
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	jal     camera_80289488
	lwc1    $f12, 0x010C($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	swc1    $f0, 0x010C($t1)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     camera_80287E50
	addiu   $a1, $sp, 0x004C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x001F
	lw      $t5, 0x0154($t8)
	bne     $t5, $at, 383$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x431E0000
	mtc1    $at, $f8
	lwc1    $f16, 0x00A4($t2)
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x00A4($t2)
	jal     object_a_802AE334
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x431E0000
	mtc1    $at, $f4
	lwc1    $f6, 0x00A4($t6)
	add.s   $f10, $f6, $f4
	swc1    $f10, 0x00A4($t6)
383$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0062
	lw      $t7, 0x0154($t0)
	bne     $t7, $at, 396$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	jal     objlib_802A0568
	lw      $a0, 0x01AC($t9)
396$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x000E
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, 405$
	nop
	li.u    $a0, 0x045F8081
	jal     object_playsound
	li.l    $a0, 0x045F8081
405$:
	b       587$
	nop
407$:
	jal     objlib_8029F620
	nop
	addiu   $a0, $sp, 0x0064
	li      $a1, 0xC2C80000
	li      $a2, 0x42C80000
	jal     vecf_set
	li      $a3, 0x43960000
	lui     $a1, %hi(camerap)
	lui     $a3, %hi(mario_cam)
	lw      $a3, %lo(mario_cam)($a3)
	lw      $a1, %lo(camerap)($a1)
	addiu   $a0, $sp, 0x004C
	addiu   $a2, $sp, 0x0064
	addiu   $a3, $a3, 0x0010
	jal     camera_8028CBF0
	addiu   $a1, $a1, 0x0010
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     camera_80287E50
	addiu   $a1, $sp, 0x004C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t1, 0x1000
	sw      $t1, 0x00C4($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t5, 0x9000
	sw      $t5, 0x00C8($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t0, 0x00C4($t6)
	bgez    $t0, 442$
	sra     $t7, $t0, 1
	addiu   $at, $t0, 0x0001
	sra     $t7, $at, 1
442$:
	sw      $t7, 0x00D0($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t3, 0x00C8($t9)
	sw      $t3, 0x00D4($t9)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t1, 0x014C($t4)
	addiu   $t8, $t1, 0x0001
	sw      $t8, 0x014C($t4)
	b       587$
	nop
454$:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_80287E28
	addiu   $a0, $sp, 0x004C
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t2, 0x0154($t5)
	slti    $at, $t2, 0x003D
	bnez    $at, 502$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0xC1200000
	mtc1    $at, $f14
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	jal     camera_80289488
	lwc1    $f12, 0x00B8($t0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00B8($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, 0x00C8($t6)
	addiu   $t9, $t3, 0x0078
	sw      $t9, 0x00C8($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t8, 0x00C4($t1)
	addiu   $t4, $t8, 0x0040
	sw      $t4, 0x00C4($t1)
	lui     $a1, %hi(camerap)
	lw      $a1, %lo(camerap)($a1)
	addiu   $a0, $sp, 0x004C
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sll     $s1, $v0, 16
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sra     $t5, $s1, 16
	move    $s1, $t5
	move    $a1, $s1
	li      $a2, 0x0200
	jal     camera_8028984C
	lw      $a0, 0x00D4($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00D4($t0)
502$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t3, 0x0154($t7)
	slti    $at, $t3, 0x006A
	bnez    $at, 517$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x014C($t9)
	addiu   $t8, $t6, 0x0001
	sw      $t8, 0x014C($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t4, 0x0E00
	sw      $t4, 0x00C4($t1)
517$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00D0($t5)
	jal     objlib_802A31E0
	nop
	b       587$
	nop
524$:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_80287E28
	addiu   $a0, $sp, 0x004C
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x42700000
	mtc1    $at, $f14
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	jal     camera_80289488
	lwc1    $f12, 0x00B8($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	swc1    $f0, 0x00B8($t0)
	lui     $a1, %hi(camerap)
	lw      $a1, %lo(camerap)($a1)
	addiu   $a0, $sp, 0x004C
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sll     $s1, $v0, 16
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sra     $t7, $s1, 16
	move    $s1, $t7
	move    $a1, $s1
	li      $a2, 0x0200
	jal     camera_8028984C
	lw      $a0, 0x00D4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00D4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x003E
	beqz    $at, 571$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x1800
	li      $a2, 0x001E
	jal     camera_8028956C
	lw      $a0, 0x00C8($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
571$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a1, -0x2000
	li      $a2, 0x005A
	jal     camera_8028984C
	lw      $a0, 0x00C4($t5)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C4($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00D0($t0)
	jal     objlib_802A31E0
	nop
	b       587$
	nop
587$:
	b       589$
	nop
589$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0024($sp)
	lw      $s1, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0070

.globl camera_8029BDE4
camera_8029BDE4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	jal     randf
	nop
	swc1    $f0, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 41$
	nop
	b       87$
	nop
16$:
	lui     $at, %hi(camera_8033776C)
	jal     object_set_scale
	lwc1    $f12, %lo(camera_8033776C)($at)
	lui     $at, %hi(camera_80337770)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, %lo(camera_80337770)($at)
	swc1    $f4, 0x0110($t7)
	lui     $at, %hi(camera_80337774)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, %lo(camera_80337774)($at)
	swc1    $f6, 0x010C($t8)
	lui     $at, %hi(camera_80337778)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, %lo(camera_80337778)($at)
	swc1    $f8, 0x0108($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
	b       87$
	nop
41$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	addiu   $a0, $sp, 0x0034
	lw      $a1, 0x0110($t3)
	lw      $a2, 0x010C($t3)
	jal     vecf_set
	lw      $a3, 0x0108($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0064
	beqz    $at, 64$
	nop
	lui     $a0, %hi(object)
	li      $t6, 0x0020
	li      $t7, 0x0020
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x0034
	move    $a2, $0
	jal     camera_8029AEF8
	move    $a3, $0
64$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	lwc1    $f10, 0x0104($t8)
	c.eq.s  $f10, $f16
	nop
	bc1f    78$
	nop
	lw      $t9, 0x0154($t8)
	bnez    $t9, 78$
	nop
	li.u    $a0, 0x30690081
	jal     object_playsound
	li.l    $a0, 0x30690081
78$:
	lui     $t1, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t1, %lo(_camera_bss_330-0x330+0x53C)($t1)
	bnez    $t1, 85$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
85$:
	b       87$
	nop
87$:
	jal     objlib_802A31E0
	nop
	b       91$
	nop
91$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl camera_8029BF64
camera_8029BF64:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	jal     randf
	nop
	swc1    $f0, 0x0038($sp)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $at, 0x41C80000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 27$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 37$
	nop
	b       87$
	nop
27$:
	lui     $at, %hi(camera_8033777C)
	jal     object_set_scale
	lwc1    $f12, %lo(camera_8033777C)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
	b       87$
	nop
37$:
	lui     $t1, %hi(camerap)
	lw      $t1, %lo(camerap)($t1)
	addiu   $t2, $sp, 0x0030
	sw      $t2, 0x0010($sp)
	addiu   $a2, $sp, 0x0034
	addiu   $a3, $sp, 0x0032
	addiu   $a0, $t1, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t1, 0x0004
	lh      $t3, 0x0030($sp)
	addiu   $t4, $t3, 0x1000
	sh      $t4, 0x0030($sp)
	lh      $t5, 0x0032($sp)
	sh      $t5, 0x0032($sp)
	lui     $a0, %hi(camerap)
	lw      $a0, %lo(camerap)($a0)
	lh      $t6, 0x0030($sp)
	li.u    $a2, 0x465AC000
	li.l    $a2, 0x465AC000
	addiu   $a1, $sp, 0x003C
	lh      $a3, 0x0032($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	sw      $t6, 0x0010($sp)
	lui     $a0, %hi(object)
	li      $t7, 0x0008
	li      $t9, 0x0008
	sw      $t9, 0x0014($sp)
	sw      $t7, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x003C
	move    $a2, $0
	jal     camera_8029AEF8
	move    $a3, $0
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	lwc1    $f16, 0x0104($t0)
	c.eq.s  $f16, $f18
	nop
	bc1f    85$
	nop
	lw      $t8, 0x0154($t0)
	bnez    $t8, 85$
	nop
	li.u    $a0, 0x30690081
	jal     object_playsound
	li.l    $a0, 0x30690081
85$:
	b       87$
	nop
87$:
	jal     objlib_802A31E0
	nop
	b       91$
	nop
91$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_8029C0E4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0040($sp)
	jal     obj_make_here
	lw      $a2, 0x0044($sp)
	sw      $v0, 0x001C($sp)
	jal     randf
	nop
	li      $at, 0x40C00000
	mtc1    $at, $f4
	lw      $t8, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x0040($t8)
	la.u    $t9, _camera_bss_330-0x330+0x540
	la.l    $t9, _camera_bss_330-0x330+0x540
	lwc1    $f10, 0x0148($t9)
	lw      $t0, 0x001C($sp)
	swc1    $f10, 0x0104($t0)
	la.u    $t1, _camera_bss_330-0x330+0x540
	la.l    $t1, _camera_bss_330-0x330+0x540
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0148($t1)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0148($t1)
	lh      $t3, 0x0026($sp)
	lw      $t2, 0x001C($sp)
	mtc1    $t3, $f8
	lwc1    $f6, 0x00A0($t2)
	cvt.s.w $f10, $f8
	add.s   $f16, $f6, $f10
	swc1    $f16, 0x00A0($t2)
	lh      $t5, 0x002A($sp)
	lw      $t4, 0x001C($sp)
	mtc1    $t5, $f4
	lwc1    $f18, 0x00A4($t4)
	cvt.s.w $f8, $f4
	add.s   $f6, $f18, $f8
	swc1    $f6, 0x00A4($t4)
	lui     $t6, %hi(_camera_bss_330-0x330+0x53C)
	lh      $t6, %lo(_camera_bss_330-0x330+0x53C)($t6)
	slti    $at, $t6, 0x02BD
	bnez    $at, 58$
	nop
	lw      $t7, 0x001C($sp)
	li      $at, 0xC3160000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t7)
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x00A4($t7)
58$:
	lh      $t9, 0x002E($sp)
	lw      $t8, 0x001C($sp)
	mtc1    $t9, $f8
	lwc1    $f18, 0x00A8($t8)
	cvt.s.w $f6, $f8
	add.s   $f10, $f18, $f6
	swc1    $f10, 0x00A8($t8)
	lw      $t0, 0x001C($sp)
	lh      $t3, 0x0032($sp)
	lw      $t1, 0x00C4($t0)
	addu    $t2, $t1, $t3
	sw      $t2, 0x00C4($t0)
	lw      $t5, 0x001C($sp)
	lh      $t6, 0x0036($sp)
	lw      $t4, 0x00C8($t5)
	addu    $t7, $t4, $t6
	sw      $t7, 0x00C8($t5)
	lw      $t9, 0x001C($sp)
	lh      $t1, 0x003A($sp)
	lw      $t8, 0x00CC($t9)
	addu    $t3, $t8, $t1
	sw      $t3, 0x00CC($t9)
	lh      $t2, 0x003E($sp)
	lw      $t0, 0x001C($sp)
	mtc1    $t2, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x00B8($t0)
	b       88$
	nop
88$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8029C254
camera_8029C254:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $t6, %hi(camera_8033CBCC)
	lw      $t6, %lo(camera_8033CBCC)($t6)
	beqz    $t6, 318$
	nop
	lui     $t7, %hi(camerap)
	lw      $t7, %lo(camerap)($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0010($t7)
	swc1    $f4, 0x00A0($t8)
	lui     $t9, %hi(camerap)
	lw      $t9, %lo(camerap)($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0014($t9)
	swc1    $f6, 0x00A4($t0)
	lui     $t1, %hi(camerap)
	lw      $t1, %lo(camerap)($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x0018($t1)
	swc1    $f8, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00C4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00C8($t4)
	lui     $t5, %hi(camera_8033CBCC)
	lw      $t5, %lo(camera_8033CBCC)($t5)
	addiu   $t6, $t5, -0x0005
	sltiu   $at, $t6, 0x0005
	beqz    $at, 316$
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(camera_80337780)
	addu    $at, $at, $t6
	lw      $t6, %lo(camera_80337780)($at)
	jr      $t6
	nop
.globl L8029C2FC
L8029C2FC:
	lui     $a0, %hi(object)
	la.u    $a2, o_13005610
	la.l    $a2, o_13005610
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0066
	sw      $v0, 0x0034($sp)
	b       316$
	nop
.globl L8029C320
L8029C320:
	lui     $a0, %hi(object)
	la.u    $a2, o_13005638
	la.l    $a2, o_13005638
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00DE
	sw      $v0, 0x0034($sp)
	b       316$
	nop
.globl L8029C344
L8029C344:
	la.u    $t2, o_1300565C
	la.l    $t2, o_1300565C
	lui     $a0, %hi(object)
	li      $t7, 0x1000
	li      $t8, 0x6000
	li      $t9, -0x1E00
	li      $t0, 0x0019
	li      $t1, 0x0054
	sw      $t1, 0x0020($sp)
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0018($sp)
	sw      $t8, 0x0014($sp)
	sw      $t7, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t2, 0x0024($sp)
	move    $a1, $0
	li      $a2, 0x00CD
	jal     camera_8029C0E4
	li      $a3, 0x01F4
	la.u    $t8, o_1300565C
	la.l    $t8, o_1300565C
	lui     $a0, %hi(object)
	li      $t3, 0x1800
	li      $t4, 0x6000
	li      $t5, -0x1400
	li      $t6, 0x0023
	li      $t7, 0x0054
	sw      $t7, 0x0020($sp)
	sw      $t6, 0x001C($sp)
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t8, 0x0024($sp)
	move    $a1, $0
	li      $a2, 0x00CD
	jal     camera_8029C0E4
	li      $a3, 0x0320
	la.u    $t3, o_1300565C
	la.l    $t3, o_1300565C
	lui     $a0, %hi(object)
	li      $t9, 0x0800
	li      $t0, 0x6000
	li      $t1, 0x0019
	li      $t2, 0x0054
	sw      $t2, 0x0020($sp)
	sw      $t1, 0x001C($sp)
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t3, 0x0024($sp)
	li      $a1, -0x0064
	li      $a2, 0x012C
	li      $a3, 0x01F4
	jal     camera_8029C0E4
	sw      $0, 0x0018($sp)
	la.u    $t8, o_1300565C
	la.l    $t8, o_1300565C
	lui     $a0, %hi(object)
	li      $t4, 0x4000
	li      $t5, 0x1400
	li      $t6, 0x002D
	li      $t7, 0x0054
	sw      $t7, 0x0020($sp)
	sw      $t6, 0x001C($sp)
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t8, 0x0024($sp)
	li      $a1, 0x0064
	li      $a2, -0x00C8
	li      $a3, 0x0320
	jal     camera_8029C0E4
	sw      $0, 0x0010($sp)
	la.u    $t4, o_1300565C
	la.l    $t4, o_1300565C
	lui     $a0, %hi(object)
	li      $t9, 0x1800
	li      $t0, 0x5000
	li      $t1, 0x0A00
	li      $t2, 0x0023
	li      $t3, 0x0054
	sw      $t3, 0x0020($sp)
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0018($sp)
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t4, 0x0024($sp)
	li      $a1, -0x0050
	li      $a2, 0x012C
	jal     camera_8029C0E4
	li      $a3, 0x015E
	la.u    $t0, o_1300565C
	la.l    $t0, o_1300565C
	lui     $a0, %hi(object)
	li      $t5, 0x0800
	li      $t6, 0x6000
	li      $t7, 0x2800
	li      $t8, 0x0019
	li      $t9, 0x0054
	sw      $t9, 0x0020($sp)
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t0, 0x0024($sp)
	li      $a1, -0x012C
	li      $a2, 0x012C
	jal     camera_8029C0E4
	li      $a3, 0x01F4
	la.u    $t5, o_1300565C
	la.l    $t5, o_1300565C
	lui     $a0, %hi(object)
	li      $t1, 0x4000
	li      $t2, -0x1400
	li      $t3, 0x002D
	li      $t4, 0x0054
	sw      $t4, 0x0020($sp)
	sw      $t3, 0x001C($sp)
	sw      $t2, 0x0018($sp)
	sw      $t1, 0x0014($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t5, 0x0024($sp)
	li      $a1, -0x0190
	li      $a2, -0x00C8
	li      $a3, 0x0320
	jal     camera_8029C0E4
	sw      $0, 0x0010($sp)
	b       316$
	nop
.globl L8029C554
L8029C554:
	la.u    $t0, o_1300565C
	la.l    $t0, o_1300565C
	lui     $a0, %hi(object)
	li      $t6, 0x1000
	li      $t7, 0x6000
	li      $t8, 0x0023
	li      $t9, 0x0054
	sw      $t9, 0x0020($sp)
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t0, 0x0024($sp)
	li      $a1, 0x0032
	li      $a2, 0x00CD
	li      $a3, 0x01F4
	jal     camera_8029C0E4
	sw      $0, 0x0018($sp)
	la.u    $t5, o_1300565C
	la.l    $t5, o_1300565C
	lui     $a0, %hi(object)
	li      $t1, 0x1800
	li      $t2, 0x6000
	li      $t3, 0x0023
	li      $t4, 0x0054
	sw      $t4, 0x0020($sp)
	sw      $t3, 0x001C($sp)
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t5, 0x0024($sp)
	move    $a1, $0
	li      $a2, 0x011D
	li      $a3, 0x0320
	jal     camera_8029C0E4
	sw      $0, 0x0018($sp)
	b       316$
	nop
.globl L8029C5EC
L8029C5EC:
	la.u    $t9, o_13005680
	la.l    $t9, o_13005680
	lui     $a0, %hi(object)
	li      $t6, -0x0F00
	li      $t7, 0x0019
	li      $t8, 0x0054
	sw      $t8, 0x0020($sp)
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0018($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t9, 0x0024($sp)
	li      $a1, -0x0064
	li      $a2, -0x0064
	li      $a3, -0x02BC
	sw      $0, 0x0010($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0014($sp)
	la.u    $t3, o_13005680
	la.l    $t3, o_13005680
	lui     $a0, %hi(object)
	li      $t0, -0x1400
	li      $t1, 0x0019
	li      $t2, 0x0054
	sw      $t2, 0x0020($sp)
	sw      $t1, 0x001C($sp)
	sw      $t0, 0x0018($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t3, 0x0024($sp)
	li      $a1, -0x00FA
	li      $a2, 0x00FF
	li      $a3, -0x00C8
	sw      $0, 0x0010($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0014($sp)
	la.u    $t7, o_13005680
	la.l    $t7, o_13005680
	lui     $a0, %hi(object)
	li      $t4, -0x0500
	li      $t5, 0x0023
	li      $t6, 0x0054
	sw      $t6, 0x0020($sp)
	sw      $t5, 0x001C($sp)
	sw      $t4, 0x0018($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t7, 0x0024($sp)
	li      $a1, -0x0064
	li      $a2, 0x009B
	li      $a3, -0x0258
	sw      $0, 0x0010($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0014($sp)
	la.u    $t1, o_13005680
	la.l    $t1, o_13005680
	lui     $a0, %hi(object)
	li      $t8, -0x0700
	li      $t9, 0x0019
	li      $t0, 0x0054
	sw      $t0, 0x0020($sp)
	sw      $t9, 0x001C($sp)
	sw      $t8, 0x0018($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t1, 0x0024($sp)
	li      $a1, 0x00FA
	li      $a2, 0x00C8
	li      $a3, -0x04B0
	sw      $0, 0x0010($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0014($sp)
	la.u    $t4, o_13005680
	la.l    $t4, o_13005680
	lui     $a0, %hi(object)
	li      $t2, 0x0019
	li      $t3, 0x0054
	sw      $t3, 0x0020($sp)
	sw      $t2, 0x001C($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t4, 0x0024($sp)
	li      $a1, -0x00FA
	li      $a2, 0x00FF
	li      $a3, -0x02BC
	sw      $0, 0x0010($sp)
	sw      $0, 0x0014($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0018($sp)
	b       316$
	nop
316$:
	lui     $at, %hi(camera_8033CBCC)
	sw      $0, %lo(camera_8033CBCC)($at)
318$:
	b       320$
	nop
320$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop
