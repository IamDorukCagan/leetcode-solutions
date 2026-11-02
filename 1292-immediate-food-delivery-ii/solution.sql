# Write your MySQL query statement below
SELECT ROUND(100*SUM(order_date = customer_pref_delivery_date)/count(*),2) as immediate_percentage
FROM(
Select *, Rank() OVER (PARTITION BY customer_id ORDER BY order_date) as rk FROM Delivery
) AS table1
WHERE rk = 1
