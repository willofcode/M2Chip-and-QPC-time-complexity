######################################################################
    MIPS Assembly Program: Factorial Function with Time measurement
######################################################################

Author: William Ng

######################################################################

Description:
------------

This MIPS assembly language program implements a factorial function that takes
user-defined input. The program calculates the factorial of a non-negative integer
provided by the user and prints the result. Note that the input is capped at 13
due to potential overflow issues beyond this limit. we will also be performing
time measurement of this function to determine it's time complexity.

######################################################################

Instructions:
-------------

1. Open the MIPS assembly code file (factorial.asm) using a MIPS
   assembly language IDE or text editor.

2. Assemble and run the program on MARS simulator.

3. Follow the on-screen prompts to enter a non-negative integer for which you
   want to calculate the factorial.

######################################################################

Factorial Function:
--------------------

    timer($t1)			# record start timer of system time
    jal  	fact		# jump to factorial recursive call
    timer($t2)			# record end timer of system time
    sub     	$s1, $t2, $t1	# find the time subtracting end time by start time
    move 	$s2, $v0

# fact function with stack operations
fact:
    addi  	$sp, $sp, -8  	# Adjust stack for 2 items
    sw   	$ra, 4($sp)    	# Save the return address
    sw   	$a0, 0($sp)    	# Save the argument n
    slti 	$t0, $a0, 1  	# Test for n < 1
    beq  	$t0, $zero, L1  # If n >= 1, go to L1
    addi 	$v0, $zero, 1   # Return 1
    addi 	$sp, $sp, 8  	# Pop 2 items off stack
    jr   	$ra  		# Return to caller

L1:
    addi 	$a0, $a0, -1  	# n >= 1: argument gets (n – 1)
    jal 	fact  		# Call fact with (n –1)
    lw 		$a0, 0($sp) 	# Return from jal: restore argument n
    lw 		$ra, 4($sp) 	# Restore the return address
    addi 	$sp, $sp, 8 	# Adjust stack pointer to pop 2 items
    mul  	$v0, $a0, $v0   # Return n * fact (n – 1)
    jr 		$ra  	