-- Weather Observation Station 6

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) 
-- from STATION. Your result cannot contain duplicates.

-- T-SQL Script

SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';