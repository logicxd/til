# Games and Adversarial Search

* State
* Step size
*

## Hill Climbing Generally
Initialize current_state, current_score = store(current_state);

Algorithm
* Find the neighbor of the current state. Uses a step-size to see how many steps far away the neighbor can be.
    * If score(next_state) > score(current_state) increase step-size
    * If score(next_state) <= score(current_state) decrease step-size
* Pick the neighbor of the best score. (Can pick multiple neighbors, best score can be the maximum or minimum)
* If the picked neighbor's score is lower than the current score, keep the current_score. Otherwise, update the score to the neighbor.
* If the difference in the score from current to the next is smaller than some Epsilon constant number, exit search.

## Simulated Annealing
Initialize current_sol, current_cost = cost(current_sol);

Algorithm
* Find neighbor(s) of the current_sol.
* Find the cost of the neighbor.
* Pick the neighbor that:
    * If cost(next_sol) > cost(current_sol) current_sol = neighbor; current_cost =  next_cost;
    * Else 
