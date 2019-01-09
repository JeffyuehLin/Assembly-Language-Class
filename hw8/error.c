#include <stdio.h>
#include <stdlib.h>
int main()
{
	int i;
	float arr[200], max_1 = 0, max_2 = 0, avg_1 = 0, avg_2 = 0, a, b, c, err_1, err_2;
	FILE *fth = fopen("output.txt", "r");
	FILE *f1 = fopen("output_simd_sse.txt", "r"), *f2 = fopen("output_simd_avx.txt", "r");
	for(i = 0; i < 200; i++)
	{
		fscanf(fth, "%f", &a);
		fscanf(f1, "%f", &b);
		fscanf(f2, "%f", &c);
		err_1 = b / a - 1;
		err_2 = c / a - 1;
		if(err_1 < 0)
			err_1 *= -1;
		if(err_2 < 0)
			err_2 *= -1;
		err_1 *= 100;
		err_2 *= 100;
		if(max_1 < err_1)
			max_1 = err_1;
		if(max_2 < err_2)
			max_2 = err_2;
		avg_1 = (avg_1 * i + err_1) / (i + 1);
		avg_2 = (avg_2 * i + err_2) / (i + 1);
	}
	printf("\n\n\n========================================\n\n");
	printf("The output used SSE:\n");
	printf("\tThe Maximun error of output data : %f%%\n", max_1);
	printf("\tThe Average error of output data : %f%%\n\n\n", avg_1);
	printf("The output used AVX:\n");
	printf("\tThe Maximun error of output data : %f%%\n", max_2);
	printf("\tThe Average error of output data : %f%%\n", avg_2);
	printf("\n\n========================================\n\n");
	return 0;
}
