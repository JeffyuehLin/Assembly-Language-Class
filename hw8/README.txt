The Editor: J.Y.Lin
The Last Edit Date: 2019/01/09
The Language: C-Language
The Compiler: GCC
The Parameter of Compiler: "-msse -mavx"
The Edit, Test and Run Environment:
	The OS: Ubuntu (version 18.04) in Oracle VM VirtualBox
	The CPU of Host Machine: Intel Core i5 7200U
	The ISA of the CPU:
		MMX, SSE, SSE2, SSE3, SSSE3, SSE4.1, SSE4.2, EM64T, VT-x, AES, AVX, AVX2, FMA3

	In this project, the programs will product 200 * 200 random numbers, which are float type with 2 decimal places. Then the program will compute the results by following three ways:
	1.	without any SIMD intrinsic function(as a theoretical value): hw8.c
	2.	SIMD_SSE intrinsic function: hw8simd_sse.c
	3.	SIMD_AVX intrinsic function: hw8simd_avx.c

	Finally, the program will compute the maximun and average error between the theoretical value and the other two outputs.

	If the user input "make" on the terminal, it will run the following instructions:
	
	gcc random.c
	./a.out
	gcc hw8.c
	./a.out
	gcc -msse4 hw8simd_sse.c
	./a.out
	gcc -mavx hw8simd_avx.c
	./a.out
	gcc error.c
	./a.out

	There are seven files in the compress file:
			random.c
			hw8.c
			hw8simd_sse.c
			hw8simd_avx.c
			error.c
			README.txt
			Makefile
