-- Weather Observation Station 7

-- Query the list of CITY names ending with vowels (a, e, i, o, u) 
-- from STATION. Your result cannot contain duplicates.

-- T-SQL Script

SELECT DISTINCT(CITY) 
FROM STATION
WHERE CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U';