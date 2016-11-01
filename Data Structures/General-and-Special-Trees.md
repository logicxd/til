# General and Special Trees


## N-ary Trees as Binary Trees

Trees that can have any number (N) of children.

Has two pointers:
* *first_child* points to a linked list of children.
* *next_sibling* points to a linked list of siblings.
* Note that root node is guaranteed to have no siblings, but all other nodes can have siblings (not required).

Here is an example of printing a preorder traversal:
```C++
template<class T>
void print_values (NTN_Binary<T>* root, std::string indent = "") {
  if (root == nullptr)
    return;
  else {
    std::cout << indent << root->value;
    for (NTN_Binary<T>* c= root->first_child; c != nullptr; c = c->next_sibling)
      print_values(c,indent+"  ");
  }
}
```

This is the same function but purely recursive
```C++
template<class T>
void print_values (NTN_Binary<T>* root, std::string indent = "") {
  if (root == nullptr)
    return;
  else {
    std::cout << indent << root->value;
    print_values(root->first_child,indent+"  ");
    print_values(root->next_sibling,indent);
  }
}
```

## Quad Trees

Can be used to represent pictures that are rendered (drawn) on the screen NOT from top to bottom, but from fuzzy pictures to sharp pictures. Also, for pictures that contain large areas of the same color, a Quad tree can store a picture more compactly than an array of pixels.

Each node has exactly four children:
* They represent 1/4 of the size of the parent.

## Expression Trees

Represent and process expressions.
```
  2 + 3 * 5          (2+3) * 5          1 + 2 + 3

      +                  *                  +
    /   \              /   \              /    \
   2    *             +     5            +      3
       /  \          /  \               /  \
      3    5        2    3             1   2
```

## Digital Trees

Also known as "Tries", can be used to store a dictionary of words for a spelling correction utility. A digital tree breaks up the letter into "digits" and store them in a tree.

Time complexity: O(1) for search, add, and remove. The time depends on the number of letters in the word.

Class structure:
```C++
class DTN {
  public:
    DTN (bool iw, std::string wth) :
      is_word(iw), word_to_here(wth), children()
    {}

    bool                is_word;
    std::string         word_to_here; //Cache this value; can computed from root
    ArrayMap<char,DTN>  children;
  }
```
