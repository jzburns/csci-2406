.global _start
_start:

step0:
	mov r0, #2        Initialize r0 to 2
        mov r1, #10       Set upper limit to 10
	

loop:
    cmp r0, r1       Compare r0 with r1
    beq end          If equal, exit
    add r0, r0, #2   Increment r0 by 2
    b loop           Repeat the loop

end:
    svc 2            Terminate program


	
step1:	
	cmp r0, r1
	beq step10
	add r0, #2
	
step2:	
	cmp r0, r1
	beq step10
	add r0, #2
	
step3:	
	cmp r0, r1
	beq step10
	add r0, #2
	
step4:	
	cmp r0, r1
	beq step10
	add r0, #2

step5:	
	cmp r0, r1
	beq step10
	add r0, #2
	
step10:
	svc 2
