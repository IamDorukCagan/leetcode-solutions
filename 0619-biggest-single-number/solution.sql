# Write your MySQL query statement below
select max(num) as num from(
select num, count(num) as cnt from MyNumbers
GROUP BY num) as num_w_cns
where cnt = 1
