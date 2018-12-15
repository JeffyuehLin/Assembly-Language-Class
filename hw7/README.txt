The Editor: J.Y.Lin
The Last Edit Date: 2018/12/15
The Language: Assembly-Language for ARM
The Assembler: arm-none-eabi-gcc
The Run environment: Ubuntu(version 16.04 or 18.04) or GDB ARM-Simulator

	This is the seventh homework for Assembly-Language Class. The program will use SWI to open, read, write and close files.
	
	This program will read data from input file named "input.txt", then transfer lower case letters('a' to 'z') to upper case letters(other characters are not changed).
	
	The program will output the results to the a text file named "output.txt".
	
	The maximun size of input file is 1000 characters.
	
	The contents of "input.txt" are same as "README.txt".

	There are six files in the compress file:
			hw7.s,
			hw7.exe,
			input.txt,
			output.txt,
			README.txt,
			makefile.
	
	Typing "make" command in terminal, it will run the command "arm-none-eabi-gcc -g -O0 hw7.c -o hw7.exe", and open the ARM-Insight program.
