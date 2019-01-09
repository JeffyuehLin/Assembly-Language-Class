#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main()
{
	int i, j;
	int a, b;
	float c;
	FILE *fp = freopen("data.txt", "w", stdout);
	srand(time(NULL));
	for(i = 0; i < 200; i++)
	{
		for(j = 0; j < 200; j++)
		{
			a = rand() % 100 + 1;
			b = rand() % 100 + 1;
			c = (float)a/b;
			printf("%.2f ", c);
		}
		printf("\n");
	}
	return 0;
}
