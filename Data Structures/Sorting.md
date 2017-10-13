# Sorting

Four important topics: complexity, space, number of comparisons & data movements, and stability.
There are sorting by comparison and sorting that does not require comparison.

*Complexity* is your regular Big-O notation to estimate the algorithm speed.

*Space* is the amount of extra storage needed to run it. If O(1) extra storage is needed, it's called "In Place". O(Log2(N)) is also considered "In Place" since it's very small for very large N's.

*Number of comparisons & data movements* is important because the performance can be negatively affected by the physical limitation (i.e. a hard disk).

*Stability* is an attribute that keeps the relative order (i.e. obj A is on the left of obj B) if the two objects are equal.

# Comparison Sort O(Best NLog2(N))

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

Good to use if the array is "almost sorted".

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

## Heap Sort

Insert into a heap priority queue and then dequeue all to get your sorted values.

* Complexity:
  * Worst: O(NLog2(N))
  * Best: O(NLog2(N))
  * Average: O(NLog2(N))  
* Space:
  * In-place O(1). All data is stored in the array that is in the heap.
* Comparison:
  * O(NLog2(N)) comparisons
  * O(NLog2(N)) swaps in worst case
* Stability:
  * Not stable (percolating values up and down the tree - across many indexes in the array - produces instability)

## Merge Sort
![merge_sort](https://cloud.githubusercontent.com/assets/12219300/20162689/a0888ac6-a6ab-11e6-94ba-fcb8edb34e97.gif)

"Divide and conquer". Recursively sort the first half of the array and the second half of the array before merging both sides to get your sorted values.

* Complexity:
  * Worst: O(NLog2(N))
  * Best: O(NLog2(N))
  * Average: O(NLog2(N))
* Space:
  * Not in-place. Requires an equal sized array.
* Comparison:
  * O(NLog2(N)) comparisons
  * O(NLog2(N)) movements in the worst case
* Stability:
  * Stable

```C++
template<class T>
void merge_sort(T a[], int length) {
  merge_sort(a, 0, length-1);
}

template<class T>
void merge_sort(T a[], int low, int high) {
  if (low >= high)                  //Base case: 1 value to sort->sorted
    return;                         //(0 possible only on initial call)
  else {
    // int mid = (low + high)/2;       //Approximate midpoint*
    int mid = low/2 + high/2 + 1 (if both are odd)
    merge_sort(a, low, mid);        //Sort low to mid part of array
    merge_sort(a, mid+1, high);     //Sort mid+1 to high part of array
    merge(a, low, mid, mid+1,high); //Merge sorted subparts of array
  }
}
```

Pseudo-code for merging
```
template<class T>
void merge (T a[],
            int left_low , int left_high,
            int right_low, int right_high) {

  Create a temporary array that is the same size as "a"
    (this extra storage is why the algorithm is not in-place;
     technically, we need a temporary array storing only
     right_high - left_low + 1 values)
  for every temporary array value from left_low to right_high
    if there are no more "left" values
      copy to the temporary array the next "right" value
    else if there are no more "right" values
      copy to the temporary array the next "left" value
    else if the next "left" value <= the next "right" value
      copy to the temporary array the next "left" value
    else
      copy to the temporary array the next "right" value

  copy the temp array back into "a": into the positions left_low to right_high
}
```

## Quick Sort
![quick_sort](https://cloud.githubusercontent.com/assets/12219300/20159654/f8e73c68-a696-11e6-8bf6-1f8a09b9d729.gif)

Also a "Divide and conquer" sort. Uses partitioning to divide up the problem and returns a pivot point. And then call recursive quick_sort to the left side of the pivot and to the right side.

The partition method `partition(a, low, high)` chooses the pivot value, and then partitions the array into values < pivot on the left, and values >= pivot on the right. Finally, put the pivot at an index between two and return the pivot's index.

The partition method chooses a pivot point, and starts with left = low and right = high.
In each iteration, `left++` and `right--`.
Find the first value of left that is bigger than or equal to the pivot and the first value of right that is smaller than the pivot.
Swap those two values and keep going until the left and right indices meet or crosses.
Look at the pseudo-code below.

Picking a good pivot point:
* Can pick the start, middle, or end of the array. (Picking the end will result in O(N^2) if the array is sorted)
* Can choose a random position in the array.
* Can choose the pivot as the median of any 3 values in the array to approximate. (Can pick first, middle, last, or 3 random indices). Can choose 3 values, 5 values, etc... but best is 3.

* Complexity:
  * Worst: O(N^2)
  * Best: O(N Log2(N))
  * Average: O(N Log2(N))  
* Space:
  * In-place on average case (requires O(Log2(N))). But not in-place in worst case (requires N stack space for recursive calls)
* Comparison:
  * O(NLog2(N)) comparisons on average. O(N^2) worst case
  * O(NLog2(N)) swaps on average. O(N^2) worst case
* Stability:
  * Unstable: partition swaps values over large distances in the array.

```C++
template<class T>
void quick_sort(T a[], int length) {
  quick_sort(a, 0, length-1);
}

template<class T>
void quick_sort(T a[], int low, int high) {
  if (low >= high)  //Base case: 0 or 1 value to sort->sorted
    return;         //(0 possible on initial call and recursion)
  else {
    int pivot_index = partition(a,low,high);//Partition and return Pivot index
    quick_sort(a, low, pivot_index-1);      //Sort values to left of pivot
    quick_sort(a, pivot_index+1, high);     //Sort values to right of pivot

    //Note that after partitioning, all values to the left of the pivot are
    // < the pivot and all values to the right of the pivot are >= to the
    // pivot, so if the left/right values are sorted recursively (with the
    // pivot remaining between them), the entire array is sorted.
  }
}
```

Pseudo-code for partitioning
```
Choose the pivot value (see the discussion below) and swap the pivot value
   with the value in a[high], putting it back where it belongs at the end
Start with l = low and r = high;
while (l<r) {                    //Are there some values to examine?
  while (l<r && a[l] <  pivot)   //Find a left value >= the pivot
    ++l;
  while (l<r && a[r] >= pivot)   //Find a right value < the pivot
    --r;
  if (l<r)			   //If found both, swap them
    swap(a[l],a[r]);
  //if not, the while loop will terminate on the next iteration
}

swap(a,l,high);  //swap the pivot back where it belongs a[l] is > pivot
return l;        //the position of the pivot
```

# Non-comparison Sort O(N)

These sorting methods do not use comparison to sort the data.
They work well for integers but don't work well for other kinds of data.
We will use these two variables:
* N - the size of the data.
* M - the range of the sorting values.

## Bucket Sort

Good when N >> M.
If M is not given, you can find M by searching through the array for the B(biggest) and S(smallest) value.
Then if you subtract every value by S, then you can get the range to be `0 to B-S`.
Sort these values, and then add S back to every value.

How to do a Bucket Sort:
1. Make an int histogram array with indices 0 to B-S and initialize each to 0. Another way of saying it is make an int array of size M + 1. You need to add 1 because the the value M is included. O(M)
2. Iterate through the data, N. For each value in the data, add one to the index of the histogram array that has the same value as the data. `histogramArray[value] += 1`. O(N)
3. Iterate through the histogram array. At each index, if the element is not 0, add that array index to the sorted array. O(N + M)

## Radix Sort

It repeatedly does something like Bucket Sort, but always ensuring that N >> M to make sure it's effective.

Pseudo-code for Radix Sort:
```
void radix_sort(int a[], int length) {
  Create an array of 10 buckets, each storing an empty queue (use ArrayQueue)
  for every place (6 digit numbers: 1s, 10s, 100s, 1,000s, 10,000s, and 100,000s)
    for every value in array a
      put it in the correct bucket using select_digit (for the current place)
    for every bucket (in the order 0 to 9)
      move each of the values, from its queue, back into the array a
      (leaving all the queues empty)
}

```

* Complexity:
  * Worst: O(N Log10 N)
  * Best: O(N + M) = O(N). (Basically a bucket sort)
* Space:
  * Requires O(N) extra storage for the queues at any time. (Might be bigger depending on the structure of the queues)
* Comparison:
  * No comparisons.
  * O(N Log10 N) data movements in all cases.
* Stability:
  * Stable


---

## Credit(s)

Image citations are taken from else where, citations stated here https://github.com/logicxd/til/issues/1
