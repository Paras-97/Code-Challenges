-- Revising Aggregations - The Count Function

-- Query a count of the number of cities in CITY having a Population larger than . 

-- T-SQL Script
SELECT COUNT(NAME) 
FROM CITY
WHERE POPULATION > 100000;