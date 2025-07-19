/*
 * Handle NULL values
 * Make condition with CASE WHEN
*/

SELECT
    "id",
    "level_of_score",
    UPPER("level_of_score") AS up_level,
    NULLIF(TRIM("level_of_score"), '') AS process_1
FROM 
(
    SELECT
        "id",
        "first_name",
        "last_name",
        "score",
        CASE
            WHEN "score" > 600 THEN 'High'
            WHEN "score" > 300 THEN 'Medium'
            WHEN "score" > 0 THEN 'Low'
            ELSE ''
        END AS "level_of_score"
    FROM Customers
);