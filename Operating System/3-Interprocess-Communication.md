# Interprocess Communication (IPC)
Communication between multiple processes. Two types **shared memory** and **EEE**.

## Shared Memory
An area of memory shared among the processes that wish to communicate.

* Processes have like a pointer to a memory space that is allocated and they all can share the same memory.
* Easy for processes to access the memory but difficult to maintain concurrency.
