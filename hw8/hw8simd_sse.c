#include <stdio.h>
#include <mmintrin.h>
#include <xmmintrin.h>
int main()
{
	int i, j, k;
	float A[200][200] __attribute__ ((aligned(16))); //store the input data
	float result;
	__m128 a, b, tmp[50], ans;
	//open input and output files
	freopen("data.txt", "r", stdin);
	freopen("output_simd_sse.txt", "w", stdout);
	for(i = 0; i < 200; i++)
		for(j = 0; j < 200 ;j++)
			scanf("%f", &A[i][j]);
	for(i = 0; i < 200; i++)
	{
		ans = _mm_setzero_ps(); /* set all elements of ans array to zero */
		result = 0; //initialize
		for(j = 0; j < 200; j++)
		{
			//multiply each 4 elements of two arrays
			//so it will run 50 times
			for(k = 0; k < 50; k++) 
			{
				a = _mm_load_ps(A[i] + k * 4);
				b = _mm_load_ps(A[j] + k * 4);
				tmp[k] = _mm_mul_ps(a, b);
			}
			//add 50 parts of tmp to ans
			for(k = 0; k < 50; k++)
				ans = _mm_add_ps(ans, tmp[k]);
		}
		//sum four elements of ans to result 
		for(j = 0; j < 4; j++)
			result += ans[j];
		printf("%.2f\n", result);
	}
	return 0;
}
