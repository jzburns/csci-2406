.global main
main:
	// save the return address from main
  push {lr} 

	// command line: number of params

	// first parameter - program name
	ldr r2, [ r1 ]
	// second parameter - program parameters
	ldr r3, [ r1, #4 ]

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
		.asciz "Command line params: num params: %d, program name %s, first param: %s\n"
