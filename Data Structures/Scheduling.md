# Scheduling

## Task Scheduling

Variables
* `n` tasks.
* `ti` each task.
* infinite machines.
* `si` - initial time.
* `fi` - finish time.

### Minimum number of machines to run the tasks

Algorithm
* Sort by `si`, earliest start time first.
* For each task `ti`
    * If machine can handle `ti`, do it
    * Otherwise, use a new machine.

### Maximum # of tasks on one machine

Algorithm
* Sort by `fi`, earliest end time first.

## Master Method/Theorem
Generally used to figure out the time analysis of a recursive problem as they asymptote.

`T(n) = aT(n/b) + f(n)`
* `n` - the size of your problem.
* `a` - number of subproblems. a > 1. Ex: binary search has `a = 1` since it's eliminating the other node, merge sort has `a = 2` since it computes both subproblems.
* `b` - base, the number of times that it's splitting. b > 1.
* `f(n)` - amount of work you do at the current depth; total time for splitting and recombining. Everything except for the recursive calls.

Theorem
* If `f(n) = O(n^(logb(a)-ε))` for some ε > 0,
    * then `T(n) = Θ(n^(logb(a)))`.
    * (Note logb means log base b)
* If `f(n) = Θ(n^(logb(a)) log(n)^k))`
    * then `T(n) = Θ(n^(logb(a)) log(n)^(k+1)))`
* If `f(n) = Ω(n^(logb(a)+ε))` for some ε > 0,
    * and `af(n/b) < δf(n)` for some constant δ < 1
    * and all sufficiently large n
    * then `T(n) = Θ(f(n))`

Another way of looking at it
* Let `f(n) = n^d * log(n)^k`
* Compare `logb(a) to d`
    1. If `logb(a) > d` -> `T(n) = Θ(n^(logb(a)))`.
    2. If `logb(a) = d` -> `T(n) = Θ(n^(logb(a)) * log(n)^(k+1)))`.
    3. If `logb(a) < d` -> `T(n) = Θ(f(n))`.


### Examples
* T(n) = 4T(n/2) + n^2log(n) -> Θ(n^2 * log(n)^2)
* T(n) = T(n/3) + n -> Θ(n)
* T(n) = 2T(n/2) + n -> Θ(nlogn)
* T(n) = 8T(n/4) + nlogn -> Θ(n^(3/2))
* T(n) = 2T(2n/3) + n^2 -> Θ(n^2)
