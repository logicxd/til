# Assembly

High performance, gives direct and complete control over system hardware, and can use if no high level language compiler is available.
But on the downside, it's not portable, it's more difficult, and it's tedious and error-prone.

## CPU/Memory Interaction

These both are included on a CPU chip:

Arithmetic/Logic (ALU)
* Performs the actual computation.
* Accessing memory is expensive.

Registers
* Much faster than accessing memory.
* Only a few registers on CPU.

## x86 Registers

x86 registers are 32-bit.

![](https://cloud.githubusercontent.com/assets/12219300/21976521/1d98cfc0-db87-11e6-8c47-3b6e5e1605c9.png)

## Data Movement Instructions

Key words clarification:
* DST - Destination
* SRC - Source

From memory to registers
```
mov DST_REG, value			// mov ebx, 3
mov DST_REG, mem			  // mov eax, arg1
```

From registers to memory
```
mov mem, SRC_REG				// mov arg2, edx
mov mem, value				  // mov arg3, 4
```

Between registers
```
mov DST_REG, SRC_REG			// mov ecx, ebx
```

## x86 Special Purpose Registers

* PC - Program Counter. Points to the next instructions to be executed.
* EFLAGS - holds status bit flags.
* ESP - points to the top of the Stack.

## Arithmetic Operation Instructions

Addition
```
add REGISTER, VALUE 		// REGISTER = REGISTER + VALUE
add REGISTER1, REGISTER2	// REGISTER1 = REGISTER1 + REGISTER2
```

Subtraction
```
sub REGISTER, VALUE 		// REGISTER = REGISTER - VALUE
sub REGISTER1, REGISTER2	// REGISTER1 = REGISTER1 - REGISTER2
```

Increment and decrement
```
inc REGISTER				// REGISTER = REGISTER + 1
dec REGISTER  		 	 // REGISTER = REGISTER - 1
```

Multiplication - Note if you multiple two registers that are both 32 bits, your answer can overflow to 64 bits.
```
imul REGISTER1, REGISTER2					// REGISTER1 = REGISTER1 * REGISTER2
imul REGISTER1, REGISTER2, VALUE			 // REGISTER1 = REGISTER1 * REGISTER2 * VALUE
```

## Bitwise Operation Instructions

NOT - example (this is not accurate, it should have 32 of 0's and 1's in actuality):
* eax = 1101 0000
* not eax
* eax = 0010 1111

```
not REGISTER		// REGISTER = not REGISTER
```

AND - example (intersection from discrete math)
* eax = 1101 0000 1000
* edx = 1111 1111 1111
* and eax, edx
* eax = 1101 0000 1000

```
and REGISTER1, REGISTER2 	  // REGISTER1 = REGISTER1 and REGISTER2
```

OR
```
or REGISTER1, REGISTER2		// REGISTER1 = REGISTER1 or REGISTER2
```

XOR
```
xor REGISTER1, REGISTER2	   // REGISTER1 = REGISTER1 xor REGISTER2
```

Shift to the left - example
* eax= 1101 0000 0001
* shl eax, 3
* eax = 1000 0000 1000
	* padding the resulting empty bit positions with zeros.

```
shl REGISTER, VALUE
```

Shift to the right
```
shr REGISTER, VALUE
```

## Control Flow

Assembly instructions execute sequentially
* Program Counter (PC) points to the next instruction in memory that CPU will execute next.
* After finishing the execution of current instruction, its value will be updated to point to the next instruction.

Labels - unique identifiers that are assigned to assembly instructions. Used as jump targets to change from one execution to another.
Jump - `jmp` moves current instruction to execute what's specified in the label.

Example:
```
Label_1:
	inc ecx
	or ecx, ebx

mov eax, ebx
add eax, ebx
jmp Label_1
```

## Comparison

Sets the CPU flags (EFLAGS) according to the outcome. Can be used for conditional jumping.

```
cmp REGISTER, VALUE					// cmp eax, 2
cmp REGISTER1, REGISTER2			   // cmp eax, ecx
```

Conditional Jumps. Compare arg1 t oarg2; must immediately precede any of the conditional jump instructions.
* `je label`: Jump to label if arg1 == arg2
* `jne label`: Jump to label if arg1 != arg2
* `jg label`: Jump to label if arg1 > arg2
* `jge label`: arg1 >= arg2 (signed)
* `jl label`: arg1 < arg2 (signed)
* `jle label`: arg1 <= arg2 (signed)
* `ja label`: arg1 > arg2 (unsigned)
* `jae label`: arg1 >= arg2 (unsigned)
* `jb label`: arg1 < arg2 (unsigned)
* `jbe label`: arg1 <= arg2 (unsigned)

Example:
```
cmp eax, 2
je eq_label

eq_label: add eax, ebx
		  mov ecx, eax
```
