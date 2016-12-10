# Memory

CPU cache memory, main memory, and external memory.

* Latency: the time it takes from a request for data until the first information arrives.
* Bandwidth: the throughput (data rate) starting when the first data begins to arrive. The transfer of data.

## Speed vs Space Differences

Here are some current sizes and relative speeds for CPU Chip, main, and
external memory (these are very approximate).

  CPU Chip ~1-10 Mb  10-100 times faster than main memory
  Main     ~1-10 Gb  100K - 1M times faster than external memory (latency)
  External ~1- ? Tb

As a rule of thumb, each step up increases the size by a factor of 1,000 and
decreases the speed and cost/byte by a similar factor.

## Data Access Patterns

* Temporal Locality: if data is being accessed now, it is likely to be accessed soon in the future.
* Spatial Locality: if data is being accessed now, data near it is likely to be accessed soon in the future.

Policy for the data access patterns dictate which old data block to remove from a filled cache.

Standard policies:
* Random: self-explanatory.
* First in first out (FIFO): if something was brought in a long time ago, it is less likely to be
used compared to something that was brought in more recently.
* Least Recently Used (LRU): if something has been used recently, it
is more likely to be used in the near future.



## something

Here are four policies that decide which memory block to use from the linked
list of free memory blocks.

  1) First-fit: Search the linked list starting at the beginning and stop at the
       first memory block with enough space.

  2) Next-fit: Search the linked list starting wherever the last reclaimed
       block came from, and stop at the first block with enough space (if we
       run off the end of the list, start at the front: e.g., circular list).

  3) Best-fit: Search the entire linked list and find the smallest block with
       enough space (or keep the the list sorted by size, or use a hash-like
       stucture with all blocks 1-2 words, 3-4 words, 5-8 words, 9-16 words,
       17-32 words, etc. linked together: bin 30 is holding memory objects
       whose size is a gigabyte: 2^30).

  4) Largest: Use the largest free memory block (sometimes called "worst fit",
       but not a pejorative).

## Garbage Collection

Mark and Sweep method. Basically goes through all the variables and mark them as "live".
After, searching through all the variables, it searches through all the heap memory and
deallocates all the object that are not marked as free.
