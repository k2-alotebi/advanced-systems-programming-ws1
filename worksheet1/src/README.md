# UFCFWK-15-2 Worksheet 1
## Assembly Language Programming

**Student:** Khaled Alotebi  
**Date:** November 2025

---

## Overview
This worksheet demonstrates assembly language programming including:
- Basic arithmetic operations
- Input/output operations
- Loops and conditionals
- Array manipulation
- Makefile automation

---

## Task 1: Basic Assembly Programs (20%)

### Task 1.1: Adding Two Numbers
**Description:** A simple assembly program that adds two predefined integers.

**Code Explanation:**
```asm
mov     eax, [num1]    ; Load first number into EAX
add     eax, [num2]    ; Add second number to EAX
mov     [result], eax  ; Store result
```

**Output:**
```
30
```

**Screenshot:** 
<img width="818" height="50" alt="Screenshot 2025-11-23 062408" src="https://github.com/user-attachments/assets/93088a25-0de1-4258-a767-a68a74cc4f5c" />


---

### Task 1.2: Interactive Addition
**Description:** Prompts user for two integers and displays their sum.

**Key Assembly Instructions:**
- `call read_int` - Read integer from user
- `call print_string` - Display text
- `call print_int` - Display integer result

**Screenshot:**
<img width="835" height="104" alt="Screenshot 2025-11-23 062442" src="https://github.com/user-attachments/assets/4a91012b-3589-4354-8ceb-867f6e013a1d" />

---

## Task 2: Loops and Conditionals (20%)

### Task 2.1: Welcome Message Loop
**Description:** Asks user for a count (50-100) and prints welcome messages.

**Features:**
- Input validation using conditional jumps
- Loop implementation using `loop` instruction
- Error handling for invalid input

**Assembly Logic:**
```asm
cmp     eax, 50        ; Compare with minimum
jl      error          ; Jump if less than 50
cmp     eax, 100       ; Compare with maximum
jg      error          ; Jump if greater than 100
```

**Screenshot:**
<img width="925" height="603" alt="Screenshot 2025-11-23 062511" src="https://github.com/user-attachments/assets/9c5c1e0d-6836-4b37-84ad-9e3579d711aa" />

---

### Task 2.2: Array Sum
**Description:** Initializes array with values 1-100 and calculates sum.

**Algorithm:**
1. Initialize array with loop
2. Sum array elements
3. Display result

**Expected Output:** `Sum of array: 5050`

**Mathematical Verification:** Sum of 1 to 100 = n(n+1)/2 = 100(101)/2 = 5050 ✓

**Screenshot:**
<img width="877" height="53" alt="Screenshot 2025-11-23 062524" src="https://github.com/user-attachments/assets/4765e155-0f29-44a7-87f2-6e6e6babf4c8" />

---

## Task 3: Makefile (20%)

**Description:** Created automated build system using Make.

**Features:**
- Compiles all tasks with single command
- Handles dependencies automatically
- Provides clean target for removing binaries

**Usage:**
```bash
make all     # Build all programs
make clean   # Remove compiled files
make task1   # Build specific task
```

**Makefile Structure:**
- Uses pattern rules for `.asm` → `.o` compilation
- Specifies `-m32` flag for 32-bit compatibility
- Includes `-i src/` for assembly includes

---

## Task 4: Documentation (40%)

This README provides comprehensive documentation including:
- Code explanations
- Screenshots of execution
- Technical details of implementation
- Build instructions

---

## How to Build and Run

### Prerequisites:
- NASM assembler
- GCC compiler with 32-bit support
- Linux environment

### Build All Programs:
```bash
cd ~/worksheet1
make clean
make all
```

### Run Individual Programs:
```bash
cd src
./task1      # Simple addition
./task1_2    # Interactive addition
./task2_1    # Welcome message loop
./task2_2    # Array sum
```

---

## Technical Details

### Assembly Directives Used:
- `segment .data` - Initialized data
- `segment .bss` - Uninitialized data
- `segment .text` - Code section
- `global asm_main` - Export function

### Key Instructions:
- `enter/leave` - Stack frame management
- `pusha/popa` - Save/restore registers
- `mov` - Data movement
- `add` - Addition
- `cmp/jl/jg` - Conditional branches
- `loop` - Decrement ECX and branch

### Calling Convention:
- Uses cdecl convention
- Parameters passed via stack
- EAX contains return value

---

## Challenges and Solutions

### Challenge 1: Include Path
**Problem:** NASM couldn't find `asm_io.inc`  
**Solution:** Added `-i src/` flag to ASMFLAGS in Makefile

### Challenge 2: 32-bit Compilation
**Problem:** Linking errors on 64-bit system  
**Solution:** Used `-m32` flag for GCC

---

## Learning Outcomes

Through this worksheet I learned:
-  Assembly language syntax and structure
-  Register usage and calling conventions
-  Implementing loops and conditionals in assembly
-  Array manipulation at low level
-  Build automation with Make
-  Debugging assembly programs

---

## Repository Structure
```
worksheet1/
├── README.md
├── Makefile
├── screenshots/
│   ├── task1.png
│   ├── task1_2.png
│   ├── task2_1.png
│   └── task2_2.png
└── src/
    ├── asm_io.inc
    ├── asm_io.asm
    ├── driver.c
    ├── task1.asm
    ├── task1_2.asm
    ├── task2_1.asm
    └── task2_2.asm
```

---

## Submission

**GitHub Repository:** https://github.com/k2-alotebi/advanced-systems-programming-ws1  

---

## References
- PC Assembly Language by Paul A. Carter
- NASM Documentation
- UWE UFCFWK-15-2 Lecture Materials
