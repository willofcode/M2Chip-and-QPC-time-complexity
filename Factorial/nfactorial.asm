# william Ng
# factorial recursive call

        .data
stack: 	.space	40  # Define a stack with space for 10 integers
input:	.asciiz  "Input Nth value: "
output: .asciiz  "Nth factorial n!: "

	.text
# print macro
	.macro print(%int)
    	addu    $s0, $zero, %int	# load address of temp register into saved register
    	li      $v0, 1			# syscall for printing integer
    	move    $a0, $s0		# print integer from the saved integer
    	syscall
	.end_macro 

main:
    li 		$v0, 4		# syscall for print string
    la		$a0, input	# load address of input string
    syscall
    
    li		$v0, 5		# syscall for insert char
    syscall
    
    move 	$a0, $v0	# move $v0 to arguement
   
    jal  	fact		# jump to factorial recursive call
    
    move 	$s1, $v0	# move $v0 to saved register
 
    # Print the result
    la		$a0, output	# load address for output string
    li		$v0, 4		# syscall for print string
    syscall

    li 		$v0, 1		# print result
    move 	$a0, $s1
    syscall
    
    # Exit the program
    li 		$v0, 10
    syscall


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
