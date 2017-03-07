# SQL Commands

## View
A virtual table.
Not stored in the database as a table but it can be run to show values derived from other tables.

CREATE
```
CREATE VIEW ActiveSailors (sid, sname, rating) AS
SELECT S.sid, S.sname, S.rating FROM Sailors S WHERE EXISTS
(SELECT * FROM Reserves R WHERE R.sid = S.sid);
```

UPDATE
```
UPDATE ActiveSailors SET rating = 11 WHERE sid = 22;
```

## Grant
Specify permission/privileges.
