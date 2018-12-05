	.section .text
	.global main
	.type main,%function
main:
	mov r1, #1 		/* r1 = 1 */
	mov r2, #2 		/* r2 = 2 */
	mov r3, #3 		/* r3 = 3 */
	mov r4, #4 		/* r4 = 4 */
	add r0, r1, r2	/* r0 = r1 + r2 */
	add r0, r0, r3	/* r0 = r0 + r3 */
	add r0, r0, r4	/* r0 = r0 + r4 */
	nop
	.end
