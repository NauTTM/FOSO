	.data
A:	.word	1 2 3 
B:	.word	4 5 6
C:	.word	0 0 0
i:	.word	0
j:	.word	3
spc:	.byte	' '
	
	.text
	lw	$s0,i($zero)
	lw	$s1,j($zero)
while:	bge	$s0,$s1,fin
	sll	$t0,$s0,2
	lw	$s2,A($t0)
	lw	$s3,B($t0)
	
	mult	$s2,$s3
	mflo	$s4
	sw	$s4,C($t0)
	
	add 	$a0,$zero,$s4
	addi	$v0,$zero,1
	syscall
	
	li	$v0, 11
	lb	$a0,spc($zero)
	syscall
	
	addi	$s0,$s0,1
	j	while	
	
fin:	nop
	
