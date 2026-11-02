# Write your MySQL query statement below
SELECT customer_id FROM(
SELECT customer_id, (count(distinct product_key) - (select count(product_key) from Product)) as cnt FROM Customer
GROUP BY customer_id) AS XD
where cnt = 0
