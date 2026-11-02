# Write your MySQL query statement below
select B.employee_id, B.name, count(*) as reports_count, round(avg(A.age)) as average_age from Employees A join Employees B on A.reports_to = B.employee_id
group by A.reports_to
order by B.employee_id

