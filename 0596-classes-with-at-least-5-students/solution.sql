# Write your MySQL query statement below
select class from (
select class, count(student) as cnt from Courses
GROUP BY class) as xD
where cnt >= 5
