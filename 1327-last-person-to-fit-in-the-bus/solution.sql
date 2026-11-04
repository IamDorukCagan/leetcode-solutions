# Write your MySQL query statement below
select person_name from(
select person_name, sum(weight) over (ORDER BY turn) as weight from Queue) as name_weight
where (weight <= 1000)
order by weight desc
limit 1
