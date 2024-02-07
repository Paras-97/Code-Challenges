/*
---------------------------- LEETCODE CHALLENGE -------------------------------------
----------------------------------- SQL 50 ------------------------------------------

550. Game Play Analysis IV

Table: Activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+
(player_id, event_date) is the primary key (combination of columns with unique values) of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.
 

Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, then divide that number by the total number of players.

The result format is in the following example.

 

Example 1:

Input: 
Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+
Output: 
+-----------+
| fraction  |
+-----------+
| 0.33      |
+-----------+
Explanation: 
Only the player with id 1 logged back in after the first day he had logged in so the answer is 1/3 = 0.33

*/


------------------- Solution -------------------------------

/*
------------------- Code Explanation -------------------------------
In order to solve this problem we are using 3 CTE's and one subquerry.
Subquerry: It is used to partition the data by using player_id and sorting it by the event_date in ascending orders and then ranking them. 
			By this we get all the event_dates of a particular player and we give them a row_number()
			The idea behind this subquerry is to check if the event_date for the second row is just one day greater than the first row.
			
CTE: It is used to fetch only two rows of data for an individual player which has event date of his first and second game, thus the condition a.rn<3

CTE2: Counts the total player which matches the condition of 'logged in again on the day after the day they first logged in' and converts the value in decimal

CTE3: Counts the total number of players and convert the value in decimal

Finally in select statement we find the fraction of the players who matches the criteria
*/

WITH CTE AS 
(
    select * from (
    select player_id, event_date, row_number() over(partition by player_id order by event_date) as rn from Activity) a
    where a.rn<3
)
, CTE2 as (
SELECT
    cast(count(DISTINCT a.player_id) as decimal(7,2)) as count_player
    from
         CTE a, CTE b
        WHERE a.player_id = b.player_id
        and DATEADD(day, 1, a.event_date) = b.event_date
)
,CTE3 as(
    select 
        cast(count(DISTINCT player_id) as dec) as total_players
    FROM 
        Activity
)
select cast(cte2.count_player/cte3.total_players as decimal(7,2)) as fraction from CTE2, CTE3