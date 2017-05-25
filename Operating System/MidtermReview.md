## T/F Questions
* Round-robin - shorter quantum number increases the overhead.
* 1 to 1 multithreading provides more parallelism in a multiprocessor system than many to 1 - true.
* Fork - child process gets 0. Parent gets some positive PID.
* An interrupt switches into the kernel process - true.
* Memory cache is not volatile - false
* Busy waiting doesn't make you transfer from running into waiting.

## Question A
User mode vs kernel mode
* CPU mode is about which instructions the CPU can execute. Understanding of privileges.

All processes share the same address space:
* Loss of isolation, decrease security

## Interprocess communication, shared memory vs message passing.
* Shared memory if there's a bunch of users that everybody reads and nobody updates.
* Message passing sending and receiving messages.

## Threading and address spaces
Each thread has it's own program counter, stack pointer, cpu register.
Share addressed space.

## Spinlock vs Semaphore
* Has a busy wait and keeps going until it gets access.
* Can just go to sleep if there's no access.

## Safe State
Not in a safe state if nobody can progress.
* Not enough resources to guarantee that a deadlock won't occur.
