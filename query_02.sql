-- INSERTING RECORDS
INSERT INTO
    Customers
VALUES
    (6 'Anna', 'USA', NULL),
    (7, 'Sam', 'UK', 100);

SELECT *
FROM Customers;


-- INSERTING RECORDS
INSERT INTO
    Customers
VALUES
    (9, 'Andreas', 'Germany', NULL)

SELECT *
FROM Customers;


-- INSERTING RECORDS FROM ANOTHER TABLE
INSERT INTO
    Persons
SELECT 
    "id",
    "name",
    NULL,
    'Unknown'
FROM Customers;

SELECT *
FROM Persons;


-- UPDATING DATA
SELECT *
FROM Customers;

UPDATE Customers
SET "id"=8
WHERE "id"=9;

UPDATE Customers
SET "score" = 0
WHERE "score" IS NULL;

SELECT *
FROM Customers;


-- DELETING DATA
DELETE FROM Persons
WHERE "id" > 5;

TRUNCATE TABLE Persons;