	 .data
radio:	.float	5
pi:	.float	3.14159265358973238
perim:	.float	0
texto:	.asciiz	"\nPeri'metro: "	
	.text
main:	l.s	$f1,radio($zero)
	l.s	$f0,pi($zero)
	
	mul.s	$f2,$f0,$f1	#pi*r
	addi	$s0,$zero,2	#li $s0,2
	mtc1	$s0,$f3
	cvt.s.w	$f3,$f3
	mul.s	$f3,$f3,$f2
		
	s.s	$f3,perim($zero)	
		
	la	$a0,texto($zero)
	addi	$v0,$zero,4	#li $vo,4
	syscall			#print string
	
	mov.s	$f12,$f3
	addi	$v0,$zero,2	#li $v0,3
	syscall			#print float

fin:	nop
