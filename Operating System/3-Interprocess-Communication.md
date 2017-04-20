# Interprocess Communication (IPC)
Communication between multiple processes. Two types **shared memory** and **EEE**.

## Shared Memory
An area of memory shared among the processes that wish to communicate.

* Processes have like a pointer to a memory space that is allocated and they all can share the same memory.
* Easy for processes to access the memory but difficult to maintain concurrency.

## Message Passing
Mechanism for processes to communicate and to synchronize their actions.
* **Message system** - processes communicate with each other without resorting to shared variables.

IPC Provides two operations:
* Send(message)
* Receive(message)
* Message size is either fixed or variable.

If processes P and Q wish to communicate, they need to:
* Establish a **communication link** between them.
* Exchange messages via send/receive.

### Direct Communication
* Processes must name each other explicitly:
* send(P, message) - send a message to process P
* receive(Q, message) - receive a message from process Q

Properties of direct communication link
* Links are established automatically.
* A link is associated with exactly one pair of communicating processes.
* Between each pair there exists exactly one link.
* The link may be unidirectional, but is usually bi-directional.

### Indirect Communication
* Messages are directed and received from mailboxes (also referred to as ports)
* Each mailbox has a unique id.
* Processes can communicate only if they share a mailbox.

Properties of indirect communication link
* Link established only if processes share a common mailbox.
* A link may be associated with many processes.
* Each pair of processes may share several communication links.
* Link may be unidirectional or bi-directional.

Operations
* Create a new mailbox
* Send and receive messages through mailbox
* Destroy

Mailbox sharing
* P1, P2, P3 share mailbox A
* P1 sends. P2, P3 receive.

### Synchronization
Message passing may be either blocking or non-blocking.

Blocking is considered synchronous:
* Blocking send - the sender is blocked until the message is received.
* Blocking receive - the receiver is blocked until a message is available.
* If both send and receive are blocked, we have a **rendezvous**.

Non-blocking is considered asynchronous:
* Non-blocking send - the sender sends the message and continue.
* Non-blocking receive - the receiver receives a valid message or a null message.

### Buffering
Queue of messages attached to the link.
3 ways of implementation:
* Zero capacity - no messages are queued on a link. Sender must wait for receiver.
* Bounded capacity - finite length of n messages. Sender must wait if link full.
* Unbounded capacity - infinite length. Sender never waits.

* POSIX - A programming abstraction. Use the POSIX functionalities that will do system operations instead of you directl ydoing system operations.
* Mach - messaged based IPC system.

## Sockets
An endpoint for communication. **Port**. Usually for two processes across different machines.
* The socket of 123.123.123.123:4567 is port 4567.
* Communication consists between a pair of sockets.
* All ports below 1024 are well known.

## Remote Procedure Calls(RPC)
Abstracts procedure calls between processes on networked systems. Uses ports for service differentiation.
* Stubs: Client-side procedure on the server.
* The client-side stub locates the server and marshalls the parameters.

## Pipe
Allow two processes to communicate. (Similar to sockets except this is for the same machine)
* Ordinary pipes - cannot be accessed from outside the process that created it. Typically used by a parent process to communite with it's child process.
* Named pipes - can be accessed without a parent-child relationship.
