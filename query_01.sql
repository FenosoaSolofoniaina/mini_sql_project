CREATE TABLE Persons(
    "id" INT NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "birth_date" DATE,
    "phone" VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY ("id")
);

SELECT * 
FROM Persons;