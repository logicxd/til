# Relational Query Languages

## Mathematical Query Languages
* Relational Algebra: more operational, very useful for representing execution plans.
* Relational Calculus: lets users describe what they want, rather than how to compare it.
(Non-operational, declarative).

* **Positional** notation: the columns are index by numbers (try to avoid)
* **Name Field** notation: the columns are named by some string.

## Relational Algebra

Basic operations:
* **Selection**: Selects a subset of rows from relation.
* **Projection**: Omits unwanted columns from relation. Pi.
* **Cross-product**: Allows us to combine tow relations.
* **Set-difference**: Tuples in relation 1, but not in relation 2.
* **Union**: Tuples in relation 1 and in relation 2.
* **Intersection**: Tuples in relation 1 or in relation 2.
* Plus others: join, division, renaming.

### Projection
Removes attributes (or a column) that are not in projection list.
* After doing this, it has to eliminate duplicates since the data may not be represented uniquely
(could be because it was represented uniquely by the attribute that was JUST removed).

### Selection
Selects rows that satisfy a selection condition.
* The result is guaranteed to be duplicate free.

### Union, Intersection, Set-difference
All of these operations take two input relations which must be **union-compatible**:
* Same number of fields.
* Same type of fields.

### Cross-product
Each row of S1 is paired with each row of R1.
Result schema has one field per field of S1 and R1, with field names 'inherited' if possible.
Has all possible combination of both S1 and R1.

**Renaming operator**: p(C(1->sid1, 5->sid5), S1 x R1);
* C = Result relation names
* 1->sid1, 5->sid5 = attribute

Example:
```
p (S1R1(1->sid1), S1xR1)

p (TempS1(sid->sid1), S1)
TempS1 X R1

(pi sid->sid1, sname, rating, age (S1) )x R1 (Renaming first and then doing a cross product)
```

### Join
Result schema same as that of cross-product.
* Returns only the ones that fulfill some kind of condition so it's not returning everything like cross-product.
* Fewer tuples than cross-product, so might be able to compute more efficiently.
* Sometimes called a theta-join.

Equi-Join:
* a special case of condition join where the condition c contains only equalities.

Natural Join:
* an equijoin on all commonly named fields.

### Division
Extremely useful for expressing queries like: "Find sailors who have reserved all boats."
Result schema returns a list of all the records where the fields from A matches the fields B.


## TRC Formulas
* R.

## 
