######################################################################
        C++ Program: Factorial Function with System Time Calculation
######################################################################

Author: William Ng

######################################################################

Description:
------------

This C++ program demonstrates the implementation of a factorial function
to calculate the factorial of a given number. The program also measures
the system time taken by the factorial calculation using the `chrono` library.

######################################################################

Instructions:
-------------

1. Open the C++ source code file (sourcecode.cpp) using
   a C++ IDE or text editor.

2. Modify the input value in the source code according to your
   factorial calculation requirements.

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

// File:__factorial_time.cpp_____
// The purpose this program, to measure high resolution time stamp of factorial
#include <chrono>
 "              "
 "              "
 "              "
 "              "
// utilizing inline namespace 
using std::chrono::high_resolution_clock; 
using std::chrono::duration;
using std::chrono::duration_cast;
using std::chrono::microseconds;
using std::chrono::nanoseconds;
// using namespace std::chrono_literals;

int factorial(int n){
}

int main()
{
    printf("The factorial operation of (n!) listed below: \n");
    std::cout << std::fixed << std::setprecision(9) << std::left; 
    for (size_t size{1ull}; size < 1000000000ull; size *= 10)
    {

    const auto start = std::chrono::high_resolution_clock::now();
    factorial(size);
    const auto end = std::chrono::high_resolution_clock::now();
    
    // Getting time in nanoseconds as an integer
    auto time_int = duration_cast<nanoseconds>(end - start);

    // Getting time in nanoseconds as a double 
    const std::chrono::duration<double> time_double =  end - start;

    // std::cout << "Time to compute factorial of " << std::setw(9) << size << ": " << time_int.count() << " nS\n";
    std::cout << "Time to compute factorial of " << std::setw(9) << size << ": " << time_double.count() << " Seconds\n";
    }
    return 0;
}