# Memory

Memory to memory movement not allowed. Such as
* mov [addr1], [addr2]
* add [addr1], [addr2]
* mov [addr1], variable. Variable is still in memory.

## Size for memory address
* 1 byte - `byte ptr [addr]`
* 2 byte - `word ptr [addr]`
* 4 byte - `dbyte ptr [addr]`

## Calculate effective address
* Effective address = Base + (Index * Scale) + Offset.
* Base = EAX, EBX, ...
* Index = 
