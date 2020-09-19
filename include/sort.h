#ifndef SORT_H //START_OF_CARTREE_H
#define SORT_H

#include <iostream>


int min(int x, int y);
void coutArray(int *arr, int n);
void swap(int *arr, int i, int j);

void selectSort(int *arr, int n);
void bubbleSort(int *arr, int n);
void insertSort(int *arr, int n);
void shellSort(int *arr, int n);  // is necessary?
void mergeSort(int *arr, int n);
void quickSort(int *arr, int n);
void heapSort(int *arr, int n);

#endif  //END_OF_CARTREE_H
