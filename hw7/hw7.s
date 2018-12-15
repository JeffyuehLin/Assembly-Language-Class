/*The Editor: J.Y.Lin*/
.set SWI_Open, 0x1
.set SWI_Close, 0x2
.set SWI_WriteC, 0x3
.set SWI_Write, 0x5
.set SWI_Read, 0x6
.set SWI_Flen, 0xC
.set JeffSWI, 0x123456

/* ========================= */
/*       DATA section        */
/* ========================= */
	.data
	.align 4

.inputname_addr:
	.ascii "input.txt\000"

.outputname_addr:
	.ascii "output.txt\000"

.readbuffer:
	.space 4

.outputstr:
		.space 1000

/* ========================= */
/*       TEXT section        */
/* ========================= */
	.section .text
	.global main
	.type main, %function

.open_input_param:
	.word .inputname_addr	/* the address of file name(path) */
	.word 0x2				/* argument(Read : 0x2, Write: 0x4, Append: 0x8) */
	.word 0x8				/* length of file name */

.open_output_param:
	.word .outputname_addr
	.word 0x4
	.word 0x8

.flen_param:
	.space 4			/* file descriptor */ 

.read_param:
	.space 4			/* file descriptor */
	.word .readbuffer	/* address of the read buffer */
	.space 4			/* # of bytes to be read */

.write_param:
	.space 4	/* file descriptor */
	.space 4	/* address of the string */
	.space 4	/* length of the string */

.close_param:
	.space 4	/* file descriptor */

main:
	mov ip, sp
	stmfd sp!, {fp, ip, lr, pc}
	sub fp, ip, #4

	/*open input file*/
	mov r0, #SWI_Open
	adrl r1, .open_input_param
	swi JeffSWI
	mov r2, r0			/* r2 is file descriptor */

	/* get the length of input file */
	mov r0, #SWI_Flen
	adrl r1, .flen_param
	str r2, [r1, #0]
	swi JeffSWI
	mov r6, r0			/* r6 is the length of input file */
	mov r8, r6			/* r8 is the value of r6 for temporary */
	ldr r7, =.outputstr	/* r7 is the address of output string */

	/* read input file */
	adrl r1, .read_param
	str r2, [r1, #0]	/* store file descriptor */
	ldr r5, [r1, #4]	/* r5 is the address of readbuffer */
	mov r3, #1
	str r3, [r1, #8]	/* store the length of the string */

loop:
	cmp r6, #0			/* while(r6 > 0) */
	beq final
	/* read data from input file one by one char */
	mov r0, #SWI_Read
	swi JeffSWI
	ldrb r4, [r5, #0]	/* r4 is the read data */
	bl toupper	
	strb r4, [r7], #1
	
	sub r6, r6, #1		/* r6 := r6 - 1 */
	b loop

toupper:
	cmp r4, #0x61 
	movlt pc, lr		/* if r4 < 'a' */
	cmp r4, #0x7A		
	suble r4, r4, #32	/* if r4 <= 'z', r4 := r4 - 32 */
	mov pc, lr

final:
	/* close input file */
	adrl r1, .close_param
	str r2, [r1, #0]
	mov r0, #SWI_Close
	swi JeffSWI

	/* open output file */
	mov r0, #SWI_Open
	adrl r1, .open_output_param
	swi JeffSWI
	mov r2, r0			/* r2 is file descriptor */

	/* write output string to output file */
	adrl r1, .write_param
	str r2, [r1, #0]	/* store file descriptor */
	ldr r3, =.outputstr
	str r3, [r1, #4]	/* store the address of string */
	mov r3, r8
	str r3, [r1, #8]	/* store the length of the string */
	mov r0, #SWI_Write
	swi JeffSWI

	/* close output file */
	adrl r1, .close_param
	str r2, [r1, #0]
	mov r0, #SWI_Close
	swi JeffSWI
	
	nop
	ldmea fp, {fp, sp, pc}
	.end
