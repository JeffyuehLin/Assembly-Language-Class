/* data section */
	.data
	.align 4

/* text section */
	.section .text
	.global gcd
	.type gcd, %function

gcd:
	mov ip, sp
	stmfd sp!, {r4-r10, fp, ip, lr, pc}
	sub fp, ip, #4
	
	/*r0 and r1 are the input value*/
	/*while(r0 != r1)*/
	loop_gcd:
		cmp r0, r1
		beq end             /* r0 == r1, stop loop    */
		subgt r0, r0, r1    /* r0 > r1, r0 := r0 - r1 */
		sublt r1, r1, r0    /* r0 < r1, r1 := r1 - r0 */
		b loop_gcd
end:
	ldmea fp, {r4-r10, fp, sp, pc}
	.end
