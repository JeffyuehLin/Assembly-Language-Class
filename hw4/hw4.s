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
	ldr r2, =a
	ldr r3, =b
	ldr r0, [r2]
	ldr r1, [r3]
	loop_gcd:
		cmp r0, r1
		beq end             /* r0 == r1, stop loop    */
		subgt r0, r0, r1    /* r0 > r1, r0 := r0 -r1  */
		sublt r1, r1, r0    /* r0 < r1, r1 := r1 - r0 */
		b loop_gcd
end:
	nop
