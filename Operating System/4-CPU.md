# CPU

## Scheduling
Allocate different processor to specific tasks for a specific percentage of time.

Objectives
* Enforcement of fairness in allocating resources to processes.
* Enforcement of priorities.
* Make best use of available system resources.
* Give preference to processes holding key resources.
* Give preference to processes exhibiting good behavior.
* Degrade gracefully under heavy loads.

Levels of scheduling
* High level scheduling or job scheduling:
* Intermediate level scheduling or medium term scheduling:
* Low level (CPU) scheduling or dispatching:

CPU Scheduler
* **Non-preemptive scheduling**
  * You don't know the order or how long that the processes are running.
  * Runs until its finished.
* **Preemptive scheduling**
  * Process can be interrupted to release the CPU.

### First-Come, First-Served (FCFS) Scheduling
Process that requests the CPU FIRST is allocated the CPU first.
* Non-preemptive algorithm.
* Implementation: FIFO queues.
* Performance: average waiting time in queue.

Calculations
* **Waiting time**: The time the process starts executing - the time the process arrived. Measures idle time of job.
* **Turnaround time**: The time the process finishes executing - the time the process arrived. Measures latency.
* **Response time**: The time the process arrived - the time the process started executing.
* **CPU Idle Time**: Utilization.
* **Overhead**: How much extra cost do we incur to schedule -- depends on algorithm.
  * Context switches -- a fixed cost of switching processes.
  * Conflict resolution -- could be extra cost to resolve conflicts.

### Shortest-Job-First (SJF) Scheduling
Determine which processes to go first based on their CPU burst time.
* Non-preemptive
  * Once a CPU has started executing the process, it cannot be preempted until it finishes it's CPU burst.
  * If two processes have the same burst time, the process that came in first gets executed first.
* Preemptive
  * The CPU will always execute the process with the shortest burst length.
  * If a process was already running, it will stop it and do the shortest one first.
* Performance: gives minimum average waiting time for a given set of processes. Longer turnaround time.

### Priority Scheduling
A priority value is given to each process and the CPU executes them in order based on
* Cost to user
* Importance to user
* Aging (This makes sure lower priority processes do get executed as time increases)
* % CPU time used in last X hours.
* Can be preemptive or Non-preemptive
* Do the lowest priority job at the arrival and finish it (Non-preemptive)

### Round Robin (q=20)
Every process shows up at the same time. We know how much time left on these jobs.
* `q` represents how long each process should run.
* So with `q` = 20, it runs all the processes for 20 bursts or until finish and then goes to next one.
* Repeat until every process is done.

## Job scheduling on multiple processors
Goal: Given `k` jobs, and `n` processors, schedule each job `j` on some processor `p(sub k)` within time `T`

### Real-Time Scheduling: Algorithms
* Earliest Deadline First
  * Schedule the task that is due first as soon as possible.
  * Optimal online algorithm.
  * Offline algorithms can do better, but are seldom realistic.
  * Preemptive.
* Latest Deadline first
  * We schedule its execution first.

## Process Synchronization
Managing shared state between processes.
