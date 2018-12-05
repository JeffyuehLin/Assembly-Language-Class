The Editor: J.Y.Lin.
The Last Edit Date: 2018/11/19.
The Language: Assembly Launguage
The Compiler: arm-none-eabi-gcc -g -O0 hw4.s -o hw4.exe
The Run Environment: Ubuntu 18.04 and GDB ARM-Simulator

	This program is for the Assembly-Language Class. This program will get the greatest common divisor(gcd), using with Euclid's Algorithm. After the computation, register r0 will hold the GCD of (a, b).

	There are two number is initialized, a and b are 32-bit unsigned integers as the following:
					a = 48,
					b = 40,
					so, gcd(a, b) = 8.

	There are four files in the compress file:
			hw4.s,
			hw4.exe,
			README.txt,
			Makefile.

	Typing "make" command in terminal, it will run the command "arm-none-eabi-gcc -g -O0 hw4.s -o hw4.exe", and open the ARM-Insight program. 
