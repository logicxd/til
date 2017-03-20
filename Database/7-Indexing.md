# Understanding Disks Before Getting to Indexing.

## Accessing a Disk Page
Time to access (read/write) a disk block:
* **Seek time** (moving arms to position disk head on track). Varies from 1 to 20 ms
* **Rotational delay** (waiting for block to rotate under head). Varies from 0 to 10 ms
* **Transfer time** (actually moving data to/from disk surface). < 1 ms per 4 KB pages

# B+ Tree
Used to find indexes faster. Good for range-searches and also good for equality searches.

* Non-leaf nodes are index pages that will be used to find which page to check.
* Leaf nodes are the data pages, they contain the actual information.

Criteria:
* `B` is the order. Each node must have at least `B` elements and less than `2 * B`.

### Insertion

Before:
<img width="525" alt="screen shot 2017-03-09 at 12 14 05 am" src="https://cloud.githubusercontent.com/assets/12219300/23741474/76042b92-045d-11e7-9df3-e27f485694cf.png">

After:
<img width="525" alt="screen shot 2017-03-09 at 12 12 22 am" src="https://cloud.githubusercontent.com/assets/12219300/23741473/7602d3b4-045d-11e7-8123-bfd0534e1eb5.png">

### Deletion

Before (deleting 24):
<img width="525" alt="screen shot 2017-03-09 at 12 24 38 am" src="https://cloud.githubusercontent.com/assets/12219300/23741733/d9612afe-045e-11e7-9df1-4c6fd69a7500.png">

After:
<img width="525" alt="screen shot 2017-03-09 at 12 24 46 am" src="https://cloud.githubusercontent.com/assets/12219300/23741734/d98e4c5a-045e-11e7-96f6-ce7e5c983cfd.png">

* Find the node and remove
  * After removing and the number of nodes is less than n/2,
    * Redistribution (Take one from one of the neighbors if their value after distribution is still >= n/2)
    * If that fails, merge it's sibling and bring the parent pointer down and delete the extra pointer.

### Deletion with non-leaf redistribution

Before (deleting 24):
<img width="525" alt="screen shot 2017-03-09 at 12 27 18 am" src="https://cloud.githubusercontent.com/assets/12219300/23741851/4c495c62-045f-11e7-86e3-7b5662369f77.png">

After:
<img width="525" alt="screen shot 2017-03-09 at 12 27 30 am" src="https://cloud.githubusercontent.com/assets/12219300/23741852/4c496590-045f-11e7-878b-62e673decd4c.png">

### Bulk loading
You are given all the data and you make a B+ tree.

Step 1:
<img width="525" alt="screen shot 2017-03-09 at 12 41 59 am" src="https://cloud.githubusercontent.com/assets/12219300/23742329/467798ec-0461-11e7-8488-88291dacc6d4.png">

Step 2:
<img width="525" alt="screen shot 2017-03-09 at 12 42 10 am" src="https://cloud.githubusercontent.com/assets/12219300/23742330/46a24ca4-0461-11e7-8549-235991271b5f.png">


## Hash indexing
Excellent for equality searching, but cannot do range searches. Static and dynamic hashing exists.

Variables
* `h()` = hashing function
* `N` = # of buckets
* `k` = key

Hashing implementation
* `h(k) mod N = bucket (or the page)`  to which data entry with key k belongs.

# Indexing
An index on a file speeds up selections on the search key fields for the index. An index contains a collection of data entries, and it supports efficient retrieval of all data entries k* with a given key value k.
* Any subset of the fields of a relation can serve as the search key for an index on the relation.
* Search key is not the same as a “key” (i.e., it’s not the primary key, it’s just a field we’re very interested in).

## Index Classifications
* **Primary index** - if the search key contains the primary key.
* **Unique index** - if the search key contains a candidate key.

* **Clustered index** - if order of data records is the same as, or *close to*, the order of stored data records. Cost of retrieving data records via an index varies greatly based on this.
  * A table can be clustered on at most one search key.
* **Unclustered index** - if order of data records is everywhere.

## Indexing in MySql
Ex: `CREATE INDEX salIndex ON Emp (sal) USING BTREE;`

## Query Refinement

How to make better optimized queries:
* Indexing matters
* Clustered vs unclustered
* How frequent are these informations being called.
* Design decisions (B+ tree?)

## Understanding the workload

For each query in the workload:
* Which relations does it access?
* Which attributes are retrieved?
* Which attributes are involved in selection/join conditions? (And how selective are these conditions expected to be?)

For each update in the workload:
* The type of update and the attributes that are affected by it.

## Clustered vs unclustered
Clustered - if order of data records is the same as, or 'close to', the order of stored data records, then is called a clustered index. (Usually a lot faster).
Unclustered - data is searched almost from everywhere in different orders. It searches multiple pages multiple times.

## Indexes
Indexes can make queries go faster, but updates will become slower.

### Index selection guides
Attributes in WHERE clause are candidates for the index keys.
* Exact match condition, -> hashed index (or B+ tree if not available).
* Range query -> B+ tree index.
(there's more info)

Examples:
```
Select EDNO FROM EMP E WHERE E.Age > 4O.
Select E.dno, count(*) FROM EMP e WHERE GROUP BY e.dno // double check from slide.
```

### Joins
* Index Nested Loop join (INLJ)
* Sort-Merge
* Hash index
