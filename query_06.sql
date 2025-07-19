/*
 * WINDOW FUNCTION : WINDOW AGGREGATE FUNCTION [SUM, AVG, MIN, MAX]
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
SELECT *
FROM Customers
ORDER BY "score" DESC;


-- WINDOW FUNCTION WITH SUM(), AVG()
SELECT
	"id",
    "name",
    "country",
    "score",
    SUM("score") OVER (PARTITION BY "country" ORDER BY "name") total_score_per_country,
    AVG("score") OVER (PARTITION BY "country" ORDER BY "name") average_score_per_country
FROM Customers;