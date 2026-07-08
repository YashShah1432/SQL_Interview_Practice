# Write your MySQL query statement below
WITH top_user AS (
    SELECT u.name AS results
    FROM Users u
    JOIN MovieRating mr
        ON u.user_id = mr.user_id
    GROUP BY u.user_id, u.name
    ORDER BY COUNT(*) DESC, u.name
    LIMIT 1
),
top_movie AS (
    SELECT m.title AS results
    FROM Movies m
    JOIN MovieRating mr
        ON m.movie_id = mr.movie_id
    WHERE YEAR(mr.created_at) = 2020
      AND MONTH(mr.created_at) = 2
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(mr.rating) DESC, m.title
    LIMIT 1
)

SELECT * FROM top_user
UNION ALL
SELECT * FROM top_movie;