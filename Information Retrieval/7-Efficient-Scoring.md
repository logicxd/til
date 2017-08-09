# Efficient Scoring

**Efficient Ranking**: find the K docs in the collection "nearest" to the query. Two aspects:
* Choosing the K largest cosine values efficiently.
* Computing cosine values efficiently.

## Choosing K largest Cosines

Selection vs Sorting
* Sorting takes too much time and more resources. Don't need to sort all the documents in the collection.
* Just need to retrieve the top K docs in the cosine ranking for the query.

Selecting docs with K highest cosines:
* N is the number of documents
* J is the number of documents with non-zero cosines.
* Then look for the K best from these J

Use **Heap Data Structure**
* Use max heap for selecting top K. Parent's node's value > the values of the children.
* Heap of J elements can be built in O(J) steps.
* 
