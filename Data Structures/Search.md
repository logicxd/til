# Search

## Fractional Knapsack

Variables
* `n` objects
* `W` maximum weight of your knapsack.
* `Wi` weight of an object in `n`.
* `Vi` value of an object in `n`.
* `Xi` weight of the object in `n` that you put in the knapsack.

Algorithm 1
* Sort the objects by `Vi/Wi` decreasing order. (To get the highest density)
* Pick as much as weight as you possibly can in order.
* If the whole object doesn't fit in the bag, take as much weight of it as you can.
* Complexity: O(n log n) (assuming comparison sort)

Algorithm 2 (for `Wi` is 1)
* Heapify all the elements.
* Pop `W` times and add to the bag.
* Complexity: O(W log n)
