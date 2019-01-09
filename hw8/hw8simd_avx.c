#include <stdio.h>
#include <mmintrin.h>
#include <immintrin.h>
int main()
{
	int i, j, k;
	float A[200][200] __attribute__ ((aligned(32))); //store the input data
	float result;
	__m256 a, b, tmp[25], ans;
	//open input and output files
	freopen("data.txt", "r", stdin);
	freopen("output_simd_avx.txt", "w", stdout);
	for(i = 0; i < 200; i++)
		for(j = 0; j < 200 ;j++)
			scanf("%f", &A[i][j]);
	for(i = 0; i < 200; i++)
	{
		ans = _mm256_setzero_ps(); /* set all elements of ans array to zero */
		result = 0; //initialize
		for(j = 0; j < 200; j++)
		{
			//multiply each 8 elements of two arrays
			//so it will run 25 times
			for(k = 0; k < 25; k++) 
			{
				a = _mm256_load_ps(A[i] + k * 8);
				b = _mm256_load_ps(A[j] + k * 8);
				tmp[k] = _mm256_mul_ps(a, b);
			}
			//add 25 parts of tmp to ans
			for(k = 0; k < 25; k++)
				ans = _mm256_add_ps(ans, tmp[k]);
		}
		//sum eight elements of ans to result 
		for(j = 0; j < 8; j++)
			result += ans[j];
		printf("%.2f\n", result);
	}
	return 0;
}
