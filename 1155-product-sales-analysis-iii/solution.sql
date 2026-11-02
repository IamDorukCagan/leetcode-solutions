# Write your MySQL query statement below
select product_id, year as first_year, quantity, price
from (
    SELECT *, RANK() OVER (PARTITION BY product_id ORDER BY year) as rnk from Sales
) as sales_tbl_w_rank
where rnk = 1
