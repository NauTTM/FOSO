	.data
	
cad:	.asciiz	"ensamblador"

	.text	
while:	lb	$s1, cad($s0)
		
	beq	$s1,$zero,fin

	addi	$s0,$s0,1
	
	j	while
fin:	nop
