# Search

What is search?
* The process of looking for a sequence of actions that reaches the goal.
* Determine how to achieve some goal;
* "what to do".
* Solution tells the agent what to do.

If no solution in the current search space
* Find space that does contain a solution (by using search)
* Solve original problem in a new search space.

Why search?
* Can predict the results of our actions in the future.
* Many sequences of actions, each with some utility. Maximize performance measure.

Dijkstra?
* Inputs the entire graph
* Want to search in unknown spaces.
* Dijkstra won't work on infinite spaces. Many actions spaces are infinite or effectively infinite.

There are several search algorithms:
* Tree search
* Graph search
* uninformed search
* heuristic search
* local search

## State space

State (also known as representation)
* Reveals important features.
* Hides irrelevant detail.
* Exposes useful constraints.
* Makes frequent operations easy to do.
* Supports local inferences from local features.
    * Also called "soda straw" principle or "locality" principle.
* Rapidly or efficiently computable.

State-space problem formulation ("problem") is defined by five items
* **initial state** - ex: "at Arad"
* **actions** - set of actions available in states.
* **transition model** - Description of what each action does. State that results from action in states.
* **goal test (or goal state)** - Determines whether a given state is a goal state. Ex: "at Bucharest" (check if you have completed your goal)
* **path cost (additive)** - a numeric cost for each path. Ex: sum of distances, number of actions executed, etc.
* With these 5 items a **solution**, a sequence of actions leading from the initial state to a goal state, is found.

Selecting a state space
* State space must be abstracted for problem solving since the real world is very complex.
* (Abstract) state <- set of real states. (Reads "abstracted state from a set of real states")
* (Abstract) action <- complex combination of real actions
* (Abstract) solution <- set of real paths that are solutions in the real world.
* Each abstract action should be "easier" than the original problem.

## Search strategies

A search strategy is defined by picking the order of node expansion.
* Completeness - Is the algorithm guaranteed to find a solution when there is one?
* Optimality - Does the strategy find the optimal solution (least path cost)?
* Time complexity - How long does it take to find a solution?
* Space complexity - How much memory is needed to perform the search?

Time and space complexity are measured in terms of
* b: maximum branching factor of the search tree.
* d: depth of the least-cost solution.
* m: maximum depth of the state space (may be infinity).

## Tree search

Basic idea
* Explore space by generating successors of already-explored states ("expanding" states)
* Evaluate every generated state: is it a goal state?
* Repeated states (can visit the same state multiple times)
    * Problem since it can turn a linear problem into an exponential problem.
    * And can be loopy (infinite loop)

## Graph search

Similar to tree search except
* Faster but memory inefficient.
* Remembers all the states visited (not loopy).
* Frontier separates the state-space graph into the explored region and the unexplored region.

## Uninformed search (blind search)

* Your search is blind.
* You have no clue whether one non-goal state is better than any other.
* You don't know if your current exploration is likely to be fruitful.

Various blind strategies
* Breadth-first search
* Uniform-cost search
* Depth-first search
* Iterative deepening search (generally preferred)
* Bidirectional search (preferred if applicable)

### Breadth-first search

Highlight: Easy to implement.

Can be easily implemented using a **FIFO queue**.
* Complete? Yes.
* Optimal? Yes if the path cost is a nondecreasing function of the depth of the node. (I think this means that the step costs are equal).
* Time? O(b^(d+1)). Bad
* Space? O(b^d). Bad

### Uniform-cost search

Highlight: Optimal.

Expands the node n with the lowest path cost g(n). It stores the frontier as a **priority queue** ordered by g.
* Complete? Yes if the cost of every step exceeds some small positive number so that it doesn't get stuck in an infinity loop.
* Optimal? Yes.
* Time? O(b^(1+floor(C*/E))) where C* = the cost of the optimal solution and E = some small positive constant to prevent loopy-ness.
* Space? Same as time.

### Depth-first search

Highlight: Space.

Expands the deepest node **LIFO queue**. The properties depend strongly on whether graph-search or tree-search version is used.
* Complete? Yes for finite state spaces using graph-search. No for tree-search, can get stuck in infinity loop.
* Optimal? No.
* Time? O(b^d).
* Space? O(bm). Really good.

### Iterative Deepening Search (IDS)



## Heuristic search (informed search)

* A structured way to add "smarts" to your solution.
* Provide **significant** speed-ups in practice.
* Still have worst-case exponential time complexity.

Problem-specific heuristics to improve efficiency
* Best-first, A*, (and if needed for memory limits, RBFS, SMA*)
* A* is optimal with admissible (tree)/consistent (graph) heuristics.
* A* is quick and easy to code, and often works **very** well.

Heuristic function h(n)
* g(n) - known path cost so far to node n.
* h(n) - estimate of (optimal) cost to goal from node n.
* f(n) - g(n) + h(n) = estimate of total cost to goal through n.

### Greedy best-first search (sometimes just called "best-first")

* Expands the node that appears to be closest to goal.
* Priority queue sort function = h(n)


### A* search
* Idea: avoid expanding paths that are already expensive.
* Generally the preferred (simple) heuristic search
* Optimal if heuristic is: admissible (tree search) / consistent (graph search)
* Priority queue sort function = f(n)

Properties
* Complete? Yes
* Time/Space? O(b^m)
* Optimal? Yes
* Optimally efficient? Yes

---

## Other vocabs

* Frontier - The set of all leaf nodes available for expansion at any given point.
