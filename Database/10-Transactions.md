# Transaction
The DBMS's abstract view of a user program: a sequence of (record) reads and writes.

## ACID

* **Atomicity**: Each transaction is all or nothing.
  * *commit* - when the transaction completes all its actions.
  * *abort* - when the transaction fails somewhere. (So it can undo if it failed).
* **Consistency**: Each transaction moves the database from one consistent state to another one.
* **Isolation**: Each transaction can be written as if it's the only transaction in existence.
* **Durability**: Once a transaction has committed, its effects will not be lost. Don't have to worry about data loss).

## Schedulable Transactions
//TODO from lecture

## Anomalies
* Dirty read
* Unrepeatable read
* Overwrite

## Lock-Based Concurrency Control

**Strict Two-phase Locking (Strict 2PL) Protocol**:
* Each transaction must get an **S (shared) lock** on an object before reading, and an **X (exclusive) lock** on it before writing.
* All locks held by a transaction are released only when the transaction completes.
* If a transaction holds an X lock on an object, no other transaction can get a lock (S or X) on that object - they must wait.
* Allows only serializable schedules.
* It simplifies transaction aborts
* Prevents anomalies.

**Non-strict two-phase locking**:
// TODO

## Transaction Logging
The follow actions are recorded in the log:
* **Transaction writes an object**: record the object's old and new values.
* **Transaction commits/aborts**: write a log record noting this outcome.

## Recovering from a Crash
Three-phase recovery algorithm (Aries):
* Analysis: identify all he transactions that were active and all dirty pages in the buffer pool at the time of the crash.
* Redo: Redo all updates to dirty pages int he buffer pool, as needed, to ensure that all logged updates are in fact carried out and written to disk.
* Undo: Undo writes of all transactions that were active at the crash, working backwards through the log.

## Support for Transactions in SQL
* A transaction is automatically started whenever a statement access or modifies the database.
* Transaction can be terminated by a `COMMIT` statement or a `ROLLBACK`.
* Each transaction runs under a combination of an access mode and an isolation mode.
  * Access mode: controls what the transaction can potentially do to the database. read only, or read write (default).
  * Isolation level: controls the transaction's exposure to other (concurrent) transactions. Read uncommitted, read committed, repeatable read, serializable...

## Which Isolation Level is for me?
* Consistency vs performance tradeoff.
* DBMS engines might have different default isolation level settings.
