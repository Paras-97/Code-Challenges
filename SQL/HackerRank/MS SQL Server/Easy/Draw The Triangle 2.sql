-- Draw The Triangle 2

-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
-- * 
-- * * 
-- * * * 
-- * * * * 
-- * * * * *

-- T-SQL Script
DECLARE @i INT = 1
WHILE (@i <= 20) 
BEGIN
   PRINT REPLICATE('* ', @i) 
   SET @i = @i + 1
END;