# Special Linked Lists

Standard linear-linked lists generally have a front pointer to a node.
Each node has a value and a pointer to another node.
Linear-linked lists may also have a rear that marks the end of the list.

## Circular Linked Lists

A linked list whose rear node points to its front node (ex: rear->next is the front).
There is only one pointer that points to the rear.
If there is only 1 value, rear points to itself.

Benefits: both insertion and deletion takes just O(1).
It also saves space since there is only 1 node instead of 2.

Insertion
```C++
if (rear != nullptr)
   rear = rear->next = new LN<int>(some_value,rear->next);//rear->next is front
 else
   rear = new LN(some_value);       //Make it a 1 node circular list, pointing
   rear->next = rear;               //  to itself; cannot do in 1 statement
 }
```

Deletion (for simplicity, it does not delete the node)
```C++
if (rear != nullptr) {
  int front_value = rear->next->value;  //Front is after rear (even if same)
  if (rear->next == rear)               //Just 1 node in the list?
    rear = nullptr; 			  //Yes, make empty list
  else
    rear->next = rear->next->next;      //No,  rear->next refers to new front
}   		   			  //     the one current after front
```

## Header Linked Lists

A linked list that always contains a special header node;
an empty header list contains just this one node.
The header node does not store any data in it.
This is to make sure that every "real" node is pointed by something.
Can have just a head pointer or also include a rear pointer.

Benefit: simplifies the code for adding and removing nodes, although some other
operations (like traversal) might be more complicated because we must remember
to skip the header node.

## Trailer Linked Lists

A linked list that always contains a special trailer node;
an empty trailer list contains just this one node.
Similar to the Header Linked Lists but just that this one is at the tail.

Allows easier deletion like this: (removing p)
```C++
LN<T>* to_delete = p->next;
p->value = to_delete->value;
p->next  = to_delete->next;
delete to_delete;
```

## Doubly-Linked Lists

A non-linear linked list: it contains pointers both to the node that comes before
(prev) and after (next) it. We can traverse a doubly-linked list in either direction.

Benefit: increased flexiblility but increased in space needed (2x).

Deletion
```C++
if (node_to_remove->prev == nullptr) // or (front == node_to_remove)
   front = node_to_remove->next;
 else
   node_to_remove->prev->next = node_to_remove->next;

 if (node_to_remove->next != nullptr)
   node_to_remove->next->prev = node_to_remove->prev;
```

---

Pattis states that the trailer lists are probably the most practical of all these special lists.
