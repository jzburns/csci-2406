.global main
	main:
		push {lr}

		mov r0, #1
		ldr r1, =string
		mov r2, #12
		mov r7, #4
		svc #0

		pop {pc}

.data
	string: .asciz "Hello World\n"
