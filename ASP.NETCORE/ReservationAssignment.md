```sql
CREATE DATABASE mydatabase;

CREATE TABLE someHouse (
	address VARCHAR(100) NOT NULL,
    number_of_bedrooms INT,
    number_of_bathrooms DECIMAL
);

CREATE TABLE person (
 	full_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    dob DATE NOT NULL
);

INSERT INTO someHouse (address, number_of_bedrooms, number_of_bathrooms)
VALUES ('3RD AVENUE', 2, 2);
VALUES ('1234 somewhere', 3, 1.5);

SELECT * from someHouse
SELECT address from someHouse
SELECT * from somehouse where (number_of_bedrooms >= 3 and number_of_bathrooms > 0) or address = '1234 somewhere'


-- part 2

CREATE TABLE student (
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    state varchar(2) not null
);

insert into student (first_name, last_name, state)
values
	('David', 'Lin', 'WA'),
    ('Aung', 'Moe', 'WA'),
    ('Aung', 'Moe', 'CA');



select * from student;

update student
set state = 'NY'
where first_name = 'Aung' and student_id = 3;

alter table student
add
	student_id  primary key

drop table student;

create table course (
	course_id serial primary key,
    course_name varchar(100) not null
)

alter table student
	add course_id int;
alter table student
    add constraint "fk-student-course_id" foreign key (course_id)
    references course(course_id);

insert into student (first_name, last_name, state, course_id)
values
	('John', 'Doe', 'WA', 1);

insert into course (course_name)
values ('Calculus'), ('Biology'), ('Rock Music');

select * from course;

select
	s.first_name,
    c.course_name
from student s
inner join course c on c.course_id = s.course_id





CREATE DATABASE mydatabase;

/*
Design a reservation system. There are 4 rooms: A, B, C, D.
Conditions:
- A person can reserve a room for the day.
- No more than one person can reserve the same room.
- One person cannot reserve multiple rooms.
*/

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


-- Test adding people to reserve the room.

/* 		Template for adding people into a room.
DECLARE my_date DATE := '10-17-2016';
DECLARE my_person_id INT := 1;
DECLARE my_room_id INT := 1;

INSERT INTO people_rooms (date_reserved, person_id, room_id)
SELECT
	my_date, my_person_id, my_room_id
WHERE NOT EXISTS (
 	SELECT * FROM people_rooms
    WHERE (my_date = date_reserved)
    AND ( (my_person_id = person_id) OR (my_room_id = room_id) )
);
*/


INSERT INTO people_rooms (date_reserved, person_id, room_id)
SELECT
	'10-19-2016', 1, 3
WHERE NOT EXISTS (
 	SELECT * FROM people_rooms
    WHERE (date_reserved = '10-19-2016')
    AND ( (1 = person_id) OR (3 = room_id) )
);

SELECT * FROM people_rooms;

-- Query for all rooms reserved by one person
SELECT p.first_name, r.room_name FROM people_rooms pr
RIGHT JOIN people p ON p.person_id = pr.person_id
JOIN rooms r ON r.room_id = pr.room_id
WHERE 1 = pr.person_id;

-- Returns everything in the left table, and matching records on the right side.
SELECT * FROM people p
LEFT JOIN people_rooms pr ON p.person_id = pr.person_id
```
