This is my second homework for Assembly Language Class. This program sums up the content of register r1, r2, r3, and r4, and puts the result at register r0.

The content of four registers is given just like the following:
	r1 = 1
	r2 = 2
	r3 = 3
	r4 = 4

And r0 is the sum of the four registers by this: r0 = r1 + r2 + r3 + r4.

The program counts the sum of r1 and r2 first, and mov the sum to r0. Then the program sums up r0 and r3, and finally the program sums up r0 and r4.

The result is r0 = 10.

I write this program with VIM editor, running in Ubuntu 18.04. The program is compiled by "arm-none-eabi-gcc -g -O0". I also run the debugger to confirm the correctness of the program.
