.global _start
_start:
	mov r0, #5
	mov r1, #8
	cmp r0, r1
	bge carry_on
	bl negative_number // this is a special branch - it sets the lr register with the return address
	b end
	
negative_number:
	mov r5, #1
	bx lr

carry_on:
	mov r1, #8
end:
