## What Are Relational Operators?

**Definition**: Relational operators in C are special symbols used to **compare two values** (numbers, variables, or expressions). They check the relationship between two operands and return a result of either 1(true) or 0 (false). These operators are often used in decision-making statements like if to compare values.
### List of Relational Operators in C
| Operator | Description                     | Example       | Result (if a = 10, b = 5) |
|----------|---------------------------------|---------------|---------------------------|
| `==`     | Equal to                        | `a == b`      | `0` (false, 10 is not equal to 5) |
| `!=`     | Not equal to                    | `a != b`      | `1` (true, 10 is not equal to 5)  |
| `>`      | Greater than                    | `a > b`       | `1` (true, 10 is greater than 5)  |
| `<`      | Less than                       | `a < b`       | `0` (false, 10 is not less than 5)|
| `>=`     | Greater than or equal to        | `a >= b`      | `1` (true, 10 is greater than or equal to 5) |
| `<=`     | Less than or equal to           | `a <= b`      | `0` (false, 10 is not less than or equal to 5) |
### Key Points 
- Relational operators **compare** two values and give a result of 1 (true) or 0(false).
- They are used in conditions, like in if statements, to make decisions in a program.
- The result of a relational operator is an **integer** (1 or 0) in C.
### Example
Below is a C program that demonstrates relational operators by comparing two numbers and printing the results.
### Example

```c
#include <stdio.h>

int main() {
    int a = 10, b = 20;

    printf("a = %d, b = %d\n", a, b);
    printf("a == b: %d\n", a == b); // Equal to
    printf("a != b: %d\n", a != b); // Not equal to
    printf("a > b: %d\n", a > b);   // Greater than
    printf("a < b: %d\n", a < b);   // Less than
    printf("a >= b: %d\n", a >= b); // Greater than or equal to
    printf("a <= b: %d\n", a <= b); // Less than or equal to

    return 0;
}
```

### Output
```
a = 10, b = 20
a == b: 0
a != b: 1
a > b: 0
a < b: 1
a >= b: 0
a <= b: 1
```
### Questions
<details>
<summary> Q1.What is the difference between = and ==?</summary>
= assigns a value, while == checks for equality.
</details>
<details>
<summary>Q2.What is a common mistake with relational operators?</summary>Using = (assignment) instead of == (equality) in comparisons.
</details>
<details>
<summary> Q3.Are relational operators used in loops?</summary>
Yes, they are used in loop conditions, like while (i < 10).
</details>
<details>
<summary>Q4.How is != different from ==?</summary>
!= checks if values are not equal, while == checks if they are equal.
</details>


