The Editor: J.Y.Lin
The Last Edit Date: 2018/12/10
The Language: Assembly-Language for Arm
The Run Environment: Ubuntu(version 16.04 or 18.04) or Arm-Insight-Simuator
The Assembler: arm-none-eabi-gcc

	This is the sixth homework for Assembly-Language Class. There are a main program(hw6_test.c) by C-Language and the gcd program(gcd.s) by Assembly-Language. The main program sets two integer a and b, and call the gcd function from gcd.s, then the gcd program will return the the greatest common divider of integer a and b. The following is the values about a, b, and the_gcd:
			a = 40;
			b = 48;
			so the_gcd = gcd(a, b) = 8.

	There are five files in the compress file:
			hw6_test.c,
			gcd.s,
			hw6.exe,
			README.txt,
			Makefile.

	Typing "make" command in terminal, it will run the command "arm-none-eabi-gcc -g -O0 hw6_test.c gcd.s -o hw6.exe", and open the ARM-Insight program.

	Typing "make readme" command in terminal will show the README.txt.
