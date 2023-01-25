-- Draw the triangle 1
-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

-- * * * * * 
-- * * * * 
-- * * * 
-- * * 
-- *

-- Write a query to print the pattern P(20).

-- T-SQL Script
DECLARE @I INT;
SET @I = 20;
WHILE(@I>0)
BEGIN
    PRINT REPLICATE('* ', @I)
    SET @I=@I-1
END
