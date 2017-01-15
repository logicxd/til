# What is Database?

A very large, integrated collection of data.

Benefits:
* Data independence.
* Efficient data access.
* Reduced application development time.
* Data integrity and security.
* Uniform data administration.
* Concurrent access, recovery from crashes.

## Usually a model of a real-world enterprise

* Entities - Objects (e.g., students, courses, Facebook users, ...) with attributes (e.g., name, birthdate, GPA, ...)
* Relationships - (e.g., Susan is taking CS 234, Susan is a friend of Lynn, ...)

## Database Management System (DBMS)

A software system designed to store, manage, and provide access to one or more databases.

## Data Models

* Data model - a collection of concepts for describing data
* Schema - a description of a particular collection of data, using a given data model.
* Relationship model:
  * Relation - table with rows and (named) columns.
  * Schema - describes the tables and their columns.

## Schemas

* External schema(aka view) - the data that user sees. This can be displayed by using multiple entities from conceptual schema.
* Conceptual schema - the logical structure of the database.
* Physical schema - Describes the files and indexes used under the covers.

There is 1 conceptual schema and 1 physical schema. But there can be multiple external schema.

Ex:
```
External schema - A CourseInfo (Courses + Students + Enrolled)
| | |
Conceptual schema - Students, Courses, Enrolled
  |
Physical schema -  Relations stored as unordered files. Index on first and third columns of Students.
```

## Data Independence

Applications are insulated from how data is actually structured and stored, thanks to schema layering and high-level queries.

* Logical data independence - protection from changes in the logical structure of data.
  * i.e. you can change the structure of the conceptual schema but in a way so that the external schema is still the same. The user will still get the same data, but the underlying structure can be changed.
* Physical data independence - protection from changes in the physical structure of data.
  * i.e. you can choose whatever conceptual schema structure and you don't have to worry about the physical structure.

**One of the most important benefits of DBMS use is that it allows changes to occur w/o application rewrites!**.
* This basically means the database is independent of the application so you have separation of concern.
* You can work on changing the database without having to also change the application.

## Concurrency and Recovery

Concurrent execution of user programs is essential to achieve good DBMS performance.
* Disk accesses are frequent and slow, so it’s important to keep the CPUs busy by serving multiple users’ programs
concurrently.
* Errors or crashes may occur during, or soon after, the execution of users’ programs.
This could lead to loss of data.

## Transaction: An execution of a DB Program

* Transaction - an **atomic** sequence of database actions (e.g. read/write).
* Atomic - all-or-nothing. Guarantees to return the whole value (not sending piece by piece until it completes).
* Integrity constraints - constraints used on the data to enforce more specific rules (primary key, foreign key, uniqueness, ...)

Each transaction, when executed completely, must leave the DB in a **consistent state** if the DB is consistent before it was executed.

Application developers don't have worry about a transaction failing. We just have to worry about making the right kind of transaction. The DB doesn't care about what kind of data semantics (e.g. how a bank interest is computed), it just ensures a successful transaction that the user has computed.

## Concurrent DBMS Transactions

DBMS ensures that execution of {T1, ..., Tn} is equivalent to a *serial* execution.

* Before reading/writing on an object, a transaction requests a **lock** on the object and waits until the object gives it the lock. An object with a lock won't be accessed by any other transactions until the lock is released so it prevents concurrency read/write error. All the locks are released together at the end of a transaction.
* If the system crashes while an object is locked, then all the locks are released. When the system reboots, then it checks all the objects that it was previously looking and un-do everything (recovery) to the state before the transaction began.

## Ensuring Atomicity

Atomicity means you get all-or-nothing. This is so that if the system crashes or something in the middle of executing, it can revert back to the previous state.

* *Before* a change is made to the database, a log entry(old value, new value) is kept in a safe, different place.
* If it crashes, the partially executed transaction can be **undone**.
* If it finished successfully but loses data later, the transaction can be **redone** using the log to restore data.

## Structure of a DBMS

* Query Parser
  * Parse and analyze SQL Query
  * Makes sure the query is valid and talking about tables, etc, that indeed exist
* Query Optimizer
  * Rewrite the query logically
  * Perform cost-based optimization
  * Goal is a "good" query plan considering
    * Physical table structures
    * Available access paths (indexes)
    * Data statistics (if known)
    * Cost model (for relational operations)
* Plan Executor + Relational Operators
  * Runtime - query processing.
  * Makes/Runs a **Query Plan** which is a tree of relational operations.
* Files of Records
  * OSs usually have *byte-stream* based API's
  * DBMS usually have *records* based API's
* Access Methods
  * Index structures for lookups based on field values.
* Buffer Manager
  * Caches pages from files and indices.
  * Handles logging.
* Disk Space and I/O Managers
  * Manages space on disk
  * Manages I/O.
* System Catalog ("Metadata")
  * Info about physical data (file system stuff).
  * Info about tables (name, columns, types, ...) and also any constraints, keys, etc.
  * Data statistics.
  * Info about indexes (kinds, target tables, ...).
* Transaction Management
  * ACID (Atomicity, Consistency, Isolation, Durability).
  * Lock Manager for Consistency + Isolation.
  * Log Manager for Atomicity + Durability.

## Some Terminology

* Data Definition Language (DDL) - Used to express views + logical schemas (Using a syntactic form of a data model, e.g., relational)
* Data Manipulation Language (DML) - Used to access and update the data in the database (again in terms of a data model, e.g., relational)
* Query Language (QL) - Synonym for DML or it's retrieval.
* Database Administrator (DBA) - The "super user" for a database or a DBMS. Deals with things like physical DB design, tuning, performance monitoring, backup/restore, user and group authorization management.
* Application Developer - Builds data-centric applications. Involved with logical DB design, queries, and DB application tools.
* Data analyst or End User - Non-expert who uses tools to interact w/ the data.
