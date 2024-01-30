-- Weather Observation Station 16

-- Query the smallest Northern Latitude (LAT_N) from STATION
-- that is greater than . Round your answer to decimal places.

-- T-SQL Script
SELECT CAST(ROUND(MIN(LAT_N),4) AS DECIMAL(10,4))
FROM STATION 
WHERE LAT_N > 38.7780;