-- Weather Observation Station 6

-- Query the list of CITY names starting with vowels 
-- (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

-- SQL Script
SELECT DISTINCT(CITY)
FROM STATION
WHERE REGEXP_LIKE(CITY,'^[aeiou]');