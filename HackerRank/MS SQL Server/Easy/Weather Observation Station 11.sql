-- Weather Observation Station 11

-- Query the list of CITY names from STATION that either 
-- do not start with vowels or do not end with vowels. 
-- Your result cannot contain duplicates.

-- T-SQL Script
SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY NOT LIKE '[AEIOU]%' OR CITY NOT LIKE '%[AEIOU]';