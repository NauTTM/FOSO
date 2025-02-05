	.data
A:	.word	4
dato:	.word	4 9 8 6

	.text	
	lw	$s1, A($zero)
	li	$t0, 0
while:	lw	$s2, dato($t0)
	beq	$s4,$s1,end
	add	$s3,$s3,$s2
	addi	$s4, $s4, 1
	sll	$t0,$s4,2
	j	while
end:	nop