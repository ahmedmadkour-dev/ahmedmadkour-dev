# Python fundamentals — learning and debugging log

**Status:** ongoing programming practice, primarily small exercises.

## Concepts practised

- Variables, input and printed output.
- `if` / `elif` / `else` conditions.
- Comparison and boolean logic.
- `for` and `while` loops.
- Counters, loop termination and updating state.
- Validation/retry exercises (such as asking repeatedly for a correct answer).
- Basic SQL queries (`SELECT`, `WHERE`) in separate computing revision exercises.

## Example pattern — bounded attempts

This small illustrative example demonstrates the loop structure practised. It is **not** copied from a finished source file:

```python
secret = "blue"
attempts = 0
max_attempts = 3

while attempts < max_attempts:
    answer = input("Enter the secret: ").strip().lower()
    attempts += 1

    if answer == secret:
        print("Access granted")
        break
    print("Incorrect answer")
else:
    print("No attempts left")

print(f"Attempts used: {attempts}")
```

## Problems I encountered and corrected

I initially placed increments and output statements in the wrong part of `while` loops, leading to repeated messages, incorrect iteration counts or wrong loop behaviour. I practised tracing the current variable value **before** and **after** each iteration and separating loop bodies from code that should run once after the loop.

## What I can demonstrate now

I have used Python loops and conditionals in small, guided tasks, including debugging failed attempts. I do **not** claim professional Python proficiency or an independent large-scale codebase from these exercises. Next steps: write more small programs from scratch, add test cases and commit actual `.py` files with expected output.
