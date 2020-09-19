#include <stdio.h>
#include<stdlib.h>
#include <iostream>
#include "sort.h"


int main(int argc, const char * argv[])
{
    int arr[10] = {2,5,6,4,3,7,9,8,1,0};
	int n = 10;
	coutArray(arr, n);
	//selectSort(arr, n);
	//bubbleSort(arr, n);
	//insertSort(arr, n);
	//mergeSort(arr, n);
	//quickSort(arr, n);
	heapSort(arr, n);
	coutArray(arr, n);



	return 1;
};
