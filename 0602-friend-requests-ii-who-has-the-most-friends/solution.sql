# Write your MySQL query statement below
select col1 as id, count(*) as num from(
(select requester_id as col1 from RequestAccepted)
UNION ALL
(select accepter_id from RequestAccepted)
) as xD
GROUP BY col1 
ORDER BY count(*) desc limit 1
