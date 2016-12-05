# Dijsktra's All Shortest Path Algorithm

Given a starting node and a graph, it computes the shortest paths to all the nodes that can be reached in the graph.
It computes just the cost for all the shortest paths but omits information for reconstructing the paths.
* Directed graph.
* Edges are weighted (non-negative values).
* The length of a path is the sum-of-the-weights of all edges on the path.

# Extended Dijsktra (Pattis Edition)

Dijsktra plus additional information for reconstructing the path.

Most data is stored as `Info` class
* Contains the cost of the minimum path to reach that node.
  * Initialized to +infinity.
* The name of the node BEFORE it on the shortest path.
  * Initialized to '?'.
* Three collections in the class: two Maps and a Priority Queue.

Basic Algorithm:
```
1) Prompt the user for a file name and load and print its graph, whose edges
     are labeled by non-negative integer values.

2) Prompt the user to enter a start node.

3) Call the extended_dijkstra function with this information, returning a map
     of the minimum costs to reach each node and the information needed to
     construct its path.

   In the extended_dijkstra function:

   3a) Declare the answer_map to be empty and the info_map to contain each node
         in the graph as a key in the map, with its associated value a newly
         constructed/initialized object of Info for that node.

       Update the start node in the info_map by setting its total_cost to 0
          (since we start at that node, the cost to reach it is 0).

   Note the info_map contains nodes whose minimum distance from the start node
   IS NOT YET KNOWN; the answer_map contains nodes whose minimum distance IS
   KNOWN.

   3b) Declare the info_pq, and load it with the current contents of the
          info_map: here the smallest cost has the highest priority.

   3c) Loop so long as the info_map is not empty...

       3c1) Remove the Info from info_pq with the smallest associated cost
              -initally the start node.
            If its cost is infinity, then no more nodes in info_map are
              reachable, so terminate.
            If its node is already in answer_map, skip it and remove another.

       3c2) Call "min_node" the node from this Info and "min_cost" its cost. We
              are now guaranteed to know the least costly path from the start
              node to min_node.

       3c3) Remove this key->value from the info_map and put it into the
              answer_map.

       3c4) For every node d that is a destination from the min_node and not
              already in the answer_map, get d's Info using info_map and see if
              the cost is infinite or greater than the cost of the path from
              the start node to min_node, plus the cost of the edge from
              min_node to d.
            If it is infinte, or the sum is smaller,
              (1) In info_map, update the cost in Info to this smaller number,
                    and update the predecessor of d to be min,
              (2) add the updated Info to the info_pq

        3c5) Continue around the loop

  3d) When the loop finishes, the Info values in answer_map are filled with
        the mminimum cost to reach each node and the node preceding it on the
        minimum path. Return this information.

4) Repeatedly prompt the user for a stop node and show the minimum cost and
     minimum cost path to reach that node, by calling the recover_path, which
     returns a Queue of the nodes on the shortest path between the start node
     and stop node.

   By repeatedly following the predecessors in the map (a Stack is useful here),
     we can reconstruct a queue containing the entire minimimum cost path, from
     the  start node to any reachable node.
```
