### Operator Precedence and Associativity in C
In C, **operator precedence** determines the order in which operators are evaluated in an expression, while **associativity** determines the order of evaluation when operators have the same precedence.
## Operator Precedence
Operators with higher precedence are evaluated before those with lower precedence. The following table lists the major operators in C, ordered from highest to lowest precedence:

| Precedence | Operator | Description | Associativity |
|------------|----------|-------------|---------------|
| 1 | `()` | Parentheses (function call) | Left-to-right |
|   | `[]` | Array subscript | |
|   | `.` | Structure member access | |
|   | `->` | Structure pointer access | |
| 2 | `++` `--` | Increment, decrement (postfix) | Left-to-right |
|   | `(type)` | Type cast | Right-to-left |
|   | `*` `&` `sizeof` | Dereference, address-of, size | Right-to-left |
|   | `!` `~` | Logical NOT, bitwise NOT | Right-to-left |
|   | `+`  `-` | Unary plus, unary minus | Right-to-left |
| 3 | `*`  `/` `%` | Multiplication, division, modulus | Left-to-right |
| 4 | `+`  `-` | Addition, subtraction | Left-to-right |
| 5 | `<<` `>>` | Bitwise left shift, right shift | Left-to-right |
| 6 | `<`  `<=` `>` `>=` | Relational operators | Left-to-right |
| 7 | `==`  `!=` | Equality operators | Left-to-right |
| 8 | `&` | Bitwise AND | Left-to-right |
| 9 | `^` | Bitwise XOR | Left-to-right |
| 10 | `|` | Bitwise OR | Left-to-right |
| 11 | `&&` | Logical AND | Left-to-right |
| 12 | OR | Logical OR | Left-to-right |
| 13 | `?:` | Ternary conditional | Right-to-left |
| 14 | `=` | Assignment | Right-to-left |
|   | `+=` `-=` `*=` `/=` `%=` | Compound assignment | |
|   | `&=` `^=` `|=` `<<=` `>>=' | Bitwise compound assignment | |
| 15 | `,` | Comma | Left-to-right |
## Associativity

When operators share the same precedence, **associativity** determines the evaluation order:
- **Left-to-right**: Operators are evaluated from left to right e.g., a + b + c is evaluated as (a + b) + c).
- **Right-to-left**: Operators are evaluated from right to left (e.g., a = b = c is evaluated as a = (b = c)).
## Example Program
```c
#include <stdio.h>

int main() {
    int a = 10, b = 5, c = 2, result;

    // Precedence: * and / over +
    result = a + b * c; // b * c evaluated first
    printf("a + b * c = %d\n", result); // 10 + (5 * 2) = 20

    // Parentheses override precedence
    result = (a + b) * c; // a + b evaluated first
    printf("(a + b) * c = %d\n", result); // (10 + 5) * 2 = 30

    // Associativity: Assignment is right-to-left
    int x, y;
    x = y = 100; // y = 100, then x = y
    printf("x = %d, y = %d\n", x, y); // x = 100, y = 100

    // Precedence: ++ over +, + over &&
    int z = 3;
    result = ++z + 5 && 2; // ++z first, then + 5, then &&
    printf("++z + 5 && 2 = %d\n", result); // (4 + 5) && 2 = 1

    return 0;
}
```

### Output:
```
a + b * c = 20
(a + b) * c = 30
x = 100, y = 100
++z + 5 && 2 = 1
```
### Questions 
<details>
<summary> Q1. What is operator precedence in C?</summary>
Operator precedence determines the order in which operators are evaluated in an expression.
</details>
<details>
<summary>
Q2 .What does associativity mean for operators in C?</summary>
Associativity defines the order (left-to-right or right-to-left) in which operators of the same precedence are evaluated.
</details>
<details>
<summary>
 Q3.Which operator has the highest precedence in C?</summary>
The postfix operators (++, --) and parentheses () have the highest precedence.
</details>
<details>
<summary>
 Q4.What is the precedence of arithmetic operators like +, -, *, / in C?</summary>
 and / have higher precedence than + and -, which share the same precedence.
</details>
<details>
<summary>
Q5 .How does associativity affect the expression a = b = c? </summary>
Assignment operators (=) are right-associative, so c is assigned to b, then b to a.
</details>
