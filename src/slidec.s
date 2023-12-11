.globl slidec
.ent slidec
slidec:
	lw      $24, 4($4)
	lw      $7, 8($4)
	lw      $25, 12($4)
	move    $6, $0
	add     $24, $5
	add     $7, $4
	add     $25, $4
	add     $4, 16
1:
	bnez    $6, 2f
	lw      $8, ($4)
	li      $6, 32
	add     $4, 4
2:
	slt     $9, $8, $0
	beqz    $9, 2f
	lb      $10, ($25)
	add     $25, 1
	sb      $10, ($5)
	add     $5, 1
	b       3f
2:
	lhu     $10, ($7)
	add     $7, 2
	srl     $11, $10, 12
	and     $10, 0xFFF
	sub     $9, $5, $10
	add     $11, 3
2:
	lb      $10, -1($9)
	sub     $11, 1
	add     $9, 1
	sb      $10, ($5)
	add     $5, 1
	bnez    $11, 2b
3:
	sll     $8, 1
	sub     $6, 1
	bne     $5, $24, 1b
	j       $31
.end slidec
