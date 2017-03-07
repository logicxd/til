# B+ Tree

## Deletion

* Find the node and remove
  * After removing and the number of nodes is less than n/2,
    * Redistribution (Take one from one of the neighbors if their value after distribution is still >= n/2)
    * If that fails, merge it's sibling and bring the parent pointer down and delete the extra pointer.
