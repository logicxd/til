# Register

Memory are organized by bytes - 16, 32, 64...
You can have a memory with a huge memory but it's expensive and takes longer to maintain and write.

## Register Transfer Language (RTL)

A programming language used to describe the action happening within the CPU.
We're describing the transaction that is happening in the hardware.
```
R[4] <- R[4] + R[6] // Load ALU with the value from R[4] and R[6] and then store the addition of the two in R[4].

Z <- 1 if R[4] = 0  // Set register Z to 1 if the register 4 is 0.

MDR <- Mem[MAR]; PC <- PC + 2 // MAR - Memory Address Register, MDR - Memory Data Registry.
```

## CPU Instruction Execution Cycle

What does the CPU do?

* Fetch Instruction from memory into instruction register (IR).
* Increment Program Counter (PC) (this will prepare to fetch the next instruction).
* Decode the instruction in IR. (Complex depending on the instruction and register)
* Fetch Operand(s) specified by a field in IR. (Tell the ALU what it's supposed to do)
* Execute Operation specified by a field in IR.
* Store result (if necessary) as specified by a field in IR.

The cycle is repeated forever or until a HALT instruction stops the processor.

Example:
```
IR  <- Mem[PC]    // Instruction Fetch

PC <- PC + 2      // Increment Program Counter (why 2? typically skips by 2)

General all necessary control signals   // Decode instruction (Telling the ALU what to do).

A <- RegFile[IR(src1)]        // Fetch operands
B <- RegFile[IR(src2)]

Result <- ALU(IR(opcode),A,B)   // Execute operation

RegFile[IR(dest)] <- Result     // Store result.
```

## ISA Details

Memory Model
* 4 GB of memory.
* Byte addressable.
* Linear array of storage locations.
* 8 byte physical word.

Registers
* Eight 32-bit integer.
* Plus some special registers.
* Some registers are not visible.
* Some registers are just 1 bit - these are flags.

Data Types
* Integer, floating point, decimal, ASCII.
* Operations on each type.

Addressing Modes
* How instructions specify memory locations

Instruction Formats
* Specific sizes and "fields" in the instruction word

Instruction can be grouped by types
* Arithmetic: `+, -, *, /`.
* Logical: AND, OR, NOT, XOR, shifts.
* Control: Conditional branches, jumps (by changing PC).
* Move: Memory to register, register to register, etc.

Example Instruction:
* `mov R1 4`
* Type: "Move"
* Destination: "R1"
* Addressing Mode: "Immediate"
* The constant 4 uses at least a 4 bit Data Type
