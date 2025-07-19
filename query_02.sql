/*
 * DML like : INSERTING INTO, UPDATE TABLE, DELETE FROM, TRUNCATE
*/


-- REMOVE TABLE
DROP TABLE IF EXISTS Customers ;

-- CREATE NEW TABLE
CREATE TABLE IF NOT EXISTS Customers(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(50),
    "country" VARCHAR(50) NOT NULL,
    "score" FLOAT
);


-- INSERT DATA
INSERT INTO
    Customers("name", "country", "score")
VALUES
    ('Maria', 'Germany', 350),
    ('George', 'UK', 750),
    ('Martin', 'Germany', 500),
    ('John', 'USA', 900),
    ('Peter', 'USA', 0);


-- LOOK UP INSIDE THE TABLE


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