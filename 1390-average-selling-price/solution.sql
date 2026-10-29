# Write your MySQL query statement below
select pr.product_id, COALESCE(ROUND(sum(units*price)/sum(units),2),0) AS average_price
FROM Prices pr LEFT JOIN UnitsSold us ON pr.product_id = us.product_id AND us.purchase_date between pr.start_date and pr.end_date
GROUP BY product_id
