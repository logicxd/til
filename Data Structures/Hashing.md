# Hashing and Hash Tables

## Linked List Hashing

Hashes to a bin, and adds it as a node to the linked list.
Requires an extra space for the nodes stored in each bin.

## Probing via Open Addressing

Hashes to a bin, and if there's a value, it goes to find another bin.

### Linear Probing

Finds the hashed value's bin. If there's a value in the bin, it increments the index by 1
and keeps going until it finds an empty bin or the values it's looking for.

Removing a node can cause a problem. When searching for an added node, it might not know
where it was added since that node that the keys hashed to previously is now gone.
So it has to keep a variable "available" to mark an open spot that was previously taken.

### Quadratic Probing

Similar to linear probing except that instead of incrementing the index by 1,
it increments by `ai + bi^2`.
* i=0 for first time, i=1 for second time ...
* We specify some values for a and b.

### Double Hashing

This uses a second hash method h2 (hash, hash+h2(1),
hash+h2(2), hash+h2(3), ... ) to compute a value that is continually added to
the bin index (with the compression function) until the value is located or an
empty bin is found.
