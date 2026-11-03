# Write your MySQL query statement below
select distinct num as ConsecutiveNums  from(
select num, LAG(num) OVER(ORDER BY id) as l1, LAG(num,2) OVER(ORDER BY id) as l2 from Logs) as laggedetbl
where num = l1 and l1 = l2
