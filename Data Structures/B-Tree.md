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
* Depth, d. Root starts at `depth = 0`.

Order Property:
* Keys in a node are ordered left to right.
* A subtree between key[i] and key[i+1] values that are between key[i] and key[i+1].
  Leftmost subtree contains nodes that are less than key[0].
  Rightmost subtree contains nodes that are bigger than key[k-1].

Structure Property:
* All leaves are at the same depth and store their information as keys only.
* Every non-leaf node with k keys contains `k + 1` children.
* Every node has at most `b - 1` keys.
* Every node except the root has `>= b / 2` keys (it is at least 1/2 full with respect to children pointers).
* The root may be empty and it may also be a leaf.

## Searching for X in a node

Start searching at the root. At most it'll search `d + 1` times.

Algorithm:
```
  If there is no root node, x is not in the tree
  If there is a root node
    Using the order property, do a "binary" search on the keys in the node
    (actually a (b)-ary search since each node has up to b children)
      a) if there is an i such that keys[i] = x, x is in the tree at this node
      b) otherwise, if x < key[0] search subtree with index 0
                    if keys[i] < x < keys[i+1] search the subtree at index i+1
                    if x > the last key[k] search the subtree with index k+1
```

## Inserting X into the tree

X will be added as a key/value in some leaf.

Algorithm:
```
Search the tree to find in which LEAF x belongs

  If there is room in that leaf, put x in the key array at the correct index
    adjusting the children pointers as necessary
  If there is NO room for the key/value in the leaf (the node's keys are full)
    Find the median value among the values in the leaf, including the new value
    Using the median as the separator value, split the leaf into two new nodes
      (one with all values<median, one with all values>median)
    Insert the median in the parent's node adjusting the children (now 1 more)
      as necessary; if there is no room for the key/value in the parent
      split it using these same instructions

  It is possible, if this process goes back to a full root node, that the
  root node will itself need to split into two children of a newly created
  root, which will have just one value (allowed at the root by the structure
  property). So, unlike BSTs, B-trees grow at the root, not the leaves. This
  ensures the property that all the leaves are at the same depth.
```

# Sorting

Read into memory, then sort it back out.
External memory sorting by merge.
