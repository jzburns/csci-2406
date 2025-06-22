.global _start
_start:
  	mov r3, #0
	ldr r0, =vector
	ldr r1, [r0]
	add r3, r3, r1
	b done

done:
	svc 2
	
.data
	vector: .word 0,1,2,3
