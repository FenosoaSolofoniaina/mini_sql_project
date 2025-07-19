/*
 * SUBQUERY
*/

-- METADATA
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS;


-- SUBQUERY
-- This is the main query
SELECT 
	*,
    CASE WHEN "score" > Average_score THEN 1
         WHEN "score" < Average_score THEN -1
         WHEN "score" = Average_score THEN 0
    END Upper_than_average
 FROM (
    -- This is a subquery
    SELECT
        *,
        AVG("score") OVER() Average_score
    FROm Customers
);