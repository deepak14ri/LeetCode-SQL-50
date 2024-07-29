# Write your MySQL query statement below
(SELECT name AS results
FROM Users 
INNER JOIN MovieRating USING(user_id)
GROUP BY user_id
ORDER BY COUNT(rating) DESC, name
LIMIT 1)

UNION ALL

(SELECT title as results
FROM Movies 
INNER JOIN MovieRating USING(movie_id)
WHERE MONTH(created_at) = '02' AND YEAR(created_at) = '2020'
GROUP BY title
ORDER BY AVG(rating) DESC, title
LIMIT 1)