# UFCFWK-15-2 Worksheet 1
## Assembly Language Programming

### Task 1: Basic Assembly Programs

#### Task 1.1: Add Two Numbers
This program adds two predefined numbers (10 and 20) and prints the result.

**Code snippet:**
```asm
mov     eax, [num1]
add     eax, [num2]
```

**Output:** 30

#### Task 1.2: Interactive Addition
This program prompts the user for two numbers and displays their sum.

**Screenshot:** [Add screenshot here]

---

### Task 2: Loops and Conditionals

#### Task 2.1: Welcome Message
Program asks for a count (50-100) and prints a welcome message that many times.

**Key features:**
- Input validation
- Loop implementation
- Error handling

#### Task 2.2: Array Sum
Initializes an array with values 1-100 and calculates the sum.

**Output:** Sum = 5050

---

### Task 3: Makefile
Created a Makefile to automate the build process for all tasks.

**Usage:**
```bash
make all     # Build all programs
make clean   # Remove compiled files
```

---

### How to Run
```bash
cd src
./task1      # Run task 1
./task1_2    # Run task 1.2
./task2_1    # Run task 2.1
./task2_2    # Run task 2.2
```
