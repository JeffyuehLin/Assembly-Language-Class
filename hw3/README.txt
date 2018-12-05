The editor: J.Y.Lin. The last edit date: 2018/11/17

The compiler: arm-none-eabi-gcc -g -O0
The run environment: Ubuntu or GDB ARM Simulator
	
	This is my third homework for Assembly Language Class.This program will multiple two matrix A and B. A is a 3x2 matrix and B is a 2x3 matrix. C is the result of A x B (C = A x B), so C is a 3x3 matrix.

	Each element in A, B, and C is a word-sized integer, and the following is the values of A, B and C:	
           A =    [1, 2]    B =  [7,    8,   9]   ,so C =  [23,   29,  35]
                     [3, 4]           [10, 11, 12]               [53,   67,  81]
	         [5, 6]                                         [83, 105, 127]

	I use double-loop to compute the result. The memory of matrix C is after the memory of matrix B. The register r1 will point to the address of C's first element after the computation.

	There is a Makefile in the compress file. When running "make" command, the computer will compile the program and open the Insight.
