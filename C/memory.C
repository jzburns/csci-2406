// to compile: gcc memory.C -o memory
// to run: ./memory

// this code demonstrates the use of
// global data, arrays, pointers, pointer arithmetic
// accessing memory beyond the allocated space

#include <stdio.h>

const int sz = 6;
unsigned array[ sz ] = { 9, 2, 3, 4, 8, 1 };
unsigned someValue = 55;

int main (int argc, char** argv) {

	// we will use a pointer
	// to access / modify array
	unsigned* p;
	p = array;

	// let us update the 3rd value of the array
	p += 3;
	*p = 99;

	for(int i = 0; i < sz; i++) {
		printf("pos %d has value %u\n", i, array[i]);
	}
 
	printf("someValue is %u \n", someValue);
	// lets use the pointer to 
	// access / modify the integer someValue;
	p = &someValue;
	*p = 123;
	printf("now someValue is %u\n", someValue);

	// now look at this ...
	// what does it do?
	p += 256;
	*p = 333;

	return 0;
}
