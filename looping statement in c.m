# Looping Statements in C Programming

Looping statements in C allow repeated execution of a block of code based on a condition or a set number of iterations. 
### The three main types of loops in C are for, while, and do-while. 
## 1. For Loop
The for   loop is used when the number of iterations is known beforehand. It combines initialization, condition checking, and increment/decrement in a single line.
### Syntax
```c
for (initialization; condition; update) {
    // Code block to execute
}
```

- **Initialization**: Executed once before the loop starts, typically to initialize a counter.
- **Condition**: Checked before each iteration; if true, the loop continues.
- **Update**: Executed after each iteration, usually to update the counter.

### Example: Printing numbers from 1 to 5
```c
#include <stdio.h>

int main() {
    for (int i = 1; i <= 5; i++) {
        printf("%d ", i);
    }
    return 0;
}
```
**Output**: `1 2 3 4 5`
### Explanation
- int i = 1 : Initializes counter i to 1.
- i <= 5: Loop continues as long as i is less than or equal to 5.
- i++ : Increments i by 1 after each iteration.
## 2. While Loop
The while loop executes a block of code as long as a specified condition is true. It is used when the number of iterations is not known in advance.
### Syntax
```c
while (condition) {
    // Code block to execute
}
```
- **Condition**: Checked before each iteration; if true, the loop continues.
- The loop may not execute at all if the condition is initially false.

### Example: Printing numbers from 1 to 5
```c
#include <stdio.h>

int main() {
    int i = 1;
    while (i <= 5) {
        printf("%d ", i);
        i++;
    }
    return 0;
}
```
**Output**: `1 2 3 4 5`

### Explanation
- int i = 1: Initializes counter i outside the loop.
- i <= 5: Loop continues as long as i is less than or equal to 5.
- i++: Increments i inside the loop to avoid infinite looping.

## 3. Do-While Loop
The do-while loop is similar to the while loop, but it guarantees at least one execution of the loop body because the condition is checked after the loop body executes.
### Syntax
```c
do {
    // Code block to execute
} while (condition);
```
- **Condition**: Checked after each iteration; if true, the loop continues.
- The loop executes at least once, even if the condition is initially false.
### Example: Printing numbers from 1 to 5
```c
#include <stdio.h>
int main() {
    int i = 1;
    do {
        printf("%d ", i);
        i++;
    } while (i <= 5);
    return 0;
}
```
**Output**: `1 2 3 4 5`

### Explanation
- int i = 1: Initializes counter i outside the loop.
- The loop body executes first, printing i and incrementing it.
- i <= 5: Condition is checked after each iteration; loop continues if true.
## Key Differences
| Loop Type   | When to Use                              | Condition Check       | Minimum Executions |
|-------------|------------------------------------------|----------------------|-------------------|
| `for`       | Known number of iterations               | Before each iteration | 0                 |
| `while`     | Unknown number of iterations             | Before each iteration | 0                 |
| `do-while`  | At least one execution needed            | After each iteration  | 1                 |
### Questions
<details>
<summary>
Q1.What is the difference between for, while, and do-while loops in C?
</summary>
for is for known iterations, while checks condition before, do-while executes at least once with condition check after. </details>
<summary>
<details>
<summary>
Q2.How does a break statement work in a loop?</summary>
break exits the loop immediately, stopping further iterations.
</details>
<details>
<summary>
Q3. What happens if the condition in a do-while loop is false initially?
</summary>
The loop body executes once before the false condition stops it.
</details>
<details>
<summary>Q4.Can you use multiple conditions in a while loop?</summary>
Yes, combine conditions using logical operators like && or ||. 
</details>







