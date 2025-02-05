	.data
pi:	.float	3.141592
radio:	.float	0
area:	.float	0
texto:	.asciiz	"\n'Area: "
	.text
main:	l.s	$f0,pi($zero)
		addi	$v0,$zero,6
		syscall
		mov.s	$f1,$f0
		s.s	$f1,radio($zero)
		
		l.s	$f0,pi($zero)
		
		mul.s	$f1,$f1,$f1
		mul.s	$f3,$f1,$f0
		s.s	$f3,area($zero)
		
		la	$a0, texto($zero)
		addi 	$v0,$zero,4
		syscall
		
		mov.s	$f12,$f3
		addi		$v0,$zero,2
		syscall

fin:	nop
		
		
	