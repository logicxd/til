# Threads
Idea is to separate concurrency from protection.

**Process** is a single execution.
* Multithreading: a single program made up of a number of different concurrent activities.
* A process could be single-threaded or multithreaded.

## Multithreading

Benefits
* Responsiveness
  * If some program is executing, it won't block and stall the entire process.
* Resource Sharing
* Economy
  * Lower cost than creating a new process.
* Utilization of MP(Many processor) Architectures
  * CPU's usually have many cores so this utilizes.
  * If a program is single process, and your CPU has multiple cores, the rest of the cores can't actually do anything.

Thread State
* State shared by all threads in process/address space.
  * Contents of memory (global variables, heap)

Types of Threads
* Kernel-supported threads
  * Kernel is responsible for maintaining and launching complex switches.
  * Kernel can run different threads in different cores at the same time.
  * Downside: a bit expensive.
  * Most kernels we use these use have Kernel-supported threads.
* User-level threads
  * Thread management done by user-level threads library.
  * May have several user threads per kernel thread.
  * User threads may be scheduled non-preemptively relative to each other (only switch on yield()).
  * Advantages: cheap, fast.
  * Disadvantages: if kernel is singled threaded, system call from any thread can block the entire task.
  * Examples: POSIX Pthreads, Win32 threads, Java threads.
* Hybrid approach.

Many-to-one (User to Kernel)
* Many user-level threads mapped to single kernel threads.
* If the single kernel blocks, then all the user threads are blocked.

One-to-one (User to Kernel)
* Each user-level thread maps to a kernel thread.

Many-to-many (User to Kernel)
* Allows many user level threads to be mapped to many kernel threads.
* Allows the operating system to  create a sufficient number of kernel threads.

Threading Issues
* `fork()` - fork a single process -> replicate the process. fork a multithreaded process -> replicate one of the thread.
* `exec()` -

Thread Cancellation
* Terminating a thread before it has finished.
* Thread to be canceled is target thread.
* Two approaches:
  * `asynchronous cancellation`
  * `Deferred cancellation`

Thread Pool
* If you have a program that has a lot of threads, you can create a number of threads in a pool where they await work.
* So you don't have to create and de-allocate every time, you can just grab a thread from the thread pool and assign tasks.

Thread-Local Storage (TLS)
* Allows thread to have its own copy of data.
* Different from local variables.
  * Local variables visible only during single function invocations.
  * TLS visible across function invocations.

Multi (processing, programming, threading)
* Multiprocessing = multiple CPUS.
* Multiprogramming = multiple jobs or processes.
* Multithreading = multiple threads per process.
