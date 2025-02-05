	.data
h:	.word	4
i:	.word	3
j:	.word	5
A:	.word	19,11,02,20,18,5,-3,6,452,0,5,3,2,4,3

	.text
	lw	$s1,	h($zero)
	lw	$t1,	i($zero)
	lw	$s2,	j($zero)
	
	sll	$t0,$t1,2
	lw	$s0,A($t0)
	add	$s3,$s1,$s0
	sw	$s1,A($t0)
	nop