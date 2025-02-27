// to compile: gcc memory.C -o memory
// to run: ./memory

// this code demonstrates the use of
// global data, arrays, pointers, pointer arithmetic
// accessing memory beyond the allocated space
#include <stdio.h>

const int sz = 6;
unsigned array[ sz ] = { 9, 2, 3, 4, 8, 1 };
unsigned someValue = 55;
unsigned someValueInArrayForm[1] = { 55 };

int main (int argc, char** argv) {
	unsigned* p = array;

	// update the 3rd element of the array
	p += 3;
	*p = 99;
	printf("the 3rd element is is %u \n", *p);

	// use the pointer to access / modify the integer someValue;
	printf("someValue is %u \n", someValue);
	p = &someValue;
	*p = 123;
	printf("now someValue is %u\n", someValue);

	// but what does this do?
	p += 256;
	*p = 333;

	return 0;
}    
