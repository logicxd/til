# What is Database?

A very large, integrated collection of data.

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

* External schema(aka view) - describe how different users see the data.
* Conceptual schema - the logical structure of the database.
* Physical schema - Describes the files and indexes used under the covers.

Ex:
```
External schema - A CourseInfo
  |
Conceptual schema - Students, Courses, Enrolled
  |
Physical schema -  Relations stored as unordered files. Index on first and third columns of Students.
```
## Data Independence

Applications are insulated from how data is actually structured and stored, thanks to schema layering and high-level queries.

* Logical data independence - protection from changes in the logical structure of data.
* Physical data independence - protection from changes in the physical structure of data.

## Concurrency and Recovery

Disks are slow so it's important to keep the CPUs busy by serving multiple users' programs concurrently.
Errors and failures preventions.

## Transaction: An execution of a DB Program

We don't have worry about a transaction failing. We just have to worry about making the right kind of transaction. The DB doesn't care about what kind of data semantics (e.g. how a bank interest is computed), it just ensures a successful transaction that the user has computed.

## Concurrent DBMS Transactions

DBMS ensures that execution of {T1, ..., Tn} is equivalent to some *serial* execution.

* Reading/writing on an object creates a **lock**. Then the object won't be accessed by any other transactions until the lock is released so it prevents concurrency read/write error.
* If the system crashes while an object is locked, then all the locks are released. When the system reboots, then it checks all the objects that it was previously looking and un-do everything (recovery) to the state before the transaction began.

## Ensuring Atomicity

Atomicity means you get all-or-nothing. This is so that if the system crashes or something in the middle of executing, it can revert back to the previous state. This is similar to keeping a log of the *before* and *after*. If there's no *after* then revert back to the *before* state.

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
  * DBMS provide records.
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
  * Lock Manager for consistency + Isolation.
  * Log Manager for Atomicity +_ Durability.

## Some Terminology

* Data Definition Language (DDL) - Used to express views + logical schemas (Using a syntactic form of a data model, e.g., relational)
* Data Manipulation Language (DML) - Used to access and update the data in the database (again in terms of a data model, e.g., relational)
* Query Language (QL) - Synonym for DML or it's retrieval.
* Database Administrator (DBA) - The "super user" for a database or a DBMS. Deals with things like physical DB design, tuning, performance monitoring, backup/restore, user and group authorization management.
* Application Developer - Builds data-centric applications. Involved with logical DB design, queries, and DB application tools.
* Data analyst or End User - Non-expert who uses tools to interact w/ the data.
