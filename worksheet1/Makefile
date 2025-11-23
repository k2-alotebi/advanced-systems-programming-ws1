# Compiler and assembler
CC = gcc
ASM = nasm
CFLAGS = -m32
ASMFLAGS = -f elf -i src/

# Object files
ASM_IO_OBJ = src/asm_io.o
DRIVER_OBJ = src/driver.o

# Targets
all: task1 task1_2 task2_1 task2_2

# Task 1
task1: $(DRIVER_OBJ) src/task1.o $(ASM_IO_OBJ)
	$(CC) $(CFLAGS) $(DRIVER_OBJ) src/task1.o $(ASM_IO_OBJ) -o src/task1

# Task 1.2
task1_2: $(DRIVER_OBJ) src/task1_2.o $(ASM_IO_OBJ)
	$(CC) $(CFLAGS) $(DRIVER_OBJ) src/task1_2.o $(ASM_IO_OBJ) -o src/task1_2

# Task 2.1
task2_1: $(DRIVER_OBJ) src/task2_1.o $(ASM_IO_OBJ)
	$(CC) $(CFLAGS) $(DRIVER_OBJ) src/task2_1.o $(ASM_IO_OBJ) -o src/task2_1

# Task 2.2
task2_2: $(DRIVER_OBJ) src/task2_2.o $(ASM_IO_OBJ)
	$(CC) $(CFLAGS) $(DRIVER_OBJ) src/task2_2.o $(ASM_IO_OBJ) -o src/task2_2

# Compile rules
src/%.o: src/%.asm
	$(ASM) $(ASMFLAGS) $< -o $@

src/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean
clean:
	rm -f src/*.o src/task1 src/task1_2 src/task2_1 src/task2_2

.PHONY: all clean
