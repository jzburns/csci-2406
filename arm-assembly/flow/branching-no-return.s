.global _start
_start:
	mov r0, #5
	mov r1, #8
	cmp r0, r1
	blt minus_number // if the N flag is set

carry_on:
	mov r1, #8 

minus_number:
	mov r5, #1
