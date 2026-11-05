# Write your MySQL query statement below
(select name as results from MovieRating Join Users ON MovieRating.user_id = Users.user_id
group by MovieRating.user_id
order by count(*) desc, name asc limit 1)
UNION ALL
(select title from MovieRating Join Movies on Movies.movie_id = MovieRating.movie_id 
where MONTH(created_at) = 2 and year(created_at) = 2020
group by MovieRating.movie_id
order by AVG(rating) desc, title asc LIMIT 1)
