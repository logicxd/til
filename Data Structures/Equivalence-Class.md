# Equivalence Class

http://www.ics.uci.edu/~pattis/ICS-46/lectures/notes/equivalence.txt

A tree structure where the nodes only refer to parents, not other children.
Any equivalence relation (R) has the following three properties

1. Reflexivity: a R a
2. Symmetry: a R b implies b R a
3. Transitivity: a R b, and b R c implies a R c.

These are specifically useful for some graph theories. All the values in an equivalence relation are
partitioned into equivalence classes: where every value in an equivalence class is considered to be
equivalent to every other value in the same equivalence class but not to any other values in other
equivalence classes.

Fundamentally three basic operations that we can perform on equivalence relations/equivalence classes

1. Add a new value to the equivalence, starting in its own equivalence classes
2. Determine whether or not two values are in the same equivalence classes
3. Merge the equivalence classes of two values, creating one equivalence class
containing all the values in each of the equivalence classes: all those values are now equivalent.
