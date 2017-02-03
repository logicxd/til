# Relational Database Theory

## Issues with Bad Database Design
* Redundant storage.
* Insert, delete, update anomalies.

Alternative
* Functional dependencies can help in identifying problem schemas and suggesting refinements.
* Main refinement technique: decomposition
  * e.g. replace R(ABCD) with R1(AB) + R2(BCD).
* Use decomposition if:
  * it doesn't cause any problems.
  * it makes sense to decompose them.

## Functional Dependencies (FDs) X -> Y

Each X value is associated with precisely one Y value.

X -> Y holds over relation R if, for every allowable instance `r` of R
(Can think of R as a table and `r` as a record of R):
* For t1 and t2 in `r`, t1.X = t2.X implies t1.Y = t2.Y
  * This basically says that if X is the same, then Y is the same. (Uniqueness)
  * i.e. Given two tuples in `r`, if the X values agree, then their Y values must also agree. (X and Y can be sets of attributes).
  `X -> Y` is pronounced as "X determines Y".

### Super Key
A super key is any set of attributes that contains a **candidate key** as well as any other attributes.

### Candidate Key
A candidate key is any set of attributes that can qualify as a unique key in database.
* There can be multiple candidate keys in one table.
* **Primary Key** IS A candidate key.
* There can only be one candidate key that is a primary key.
* Also known as a **minimal super key**.

If K and R are some attributes, saying that K is a candidate key for R means that K -> R.
Note: K -> R alone does not require K to be minimal! If K is minimal, then K is a candidate key.

### Example:
Hourly_Emps (ssn, name, lot, rating, hrly_wages, hrs_worked)
Notation: SNLRWH

FDs on HourlyEmps:
* ssn is a primary key so: `S -> SNLRWH` (this reads, S determines everything on the right side)
* BUT there is also the rating which determines hrly_wages so: `R -> W`.

<img src="https://cloud.githubusercontent.com/assets/12219300/22582153/dfcc6ff0-e999-11e6-8b26-adc62ca836a2.png" width="286px" height="160px" />

Problems due to `R -> W`:
* **Update anomaly**: can we change `W` in just the 1st tuple of SNLRWH?
  * No, we would have to change the `W` for all the `R`'s in the table.
* **Insertion anomaly**: what if we want to insert an employee and don't know the proper hourly wage for his or her rating `R`?
  * We would have to check or know the value `W` for the rating `R`.
* **Deletion anomaly**: if we delete all employees with rating 5, we lose the stored information about the wage for rating 5.

Solution:
* We saw that creating a table with columns of `SNLRWH` where `S -> SNLRWH` and `R -> W` caused a few anomalies listed above.
* So it's better to create a separate table for `RW` and then have `SNLRH` (without W).

## Additional things about FDs

Given some FDs, we can usually infer additional FDs
  * ssn -> did
  * did -> lot
  * therefore, ssn -> lot (transitive)

### Closure
Before getting to closure, these are some terms:
* `F` - a set of FDs.
  * example with 2 FDs
  * ssn -> did
  * did -> lot
* `f` - is implied by `F`. It is valid when all FDs in `F` are valid.
  * ssn -> lot
* **Closure of F**, `F+`: the set of all FDs that are *implied* by `F`.

Armstrong's Axioms (X, Y, Z are sets of attributes):
* **Reflexivity**: If X subset of Y, then Y -> X.
* **Augmentation**: If X -> Y, then XZ -> YZ for any Z.
* **Transitivity**: If X -> Y and Y -> Z, then X -> Z.

Plus a few additional rules:
* **Union**: If X -> Y and X -> Z, then X -> YZ
* **Decomposition**: If X -> YZ, then X -> Y and X -> Z.

Example:
* The contract id is the key: C -> CSJDPQV
* A project purchases each part using single contract: JP -> C
* A dept purchases at most one part from a supplier: SD -> P

Then:
* JP -> C, C -> CSJDPQV imply `JP -> CSJDPQV` (new candidate keys)
* SD -> P implies SDJ -> JP
* SDJ -> JP, JP -> CSJDPQV imply `SDJ -> CSJDPQV` (new candidate keys)

## Detecting Redundancy by using FDs
* If no non-trivial FDs hold: there is no redundancy here.
* Given A -> B: If A is repeated, B will be repeated as well.

## Normal Forms
A series of checks that are performed to determine if any refinement is needed.
* Depending on the normal form a relation is in, it has different level of redundancy.
* Checking for which normal form a relation is in will help us decide whether to decompose the relation.

Some terminologies:
* `Prime attribute`: an attribute that is part of a candidate key.
* `Super key`: a set of attributes that contains a candidate key.
* `X -> Y`: is pronounced as "X determines Y" or "Y is functionally dependent on X".
* `trivial`: a FD: X -> Y is called trivial if Y is a subset of X.
  * trivial FDs always hold.
* `non-trivial`: a FD: X -> Y is called non-trivial if Y is not a subset of X.

### First Normal Form (1NF)
A relation `R` is in 1NF IF
* all its attributes are **atomic** (the value cannot be broken down into smaller parts).
* same thing as having no multi-variable attributes.

### Second Normal Form (2NF)
A relation `R` is in 2NF IF
* it's in 1NF.
* no non-prime attribute is partially dependent on a candidate key of `R`.
  * Any column that is not part of the candidate key must depend entirely on the candidate key for it's existence.

Example: Supplies(sno, sname, saddr, pno, pname, pcolor)
* sno -> sname, saddr
* pno -> pname, pcolor

So we have:
* Candidate keys = (sno, pno)
* Prime attributes = sno, pno
* Not in 2NF because `sname, saddr` do not depend on `pno` (so it's only partially dependent, need full).

Fix:
* Supplier(sno, sname, saddr)
* Part(pno, pname, pcolor)
* Supply(sno, pno) <-- need this or else it's a **lossy join**

### Third Normal Form (3NF)
A relation `R` is in 3NF IF
* it's in 2NF.
* no transitive dependencies to non-prime attibutes.

Example: Workers(eno, ename, esal, dno, dname, dfloor)
* eno -> ename, esal, dno
* dno -> dname, dfloor

So we have:
* Candidate keys = eno
* Prime attributes = eno
* Not in 3NF because `eno -> dname` and `eno -> dfloor` through *transitive dependencies*.

Fix:
* Emp(eno, ename, esal, dno (<--this is to prevent **lossy join**) )
* Dept(dno, dname, dfloor)

### Boyce-Codd Normal Form (BCNF or 3.5NF)
A relation `R` is in BCNF IF for all X -> A in F+
* A is a subset of X, OR
* X is a super key for `R`.

Another explanation is: `R` is in BCNF if
* the only non-trivial FDs that hold over `R` are *key constraints* (i.e. key -> attr).

> Everything depends on “the key[1NF], the whole key[2NF], and nothing but the key[3NF]”(so help me CoddJ)

## Lossy Join
The *records* were not lost but we lost the *information* about which records were in the original relation (like the connection/link between the new records that were created from one)

## Decomposition

Decomposition is splitting up R into X and Y.
It is **dependency preserving** if (Fx union Fy)+ = F+.

**lossless** join:

## Minimal cover
Minimal cover G for a set of FDs F: sometimes denoted F-.
* Closure of F = closure of G, i.e., F+ = G+
* RHS of each FD in G is a single attribute.
* If we modify G by deleting an FD or by deleting attributes from a LHS of a FD in G, the closure changes (so we can't).

## Example
```
Workers (ssn, name, lot, since, did, dname, budget)
primary key (ssn, did)  // This says (ssn,did) -> ssn, name, lot, since, did, dname, budget.

a. Every worker has their own unique ssn.
b. Workers also have a name and an assigned parking lot.
  // a and b says that ssn -> name, lot.

c. Department ids are unique for departments.
d. A department has a name and a budget.
  // c and d says that did -> dname and budget.

e. An employee works in a department (as of some starting date).
  // (ssn, did) -> since

f. If two employees are in the same department their lots are the same.
  // did -> lot
g. Different departments with the same name always have different budgets.
  // (dname, budget) -> did

What are the candidate keys here?
(ssn, did) and (ssn, dname, budget)

```

Formal rules.
First, Second, Third, and Normal forms always possible.
You want to achieve BCNF UNLESS lossless join and dependency preserving.

Trying to decompose means:
* Avoids redundancy.
* BCNF means no redundancy.

Closure
*
