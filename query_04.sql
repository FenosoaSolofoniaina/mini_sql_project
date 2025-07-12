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


-- REMOVE TABLE
DROP TABLE IF EXISTS Products ;

-- CREATE NEW TABLE
CREATE TABLE IF NOT EXISTS Products(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    "price" FLOAT DEFAULT 0
);


-- INSERT DATA
INSERT INTO
    Products("name", "price")
VALUES
    ('Bottle', 5),
    ('bag', 120),
    ('t-shirt', 85),
    ('jacket', 200),
    ('blue cap', 30),
    ('short', 50),
    ('glov', 10);


-- LOOK UP INSIDE THE TABLE
SELECT *
FROM Products
ORDER BY "price" DESC;


-- REMOVE TABLE
DROP TABLE IF EXISTS Orders ;

-- CREATE NEW TABLE
CREATE TABLE IF NOT EXISTS Orders(
    "id" SERIAL PRIMARY KEY,
    "customer_id" INT,
    "product_id" INT,
    "quantity" INT,
    "date" DATE
);


-- INSERT DATA
INSERT INTO
    Orders("customer_id", "product_id", "quantity", "date")
VALUES
    (1, 2, 3, '2022-06-26'),
    (2, 4, 10, '2023-07-12'),
    (3, 5, 1, '2023-11-01'),
    (4, 5, 2, '2024-04-21'),
    (5, 7, 8, '2024-09-16'),
    (3, 3, 5, '2024-12-02'),
    (2, 5, 22, '2025-03-11'),
    (5, 3, 3, '2025-08-29'),
    (1, 1, 5, '2025-06-26');


-- LOOK UP INSIDE THE TABLE
SELECT *
FROM Orders;
