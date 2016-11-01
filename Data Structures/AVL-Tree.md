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

## Rotation:

Give each selected node a mark for each of their children, and then work on rotating
them to align them from smallest to largest in the same depth. See example below:

![AVL](https://cloud.githubusercontent.com/assets/12219300/19878840/8010aa24-9faa-11e6-9de5-70b328dfd32d.png)

Photo source: [AVL Image](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/AVL_Tree_Rebalancing.svg/350px-AVL_Tree_Rebalancing.svg.png)
