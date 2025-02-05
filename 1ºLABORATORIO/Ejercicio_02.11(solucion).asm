		.data
radio:	.float	-1
pi:		.float	3.141592
area:	.float	0
texto:	.asciiz	"\n'Area: "	
		.text
main:	addi		$v0,$zero,6
		syscall
		mov.s	$f1,$f0	#radio en $f1	
		s.s		$f1,radio($zero)
		
		l.s		$f0,pi($zero)
	
		mul.s	$f1,$f1,$f1	#r*r
		mul.s	$f2,$f0,$f1	#pi*r^2

		s.s		$f2,area($zero)	
		
		la		$a0,texto($zero)
		addi		$v0,$zero,4	#li $vo,4
		syscall			#print string
	
		mov.s	$f12,$f2
		addi		$v0,$zero,2	#li $v0,3
		syscall			#print float

fin:	nop
