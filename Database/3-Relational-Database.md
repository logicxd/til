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

### Candidate Key


### Foreign Key

A set of fields in one relation that is used to reference another relation.

### Enforcing Referential Integrity, Deletion

What happens if a relation that is referenced by one or more relations is being deleted?
One of the follow can happen:
* Delete all the relations that pointing to it. Known as **CASCADE**
* Prevent it from being deleted. Known as **NO ACTION** `ON DELETE NO ACTION/RESTRICT`
* **SET NULL / SET DEFAULT**

## ISA Hierarchy Translation Options

1. **Delta table** approach:
  * Emps (ssn, name, lot).
  * Hourly_Emps (ssn, wages, hrs_worked).
  * Contract_Emps (ssn, contractid).
  * `ssn` is a foreign key to the parent table. Only new attributes are stored in the tables.
  * Overlap is fine for here.

2. **Union of tables** approach:
  * Emps (ssn, name, lot).
  * Hourly_Emps (ssn, name, lot, wages, hrs_worked).
  * Contract_Emps (ssn, name, lot, contractid).
  * Parent attributes plus new attributes are stored in the table. Each table has it's own primary key, and I believe there are no foreign keys to the parent table.

3. **Mashup table** approach:
  * Emps (*kind*, ssn, name, lot, wages, hrs_worked, contractid).
  * Has all the attributes in one table with an additional field `kind`. That would describe what type of ISA type the instance is.
  * Overlap is fine but the `kind` would have to be changed a little bit.

## Multi-valued, composite, and derived attributes representations

* Multi-valued attributes:
  * Make a separate table to hold the multi-valued attributes. Similar to representing it as another entity. This would create a clean and neat representation. The primary key for the multi-valued attribute table would be the (primary key of the main entity, phone id).
* Composite attributes:
  * Create more columns/fields to hold the attributes.
  * You can also separate out the attributes to a new table and make a foreign key to that table.
  * Ex: ssn, name, address_num, address_name, address_street, ...
* Derived attributes:
  * Can use views (see below).

## SQL Views (and security)

* A **view** is just a relation, but we store its definition rather than storing the set of tuples.
* Views can be used to present needed information while hiding details of underlying table(s).
```SQL
CREATE VIEW YoungActiveStudents (name, grade)
AS SELECT S.name, E.grade
   FROM Students S, Enrolled E
   WHERE S.sid = E.sid AND S.age < 21
```

Uses
* Derived attributes
* Simplify/eliminate `JOIN` paths
* Make "Mashup table" look nicer.
