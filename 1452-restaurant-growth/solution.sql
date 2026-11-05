# Write your MySQL query statement below
select visited_on, sum1 as amount, ROUND(avg1,2) as average_amount from (
select visited_on,sum(sm)over (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as sum1 , avg(sm) over (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as avg1, rank() over (order by visited_on) as rk from (
select customer_id, name, visited_on, sum(amount) as sm from Customer group by visited_on) as xc
) as woo
where rk >= 7
