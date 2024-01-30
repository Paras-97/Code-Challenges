-- Weather Observation Station 17

-- Query the Western Longitude (LONG_W)where the smallest Northern
-- Latitude (LAT_N) in STATION is greater than . Round your answer 
-- to decimal places.

-- T-SQL Script
SELECT CAST(ROUND(LONG_W,4) AS DECIMAL(10,4))
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N>38.7780);