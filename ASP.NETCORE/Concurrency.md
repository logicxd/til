# Concurrency (in general and for ASP.NET)

## Asynchronous in C# ASP.NET

* A thread is like a worker and a limited resources. The web server has a limited amount of threads that can process to the requests. 
* `async` stands for asynchrony. The application can continue with other work, and not freeze, while waiting for something to finish loading. If marked, it means that this task can be multithreaded.
* `await` similar to async but for processes that might take a very long time. Spawns a new thread that does the multithreading.
* `Task` represents an asynchronous operation. Does not return a value.
  * `Task<something>` has a return statement of something.

## Multi-threading vs Asynchronous Programming

Ref: https://codewala.net/2015/07/29/concurrency-vs-multi-threading-vs-asynchronous-programming-explained/

### Concurrency
Processing multiple requests at a time. Multi-threading and asynchronous models below.

### Synchronous
Synchronous is when a thread is assigned to one task and start executing. It cannot leave the executing task in between to take up some another task. Can be __Single-Threaded__ or __Multi-Threaded__.

Single-Treaded: one thread does all the tasks in order.
![single-threaded](https://brijbhushan.files.wordpress.com/2015/07/singlethreaded.png)

Multi-Threaded: multiple threads each complete their own tasks.
![multi-threaded](https://brijbhushan.files.wordpress.com/2015/07/multithreaded.png)

### Asynchronous
A thread can switch on and off between different tasks.

Single-Threaded: one thread does multiple tasks at the same time, switching between different tasks.
![single-threaded](https://brijbhushan.files.wordpress.com/2015/07/async-single.png)

Multi-Threaded: multiple threads can do multiple tasks at the same time, switching between different tasks.
![multi-threaded](https://brijbhushan.files.wordpress.com/2015/07/async-mutlithreaded.png)
