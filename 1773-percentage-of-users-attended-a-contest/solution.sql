# Write your MySQL query statement below
select contest_id, Round(100*count(*)/(SELECT count(user_id) FROM Users),2) as percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC
