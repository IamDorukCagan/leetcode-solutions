# Write your MySQL query statement below
select(
select salary as sl from(
select id, salary, dense_rank() over (order by salary desc) as rk from Employee) as xD
where rk = 2 limit 1) as SecondHighestSalary
