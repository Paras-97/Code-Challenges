/*
---------------------------- LEETCODE CHALLENGE -------------------------------------
----------------------------------- SQL 50 ------------------------------------------

585. Investments in 2016

Table: Insurance

+-------------+-------+
| Column Name | Type  |
+-------------+-------+
| pid         | int   |
| tiv_2015    | float |
| tiv_2016    | float |
| lat         | float |
| lon         | float |
+-------------+-------+
pid is the primary key (column with unique values) for this table.
Each row of this table contains information about one policy where:
pid is the policyholder's policy ID.
tiv_2015 is the total investment value in 2015 and tiv_2016 is the total investment value in 2016.
lat is the latitude of the policy holder's city. It's guaranteed that lat is not NULL.
lon is the longitude of the policy holder's city. It's guaranteed that lon is not NULL.
 

Write a solution to report the sum of all total investment values in 2016 tiv_2016, for all policyholders who:

have the same tiv_2015 value as one or more other policyholders, and
are not located in the same city as any other policyholder (i.e., the (lat, lon) attribute pairs must be unique).
Round tiv_2016 to two decimal places.

The result format is in the following example.

 

Example 1:

Input: 
Insurance table:
+-----+----------+----------+-----+-----+
| pid | tiv_2015 | tiv_2016 | lat | lon |
+-----+----------+----------+-----+-----+
| 1   | 10       | 5        | 10  | 10  |
| 2   | 20       | 20       | 20  | 20  |
| 3   | 10       | 30       | 20  | 20  |
| 4   | 10       | 40       | 40  | 40  |
+-----+----------+----------+-----+-----+
Output: 
+----------+
| tiv_2016 |
+----------+
| 45.00    |
+----------+
Explanation: 
The first record in the table, like the last record, meets both of the two criteria.
The tiv_2015 value 10 is the same as the third and fourth records, and its location is unique.

The second record does not meet any of the two criteria. Its tiv_2015 is not like any other policyholders and its location is the same as the third record, which makes the third record fail, too.
So, the result is the sum of tiv_2016 of the first and last record, which is 45.

*/


------------------- Solution -------------------------------

/*
------------------- Code Explanation -------------------------------
In this code I have used two CTE's.
First one returns the table data which has one or more tiv_2015 values similar to other rows, thereby fulfilling the first condition
Second CTE is responsible for grouping the table values using LAT, LON values and then select only the nes which has 1 as the count of PID's in that group, thereby satisfying second condition.

Finally we inner join the two CTE's using the LAT and LON values as they are UNIQUE for the solution.

*NOTE: There are plenty of areas to improve the code, open to suggestions*

*/

with CTE AS
(
    select distinct a.* from Insurance a, Insurance b
    where a.tiv_2015 = b.tiv_2015 and a.pid <> b.pid
), 
CTE2 AS
(
    select lat, lon from Insurance
    group by lat,lon
    having count(pid) = 1
)
Select cast(sum(a.tiv_2016) as DECIMAL(7,2)) as tiv_2016 from CTE a
INNER JOIN CTE2 b
ON a.lat = b.lat and a.lon = b.lon