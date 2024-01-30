-- Weather Observation Station 14

-- Query the greatest value of the Northern Latitudes 
-- (LAT_N) from STATION that is less than . Truncate your 
-- answer to decimal places.

-- T-SQL Script
SELECT MAX(CAST(ROUND(LAT_N,4) AS DECIMAL(10,4)))
FROM STATION
WHERE LAT_N<137.2345;