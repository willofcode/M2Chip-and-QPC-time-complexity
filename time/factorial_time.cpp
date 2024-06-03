// Name:____William Ng_______
// File:__factorial_time.cpp____
// High resolution time clock for recursive call: Factorial
#include <iostream>
#include <iomanip>
#include <chrono>
#include <cstdlib>
#include <cstddef>
#include <numeric>
using namespace std;
// utilizing inline namespace 
using std::chrono::high_resolution_clock; 
using std::chrono::duration;
using std::chrono::duration_cast;
using std::chrono::microseconds;
using std::chrono::nanoseconds;
// using namespace std::chrono_literals;

int factorial(int n)
{
    if (n < 1) return (1);
          else return (n * factorial(n - 1));
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