	.data
f:	.word	0
g:	.word	1
h:	.word	4
i:	.word	3
j:	.word	5
	.text
main:	lw,	$s1, f($zero)
	lw,	$s2, g($zero)
	lw,	$s3, h($zero)
	lw,	$s4, i($zero)
	lw,	$s5, j($zero)
	
	add	$s2,$s2,$s3
	add	$s4,$s4,$s5
	sub	$s1,$s2,$s4
	sw	$s1,($zero)