# NoSQL

What is it?
* Wanted just keys and value.
* No schemas, no records, just a bunch of data.
* Not Hadoop.
* Not graph databases or graph analytics platforms.
* Popular databases: MongoDB, Couchbase, Asterix
* Other databases: Cassandra, HBase
* Comes in the form of JSON data (typically).

## Asterix
A NoSQL database.

* **Dataverse**: a database.
* **Type**: an object that contains the attributes like `int32`, `datetime`, etc.
* **Dataset**: a set of a particular type.

## NoSQL Schema Design rules:
* Start with an E-R model
* Strong entities: keep as "top-level objects" in most cases
* Weak entities: probably nested within their parent object
* Relationships: all relationships.
... TODO
