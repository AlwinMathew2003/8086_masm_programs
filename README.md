# **8086-MASM PROGRAMMING**

# TABLE OF CONTENTS

| Section                        | Link                                  |
|---------------------------------|---------------------------------------|
| 1.**QUESTIONS AND CODE FILES TABLE** | [QUESTIONS AND CODE FILES TABLE](#questions-and-code-files-table)  |
| 2.**REGISTERS AND USAGE**             | [REGISTERS AND USAGE](#registers-and-usage)               |
| 3.**BASIC INSTRUCTION**               | [BASIC INSTRUCTION](#basic-instruction)               |
| 4.**INT 21H DOS FUNCTION**            | [INT 21H DOS FUNCTION](#int-21h-dos-function)               |
| 5.**BASIC ASCII VALUES**              | [BASIC ASCII VALUES](#basic-ascii-values)               |
| 6.**BASIC CODE BLOCK**                | [BASIC CODE BLOCK](#basic-code-block)               |



# QUESTIONS AND CODE FILES TABLE

| Question | Code File |
|----------|-----------|
| How to add two numbers? | [AdditionCode.c](src/AdditionCode.c) |
| What is the main function in Python? | [MainFunction.py](src/MainFunction.py) |
| How to implement a linked list? | [LinkedList.java](src/LinkedList.java) |
| How to style a webpage with CSS? | [Style.css](web/Style.css) |


## **REGISTERS AND USAGE**

1. **General-Purpose Registers:**
    - **AX (Accumulator):** Often used for arithmetic and logic operations. It is also used in some string manipulation instructions.
    - **BX (Base):** Used as a base register for memory addressing.
    - **CX (Counter):** Primarily used as a loop counter in string and loop operations.
    - **DX (Data):** Used in multiplication and division operations, as well as certain I/O operations.
2. **Index Registers:**
    - **SI (Source Index):** Used as a source index in string operations.
    - **DI (Destination Index):** Used as a destination index in string operations.
3. **Segment Registers:**
    - **CS (Code Segment):** Contains the starting address of the code segment.
    - **DS (Data Segment):** Contains the starting address of the data segment.
    - **SS (Stack Segment):** Points to the beginning of the stack segment.
    - **ES (Extra Segment):** An additional segment register often used for extra data segment addressing.
4. **Pointer Registers:**
    - **SP (Stack Pointer):** Points to the top of the stack.
    - **BP (Base Pointer):** Used as a base pointer for stack operations.
5. **Flag Register:**
    - **FLAGS (Status Flags):** Contains various status flags such as zero flag (ZF), carry flag (CF), sign flag (SF), etc., indicating the result of arithmetic and logical operations.

## **BASIC INSTRUCTION**

### **Data Copy Instructions:**

#### MOV (Move):

MOV AX, BX ; Copy the value in BX to AX

####  LEA (Load Effective Address):

LEA SI, array ; Load the effective address of 'array' into SI

####  XCHG (Exchange):

XCHG AX, BX ; Exchange the values in AX and BX

###  **Arithmetic Instructions:**

####  ADD (Addition):

ADD AX, BX ; Add the value in BX to AX

#### SUB (Subtraction):

SUB CX, DX ; Subtract the value in DX from CX

####  MUL (Unsigned Multiplication):

MOV AX, 5
MOV BX, 10
MUL BX ; AX = AX * B

####  DIV (Unsigned Division):

MOV AX, 30
MOV CX, 5
DIV CX ; AX = AX / CX, DX = AX % CX

### **Logical Instructions:**

####  AND (Bitwise AND):

AND AL, 0Fh ; Perform a bitwise AND with AL and 0Fh

####  OR (Bitwise OR):

OR BL, 80h ; Perform a bitwise OR with BL and 80h

#### XOR (Bitwise XOR):

assemblyCopy code
XOR AX, AX ; Perform a bitwise XOR on AX with itself (AX = 0)

####  NOT (Bitwise NOT):

NOT DX ; Perform a bitwise NOT on DX

### **Branch Instructions:**

####  JMP (Unconditional Jump):

JMP label ; Jump to the specified label unconditionally

####  JE (Jump if Equal):

CMP AX, BX ; Compare AX and BX
JE equal_label ; Jump to equal_label if they are equal

####  JNE (Jump if Not Equal):

CMP CX, DX ; Compare CX and DX
JNE not_equal_label ; Jump to not_equal_label if they are not equal

####  JG (Jump if Greater):

CMP AX, BX ; Compare AX and BX
JG greater_label ; Jump to greater_label if AX > BX

## INT 21H DOS FUNCTION

**01H**

MOV, AH 01H; request keyboard input INT 21H

- Returns character in AL. IF AL= nonzero value, operation echoes on the screen. If Al=
zero means that user has pressed an extended function key such as F1 OR home.

**02H**

MOV AH, 02H; request display character
MOV DL, CHAR; character to display
INT 21H

- Display character in D2 at current cursor position. The tab, carriage return and line feed
characters act normally and the operation automatically advances the cursor.

**09H**

MOV Ah, 09H; request display
LEA DX, CUST_MSG; local address of prompt
INNT 21H
CUST_MSG DB “Hello world”, ‘$’

- Displays string in the data area, immediately followed by a dollar sign ($ or 24H), which
uses to end the display.

**OAH & 3FH**

It is used to read a string, you can use 3FH

MOV AH, 0AH ; request keyboard input
LEA DX, PARA_ LIST ; load address of parameter list
INT 21H
Parameter list for keyboard input area :
PARA_LIST LABEL BYTE; start of parameter list
MAX_LEN DB 20; max. no. of input character
make these text without newline spaces

## **BASIC ASCII VALUES**

Space = 32(decimal)

Newline = 10(decimal)

Comma = 44(decimal)

Enter(carriage return) = 13(decimal) or 0D(hexadecimal)

Convert to ascii while printing and convert it to character to do any operation

To ASCII = add it with 30H or 48(decimal)

To decimal or character = sub it with 30H

## **BASIC CODE BLOCK**

**Declare a variable to store value**

VAR1 DB 1 DUP(?) (It declares a variable with 1 byte)

**Declare an array**

ARRAY DB 5 DUP(?) (It declares an array with limit 5)

**Initializing variable with a value**

VAR1 DB 5  ( It stores a value 5 in 1 byte)

it can be passed to a register using MOV AL,[VAR1] or MOV AL,VAR1

**Initializing array with values**

ARRAY DB 5,3,2,6

**Initializing a variable with a string**

STRING1 DB “HELLO$”  (”$” it represents the end of the string)

**Initializing data segment**

MOV AX,@DATA

MOV DS,AX

**Input a string and store it in variable ‘STRING1’**

MOV AH,3FH

LEA DX,STRING1

INT 21H

I**nput a character or integer**

MOV AH,01H

INT 21H  (In this the data will be stored in the AL register)

(This instruction can be given in a loop to input elements to an array)

**Printing a string as such**

MOV AH,09H

MOV DX,OFFSET STRING1

INT 21H

(For outputting string one by one we can give it in a loop by printing single character by 02h DOS function)

**Ending a program**

MOV AH,4CH

INT 21H
