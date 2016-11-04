# Sorting

Four important topics: complexity, space, number of comparisons & data movements, and stability.

*Complexity* is your regular Big-O notation to estimate the algorithm speed.

*Space* is the amount of extra storage needed to run it. If O(1) extra storage is needed, it's called "In Place". O(Log2(N)) is also considered "In Place" since it's very small for very large N's.

*Number of comparisons & data movements* is important because the performance can be negatively affected by the physical limitation (i.e. a hard disk).

*Stability* is an attribute that keeps the relative order (i.e. obj A is on the left of obj B) if the two objects are equal.

## Selection Sort

<img src="https://cloud.githubusercontent.com/assets/12219300/20023078/cddd7406-a29a-11e6-94a3-03172651ba2a.gif" width="300px"/>

Place boundary between the 0 index and 1 index. Left of the boundary is sorted, right of the boundary is unsorted.

The algorithm scans forwards from the 1st unsorted index to the end of the array to find the smallest remaining value in the array, then it swaps that value with the one in the first unsorted index.

* Complexity:
  * Worst: O(N^2)
  * Best: O(N^2)
  * Average: O(N^2)  
* Space:
  * In-place O(1). Just needs a few extra local variables in the method
* Comparison:
  * O(N^2) comparisons
  * O(N) swaps
* Stability:
  * Not stable

Note for same index checking: while doing this is possible, it actually has to make a comparison each time so it does more work than without (it would just swap with itself)
```C++
if (index_to_update != index_of_min)
   std::swap(a[index_to_update], a[index_of_min]);
```

## Insertion Sort
![](https://cloud.githubusercontent.com/assets/12219300/20023447/3b6e9d90-a29d-11e6-8e8c-82cc2a899393.gif)

Place boundary between the 0 index and 1 index. Left of the boundary is sorted, right of the boundary is unsorted.

The algorithm moves/swaps the value in the 1st unsorted index backwards, until it is >= the value before it. So, only data in the sorted part changes.

* Complexity:
  * Worst: O(N^2)
  * Best: O(N)
  * Average: O(N^2)  
* Space:
  * In-place O(1). Just needs a few extra local variables in the method
* Comparison:
  * O(N^2) comparisons
  * O(N^2) swaps
* Stability:
  * Stable

Improving efficiency: instead of swapping each adjacent values that are smaller, save the value that is being moved and just moved the values that are smaller to the right until it finds a place where it belongs, and then do the swap.

---

## Credit(s)

Image citations are taken from else where, citations stated here https://github.com/logicxd/til/issues/1
