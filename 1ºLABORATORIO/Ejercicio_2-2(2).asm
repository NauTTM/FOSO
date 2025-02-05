	.data
f:	.word	0
g:	.word	1
h:	.word	4
i:	.word	5
j:	.word	5
	.text
main:	lw,	$s1, f($zero)
	lw,	$s2, g($zero)
	lw,	$s3, h($zero)
	lw,	$s4, i($zero)
	lw,	$s5, j($zero)
	
if:	bne,	$s4,$s5,Else
	sub,	$s1,$s2,$s3
	j	Exit
Else:	add,	$s1,$s2,$s3

	sw,	$s1,($zero)
Exit:	nop