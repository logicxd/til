# Relational Database Theory

## Redundancy

Issues
* Redundant storage.
* Insert, delete, update anomalies.

Alternative
* Functional dependencies can help in identifying problem schemas and suggesting refinements.
* Use decomposition
  * if it doesn't cause any problems.
  * if it makes sense to decompose them.

## Functional Dependencies (FDs)

X -> Y holds over relation R if, for every allowable instance r of R:
* For t1 and t2 in r, t1, X = t2. X implies t1.Y = t2.Y.
* i.e. Given two tuples in r, if the X values agree, then their Y values must also agree.
(X and Y can be sets of attributes).

Example:
```
Hourly_Emps (ssn, name, lot, rating, hrly_wages, hrs_worked)
Notation: SNLRWH

FDs on HourlyEmps:
* ssn is the key: S -> SNLRWH (this reads, S determines everything on the right side)
* rating determines hrly_wages: R -> W.
```

Anomalies:
* Update anomaly: can we change W in just the 1st tuple of SNLRWH?
* Insertion anomaly: what if we want to insert an employee and don't know the proper hourly wage for his or her rating?
* Deletion anomaly: if we delete all employees with rating 5, we lose the stored information about the wage for rating 5.

So instead of designing a database with `SNLRWH` where `R -> W`, there are a list of anomalies that we can point out. So it's better to create a separate table for `RW` and then have `SNLRH` (without W).

## Reasoning about FDs

Armstrong's Axioms (X, Y, Z are sets of attributes):
* Reflexivity: If X subset of Y, then Y -> X.
* Augmentation: If X -> Y, then XZ -> YZ for any Z.
* Transitivity: If X -> Y and Y -> Z, then X -> Z.
* Union: If X -> Y and X -> Z, then X -> YZ
* Decomposition: If X -> YZ, then X -> Y and X -> Z.

Example:
* The contract id is the key: C -> CSJDPQV
* A project purchases each part using single contract: JP -> C
* A dept purchases at most one part from a supplier: SD -> P

Then:
* JP -> C, C -> CSJDPQV imply JP -> CSJDPQV
* SD -> P implies SDJ -> JP
* SDJ -> JP, JP -> CSJDPQV imply SDJ -> CSJDPQV (we find our candidate key here)

## FDs & Redundancy

* If no non-trivial FDs hold: there is no redundancy here.
* Given A -> B:

## Normal Forms

Normal Forms are relations that 
