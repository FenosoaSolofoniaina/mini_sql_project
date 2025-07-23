/*
 * CTE (Common Table Expression)
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


-- WINDOW FUNCTION : INTEGER RANKING
SELECT 
	*,
    "current_score" - "previous_score" AS "diff_score"
FROM (
  SELECT 
      "country",
      SUM("score") AS "current_score",
      LAG(SUM("score")) OVER(ORDER BY "country") AS "previous_score"
  FROM Customers
  GROUP BY "country"
)t;