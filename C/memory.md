### Accessing Memory

ARM32/64 uses the _load and store_ memory access pattern. This means, before you can access any part of memory, it must first be loaded.

What does _load_ ing mean? It means obtaining the address of the **first element** of the variable you wish to access, placing this address in a base register (lets use ``r0``), and computing the access locations of subsequent elements, as an offset of ``r0``. Sounds difficult? Not really.

We start by introducing a C program to motivate us:

```
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
```
1. Place the code into a file called ``memory.C``,
2. Compile it using: ``gcc memory.C -o memory``
3. Run it: ``./memory``

