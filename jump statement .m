# Jump Statements in C Programming

Jump statements in C alter the normal flow of program execution, allowing control to move to specific points within the code. The four main jump statements in C are break, continue, goto, and return.

## 1. Break Statement
The break statement is used to exit a loop or switch statement immediately, transferring control to the statement following the loop or switch.

### Syntax
```c
break;
```

### Purpose
- Terminates the enclosing loop (for, while, or do-while) or switch statement.
- Commonly used to exit early when a condition is met.
### Example: Exit loop when a condition is met
```c
#include <stdio.h>
int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) {
            break; // Exit loop when i is 5
        }
        printf("%d ", i);
    }
    return 0;
}
```
**Output**: `1 2 3 4`

### Explanation
- The loop iterates from 1 to 10 but stops when i equals 5 due to break.
## 2. Continue Statement
The continue statement skips the rest of the current iteration in a loop and moves to the next iteration.
### Syntax
```c
continue;
```
### Purpose
- Skips the remaining code in the current loop iteration and proceeds to the next iteration.
- Used in for, while, or do-while loops.
### Example: Skip printing even numbers
```c
#include <stdio.h>
int main() {
    for (int i = 1; i <= 5; i++) {
        if (i % 2 == 0) {
            continue; // Skip even numbers
        }
        printf("%d ", i);
    }
    return 0;
}
```
**Output**: `1 3 5`

### Explanation
- When i is even, "continue " skips the printf  statement, moving to the next iteration.

## 3. Goto Statement
The goto statement transfers control to a labeled statement within the same function.

### Syntax
```c
goto label;
// ...
label:
    // Code block
```
### Purpose
- Allows jumping to a specific point in the code identified by a label.
- Rarely used due to potential for creating unreadable "spaghetti code."
### Example: Jump to a label
```c
#include <stdio.h>
int main() {
    int x = 0;
    if (x == 0) {
        goto error; // Jump to error label
    }
    printf("No error\n");
    return 0;

error:
    printf("Error: x is zero\n");
    return 1;
}
```
**Output**: `Error: x is zero`

### Explanation
- When x is 0, `goto error` jumps to the `error` label, skipping the intermediate code.
### Caution
- Avoid goto unless necessary (e.g., for error handling in complex functions), as it can make code harder to follow.

## 4. Return Statement
The return statement terminates a function and optionally returns a value to the caller.

### Syntax
```c
return [expression];
```

### Purpose
- Exits the current function and returns control to the calling function.
- If an expression is provided, its value is returned.

### Example: Return a value from a function
```c
#include <stdio.h>

int add(int a, int b) {
    return a + b; // Return sum and exit function
}

int main() {
    int result = add(3, 4);
    printf("Sum: %d\n", result);
    return 0;
}
```
**Output**: `Sum: 7`

### Explanation
- The return a + b statement computes the sum, returns it, and exits the `add` function.

## Key Points
| Statement   | Purpose                              | Common Use Case                     |
|-------------|--------------------------------------|-------------------------------------|
| `break`     | Exits loop or switch                 | Early loop termination             |
| `continue`  | Skips current loop iteration         | Skip specific iterations           |
| `goto`      | Jumps to a labeled statement         | Error handling (use sparingly)     |
| `return`    | Exits function, optional value       | Return results from functions      |
### Questions
<details>
<summary>Q1.What is the purpose of the break statement in C?</summary>
break exits the nearest enclosing loop or switch statement immediately.
</details>
<details>
<summary>
Q2.How does the continue statement differ from break in a loop?</summary>
continue skips the rest of the current loop iteration and proceeds to the next, while break exits the loop entirely.
</detials>
<details>
<summary>
 Q3.When is the goto statement typically used in C?</summary>
goto is used for jumping to a labeled statement, often for error handling in complex functions.
</details>
<details>
<summary>
Q4.What happens if a return statement is used without a value in a non-void function?</summary>
It causes undefined behavior if the caller uses the returned value.
</details>
<details>
<summary> Q5.Can break be used outside a loop or switch statement? </summary>
No, break is only valid inside a loop or switch statement.
</details>
