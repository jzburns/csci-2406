.global _start
_start:
  	mov r3, #100
	ldr r0, =vector
	ldr r1, [r0]
	add r3, r3, #65
	b done

done:
	str r3, [r0], #0
	svc #0
	
.data
	vector: .word 0,1,2,3
