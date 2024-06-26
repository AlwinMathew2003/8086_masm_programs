
# CSL331 System Software And Microprocessors Lab<br>
## 8086-MASM PROGRAMMING
### [**KTU 2019 SCHEME**](https://ktu.edu.in/)
## [Jyothi Engineering College, Cheruthuruthy, Thrissur, Kerala](https://jecc.ac.in/)
### [Department of Computer Science & Engineering](https://jecc.ac.in/departments/computer_science_engineering)
#### 2021 - 2025 (A) Batch
[![](https://img.shields.io/badge/Source%20Code-Download_Link-brightgreen)](https://github.com/AlwinMathew2003/8086_masm_programs)

[![](https://img.shields.io/badge/Programs%20%20by-%20Alwin%20Mathew%2C%20Adithya%20E-orange)](mailto:adithya.cse21@jecc.ac.in,alwinmathew.cse21@jecc.ac.in)

---
## **<br>Table Of Contents**
| **SECTION**                        | **LINKS**                            |
|---------------------------------|---------------------------------------|
|**Installation of 8086** | [Installation of 8086](#Installation)  |
|**Sample 8086 masm assembly programs** | [Sample 8086 masm assembly programs](#sample-8086-masm-assembly-programs)  |
|**Registers and Usage**             | [Registers and Usage](#registers-and-usage)               |
|**Basic Instruction**               | [Basic Instruction](#basic-instruction)               |
|**INT 21H DOS Function**            | [INT 21H DOS Function](#int-21h-dos-function)               |
|**Basic ASCII Values**              | [Basic ASCII Values](#basic-ascii-values)               |
|**Basic Code Block**                | [Basic Code Block](#basic-code-block)               |


## <br>Installation

[![](https://img.shields.io/badge/DOSBox-Install%20on%20Windows%20-yellow)](https://sourceforge.net/projects/dosbox/files/latest/download)

[![](https://img.shields.io/badge/Masm--8086-Install%20on%20Windows%20-yellow)](https://drive.google.com/file/d/1DoQrdZ6WJOGZwa-EuDXU-DnCHBtf2tl8/view)


**Install the masm-8086 in the C folder**

 ### Mounting 8086
 
 > mount c c:\8086
 
 > c:
 
 ### Steps to run the program
 
 > masm prgoram_name.asm
 
 > link program_name.obj
 
 > program_name
 
## <br>Sample 8086 masm assembly programs

| Program Name | Description | Code File |
|--------------|-------------|-----------|
| **Hello Program** | Program to print "hello." | [Hello.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/HELLO.ASM) |
| **String Input and Output** | Program to input and output a string character by character. | [StringInOut.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/STRIN_AH.ASM) |
| **String Input and Output (Using DOS Functions)** | Program to input a string using 3FH and output using 09H. | [StringInputOutput.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/STRIN.ASM) |
| **Palindrome Check** | Program to check whether the given string is a palindrome. | [Palindrome.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/PALINDRO.ASM) |
| **String Length Calculation** | Program to find the length of a string. | [StringLength.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/STRLEN.ASM) |
| **String Reversal using Stack** | Program to reverse a string using a stack. | [StringReverse.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/REVERSE.ASM) |
| **Print number** |program to print a number in a variable. | [PrintNum.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/NUM.ASM) |
| **Number Input and Output** | Program to input a number and print the inputted number. | [NumberInputOutput.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/NUMIN.ASM) |
| **Even or Odd Check** | Program to find whether a number is even or odd. | [EvenOdd.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/EVEN_ODD.ASM) |
| **Addition of Two Numbers** | Program to add two numbers. | [Addition.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/ADD.ASM) |
| **Multiplication of Two Numbers** | Program to multiply two numbers. | [Multiplication.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/MUL.ASM) |
| **Multiplication without Using MUL** | Program to multiply two numbers without using MUL. | [MultiplicationWithoutMUL.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/MUL1.ASM) |
| **Division of Two Numbers** | Program to divide two numbers. | [Division.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/DIV.ASM) |
| **Division without Using DIV** | Program to divide two numbers without using DIV. | [DivisionWithoutDIV.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/DIV1.ASM) |
| **Factorization** | Program to find the factors of a number. | [Factors.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/FACT.ASM) |
| **Array Input and Output** | Program to input array elements and print the array elements. | [ArrayInputOutput.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/ARRAY.ASM) |
| **Array Sorting** | Program to sort array elements. | [ArraySort.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/SORT.ASM) |
| **Finding the Largest Number in an Array** | Program to find the largest number in an array. | [LargestInArray.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/LARGEST.ASM) |
| **Sum of the First 10 Even Numbers** | Program to find the sum of the first 10 even numbers. | [SumOfEvenNumbers.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/EVENSUM.ASM) |
| **Number of a's in a string** | Program to find the number of a's in a string | [NumberOfA.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/NUMA.ASM) |
| **TrianglePattern** | Program to print a pattern | [TrianglePattern.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/PATTERN.ASM) |
| **FibonacciSeries** | Progam to find the fibonacci series| [FibonacciSeries.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/FIBO.ASM) |
| **Prime number check** | Program to check whether the give number is prime or not| [PrimeCheck.asm](https://github.com/AlwinMathew2003/8086_masm_programs/blob/main/PRIME.ASM) |



## **<br>Registers and Usage**

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

## **<br>Basic Instruction**

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
it multiplies the value and store in AX register

MOV AX, 5

MOV BX, 10

MUL BX ; AX = AX * B

####  DIV (Unsigned Division):
It divides the value in AX register and store the remainder in AH and qoutiend in AL register

MOV AX, 30

MOV CX, 5

DIV CX ; AL = AX / CX, AH = AX % CX

#### AAA(ASCII Adjust After Addition):

Since each 8 Bit register contains an hexadecimal number so on addition of 7+4 (any addition that result greater than 9) it will result in 12 in AL register and on printing the result it will not print correctly as per the result in order to do that we have to load 1 in AH register and 2 in AH register by dividing by 10. After addition of a number. (For addition resulting in 0 to 9 does not need this since it is a valid BCD)

So in order to avoid this we can use AAA it automatically do this process after addition. 

#### AAM(ASCII Adjust After Multiplication):

Same operation as we mentioned in AAA. It adjust the product obtained in to AL and AH register if it is greater than 0.

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

## <br>INT 21H DOS Function

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

Displays string in the data area, immediately followed by a dollar sign ($ or 24H), which
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

## **<br>Basic ASCII Values**

Space = 32(decimal)

Newline = 10(decimal)

Comma = 44(decimal)

Enter(carriage return) = 13(decimal) or 0D(hexadecimal)

Convert to ascii while printing and convert it to character to do any operation

To ASCII = add it with 30H or 48(decimal)

To decimal or character = sub it with 30H

## **<br>Basic Code Block**

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
