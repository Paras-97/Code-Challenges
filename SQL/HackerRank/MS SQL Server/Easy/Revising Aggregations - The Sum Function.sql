-- Revising Aggregations - The Sum Function

-- Query the total population of all cities in CITY where District is California. 

-- T-SQL Script
SELECT SUM(POPULATION)
FROM CITY 
WHERE DISTRICT = 'California';