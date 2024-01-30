-- Weather Observation Station 8

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as
-- both their first and last characters. Your result cannot contain duplicates.

--  T-SQL Script
SELECT DISTINCT(CITY) 
FROM STATION 
WHERE 
(CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'O%' OR CITY LIKE 'I%' OR CITY LIKE 'U%') 
AND 
(CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U');

-- ------------------------------- OR -----------------------------------
SELECT distinct City FROM STATION WHERE City LIKE '[AEIOU]%[AEIOU]'