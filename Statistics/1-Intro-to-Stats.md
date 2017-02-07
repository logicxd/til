# Statistics

Law of Large Numbers: if some experiment has been tried for a very large number of times,
the probability will converge to the true probability of a single success.

Bayesian probability: a probability that is based on beliefs or knowledge, not based on
the number of trails or tests.
Ex: There's a 99% chance that I will perform well on MCAT (Number of times: 0)

Frequentist probability: a probability that is based on known knowledge of collected data.
Ex: There's a 99% chance that I will be on time for work (Number of times: 1000)

## Set Theory

Sample space: the set of all possible outcomes in a random experiment.
Ex: Roll a pair of dice. Then, `S = {(1,1), (1,2), (1,3), ... , (6,5), (6,6)}`.
Or also S = `{(x,y) : x = 1,2,...,5,6, y = 1,2,...,5,6}`.

Event (sample point): a subset of the sample space. An empty set is also an event.
Ex: The event A can be the event that the number the die lands on is greater than 4. Therefore A = {5,6}.
* S = `2^n` for coin flips (so 2 possible answers) 100 times.

The empty set ∅ is also an event.

## Probability

Probability distribution: denoted as P( ). Follows these set of rules
* `0 < P(s) <= 1 for all s ∈ S`.
* `The sum of P(s) for all s ∈ S = 1`.

## Set Theory Basics

**Mutually Exclusive**
* Two sets cannot occur at the same time. `A ∩ B = ∅`.
* A and B are dependent.

## Probability Theory Basics

Some axions:
* `P(S) = 1`
* `If A ⊆ B then P(A) ≤ P(B)`
* `P (A) + P (A^c) = 1`

## Probability of an event with respect to something else

With respect to A or A^c (A complement)
* `P(B) = P(B ∩ A) + P(B ∩ A^c)`

With respect to A1, A2, ..., Am
* `P(B) = P(B ∩ A1) + P(B ∩ A2) + ... + P(B ∩ Am)`

## Conditional Probability

The probability of an event occurring given that another event is already known to have occurred.
The notation is: `A|B` which means the event A occurring given B has occurred.

* P(A|B) - the probability of A occurring given that B has occurred.
* B is given to you.

Baye's Theorem - to compute conditional probability
* `P(A|B) = P(A ∩ B) / P(B)`
* `P(A ∩ B) = P(A|B)P(B) = P(B|A)P(A)`

## Independent probability - two events are independent from each other.
* `P(A|B) = P(A)` and also show that `P(B|A) = P(B)`.
* `P(A ∩ B) = P(A)P(B)`
* `P(A ∪ B) = P(A) + P(B) − P(A ∩ B)`
