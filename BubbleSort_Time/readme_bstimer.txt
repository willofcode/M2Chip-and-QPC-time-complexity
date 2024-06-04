######################################################################
        C++ Program: Bubble Sort Algorithm with System Time Calculation
######################################################################

Author: William Ng

######################################################################

Description:
------------

This C++ program demonstrates the implementation of the Bubble Sort
algorithm to sort an array in ascending order. The program also measures
the system time taken by the sorting process using the `chrono` library.

Additional Note:
----------------

after executing the program please note that after 10000 random integers
the time calculation takes longer please wait for the program to finish
calculating.

######################################################################

Instructions:
-------------

1. Open the C++ source code file (sourcecode.cpp) using
   a C++ IDE or text editor.

2. Modify the array size and data in the source code according to your
   requirements.

3. Compile and run the program using the following command:

   ```zsh
   g++ -std=c++11 sourcecode.cpp -o myprogram

note:
-----

g++: The GNU Compiler Collection for C and C++.
-std=c++11: Specifies the C++ language standard to use (C++11).
sourcecode.cpp: Replace this with the actual filename of your source code.
-o myprogram: Specifies the output filename for the compiled program.

execute on terminal:
--------------------

./myprogram

#######################################################################

System time implementation using Chrono library:
------------------------------------------------

// File:__bubblesorttimer.cpp_____
// The purpose this program, to measure high resolution time stamp of bubblesort
#include <chrono>
 "              "
 "              "
 "              "
 "              "
#include <vector>
using namespace std;
// inline namespace from chrono library

void bubbleSort(vector<int>& arr) { // utilizing vector for memory management
}

int main()
{
    std::cout << std::fixed << std::setprecision(9) << std::left;
    // Loop for interation of different array sizes
    {   
        vector<int> array(size);
        // random number generator with respect to system time
        // Declare and initialize an array of random integers
        for (size_t i = 0; i < size; ++i) {
            array[i] = rand();
        }
        const auto start = std::chrono::high_resolution_clock::now(); // utilize type specifier ext c++11
        
        bubbleSort(array);
        
        const auto end = std::chrono::high_resolution_clock::now(); // utilize type specifier ext c++11
        
        std::chrono::duration<double> diff = end - start;
        
        std::cout << "\n\nTime to sort an array of " << size << " random integers: " << std::setw(9) << diff.count()<< " Seconds\n";
    
    }
}