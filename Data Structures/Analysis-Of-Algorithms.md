# Analysis of Algorithms

* Big-O bounds a function from above. Upper bound.
  * A function f(n) is O( g(n) ) if there are values c and n0 such that f(n) <= c g(n) for all n>n0.
* Big-Omega bounds a function from below. Lower bound.
  * A function f(n) is Omega( g(n) ) if there are values c and n0 such that f(n) >= c g(n) for all n>n0.
  * "for ANY ALGORITHM that solves this problem, it will take AT LEAST g(n) operations."
* Big-Theta bounds a function from below and above. Tight bound.
* Optimal algorithm: when an algorithm's Big-O matches Big-Omega.

**Law of Addition:** example: O(N) + O(N) + O(1) = O(2N) = O(N)

**Law of Multiplication:** example: O(N) x O(N) x O(1) = O(N^2)

**Nested Loops:**
```C++
bool is_unique (int [] a, int N) {
    for (int i=0; i<N; ++i)		    O(N)
      for (int j=i+1; j<N; ++j)		O(N) - min 0/max N-1/average N/2 = O(N)
        if (a[j] == a[i])	      	O(1)
          return false;			      O(1) - never executed in worst case
                                         so won't appear in
                                                formula below
    return true;			            O(1)
}
```
O(N)xO(N)xO(1) + O(1) = O(N^2+1) = O(N^2)
