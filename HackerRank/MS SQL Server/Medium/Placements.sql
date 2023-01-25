-- Placements

-- You are given three tables: Students, Friends and Packages. 
-- Students contains two columns: ID and Name. Friends contains 
-- two columns: ID and Friend_ID (ID of the ONLY best friend). 
-- Packages contains two columns: ID and Salary (offered salary 
-- in $ thousands per month).

-- T-SQL Script
SELECT T.NAME
FROM
(SELECT S1.ID,S1.NAME,P1.SALARY,F1.FRIEND_ID,S2.NAME AS FRIEND_NAME, P2.SALARY AS FRIEND_S
 FROM STUDENTS S1
 JOIN FRIENDS F1 ON S1.ID = F1.ID
 JOIN PACKAGES P1 ON S1.ID = P1.ID
 JOIN STUDENTS S2 ON F1.FRIEND_ID = S2.ID
 JOIN PACKAGES P2 ON S2.ID = P2.ID
) T
WHERE SALARY < FRIEND_S
ORDER BY FRIEND_S;