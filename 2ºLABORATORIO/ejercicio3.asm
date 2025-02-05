	.data
h:	.word	4
i:	.word	3
j:	.word	5
A:	.word	10,11,02,20,18,5,-3,6,452,0

	.text
	lw	$s0,	h($zero)
	lw	$t1,	i($zero)
	lw	$t2,	j($zero)
	
	sll	$t0,$t1,2
	lw	$s1,	A($t0)
	add	$s1,$s0,$s1
	sw	$s1, 	A($t0)
	nop