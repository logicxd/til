# Database Design

## Conceptual Design

* What are the entities and relationships in the enterprise?
* What information about these entities and relationships should we store in the database?
* What are the integrity constraints or business rules that hold?
* A database schema in the ER Model can be represented pictorially.
* Can map an ER diagram into a relational schema.

![ER-Model](https://cloud.githubusercontent.com/assets/12219300/21962034/f1046bd0-dace-11e6-8102-fae03c43f0b9.png)

### Some key terms
* Single-value Attribute: the attribute can only be represented in a particular way.
* Multi-value Attribute: the attribute can be represented in different ways (i.e. phone number can have the area code or not, the country code).


* Atomic Attribute: an attribute is complete and final; it cannot be broken down into smaller specific attributes.
* Composite Attribute: an attribute that can be further broken down into more specific attributes.


* Base/Stored Attribute: the data is stored.
* Derived Attribute: the data is not actually stored in the database but it's derived/computed from other factors.

## Model Basics

* Entity - Real-world object, with attributes.
* Entity Set - A collection of similar entities. (e.g. all employees).
  * Each entity set has a key (unique identifier)
  * Each attribute has a domain (similar to a data type).

* Relationship - Association among two or more entities.
  * Can also hold information that is not an attribute of the connected entities. It's a relationship information.
* Relationship Set - Collection of similar relationships.

## Cardinality Constraints

The number of entities that can be in a relationship with other entities.

* 1-to-1: one entity can be in a relationship with another entity (1:1).
* 1-to-Many: one entity can be in a relationship with many other entity (1:N).
* Many-to-1: many entities in the set can be in a relationship with another entity (N:1).
* Many-to-Many: many entities can be in relationships with many entities (M:N).

## Participation Constraint

An entity needs to have a relationship with another entity. It's a required relationship that is enforced.

## Weak Entity

* Weak entity - can be identified uniquely only by considering the primary key of some other (owner) entity.
  * Owner entity set and weak entity set must participate in a one-to-many relationship set (one owner, many weak entities).
  * Weak entity set must have total participation in this identifying relationship set.
  * Dependent identifier is unique only within owner context(), so its fully qualified key here is (ssn, dname)

This is basically foreign key. The weak entities are represented by a bolded border (so a rectangle's borders are darker and thicker). Cannot exist without the primary entity.

## Ternary Relationships (and beyond)

You can have more than 2-way relationships. Ternary relationships are 3-way relationship. (e.g. a patient, a doctor, and a drug).

## Generalization

![Generalization](https://cloud.githubusercontent.com/assets/12219300/21962325/fb1caa3e-dad7-11e6-9afb-f7ad85dc7708.png)

A number of entities have similar attributes that can be generalized by one entity.

## Specialization

![ISA-Relationship](https://cloud.githubusercontent.com/assets/12219300/21962084/160fa668-dad1-11e6-940e-4fdd2e5d5774.png)

Entity can be further subdivided based on their attributes.

## ISA ("is a") Hierarchies

If entity A ISA B, then every A entity is also considered to be a B entity.

* Covering constraints: e.g. every Person entity HAS to belong to one of its subclasses (so either Student or a Teacher) then its Denoted by "Student AND Teacher COVERS Person".
* Overlap constraints: e.g. a Person can be both a Student AND a Teacher then its denoted by "Student OVERLAPS Teacher".

## Aggregation

Have a relationship with an entity and a complex set of entities and relationships. Similar to having a relationship of relationships.

Aggregate vs ternary relationship
* Aggregate relationship is a distinct relationship and has its own attributes.
* Each aggregate relationship set can in relationship with 0 or more of the aggregate relationship.

---
## Credits

* Images citation https://github.com/logicxd/til/issues/2
