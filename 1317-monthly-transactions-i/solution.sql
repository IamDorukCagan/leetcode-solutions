# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month, country, count(*) AS trans_count, sum(state = "approved") as approved_count, sum(amount) as trans_total_amount, sum(amount*(state= "approved")) as approved_total_amount
FROM Transactions
GROUP BY month, country
