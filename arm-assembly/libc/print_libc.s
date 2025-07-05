.global main
main:
	// save the return address from main
	push {lr} 

	// in ARM32 r1 is the base-pointer
	// to an array of pointers to strings

	// zero-ith parameter - program name
	ldr r2, [ r1 ]

	// first parameter - program parameters
	ldr r3, [ r1, #4 ]

	// if have n parameters they are 
	// accessed as r1 + (n * 4)

	// we are finished accessing r1
	// so we can prepare it for printf
	mov r1, r0

	ldr r0, =output_string

	// use puts or printf from libc
	bl printf

	// set up mains return parameters
	mov r0, #0

	// now return from main
	pop {pc}

.data
	output_string: 
		.asciz "num params: %d, program name %s, first param: %s\n"
