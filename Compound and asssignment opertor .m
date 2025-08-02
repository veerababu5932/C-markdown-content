# Assignment and Compound Assignment Operators in C
### Assignment Operator (=)
The assignment operator (=) is used to assign a value to a variable. It takes the value on the right-hand side and assigns it to the variable on the left-hand side.
### Syntax:
```c
variable = expression;
```
### Example:
```c
int a;         // Declare variable
a = 10;        // Assign value 10 to a
int b = 20;    // Declare and assign value 20 to b
```
### Compound Assignment Operators

Compound assignment operators combine an arithmetic or bitwise operation with assignment. They perform the operation on the variable's current value and the new value, then assign the result back to the variable.

### List of Compound Assignment Operators:
| Operator | Description                | Example       | Equivalent to      |
|----------|----------------------------|---------------|--------------------|
| `+=`     | Addition assignment        | `a += b;`     | `a = a + b;`       |
| `-=`     | Subtraction assignment     | `a -= b;`     | `a = a - b;`       |
| `*=`     | Multiplication assignment  | `a *= b;`     | `a = a * b;`       |
| `/=`     | Division assignment        | `a /= b;`     | `a = a / b;`       |
| `%=`     | Modulus assignment         | `a %= b;`     | `a = a % b;`       |
| `&=`     | Bitwise AND assignment     | `a &= b;`     | `a = a & b;`       |
| `|=`     | Bitwise OR assignment      | `a |= b;`     | `a = a | b;`       |
| `^=`     | Bitwise XOR assignment     | `a ^= b;`     | `a = a ^ b;`       |
| `<<=`    | Left shift assignment      | `a <<= b;`    | `a = a << b;`      |
| `>>=`    | Right shift assignment     | `a >>= b;`    | `a = a >> b;`      |

### Example Program:
```c
#include <stdio.h>

int main() {
    int a = 10; // Simple assignment
    printf("Initial value of a: %d\n", a);

    a += 5; // a = a + 5
    printf("After a += 5: %d\n", a);

    a -= 3; // a = a - 3
    printf("After a -= 3: %d\n", a);

    a *= 2; // a = a * 2
    printf("After a *= 2: %d\n", a);

    a /= 4; // a = a / 4
    printf("After a /= 4: %d\n", a);

    a %= 3; // a = a % 3
    printf("After a %= 3: %d\n", a);

    int b = 12;
    b &= 10; // b = b & 10 (bitwise AND)
    printf("After b &= 10: %d\n", b);

    b |= 5; // b = b | 5 (bitwise OR)
    printf("After b |= 5: %d\n", b);

    return 0;
}
```
### Output:
```
Initial value of a: 10
After a += 5: 15
After a -= 3: 12
After a *= 2: 24
After a /= 4: 6
After a %= 3: 0
After b &= 10: 8
After b |= 5: 13
```
Questions 
<details>
<summary
Q1.What is the role of the assignment operator (=) in C ?</summary>
The = operator assigns the value of the right operand to the left operand.
</details>
<details>
<summary>
 Q2.What are compound assignment operators in C?</summmary>
Compound assignment operators combine an arithmetic or bitwise operation with assignment, like +=, -=, *=, /=, %=, &=, |=, ^=, <<=, and >>=.
</details>
<details>
<summary>
  Q3. How does the += compound assignment operator work? </summary>
It adds the right operand to the left operand and assigns the result to the left operand.
</details>
<details>
<summary>
Q4.What is the difference between x = x + 1 and x += 1?</summary>
Both increment x by 1, but x += 1 is a compound assignment, often more concise and potentially optimized.
</details>
<details>
<summary>
Q5 .Can compound assignment operators be used with all data types in C?</summary>
Yes, they work with numeric types (int, float, etc.) for arithmetic and integral types for bitwise operations.
</details>
