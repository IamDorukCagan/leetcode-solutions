# Write your MySQL query statement below
SELECT id as Id FROM(
SELECT *, 
LAG(temperature) OVER (ORDER BY recordDate) as tmp_prev_day,
LAG(recordDate) OVER (ORDER BY recordDate) as prev_date
from Weather) AS Table1
WHERE temperature > tmp_prev_day and DATEDIFF(recordDate, prev_date) = 1
