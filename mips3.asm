	.data
cad:	.asciiz	"Ensamblador"
lon:	.word	0
	.text
	
	lw	$s0,lon($zero)
While:	lb	$s1,cad($s0)
	beq	$s1,$zero,fin
	addi	$s0,$s0,1
	j	While
	
fin:	nop