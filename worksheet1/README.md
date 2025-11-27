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
mov     eax, [num1]   
add     eax, [num2]   
mov     [result], eax  
```

**Output:**
```
30
```

**Screenshot:** 
![Task 1 Output](/task1.png)

---

### Task 1.2: Interactive Addition
**Description:** Prompts user for two integers and displays their sum.

**Key Assembly Instructions:**
- `call read_int` - Read integer from user
- `call print_string` - Display text
- `call print_int` - Display integer result

**Screenshot:**
![Task 2.1 Output](/task1_2.png)
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
cmp     eax, 50       
jl      error         
cmp     eax, 100      
jg      error        
```

**Screenshot:**
![Task 1.2 Output](/task2_1.png)

---

### Task 2.2: Array Sum
**Description:** Initializes array with values 1-100 and calculates sum.

**Algorithm:**
1. Initialize array with loop
2. Sum array elements
3. Display result

**Expected Output:** `Sum of array: 5050`

**Mathematical Verification:** Sum of 1 to 100 = n(n+1)/2 = 100(101)/2 = 5050 

**Screenshot:**
![Task 2.1 Output](/task2_2.png)
---

## Task 3: Makefile (20%)

**Description:** Created automated build system using Make.

**Features:**
- Compiles all tasks with single command
- Handles dependencies automatically
- Provides clean target for removing binaries

**Usage:**
```bash
make all    
make clean  
make task1   
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
./task1      
./task1_2    
./task2_1   
./task2_2   
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

**GitHub Repository:** https://github.com/k2-alotebi/Worksheet1  
**Status:** Complete 

---

## References
- PC Assembly Language by Paul A. Carter
- NASM Documentation
- UWE UFCFWK-15-2 Lecture Materials
