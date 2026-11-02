SELECT ROUND(COUNT(*)/ (SELECT COUNT( distinct player_id) FROM Activity), 2) as fraction FROM Activity A JOIN 
(SELECT player_id, min(event_date) as first_login FROM Activity GROUP BY player_id) AS B ON A.player_id = B.player_id
where DATEDIFF(A.event_date, first_login) = 1
