// Name:_____William_Ng______
// File:__bubblesorttimer.cpp_____
// The purpose this program, to measure high resolution time stamp of bubblesort
#include <chrono>
#include <cstddef>
#include <iomanip>
#include <iostream>
#include <numeric>
#include <vector>
#include <algorithm> // include swap and count
using namespace std;
using std::chrono::microseconds; // inline namespace from chrono library

void bubbleSort(vector<int>& arr) { // utilizing vector for memory management
    int size = arr.size();
    for (int i = 0; i < size - 1; ++i) {
        for (int j = 0; j < size - i - 1; ++j) {
            if (arr[j] > arr[j + 1]) {
                std::swap(arr[j], arr[j + 1]);
            }
        }
    }
}

int main()
{
    std::cout << std::fixed << std::setprecision(9) << std::left;
    for (size_t size = 1ull; size < 1000000ull; size *= 10)
    {   
        vector<int> array(size);
        std::srand(static_cast<unsigned int>(std::time(nullptr))); // random number generator with respect to system time
        // Declare and initialize an array of random integers
        for (size_t i = 0; i < size; ++i) {
            array[i] = rand();
        }
        const auto start = std::chrono::high_resolution_clock::now(); // utilize type specifier ext c++11
        
        bubbleSort(array);
        
        const auto end = std::chrono::high_resolution_clock::now(); // utilize type specifier ext c++11
        
        std::chrono::duration<double> diff = end - start;
        
        std::cout << "\n\nTime to sort an array of " << size << " random integers: " << std::setw(9) << diff.count()<< " Seconds\n";
    
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