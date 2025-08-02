## Bitwise Operators in C
Bitwise operators in C operate on individual bits of integer operands, performing operations at the binary level. They are used for low-level programming tasks like manipulating hardware registers, optimizing code, or performing bit-level operations.
##### Bitwise operators work on the binary representations of integers, manipulating bits directly. C supports six bitwise operators:
### 1. Bitwise AND (&)
Performs a bitwise AND operation, setting each bit in the result to 1 only if both corresponding bits in the operands are 1.
###   Syntax: a & b
### Example: 5 & 3 (binary: 0101 & 0011 = 0001)
### Example 
```c
#include <stdio.h>
int main() {
    int a = 5;  // Binary: 0101
    int b = 3;  // Binary: 0011
    int result;

    // Bitwise AND
    result = a & b;  // 0101 & 0011 = 0001
    printf("Bitwise AND (a & b) with a=%d, b=%d: %d\n", a, b, result);

    // Test with different values
    a = 7;  // Binary: 0111
    b = 2;  // Binary: 0010
    result = a & b;  // 0111 & 0010 = 0010
    printf("Bitwise AND (a & b) with a=%d, b=%d: %d\n", a, b, result);

    // Test with zero
    a = 5;  // Binary: 0101
    b = 0;  // Binary: 0000
    result = a & b;  // 0101 & 0000 = 0000
    printf("Bitwise AND (a & b) with a=%d, b=%d: %d\n", a, b, result);

    return 0;
}
```
### Output
```c
Bitwise AND (a & b) with a=5, b=3: 1
Bitwise AND (a & b) with a=7, b=2: 2
Bitwise AND (a & b) with a=5, b=0: 0
```
### 2. Bitwise OR (|)
 Performs a bitwise OR operation, setting each bit in the result to 1 if at least one of the corresponding bits in the operands is 1.
   ### Syntax: a | b
   #### Example: 5 | 3 (binary: 0101 | 0011 = 0111) results in 7.
### Example 
```c
#include <stdio.h>
int main() { 
int a = 5; // Binary: 0101 
int b = 3; // Binary: 0011 int result

// Bitwise OR
result = a | b;  // 0101 | 0011 = 0111
printf("Bitwise OR (a | b) with a=%d, b=%d: %d\n", a, b, result);

// Test with different values
a = 7;  // Binary: 0111
b = 2;  // Binary: 0010
result = a | b;  // 0111 | 0010 = 0111
printf("Bitwise OR (a | b) with a=%d, b=%d: %d\n", a, b, result);

// Test with zero
a = 5;  // Binary: 0101
b = 0;  // Binary: 0000
result = a | b;  // 0101 | 0000 = 0101
printf ("Bitwise OR (a | b) with a=%d, b=%d: %d\n", a, b, result);
return 0;
}
```
### Output
```c
Bitwise OR (a | b) with a=5, b=3: 7
Bitwise OR (a | b) with a=7, b=2: 7
Bitwise OR (a | b) with a=5, b=0: 5
```

###  3. Bitwise XOR (^)
 Performs a bitwise exclusive OR operation, setting each bit in the result to 1 if exactly one of the corresponding bits in the operands is 1.
  ###  Syntax: a ^ b
   ### Example: 5 ^ 3(binary: 0101 ^ 0011 = 0110) results in 6.
### Example
```c
#include <stdio.h>
int main() { 
int a = 5; // Binary: 0101
 int b = 3; // Binary: 0011 int result;
// Bitwise XOR
result = a ^ b;  // 0101 ^ 0011 = 0110
printf("Bitwise XOR (a ^ b) with a=%d, b=%d: %d\n", a, b, result);

// Test with different values
a = 7;  // Binary: 0111
b = 2;  // Binary: 0010
result = a ^ b;  // 0111 ^ 0010 = 0101
printf("Bitwise XOR (a ^ b) with a=%d, b=%d: %d\n", a, b, result);

// Test with zero
a = 5;  // Binary: 0101
b = 0;  // Binary: 0000
result = a ^ b;  // 0101 ^ 0000 = 0101
printf("Bitwise XOR (a ^ b) with a=%d, b=%d: %d\n", a, b, result);
return 0;
}
```
### Output
```c
Bitwise XOR (a ^ b) with a=5, b=3: 6
Bitwise XOR (a ^ b) with a=7, b=2: 5
Bitwise XOR (a ^ b) with a=5, b=0: 5
```


### 4. Bitwise NOT (~)
 Performs a bitwise complement, inverting all bits of the operand (changes 0 to 1 and 1 to 0).
  ### Syntax: ~a
   Example: ~5(binary: ~0101 = 1010 in 4-bit for simplicity) results in -6 (in two’s complement).
### Example 
```c
#include <stdio.h>
int main()
 {
int a = 5; // Binary: 00000101 (32-bit) 
int result;
// Bitwise NOT
result = ~a;  // ~00000101 = 11111010 (in two's complement, -6)
printf("Bitwise NOT (~a) with a=%d: %d\n", a, result);
// Test with zero
a = 0;  // Binary: 00000000
result = ~a;  // ~00000000 = 11111111 (in two's complement, -1)
printf("Bitwise NOT (~a) with a=%d: %d\n", a, result);

// Test with another value
a = 10;  // Binary: 00001010
result = ~a;  // ~00001010 = 11110101 (in two's complement, -11)
printf("Bitwise NOT (~a) with a=%d: %d\n", a, result);
return 0;
}
```
### Output 
```c
Bitwise NOT (~a) with a=5: -6
Bitwise NOT (~a) with a=0: -1
Bitwise NOT (~a) with a=10: -11
```

###  5. Left Shift (<<)
   Shifts the bits of the first operand left by the number of positions specified by the second operand, filling the vacated bits with 0.
 ###  Syntax: a << n
### Example: 5 << 1 (binary: 0101 << 1 = 1010) results in 10.
### Example
```c
#include <stdio.h>
int main() { int a = 5; // Binary: 00000101 (32-bit) int result;
// Left Shift by 1
result = a << 1;  // 00000101 << 1 = 00001010 (10)
printf("Left Shift (a << 1) with a=%d: %d\n", a, result);
// Left Shift by 2
a = 3;  // Binary: 00000011
result = a << 2;  // 00000011 << 2 = 00001100 (12)
printf("Left Shift (a << 2) with a=%d: %d\n", a, result);
// Left Shift with zero
a = 0;  // Binary: 00000000
result = a << 1;  // 00000000 << 1 = 00000000 (0)
printf("Left Shift (a << 1) with a=%d: %d\n", a, result);
return 0;
}
```
### Output
```c
Left Shift (a << 1) with a=5: 10
Left Shift (a << 2) with a=3: 12
Left Shift (a << 1) with a=0: 0
````
### 6. Right Shift (>>)
 Shifts the bits of the first operand right by the number of positions specified by the second operand. For signed integers, the sign bit is typically propagated (arithmetic shift).
### Syntax: a >> n
### Example: 10 >> 1 (binary: 1010 >> 1 = 0101) results in 5.
### Example
```c
#include <stdio.h>
int main() { int a = 8; // Binary: 00001000 (32-bit) int result;
// Right Shift by 1
result = a >> 1;  // 00001000 >> 1 = 00000100 (4)
printf("Right Shift (a >> 1) with a=%d: %d\n", a, result);
// Right Shift by 2
a = 16;  // Binary: 00010000
result = a >> 2;  // 00010000 >> 2 = 00000100 (4)
printf("Right Shift (a >> 2) with a=%d: %d\n", a, result);
// Right Shift with negative number
a = -8;  // Binary: 11111000 (32-bit, two's complement)
result = a >> 1;  // 11111000 >> 1 = 11111100 (-4)
printf("Right Shift (a >> 1) with a=%d: %d\n", a, result);
return 0;
}
```
### Output
```c
Right Shift (a >> 1) with a=8: 4
Right Shift (a >> 2) with a=16: 4
Right Shift (a >> 1) with a=-8: -4
```
### Questions
<details>
<summary>Q1.How does the bitwise AND (`&`) operator work in C ? </summary> 
   It performs a binary AND operation, setting each bit to 1 if both corresponding bits are 1.
</details>
<details>
<summary>Q2.What is the result of the bitwise OR (|) operation?</summary>
   It sets each bit to 1 if at least one of the corresponding bits is 1.
</details>
<details>
<summary> Q3.How does the bitwise XOR (`^`) operator function? </summary>
   It sets each bit to 1 if exactly one of the corresponding bits is 1, otherwise 0.
</details>
<details>
<summary> Q4. What does the bitwise NOT (~) operator do? </summary>
   It inverts all bits of its operand, changing 1s to 0s and 0s to 1s.
</details>
<details>
<summary>
Q5.What is the effect of the left shift (<<) operator in C? </summary> 
   It shifts bits to the left by the specified number, filling vacated bits with 0s.
</details>
<details>
<summary>
Q6. How does the right shift (`>>`) operator behave with signed integers? </summary> 
   It shifts bits to the right, filling the leftmost bits with the sign bit (arithmetic shift).
</details>
<details>
<summary>
Q7. How can bitwise operators check if a number is even or odd? </summary>  
   Use `num & 1`: if the result is 0, the number is even; if 1, it’s odd.
</details>
<details>
<summary>
Q8. How do you set a specific bit in a number using bitwise operators? </summary>
   Use `num | (1 << position)` to set the bit at the given position to 1.
</details>
<details>
<summary>
Q9. How can you clear a specific bit in a number?  </summary>
    Use `num & ~(1 << position)` to set the bit at the given position to 0.
</details>

