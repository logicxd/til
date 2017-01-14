# Assembly


## CPU/Memory Interaction

* Arithmetic/Logic Unit (ALU) - Performs the actual computation.
* Accessing memory is expensive.
* Registers are much faster.
* But they are much smaller as well.

AX|AH-AL
BX|BH-BL
CX|CH-CL
DX|DH-DL

Look back at the lecture

AH and AL are part of AX. You can't use AH for one thing and AL for another.

## Data Movement Instructions

Move memory to registers
`mov DST_REG, value`
`mov DST_REG, mem`

Registers to memory
`mov mem, SRC_REG`
`mov mem, value`

Between registers

## Special Purpose Registers
* PC - Program Counter. Points to the next instructions to be executed.
* EFLAGS - holds status bit flags.
* ESP - points to the top of the Stack.

## Arithmetic Operation Instructions

`add REGISTER, VALUE` == REGISTER = REGISTER + VALUE
`add REGISTER1, REGISTER2` == REGISTER1 = REGISTER1 + REGISTER2
`sub`. Same as add.
`inc REGISTER` == REGISTER = REGISTER + 1
`dec REGISTER` == REGISTER = REGISTER - 1
`imul` multiplication.
`imul REGISTER1, REGISTER2`
`imul REGISTER1, REGISTER2, VALUE`
	Note if you multiple two registers that are both 32 bits, then your answer must be 64 bits.

## Bitwise Operation Instructions

`not REGISTER` == REGISTER = NOT REGISTER
`and REGISTER1, REGISTER2` == REGISTER1 = REGISTER1 and REGISTER2

`shl REGISTER, VALUE` shift to the left.
`shr REGISTER, VALUE` shift to the right.
0's are added to the end.

## Assembly and C Code Compared

`and var, 128` == var &= 1228;

## Labels

Labels - unique identifiers that are assigned to assembly instructions. Used as jump targets to change from one execution to another.

Example:
Label_1:
	inc_ecx
	or ecx, ebx

* Unconditional jump and conditional jump.

`jmp` Label
Moves from one spot to another spot.

`cmp REGISTER, VALUE` compares values. Based on the values, it sends event flags.
