# B-Tree

Special kind of N-ary Search Tree.
The algorithm is useful when storing data that requires more space than is available in main memory.
Typically the cost of such memory transfers dominates the cost of executing code on the block while it is in memory.
That is, a transfer between main and external memory might take 10 milliseconds, while processing the data in the block might
take microseconds (a few 1/1000ths of a millisecond) before making another memory transfer.
Expands upwards - as data grows, the tree has a new root.

Useful notations:
* Order, b: # of children a block has.
* Keys, k: The number of nodes in a block, which is `b - 1`.

Order Property:
* Keys in a node are ordered left to right.
* A subtree between key[i] and key[i+1] values that are between key[i] and key[i+1].
  Leftmost subtree contains nodes that are less than key[0].
  Rightmost subtree contains nodes that are bigger than key[k-1].

Structure Property:
* All leaves are at the same depth and store their information as keys only.
* Every non-leaf node with k keys contains `k + 1` children.
* Every node has at most `b - 1` keys.
* Every node except the root has >= b/2 (5/2 = 2) keys (it is at least 1/2 full with respect to children pointers).
* The root may be empty and it may also be a leaf.


# Sorting

Read into memory, then sort it back out.
External memory sorting by merge.
