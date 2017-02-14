# Discrete Random Variable

* **Variable** - A quantity that may take different values.
* **Random Variable** - A variable that may assume different values with certain probabilities.
  * Can think of it as a function that assigns a **real number** to each outcome in the sample space.
  * Random variable has countably many outcomes.
* **Support** - the support of X is the space of values which X has a positive probability of occurring.
  * Notationally, `X : S -> S(sub x)`
  * S(sub x) = {0,1,2,3}

## Distribution

**Probability Mass Function (pmf)** - determines the probability distribution of a discrete random variable. In other words, the pmf of X assigns a number to all values in the support of X such that:
* P(X)
* 0 <= P(X=x) <= 1
* Sum of all the P(X=x) in the support equals to 1.

**Cumulative Distribution Function (cdf)** - the sum of all probabilities which have X <= x.
* F(X)
* Basically just add all the probabilities that equate the condition X <= x.
* i.e. F(3) = P(X <= 3) = P(X=1) + P(X=2) + P(X=3).

**Expectation** - the mean or average of X.
* E(X) - expectation of X.
* `E(X) = sum of xf(x) for all x in the support of X`.
* If the functions of X are also random variables, then h(X) = to be a function of X.
  * Then we have new equation h(X) = 1/x (as an example)
  * `sum of (1/x)f(x) for all x in the support of X`.
* `E(aX) == aE(X)`
* `E(X + Y) == E(X) + E(Y)`
* Combining the previous two `E(aX + bY) == aE(x) + bE(y)`

**Variance** - the average squared deviation from the mean.
* σ^2
* `var(X) = E(X^2) - [E(X)]^2`.

**Properties of Variance**
* c is a constant.
  * var(c) = 0
  * var(cX) = (c^2)var(X)
* If X and Y are independent random variables.
  * var(X + Y) = var(X) + var(Y)

**Standard Deviation**
* σ
* `σ = sqrt(var(X))`

## Binomial Distribution
* `n` - the number of independent trials
* `p` - the probability for each trail
* `x` - the number of success among n trails.
* `X` is the sum of n many independent and identically distributed.

Formulas
* **PMF P(X=x)** = `(nCx) (p^x) (1-p)^(n-x)`
* **E(x)** = `np`
* **var(x)** = `np(1-p)`

Examples
* Then the number of employees that have certificates (out of the 100).
* The number of heads to show up when flipping a fair coin 1000 times.

When to use
* Want to find out the probability of x successes,
* If the probability for each `n` is independent.

## Geometric Distribution
* `n` - the number of independent trials
* `p` - the probability for each trail
* `x` - is the number of times we attempt before we get the first success
* `X` is the number of times we attempt before we get the first success.

Formulas
* **pmf P(X=x)** = `(1-p)^(x-1) p`
* **cdf F(x)** = `1 - (1-p)^x`. This is the probability of having to do at most X trials before a single success.
* **E(x)** = `1/p`. This is the expected number of trails before first match is made.
* **var(x)** = `(1-p)/p^2`

When to use
* Need the many times you need to try something until you succeed.
* P(X=1) = p, you get a success on the first try.
* P(X=2) = (1-p)p, you fail your first, and success on the second.
* P(X=3) = (1-p)^2p, you fail 2 times, and then succeed on third.

## Poisson Distribution
* `n` - the number of equally spaced intervals.
* `p(sub n)` - the probability of an event in a time interval.
* `x` - the number of success among n trails.
* `λ` is going to be the parameter of the Poisson distribution. `λ > 0`
* `X` is the number of events seen across some given time intervals.

Formulas
* **p(sub n)** = `λ / n`
* **pmf P(X=x)** = `(e^-λ λ^x) / x! `
* **cmf F(x)** = `Summation from k = 0 to x for P(x)` where P(x) is the pmf.
* **E(x)** = `λ`.
* **var(x)** = `λ`

Examples
* The number of phone calls to a call service center follows a Poisson distribution with a expected number of 100 calls an hour.
  * `λ` = 100.
