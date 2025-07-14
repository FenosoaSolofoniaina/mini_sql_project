# mini_sql_project

Learn SQL from youtube channel
[SQL Full Course for Beginners (30 Hours) – From Zero to Hero](https://www.youtube.com/watch?v=SSKVgrwhzus)

## Exampke of code

``` SQL
CREATE TABLE IF NOT EXISTS Customers(
    "id" SERIAL PRIMARY KEY,
    "first_name" VARCHAR(50),
    "last_name" VARCHAR(50),
    "country" VARCHAR(50),
    "score" INTEGER
);


INSERT INTO Customers
("first_name", "last_name", "country", "score")
VALUES
('John', 'Doe', 'USA', 900),
('Maria', 'Vinchik', 'Germany', 150),
('Alicia', 'Leclerc', 'France', 400),
('Mili', 'Natou', NULL, 550);


SELECt *
FROM Customers;
```