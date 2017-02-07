# Permutations and Combinatorics

All possible ways that an event can occur.

## Permutations

An arrangement of objects in a definite order. Order matters. No repetition.

In how many ways can we select r many objects from a total of n many to choose from.

Let `A` be an event from a sample space `S`.
* #(A) denotes the number of ways event A can occur.
* #(S) denotes the number of possible outcomes(number of elements in the sample space)
* `P(A) = #(A)/#(S)`

Double check these. Compare with discrete math notes.
`Pn,r`: Out of the total amount n, select r amount for permutation.
* `Pn,r: n!/(n-r)!`

## Combinations

A selection of objects without regard to order. Order doesn't matter. No repetition.

Select r many objects from a total of n possible objects, where order does not matter.
* `Cn,r: (n r) = n!/r!(n-r)!`

## Permutations vs Combinations

You can have more possible ways for a permutation than for a combination.

## Counting

Permutation with repetition.

## Discrete Random Variable

Variable
* A quantity that may take different values.

Random variable
* A variable that may assume different values with certain probabilities.
* Can think of it as a function that assigns a **real number** to each outcome in the sample space.
* Random variable has countably many outcomes.

Support
* The **support** of X is the space of values which X has a positive probability of occurring.
* Notationally, X : S -> S(sub x)
* S(sub x) = {0,1,2,3}

## Distribution

**Cumulative distribution function (cdf)**: the sum of all probabilities which have X <= x.

Example:
```
F(3) = P(X <= 3) = P(X=1) + P(X=2) + P(X=3).
```

**Probability distribution function (pmf)**: determines the probability distribution of a discrete random variable.

## Expectation**
The mean or average of X.
* Notation: E(X), the expectation of X.
* E(a + bX) = a + bE(X)
* E(aX + bY) = aE(X) + bE(Y)

## Variance
The average squared deviation from the mean.
* var(X) = E[ (X − E(X))^2] = E[(X − μ)^2].
* var(X) = E(X^2) - [E(X)]^2.
* variance is based on expectation of something.

If c is a constant
* var(c) = 0
* var(cX) = c^2 * var(X)

If X and Y are independent random variables.
* var(X + Y) = var(X) + var(Y)


P =

.
