# Discrete Random Variable

* **Variable** - A quantity that may take different values.
* **Random Variable** - A variable that may assume different values with certain probabilities.
  * Can think of it as a function that assigns a **real number** to each outcome in the sample space.
  * Random variable has countably many outcomes.
* **Support** - the support of X is the space of values which X has a positive probability of occurring.
  * Notationally, `X : S -> S(sub x)`
  * S(sub x) = {0,1,2,3}

## Distribution

**Probability Distribution Function (pmf)** - determines the probability distribution of a discrete random variable. In other words, the pmf of X assigns a number to all values in the support of X such that:
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

## Geometric Distribution
How many times you try something until you succeed.
* P(X=1) = p, you get a success on the first try.
* P(X=2) = (1-p)p, you fail your first, and success on the second.
* P(X=3) = (1-p)^2p, you fail 2 times, and then succeed on third.

* `f(x) = P(X = x) = ((1-p)^(x-1))p`

### Cumulative distribution function (cdf)
cdf of a geometrically distribution is
* `F(X) = P(X <= x) = 1 - P(X > x)`
*

### Expectation of X
If I did this experiment infinite amount of times (how many times until first succeed), the average number of times needed to get first success is the expectation of X.
* `E(X) = 1/p`

### Variance of X
The range of values of X is represented by the variance.
* `var(x) = (1-p)/(p^2)`
