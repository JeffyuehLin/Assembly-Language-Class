/* data section */
	.data
	.align 4
/* value of a */
	.type a, %object
	.size a, 4
a:
	.word 48
/* value of b */
	.type b, %object
	.size b, 4
b:
	.word 40
/* text section */
	.section .text
	.global main
	.type main, %function

main:
	mov ip, sp
	stmfd sp!, {fp, ip, lr, pc}
	sub fp, ip, #4

	ldr r2, =a	/*load the value of a and b*/
	ldr r3, =b
	ldr r0, [r2]
	ldr r1, [r3]
	bl gcd		/*run gcd function*/
	nop
	
	ldmea fp, {fp, sp, pc}
	.end
