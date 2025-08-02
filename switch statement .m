# Switch Statement in C Programming

The switch statement in C provides a way to execute one of many possible code blocks based on the value of an expression. It is often used as an alternative to multiple if-else statements when comparing a single variable against multiple values.
## Syntax
```c
switch (expression) {
    case constant1:
        // Code block for constant1
        break;
    case constant2:
        // Code block for constant2
        break;
    // ... more cases
    default:
        // Code block if no case matches
}
```
### Key Components
- **expression**: Evaluated once and compared against case constants. Must evaluate to an integer or character type.
- **case constant**: A constant value (integer, character, or enum) to compare against the expression.
- **break**: Exits the switch block to prevent fall-through to the next case.
- **default**: Optional block executed if no case matches. Typically placed last.
## Rules
- The expression must be of integral type (int, char, or enum).
- Case labels must be unique constants.
- break is optional but recommended to avoid unintended fall-through.
- default is optional and can appear anywhere in the switch block, though typically at the end.

## Example: Day of the Week
```c
#include <stdio.h>

int main() {
    int day = 3;
    switch (day) {
        case 1:
            printf("Monday\n");
            break;
        case 2:
            printf("Tuesday\n");
            break;
        case 3:
            printf("Wednesday\n");
            break;
        case 4:
            printf("Thursday\n");
            break;
        case 5:
            printf("Friday\n");
            break;
        default:
            printf("Weekend or invalid day\n");
    }
    return 0;
}
```
**Output**: `Wednesday`

### Explanation
- The day variable (value 3) matches case 3, so "Wednesday" is printed.
- The break statement ensures the switch block exits after executing the matching case.
- If day were 6, the default case would execute, printing "Weekend or invalid day".
## Nested Switch Statements
Switch statements can be nested, though this is less common and should be used carefully to maintain readability.
### Example: Nested Switch
```c
#include <stdio.h>
int main() {
    int category = 1, item = 2;
    switch (category) {
        case 1:
            switch (item) {
                case 1:
                    printf("Category 1, Item 1\n");
                    break;
                case 2:
                    printf("Category 1, Item 2\n");
                    break;
            }
            break;
        case 2:
            printf("Category 2\n");
            break;
    }
    return 0;
}
```
**Output**: `Category 1, Item 2`
## Questions
<details>
<summary>
Q1.What is the purpose of the `switch` statement in C? </summary>
   The switch statement selects one of many code blocks to execute based on an integral expression’s value.
</details>
<details>
<summary>
Q2. What types of expressions can be used in a `switch` statement?**  
   Only integral types (`int`, `char`, or `enum`) can be used in a `switch` expression.
</summary>
</details>
<details>
<summary>
Q3. What happens if a break statement is omitted in a switch case?</summary>  
   Execution falls through to the next case or default block until a `break` or the end of the switch.
</details>
<details>
<summary>
Q4.Can a switch statement have multiple default cases?</summary> 
   No, a switch statement can have only one default  case.
</details>
<details>
<summary>
5. What is the role of the `default` case in a switch statement? </summary>
   The default case executes when no case matches the switch expression.
</details>
