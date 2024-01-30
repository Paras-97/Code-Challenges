-- Weather Observation Station 15

-- Query the Western Longitude (LONG_W) for the largest Northern Latitude
--  (LAT_N) in STATION that is less than . Round your answer to decimal places.

--  T-SQL Script
SELECT CAST(ROUND(LONG_W,4) AS DECIMAL(10,4)) 
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N<137.2345);