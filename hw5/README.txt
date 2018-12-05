The Editor: J.Y.Lin.
The Last Edit Date: 2018/12/03.
The Language: Assembly Launguage.
The Assembler: arm-none-eabi-gcc -g -O0 hw5_test.s gcd.s -o hw5.exe
The Run Environment: Ubuntu 18.04(or 16.04) and GDB ARM-Simulator.

	This program is for the Assembly-Language Class. This program will get the greatest common divisor(gcd), using with Euclid's Algorithm. After the computation, register r0 will hold the GCD of (a, b). 
	
	The program is divided into two parts. The first part(hw5_test.s) is the main function which will load the values from memory and call the gcd function; the second part(gcd.s) is the gcd function which will get the greatest common divisor(gcd) from register r0 and r1, and store the result into r0.

	There are two number is initialized, a and b are 32-bit unsigned integers as the following:
					a = 48,
					b = 40,
					so, gcd(a, b) = 8.

	There are four files in the compress file:
			hw5_test.s,
			gcd.s,
			hw5.exe,
			README.txt,
			Makefile.

	Typing "make" command in terminal, it will run the command "arm-none-eabi-gcc -g -O0 hw5_test.s gcd.s -o hw5.exe", and open the ARM-Insight program.

	Typing "make readme" command in terminal will show the RREADME.txt.
