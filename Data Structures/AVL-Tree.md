# AVL Trees
AVL tree is a special kind of binary search tree that requires the difference in
height between the children to be no bigger than 1.
This is done to keep a BST be relatively balanced, unlike regular BST where they
can grow to be really unbalanced.

Time complexity: O(LogN) for searching, insertion, and deletion.

## Insertion

1. Add the new value normally as in BST.
2. Give each node a height value: -1 == node doesn't exist, 0 == leaf node, and so on.
3. If the difference in the height of the children is bigger than 1, do a rotation.
4. From that node, go down to the children that has the larger height, mark it.
5. And from that child node, go down to the children that has the larger height, mark it.
6. If the two children have the same height height, go the same direction as the one that before.
7. Finally, perform rotation on the 3 nodes.

**NOTE** this only requires AT MOST 1 rotation to fix the structure property as its ancestors will not be unbalanced. Also, there is no need to recompute the height of the ancestors whenever the height of a node remains unchanged.

## Removal

1. Find the node to remove as in a regular BST.
2. Continue up from the parent of the removed node towards the root.
3. If there is a node whose children violate the structure property, use that node, its child whose height is larger, and its grandchild with the larger node.
4. Apply rotation to those three nodes.
5. Keep going up the tree, updating the stored heights and looking for any nodes that does not satisfy the structure property.

## Rotation:

Give each selected node a mark for each of their children, and then work on rotating
them to align them from smallest to largest in the same depth. See example below:

![AVL](https://cloud.githubusercontent.com/assets/12219300/19878840/8010aa24-9faa-11e6-9de5-70b328dfd32d.png)

Photo source: [AVL Image](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/AVL_Tree_Rebalancing.svg/350px-AVL_Tree_Rebalancing.svg.png)

Another one is to try to match T1 T2 T3 T4

<img width="400" alt="screen shot 2016-10-31 at 10 53 37 pm" src="https://cloud.githubusercontent.com/assets/12219300/19880717/f80a6c42-9fbc-11e6-8486-09304e6b59d1.png">

Photo source: [ICS 46](http://www.ics.uci.edu/~pattis/ICS-46/lectures/notes/avl.txt)
