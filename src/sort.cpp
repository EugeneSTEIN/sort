#include "sort.h"


int min(int x, int y)
{
	return (x > y)? y : x;
}


void coutArray(int *arr, int n)
{
	for(int i = 0; i < n; ++i)
	{
		std::cout << arr[i] << ","; 
	}
	std::cout << "\n";
}


void swap(int *arr, int i, int j)
{
	int temp = arr[i];
	arr[i] = arr[j];
	arr[j] =temp;
}


void selectSort(int *arr, int n)
{
	int minInd, tmp;
	for(int i = 0; i < n-1; ++i)
	{
		minInd = i;
		for(int j = i+1; j < n; ++j)
		{
			if(arr[minInd] > arr[j])
			{
				minInd = j;
			}
		}
		if(minInd != i)
		{
			swap(arr, i, minInd);
		}			
	}
	std::cout << "selectSort done!\n";
}


void bubbleSort(int *arr, int n)
{
	bool flag;
	for(int i = 0; i < n-1; ++i)
	{
		flag = true;
		for(int j = 1; j < n-i; ++j)
		{
			if(arr[j] < arr[j-1])
			{
				swap(arr, j, j-1);
				flag = false;
			}
		}

		if(flag)
		{
			break;
		}
	}
	std::cout << "bubbleSort done!\n";
}


void insertSort(int *arr, int n)
{
	int temp, j;
	for(int i = 1; i < n; ++i)
	{
		temp = arr[i];
		for(j = i; j > 0; --j)
		{
			if(temp < arr[j-1])
			{
				arr[j] = arr[j-1];
			}
			else
			{
				break;
			}
		}
		arr[j] = temp;
	}
	std::cout << "insertSort done!\n";
}


static void _merge(int *arr, int start, int mid, int end)
{
	int *temp = (int *)malloc((end-start+1) * sizeof(int));
	int i = start;
	int j = mid + 1;
	int k = 0;

	while(i <= mid && j <= end)
	{
		if(arr[i] <= arr[j])
		{
			temp[k++] = arr[i++];
		}
		else
		{
			temp[k++] = arr[j++];
		}
	}

	while(i <= mid)
	{
		temp[k++] = arr[i++];
	}
	while(j <= end)
	{
		temp[k++] = arr[j++];
	}

	for(i = 0; i < k; ++i)
	{
		arr[start + i]  = temp[i];
	}
	
	free(temp);
}


static void _mergeSort(int *arr, int start, int end)
{
	int mid = start + (end - start) / 2;
	if (start >= end)
	{
		return;
	}
	
	_mergeSort(arr, start, mid);
	_mergeSort(arr, mid + 1, end);
	_merge(arr, start, mid, end);
}

void mergeSort(int *arr, int n)
{
	_mergeSort(arr, 0, n-1);
	std::cout << "mergeSort done!\n";
}



static void _quickSort(int *arr, int low, int high)
{
	if(low >= high)
	{
		return;
	}

	int start = low;
	int end = high;
	int key = arr[start];
	
	while(start < end)
	{
		while(start < end && arr[end] > key)
		{
			--end;
		}
		arr[start] = arr[end];

		while(start < end && arr[start] <= key)
		{
			++start;
		}
		arr[end] = arr[start];
	}
	arr[start] = key;

	_quickSort(arr, low, start-1);
	_quickSort(arr, start+1, high);
}

void quickSort(int *arr, int n)
{
	_quickSort(arr, 0, n-1);
	std::cout << "quickSort done!\n";
}



static void _heapAdjust(int *arr, int i, int n)
{
	int temp = arr[i];
	for(int k = i*2+1; k < n; k = 2*k+1)
	{
		if(k+1 < n && arr[k] < arr[k+1])
		{
			++k;
		}
		if(arr[k] > temp)
		{
			arr[i] = arr[k];
			i = k;
		}
		else
		{
			break;
		}
	}
	arr[i] = temp;

}



void heapSort(int *arr, int n)
{
	// init
	for(int i = n/2-1; i >= 0; --i)
	{
		_heapAdjust(arr, i, n);
	}
	
	// swap
	for(int i = n-1; i > 0; --i)
	{
		swap(arr, 0, i);
		_heapAdjust(arr, 0, i);
	}
	std::cout << "heapSort done!\n";
}



static void _qSort(int *arr, int low, int high)
{
	if(low >= high)
	{
		return;
	}

	int start = low;
	int end = high;
	int key = (start+end)/2;
	
	while(start < end)
	{
		while(start < end && arr[end] > arr[key])
		{
			--end;
		}
		swap(arr, end, key);
		key = end;

		while(start < end && arr[start] <= arr[key])
		{
			++start;
		}
		swap(arr, start, key);
		key = start;
	}
	arr[start] = arr[key];

	_qSort(arr, low, start-1);
	_qSort(arr, start+1, high);
}

void qSort(int *arr, int n)
{
	_qSort(arr, 0, n-1);
	std::cout << "quickSort done!\n";
}