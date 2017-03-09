# Query Refinement

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
*
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
