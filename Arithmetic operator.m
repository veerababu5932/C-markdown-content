# Operators and Expressions in C Programming
### What is Operator  ?
Operators are symbols that perform operations on variables and values in C. 
### What   Expression in C ?
An expression in the C programming language is a combination of one or more operands, operators, and/or constants that evaluates to a single value. Expressions are the building blocks of C programs, used to perform computations, assign values, or make decision
### Components of an Expression
- **Operands**: Values or variables (e.g. 5, x,3.14).
- **Operators**: Symbols that perform operations (e.g., +, -, *, /, ==, &&).
- **Constants**: Fixed values (e.g., 10, 'a').
- **Parentheses**: Used to control the order of evaluation (e.g., (x + y) * z).
## Arithmetic Operators in C

Arithmetic operators in the C programming language are used to perform mathematical operations on numerical values (integers, floats, or doubles). Below is a list of common arithmetic operators, their descriptions, and examples in C.

### 1. Addition (+)
- **Description**: Adds two operands.
- **Example**:
  ```c
  int a = 5;
  int b = 3;
  int result = a + b; // result = 8
  ```

### 2. Subtraction (-)
- **Description**: Subtracts the second operand from the first.
- **Example**:
  ```c
  int a = 5;
  int b = 3;
  int result = a - b; // result = 2
  ```

### 3. Multiplication (*)
- **Description**: Multiplies two operands.
- **Example**:
  ```c
  int a = 5;
  int b = 3;
  int result = a * b; // result = 15
  ```

### 4. Division (/)
- **Description**: Divides the first operand by the second. For integers, it performs integer division (truncates decimal part). For floats, it returns a floating-point result.
- **Example**:
  ```c
  int a = 10;
  int b = 3;
  int result_int = a / b;    // result_int = 3 (integer division)
  float result_float = (float)a / b; // result_float = 3.333... (floating-point division)
  ```

### 5. Modulus (%)
- **Description**: Returns the remainder of the division of the first operand by the second. Only works with integer operands.
- **Example**:
  ```c
  int a = 10;
  int b = 3;
  int result = a % b; // result = 1
  ```
**Example**:
```c
#include <stdio.h>
int main() {
    int a = 10, b = 3;
    printf("Addition: %d\n", a + b);      // Output: 13
    printf("Subtraction: %d\n", a - b);   // Output: 7
    printf("Multiplication: %d\n", a * b); // Output: 30
    printf("Division: %d\n", a / b);      // Output: 3 (integer division)
    printf("Modulus: %d\n", a % b);       // Output: 1
    return 0;
}
```
## Questions 
<details>
<summary>Q1. How does integer division differ from floating-point division in C, and how can you ensure a precise result?</summary>
- Integer Division: When both operands of the / operator are integers, C truncates the decimal part, returning an integer result (e.g., 10 / 3 = 3).
- Floating-point Division: If at least one operand is a float or double, the result includes the decimal part (e.g., (float)10 / 3 = 3.333...).
- Ensuring Precision: Cast at least one operand to float or double using (float) or (double) to avoid truncation.
</details>
<details>
  <summary>  Q2.Can the modulus operator be used with floating-point numbers?</summary>
 No, the modulus operator (%) is only defined for integer operands in C. Using it with float or double types will cause a compilation error. For floating-point remainders, use the fmod() function from the math.h library.
</details>





 
