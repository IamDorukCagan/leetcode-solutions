# Write your MySQL query statement below
select activity_date as day, count(distinct user_id) as active_users from Activity
GROUP BY activity_date
HAVING ((MONTH(activity_date) = 7 and DAY(activity_date) <= 27) OR (MONTH(activity_date) = 6 and DAY(activity_date) > 27))
