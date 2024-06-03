# QueryPerformancCounter
Implemented Query Performace Counter which measures the speed of Assembly language and Low-Level Language for Data structures and Algorithms
to learn more click here [https://learn.microsoft.com/en-us/windows/win32/api/profileapi/nf-profileapi-queryperformancecounter]

## Learning Outcome:
The speed of compilation of assembly language is always faster than low-level language, this is true due to the nature of assembly language as a machine language that is closer and faster to translate. Performing this comparison on macOS promotes my finding in the performance of the M2 Soc (System on Chip) chipset which operates on the aarchx64 instruction set. Soc chipset has a unique design which has both CPU and GPU on the chip with cache memory intermediaries allowing for faster operation to be performed between CPU and GPU. Thus, the Apple Silicon chipset promotes Reduced Instruction Set Computing (RISC) which follows instruction set aarchx64 with paired registers function, promoting faster compilation time.

UPDATE: QPC are window X86 specific, macOS implementation was done in the chrono library to measure the compilation time to the size/number of elements x such that some operation are done in linear O(x*N), except for sorting algorithm, which has exponential and logarithmic time complexity O(nlogn)

