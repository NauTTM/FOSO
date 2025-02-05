	.data
radio:	.float	5
pi:	.float	3.14
perim:	.float	0
texto:	.asciiz	"\nPerimetro: "	
	.text
main:	l.s	$f1,radio($zero)
	l.s	$f0,pi($zero)
	
	mul.s	$f2,$f0,$f1	
	addi	$s0,$zero,2
	mtc1	$s0,$f3
	cvt.s.w	$f3,$f3
	mul.s	$f3,$f3,$f2
		
	s.s	$f3,perim($zero)	
		
	la	$a0,texto($zero)
	addi	$v0,$zero,4	
	syscall		
	
	mov.s	$f12,$f3
	addi	$v0,$zero,2	
	syscall		

fin:	nop
