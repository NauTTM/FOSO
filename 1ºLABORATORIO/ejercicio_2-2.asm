	.data
f:	.word	5
g:	.word	7
h:	.word	9
i:	.word	12
j:	.word	11


	.text
	lw	$s0, f($zero)
	lw	$s1, g($zero)
	lw	$s2, h($zero)
	lw	$s3, i($zero)
	lw	$s4, j($zero)
	
	bne	$s3,$s4, Else 
	add	$s0,$s1,$s2
	j	Exit
Else:	sub	$s0,$s1,$s2
Exit:	nop