# Relational Database

* Relational database: a set of relations
* Relation: consists of 2 parts:
  * Instance: a table, with rows and columns.
    * Rows = cardinality (number of rows).
    * Fields = degree (number of attributes).
  * Schema: specifies name of relation, plus name and type of each column.

## SQL Query Language

Query all data from one table
`SELECT * FROM Students S WHERE S.age = 10`

Query specific data from one table
`SELECT S.name, S.class FROM Students S WHERE S.age = 10`

Query data from multiple table
`SELECT S.name, E.cid FROM Students S, Enrolled E WHERE S.sid = E.sid AND E.grade ='A'`

## Create Relations in SQL

Creating a relation
```
CREATE TABLE Students (
  sid CHAR(20),
  name CHAR(20),
  login CHAR(10),
  age INTEGER,
  gpa REAL
);
```

## Destroying and Altering Relations

Destroying Relation
`DROP TABLE Students`

Altering Relations
```

```

## Adding and Deleting Tuples

Inserting a single tuple
```
INSERT INTO Students (sid, name, login, age, gpa)
VALUES (12345, 'Aung', 'logicxd', 21 ,5.0)
```

Deleting all tuples that satisfies some condition
```
DELETE FROM Students S
WHERE S.name = 'Aung'
```

## Integrity Constraints (ICs)

IC is a condition that must be true for any instance of the database. e.g. *domain constraints*.
* ICs are specified when schema is defined.
* ICs are checked when relations are modified.

ICs are based upon the semantics of the real world.

### Primary Key Constraints

Must follow these conditions:
* No two distinct tuples can have same values in all key fields.
*

### Candidate Key



### Foreign Key

A set of fields in one relation that is used to reference another relation.

### Enforcing Referential Integrity, Deletion

What happens if a relation that is referenced by one or more relations is being deleted?
One of the follow can happen:
* Delete all the relations that pointing to it. Known as **CASCADE**
* Prevent it from being deleted. Known as **NO ACTION** `ON DELETE NO ACTION/RESTRICT`
* **SET NULL / SET DEFAULT**
