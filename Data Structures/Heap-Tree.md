# Heap Trees

A special kind of tree that is really good for storing priority queues. This will cover only binary heaps.

## Min-Heaps
**Note:** Max-Heaps are the same but flipped

Order: Every node must be less than or equal to all nodes in its left and right subtrees.

Structure: All depths must be filled, except possibly the deepest.

## Insertion

This is called as the "percolate up" operation, because the value added at the bottom of the tree percolates up to its correct position.

1. Create a new node with the value and place it at the right of the rightmost node at the deepest depth.
2. Compare the value with parent; switch values if parent's value > node's value.
  1. Swap until parent's value <= node's value.
  2. Or until the node is the root.

## Deletion

1. Save the value at the root (which is the smallest value in the tree)
2. Save the value from the farthest right node at the deepest depth, and remove it.
3. Put the saved value at the root.
4. Compare the value with children; switch values if node's value > either/both child's value. Switch values with the SMALLEST child.
  1. Swap until node's value <= child's value(s).
  2. Or if it is a leaf node.

**Note:** Because of the STRUCTURE property of heaps, a node will never have just a right child.
So compare left child first, or compare both left and right if it has both children.

## "Online" vs "Offline"

"Online" algorithms receive their inputs one at a time and have to completely update their data structure before the next value is received and processed.

"Offline" algorithms receive ALL THEIR INPUTS before they are required to process any of them.
Can achieve building a heap in O(N) time by creating two smaller heaps, combine them side by side, and then add a value to the top.
This needs more research and clarification. 
