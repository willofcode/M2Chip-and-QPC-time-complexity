// Name:_____William_Ng______
// File:__quicksorttimer.cpp_____
// The purpose this program, to measure high resolution time stamp of quicksort
#include <chrono>
#include <cstddef>
#include <iomanip>
#include <iostream>
#include <numeric>
#include <vector>
#include <algorithm> // include swap and count
using namespace std;
using std::chrono::microseconds; // inline namespace from chrono library

int partition(int arr[], int start, int end)
{
    int pivot = arr[start];
    int count = 0;
    for (int i = start + 1; i <= end; i++) {
        if (arr[i] <= pivot)
            count++;
    }
    int pivotIndex = start + count;     // Giving pivot element its correct position
    swap(arr[pivotIndex], arr[start]); 
    int i = start, j = end;   // Sorting left and right parts of the pivot element
    while (i < pivotIndex && j > pivotIndex) {
        while (arr[i] <= pivot) {
            i++;
        }
        while (arr[j] > pivot) {
            j--;
        }
        if (i < pivotIndex && j > pivotIndex) {
            swap(arr[i++], arr[j--]);
        }
    }
    return pivotIndex;
}

void quickSort(int arr[], int start, int end)
{
    if (start >= end) // base case
        return;
    int p = partition(arr, start, end); // partitioning the array
    quickSort(arr, start, p - 1);   // Sorting the left part
    quickSort(arr, p + 1, end);    // Sorting the right part
}

int main()
{
    std::cout << std::fixed << std::setprecision(9) << std::left;
    for (size_t size = 1ull; size < 100000000ull; size *= 10)
    {   
        int array[size];
        std::srand(static_cast<unsigned int>(std::time(nullptr))); // random number generator with respect to system time
        // Declare and initialize an array of random integers
        for (size_t i = 0; i < size; ++i) {
            array[i] = rand();
        }
        const auto start = std::chrono::high_resolution_clock::now(); // utilize type specifier ext c++11
        
        quickSort(array,0,size -1);
        
        const auto end = std::chrono::high_resolution_clock::now(); // utilize type specifier ext c++11
        
        std::chrono::duration<double> diff = end - start;
        
        std::cout << "\n\nTime to sort an array of " << size << " random integers: " << std::setw(9) << diff.count()<< " Seconds\n";

        // printing test for sorted array
        /*printf("First 10 elements after sorting:\n");
        for (std::size_t i = 0; i < std::min<std::size_t>(10,size); ++i) {
        std::cout << array[i] << " ";
        }*/
    /*for (int i = 0; i < 10; ++i) {
        std::cout << randomArray[i] << " ";
    }*/
    }
    return 0;
}

