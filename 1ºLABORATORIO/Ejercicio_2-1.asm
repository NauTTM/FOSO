	.data
f:	.word	0
g:	.word	1
h:	.word	4
i:	.word	3
j:	.word	5
k:	.word	0
l:	.word	0
s:	.word	0

	.text
	lw	$s0, f($zero)
	lw 	$s1, g($zero)
	lw	$s2, h($zero)
	lw	$s3, i($zero)
	lw	$s4, j($zero)
	lw	$s5, k($zero)	#El valor de la primera suma
	lw	$s6, l($zero)	#El valor de la segunda suma
	lw	$s7, s($zero)	#El valor a la resta de k y l
	
	add	$s5,$s1,$s2	#Primera suma
	
	add	$s6,$s3,$s4	#Segunda suma
	
	sub	$s7,$s5,$s6	#Ultima resta
	sw	$s7, s($zero)	#Ultima resta
	

end:	nop