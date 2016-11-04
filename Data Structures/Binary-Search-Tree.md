# Binary Search Tree

Nonlinear data structure.

* Left child: less than or equal to the parent. `[2i + 1]`.
* Right child: greater than the parent. `[2i + 2]`.
* Parent: `floor( (i-1)/2 )` where i is the index of the child.
* The number of nodes in a perfect binary tree is `2^(h+1) - 1` where h is the height.
* Height: leaf nodes start at 0, their parents go up by 1 and so on.
* Depth: root node start at 0, their children go up by 1 and so on.

## Insertion

* If the value is smaller than the node, traverse left.
* If the value is greater than the node, traverse right.
* If it is the same (you can choose to ignore it; it is already added in the tree; no duplicate)
* Then you can create a node at the appropriate spot and insert the value.

## Removal
Find the node containing the value to be removed.

* If it is a **LEAF**, delete it: make the pointer from its parent (left or right) nullptr, instead of pointing to the deleted node.
* If it is an **INTERNAL** node with **ONE CHILD**, delete it: make the pointer from its parent (left or right) point to its child, instead of pointing to the delete node.
* If it is an internal node with **TWO CHILDREN**
  * Find the node containing the closest value: either the largest value smaller than it OR the smallest value larger than it (it doesn't matter which)
  * Remove that node from the tree: it is guaranteed to have at most one child, so it will be easy to remove using this algorithm via LEAF node deletion or INTERNAL node deletion with one child.
  * Replace the value of the original node (the one containing the value to remove) with the value of this node that was just deleted.

## Traversal
Use of recursion to traverse through the tree.

#### Pre-order Traversal
1. Process the current node.
2. Process the nodes in the left.
3. Process the nodes in the right.

#### In-order Traversal
1. Process the nodes in the left.
2. Process the current node.
3. Process the nodes in the right.

#### Post-order Traversal
1. Process the nodes in the left.
2. Process the nodes in the right.
3. Process the current node.

#### Breath-First Traversal
Starting with the root added to a queue.

1. Dequeue and process the node.
2. Store the children from left to right in a queue.
