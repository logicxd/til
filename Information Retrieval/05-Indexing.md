# Indexing

Indexer
* Process or machine that performs indexing.
* Main constraint of performing indexing is the hardware.

## Inverted Index Construction
A sequence of (Modified token, document ID) pairs sorted by the token.
Usually indexing is that you find a number and see where it refers to.
In inverted indexing, it's doing the opposite; you get a token and try to reference it to a document.

## External Sorting

**BSBI: Blocked sort-based indexing**
* Goal: minimize number of disk seeks during sorting
* Technique:
  * Hash terms to save space
  * Keep dictionary (term, termID)
  * Save n blocks of (termID, docID) in disk

**SPIMI: Single-pass in-memory indexing**
* Key idea 1: Generate separate dictionaries for each block
  * No need to maintain term-termID mapping across blocks.
* Key idea 2: Don't sort. Accumulate postings in postings lists as they occur.
* With these two ideas we can generate a complete inverted index for each block.
* These separate indexes can then be merged into one big index.

## Distributed indexing
Problem
* Individual machines are fault-prone(slow down or fail)
* A single server won't have resources to index large collections (web) in a reasonable timing.

Solution
* Implement a distributed indexing algorithm in a distributed computing cluster (distributed servers)

Note
* Servers are distributed around the world.
* Estimate: Google ~1 million servers, 3 million processors/cores.

How it works
* Maintain a master (driver) machine (node) directing the indexing job considered "safe".
* Break up indexing into sets of (parallel) tasks.
* Master machine assigns each task to a worker machine (node) from a pool.

Algorithm is based on
* Two phases: map and reduce.w
* And two parallel tasks: parsing and inverting.

**MapReduce**
1. Break the input document (web) collection into splits. Each split is a subset of documents (such blocks in BSBI/SPIMI)
2. Master assigns a split to an idle parser machine.
3. Parser processes split into (term, doc) pairs.
4. Parser writes (term, doc) pairs into segment files.
5. Inverter collects all (term, doc) pairs (= postings).
6. Inverter sorts and writes to postings lists.

## Dynamic indexing

## Compression

Why compression is good
* Uses less disk space (typical compression 1:4)
  * Saves a little money
* Keep more (caching) stuff in memory
  * Increases speed.
* Increase speed of data transfer from disk to memory
  * Decompression algorithms are fast (fast CPU)
* Reading compression data and decompressing is faster than reading uncompressed data.

Advantages for Inverted indexes
* Make dictionary small enough to
  * keep in main memory.
  * keep some postings lists in main memory too.
* Reduce **Postings files** to
  * Reduce disk space needed
  * Decrease time needed to read postings lists from disk (disk seek)
* Note: Large search engines keep a significant part of the postings in memory.

### Lossless vs Lossy Compression.


## Collection Statistics

Zipf's law
*
