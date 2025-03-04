/* 
 * homework-1-solution.s
 * this is one possible solution
 * showing some of the important topics
 */

.global _start
_start:

// initialization as before
mov r0, #2
mov r1, #10

// using the principle of parsimony
// we can reduce the number of instructions
loop:
  cmp r0, r1
  addne r0, #2
  bne loop
  svc #2

