	.data
A:	.word	20,11,02,18,5,-3,6,452,0
result:	.word	37

	.text
	lw	$s0,result($zero)
	
	la	$s1,A($zero)
	lw	$a0,0($s1)
	lw	$a1,4($s1)
	lw	$a2,8($s1)
	lw	$a3,12($s1)
	
	jal	func
	
	add	$s0,$v0,$s0
	j	fin
	

func:	addi	$sp,$sp,-4
	sw	$s1,0($sp)
	addi	$sp,$sp,-4
	sw	$s0,0($sp)


	add	$s2,$zero,$zero
	add	$s1,$a0,$a1
	add	$s0,$a2,$a3
	sub	$v0,$s1,$s0

	lw	$s0,0($sp)
	addi	$sp,$sp,4
	lw	$s1,0($sp)
	addi	$sp,$sp,4
	
	jr	$ra
	
fin:	nop