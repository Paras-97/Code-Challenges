-- Population Density Difference

-- Query the difference between the maximum and minimum populations in CITY.

-- T-SQL Script
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;