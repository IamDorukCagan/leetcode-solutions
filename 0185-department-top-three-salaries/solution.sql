# Write your MySQL query statement below
select Department.name as Department, uv.name as Employee, uv.salary as Salary from(
Select id, name,salary, departmentId, dense_rank() over (partition by departmentId order by salary DESC) as rk_per_dep from Employee) as uv JOIN Department ON uv.departmentId = Department.id
where rk_per_dep <= 3
