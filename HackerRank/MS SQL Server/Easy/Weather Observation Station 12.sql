-- Weather Observation Station 12

-- Query the list of CITY names from STATION that 
-- do not start with vowels and do not end with vowels. 
-- Your result cannot contain duplicates.

-- T-SQL Script
SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY NOT LIKE '[AEIOU]%' AND CITY NOT LIKE '%[AEIOU]';