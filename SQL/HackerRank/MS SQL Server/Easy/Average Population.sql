-- Average Population

-- Query the average population for all cities in CITY, rounded down to the nearest integer.

-- T-SQL Script
SELECT FLOOR(AVG(POPULATION))
FROM CITY;