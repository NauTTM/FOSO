	.data
num:	.word	4
dato:	.word	4,9,8,6
sum:	.word	0
cont:	.word	0
	.text
	
	lw	$s0,num($zero)
	lw	$s1,sum($zero)
	lw	$s2,cont($zero)
While:	bgt	$s2,$s0,fin
	sll	$t0,$s2,2
	lw	$s3,dato($t0)
	add	$s1,$s1,$s3
	addi	$s2,$s2,1
	j	While
fin:	nop