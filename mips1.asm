	.data
var1:	.word	14
var2:	.word	-6
	.text
	lw	$s1,var1($zero)	#load-word
	lw	$s2,var2($zero)
	add	$s1,$s1,$s2	#suma
	sw	$s1,var1($zero)
	nop
