### Increment and Decrement Operators in C
he increment (++) and decrement (--) operators in C are unary operators used to increase or decrease the value of a variable by 1. They are commonly used in loops and control structures for concise updates to variables.
### Types of Operators:
- **Increment Operator (++)**: Increases the value of a variable by 1.
- **Decrement Operator (--)**: Decreases the value of a variable by 1.
### Syntax:
- **Prefix**: ++variable or --variable (increments or decrements before the variable's value is used).
- **Postfix**: variable++or variable--(increments or decrements after the variable's value is used).
## Prefix vs. Postfix
- **Prefix (++x or --x)**: The variable is incremented or decremented first, then its new value is used in the expression.
- **Postfix (x++ or x--)**: The current value of the variable is used in the expression, then the variable is incremented or decremented.

### Example Program:
```c
#include <stdio.h>
int main() {
    int x = 5, y = 5;
    // Prefix increment
    printf("Initial x: %d\n", x);
    int result1 = ++x; // Increment x first, then assign to result1
    printf("After ++x: x = %d, result1 = %d\n", x, result1);

    // Postfix increment

    printf("\nInitial y: %d\n", y);
    int result2 = y++; // Use y, then increment
    printf("After y++: y = %d, result2 = %d\n", y, result2);

    // Prefix decrement
    x = 5;
    printf("\nInitial x: %d\n", x);
    int result3 = --x; // Decrement x first, then assign to result3
    printf("After --x: x = %d, result3 = %d\n", x, result3);

    // Postfix decrement

    y = 5;
    printf("\nInitial y: %d\n", y);
    int result4 = y--; // Use y, then decrement
    printf("After y--: y = %d, result4 = %d\n", y, result4);
    return 0;
}
```
### Output:
```
Initial x: 5
After ++x: x = 6, result1 = 6
Initial y: 5
After y++: y = 6, result2 = 5
Initial x: 5
After --x: x = 4, result3 = 4
Initial y: 5
After y--: y = 4, result4 = 5
```
### Questions 
<details>
<summary>
Q1.What are the increment and decrement operators in C? </summary>
The ++ operator increases a variable's value by 1, and the -- operator decreases it by 1.
</details>
<details>
<summary>
Q2.What is the difference between prefix (++x) and postfix (x++) increment operators?</summary>
Prefix increments the value before using it in an expression, while postfix uses the original value then increments.
</details>
<details>
<summary>
 Q3.How does the postfix decrement operator (x--) work in an expression? </summary>
It uses the current value of x in the expression and then decreases x by 1.
</details>
<details>
<summary>
Q4 .What is the output of int x = 5; printf("%d", x++);? </summary>
It prints 5, as x++ uses the original value before incrementing x to 6.
</details>
<details>
<summary>
Q5. What is the output of int x = 5; printf("%d", ++x);?</summary>
It prints 6, as ++x increments x to 6 before using it in the expression.
</details>
<details>
<summary>
Q6.Can increment and decrement operators be applied to non-integer types? </summary>
Yes, they can be used with int, char, float, double, and pointer types, but not with constants or expressions.
</details>
