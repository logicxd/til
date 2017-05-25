# Vector

Vector Space Model

**Weight Matrix**: how to represent term vs document to get the term frequency of that document. (Term, Document) = term frequency.

## Frequencies

* **Term Frequency**: the number of times a term appeared in a document
* **Document Frequency**: the number of documents that contains the term.
* **Collection Frequency**: the total number of terms collected from the documents.

## tf x idf
A weight scale for scoring the documents. A query could be scaled similar as if it's a document and then be compared against the scores.
* `w(sub t,d) = 1 + Log(tf) x Log(N/df)`.
