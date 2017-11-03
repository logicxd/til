# Constraint Satisfaction Problem

* Finite set of variables.
* Nonempty set of domains for possible constraints.
* Finite set of constraints.

Example
* Variables: {WA, NT, Q, NSW, V, SA, T}
* Domains: D = {Red, Green, Blue}
* Constraints: {"Adjacent regions must have different colors"}.

Benefits
* Solutions are assignments that satisfies all constraints.

## Minimum Remaining Values (MRV)

Two types of heuristics for MRV.
* Most constrained variable
* Most containing variable

### Most constrained variable

* Select the nodes that have the least number of edges.

### Most containing variable

* Select the nodes that has the most number of edges.
* Pick a state depending on heuristics (e.g. random)

## Degree Heuristics

## Least constraining value heuristic

## Ways to improve checking.

## Forward Checking

### Arc Consistency

Forward checking to remove the invalid domains that aren't consistent with the constraints.
