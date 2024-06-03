# william Ng
# factorial time measurement

        .data
stack: 	.word	40  # Define a stack with space for 10 integers
input:	.asciiz  "Input Nth value: "
output: .asciiz  "Nth factorial n!: "
time:    .asciiz  "time complexity: "
newline: .asciiz "\n"

        .text
# timer macro         
	.macro timer(%int)     		
     	li	    $v0, 30     	# system time call
     	syscall
     	add   %int, $zero, $a0  	# store time into a specified temp register
	.end_macro
# print macro
	.macro print(%int)
    	addu    $s0, $zero, %int	# load address of temp register into saved register
    	li      $v0, 1			# directive for printing integer
    	move    $a0, $s0		# print integer from the saved integer
    	syscall
	.end_macro 
	
# push macro 
	.macro push(%x)
	addi 	$sp, $sp, -4
	sw 	%x, 0($sp)
	.end_macro

# pop macro 
	.macro pop(%x)
	lw	%x, 0($sp)
	addi 	$sp, $sp, 4
	.end_macro


main:
    li 		$v0, 4		# syscall for print string
    la		$a0, input	# load address of input string
    syscall
    
    li		$v0, 5		# directive for insert char
    syscall
    
    move 	$s0, $v0	# move $v0 to arguement
   
    timer($t1)			# record start timer of system time
    jal  	fact		# jump to factorial recursive call
    timer($t2)			# record end timer of system time
    sub     	$s1, $t2, $t1	# find the time subtracting end time by start time
    move 	$s2, $v0
    
    # Print the result
    la		$a0, time	# load address for output string
    li		$v0, 4		# syscall for print string
    syscall

    li 		$v0, 1		# print system time
    move 	$a0, $s1
    syscall
    
    la		$a0, newline
    li		$v0, 4		# syscall for print string
    syscall

    
    # print result of the factorial
    la		$a0, output	# load address for output string
    li		$v0, 4		# syscall for print string
    syscall
    
    li 		$v0, 1		# print result
    move 	$a0, $s2
    syscall
   
    # Exit the program
    li 		$v0, 10
    syscall


# fact function with stack operations
fact:
    addi  	$sp, $sp, -8  	# Adjust stack for 2 items
    sw   	$ra, 4($sp)    	# Save the return address
    sw   	$s0, 0($sp)    	# Save the argument n
    slti 	$t0, $s0, 1  	# Test for n < 1
    beq  	$t0, $zero, L1  # If n >= 1, go to L1
    addi 	$v0, $zero, 1   # Return 1
    addi 	$sp, $sp, 8  	# Pop 2 items off stack
    jr   	$ra  		# Return to caller

L1:
    addi 	$s0, $s0, -1  	# n >= 1: argument gets (n – 1)
    jal 	fact  		# Call fact with (n –1)
    lw 		$s0, 0($sp) 	# Return from jal: restore argument n
    lw 		$ra, 4($sp) 	# Restore the return address
    addi 	$sp, $sp, 8 	# Adjust stack pointer to pop 2 items
    mul  	$v0, $s0, $v0   # Return n * fact (n – 1)
    jr 		$ra  		# Return to the caller
