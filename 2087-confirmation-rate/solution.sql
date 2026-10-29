# Write your MySQL query statement below
SELECT Signups.user_id, COALESCE(ROUND(confirmedcnt/(confirmedcnt+timeoutcnt),2),0) as confirmation_rate FROM Signups LEFT JOIN (
SELECT user_id,
SUM(CASE WHEN action = "timeout" THEN 1 ELSE 0 END) AS timeoutcnt,
SUM(CASE WHEN action = "confirmed" THEN 1 ELSE 0 END) AS confirmedcnt
FROM Confirmations
GROUP BY user_id
) as xD
ON Signups.user_id = xD.user_id
