#include <stdio.h>
#include <stdlib.h>
int main()
{
	int i, j ,k;
	float arr[200][200], result;
	freopen("data.txt", "r", stdin); //open input file
	freopen("output.txt", "w", stdout); //open output file
	for(i = 0; i < 200; i++) //read input file
		for(j = 0; j < 200; j++)
			scanf("%f", &arr[i][j]);
	for(i = 0; i < 200; i++)
	{
		result = 0;
		for(j = 0; j < 200; j++) //count each row's result 
			for(k = 0; k < 200; k++)
				result += (arr[i][k] * arr[j][k]);
		printf("%.2f\n", result);
	}
	return 0;
}
