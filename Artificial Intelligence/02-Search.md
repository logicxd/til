# Search

What is search?
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
* tree search
* uninformed search
* heuristic search
* local search

## State space representation and search algorithm

State-space problem formulation ("problem") is defined by five items
* **initial state** - ex: "at Arad"
* **actions** - set of actions available in states.
* **transition model** - state that results from action in states
* **goal test (or goal state)** - ex: "at Bucharest" (check if you have completed your goal)
* **path cost (additive)** - ex: sum of distances, number of actions executed, etc.
* With these 5 items a **solution**, a sequence of actions leading from the initial state to a goal state, is found.

Selecting a state space
* State space must be abstracted for problem solving since the real world is very complex.
* (Abstract) state <- set of real states. (Reads "abstracted state from a set of real states")
* (Abstract) action <- complex combination of real actions
* (Abstract) solution <- set of real paths that are solutions in the real world.
* Each abstract action should be "easier" than the original problem.

## Tree search algorithm

Basic idea
* Explore space by generating successors of already-explored states ("expanding" states)
* Evaluate every generated state: is it a goal state?
* Repeated states (can visit the same state multiple times)
    * Problem since it can turn a linear problem into an exponential problem.

## Uninformed search algorithms

* Your search is blind.
* You have no clue whether one non-goal state is better than any other.
* You don't know if your current exploration is likely to be fruitful.

Various blind strategies
* Breadth-first search
* Uniform-cost search
* Depth-first search
* Iterative deepening search (generally preferred)
* Bidirectional search (preferred if applicable)

## Heuristic search (also known as informed search)

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
*

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
