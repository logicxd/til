# Graphs

Similar to Geometry which focuses on angles, distances, etc but also with information on
what nodes are connected to what.
Topology is concerned less with distance and angles and more with connectedness.

## Terms
* Node (vertices): Represents a "place". Usually represented by `N`.
* Edges: Connection between nodes. Edges can contain values. Usually represented by `M`.
* Degree: how many edges stick out of the node.
* Is "weakly-symmetric": when there is an edge from node1 to node 2, then there is also an edge from node 2 to node 1.
* Is "strongly-symmetric":
* Subgraph: a graph that contains a subset of its nodes and edges.
* Path: a sequence of nodes.
* Transitive closure:
* Cyclic: a path from any node to itself.
* Connected: there is a path between any two nodes.
* Spanning Tree:
* Sparse graph: when the nodes have less children but a lot of family. Spread.  
* Dense graph: when the nodes have a bunch of children. Bushy.

## Euler path

```
Theorem 1: If an undirected graph has more than two nodes with an odd degree,
      then it does not have an Euler path.

Theorem 2: If an undirected graph has two nodes or fewer with an odd degree,
      then it has at least one Euler path.
```

## Directed Graph

Edges have a distinguishable "origin" and a distinguishable "destination".
Edge is written as an arrow from origin to destination.

* In-degree: The number of edges going **INTO** the node.
* Out-degree: The number of edges going **OUT** of the node.

## Undirected Graph

Edge serves both as an origin and destination.
Degree: the number of edges from the node.

## Metrics

Sparse graph vs dense graph.
Sparse is when the node has a bunch of nodes coming out vs
dense graph where there are 3/4 of number of nodes coming out of each node. (DOUBLE CHECK)

## Storing/Manipulating Graphs

Time vs Space.
* Matrix: O(N) to scan through everything. O(1) to look up.
* An array of N rows, with each a list: sparse graph O(1), dense graph O(N).
* Hashmap: O(1) process.
* Local:

# Algorithms

## Topological Sorting

Linearizes the nodes in a graph by the number of in-degrees starting from 0 to the biggest.
* Unordered.
* Directed graph.
* Doesn't compute the cyclic part of the graph.
* Complexity of O(N^2).

Computing Topological Sort:
```
while there is a node with in-degree 0
  enqueue it to (put it next in) the answer queue
  remove it from the graph (affecting the degrees of other nodes
                            the refer to it or that it refers to)
```
If there are more than 1 node with in-degree 0, we can choose any of these nodes to come next in the queue.

## Minimum Spanning Tree (MST)

A spanning tree of a undirected graph is a subgraph, such that every node is
reachable from every other node, WITH NO REDUNDANT EDGES.
* A graph with N nodes will have exactly N-1 edges.
* Undirected graph.
* Acyclic: no path from a node to itself.
* Complexity of O(N + M Log2 M).
  * Sparse graph

Look through all the edges and add them to a priority queue.
Make a graph that has the same number of nodes as the original but without edges.
Dequeue the priority queue and add the edges to the graph if no other edges existed.
Repeat until everything is connected.

Kruskal's Algorithm for MST
```
  1) Put each node in own equivalence class (add_singleton in Equivalence).

  2) Put all the edges in a priority queue, such that edges with smaller values
       have higher priorities.

  3) Start with a MST graph containing only nodes. It will eventually store
       only edges that are in the minimum spanning tree.

  4) While T's # edges < N-1 (see above: N node graphs have N-1 edge MSTs)
       a) Dequeue the next edge from the priority queue (the smallest remaining
            edge value).
          If there are no more edges, the graph isn't connected and there is
            no [minimal] spanning tree
       b) If its origin and destination nodes are in the SAME equivalence
            class, do nothing
          If its origin and destination nodes are in two DIFFERENT equivalence
            classes, add the edge to MST and merge the equivalence classes of
            the origin and destination nodes.
```  
