# Database Design

## Conceptual Design

* What are the entities and relationships in the enterprise?
* What information about these entities and relationships should we store in the database?
* What are the integrity constraints or business rules that hold?
* A database schema in the ER Model can be represented pictorially.
* Can map an ER diagram into a relational schema.

(Insert picture of Entity and Relationship model)
Entities are represented by a rectangle shape.
Relationships are represented by a trapezoid shape.

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

## ISA ("is a") Hierarchies
