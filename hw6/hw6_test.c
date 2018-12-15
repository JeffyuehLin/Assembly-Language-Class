#include <stdio.h>
int main(void)
{
	int the_gcd, a = 40, b = 48; //initialize
	the_gcd = gcd(a, b); //call the gcd function
	printf("The greatest common divider is %d.\n", the_gcd); //print the result
	return 0;
}
