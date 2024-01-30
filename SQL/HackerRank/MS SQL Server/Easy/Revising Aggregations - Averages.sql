-- Revising Aggregations - Averages

-- Query the average population of all cities in CITY where District is California.

-- T-SQL Script
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';