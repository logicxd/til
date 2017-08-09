# Database

A system to store data, and retrieve data. Two types to work with are Relational (ACID) and NoSQL (semi ACID)

ACID - Atomicity, consistency, isolation, durability. The data is guaranteed to return data correctly and successfully.

## Relational (ACID)

The data stored in the relational database are related to each other. Two sub-types:
* Operational: can run business. Need it everyday to run business day to day.  
* Data Warehouse: summary of the data. Not necessary to run the data.

### RDB Structure:
1. Column: similar to excel's columns. These define the properties.
2. Records: similar to excel's rows. Actual data is stored in here.
3. Tables: columns and records make up tables.
4. Databases:

### Syntax and Commands
```sql
-- Table of all the people
CREATE TABLE people (
    person_id SERIAL PRIMARY KEY,
	  first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

INSERT INTO people (first_name, last_name)
VALUES ('Paul', 'Nguyen'), ('David', 'Moe'), ('Elmer', 'Morales');

SELECT * FROM people;
DROP TABLE people;
-- end people


-- Table of all the rooms
CREATE TABLE rooms (
    room_id SERIAL PRIMARY KEY,
	room_name VARCHAR(2) NOT NULL
);

INSERT INTO rooms (room_name)
VALUES ('A'), ('B'), ('C'), ('D');

SELECT * FROM rooms;
DROP TABLE rooms;
-- end rooms


-- Table of all the reservations
CREATE TABLE people_rooms (
    date_reserved DATE NOT NULL,
    person_id INT NOT NULL,
    room_id INT NOT NULL
);

ALTER TABLE people_rooms
	  ADD CONSTRAINT "fk-people_rooms-person_id" FOREIGN KEY (person_id)
	  REFERENCES people(person_id);
ALTER TABLE people_rooms
    ADD CONSTRAINT "fk-people_rooms-room_id" FOREIGN KEY (room_id)
    REFERENCES rooms(room_id);

SELECT * FROM people_rooms;
DROP TABLE people_rooms;
TRUNCATE TABLE people_rooms;
-- end reservations


-- Test adding into the table
INSERT INTO people_rooms (date_reserved, person_id, room_id)
SELECT
	'10-18-2016', 1, 3
WHERE NOT EXISTS (
 	SELECT * FROM people_rooms
    WHERE ('10-18-2016' = date_reserved)
    AND ( (1 = person_id) OR (3 = room_id) )
);

SELECT * FROM people_rooms WHERE 1 = person_id;
-- end test


-- Changing entries.
UPDATE <tablename>
SET <columnName3> = 'new value'
WHERE <columnName1> = ('something1') AND (<columnName2> = 'something2');
```

* All the variables are automatically translated into lower case.
* The key commands are not required to be uppercase.
* ';' is optional but recommended

## NoSQL (semi ACID)

One of the properties is compromised in order to _increase performance_. Four sub-types:
* Column (vertica):
* Documnt (mongodb):
* Key-Value (redis):
* Graph (neo4j):

## Other
* Port Number: like which door in a building.

## Conventions
### General
* The naming of the tables should be singular instead of plural. Ex: instead of People, it should be Person.

### PostgreSQL
* Uppercase/Lowercase doesn't matter, the program converts everything into lowercase.
* Using the underscore `_` sign to connect separate words is easier on the eyes.

### Microsoft SQL
* Upper-camel case for all the variables.
