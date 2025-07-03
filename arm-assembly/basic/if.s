.global main
main:
	mov r0, #5
	mov r1, #8

	cmp r1, r0
	blt minus_number
	b finalize

carry_on:
	mov r1, #8

minus_number:
	mov r5, #1
	svc 2

finalize:
	svc 2
