.global main
main:
    	push    {lr} 
	ldr r0, =output_string
	mov r1, #1

	// use puts from libc
	bl printf
	mov r0, #0
	pop     {pc}

.data
	output_string: .asciz "Hello %d there!\n"
