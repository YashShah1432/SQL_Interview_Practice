# LeetCode 1341 - Movie Rating

## Problem
Find:
1. The user who has rated the greatest number of movies. If there is a tie, return the lexicographically smaller name.
2. The movie with the highest average rating in **February 2020**. If there is a tie, return the lexicographically smaller title.

Return both results in a single column named `results`.

## Approach
1. Count the number of movie ratings submitted by each user.
2. Sort by rating count in descending order and user name in ascending order to break ties.
3. Calculate the average movie rating for ratings given in February 2020.
4. Sort by average rating in descending order and movie title in ascending order to break ties.
5. Combine both results using `UNION ALL`.

## SQL Concepts Used
- Common Table Expression (CTE)
- INNER JOIN
- Aggregate Functions (`COUNT`, `AVG`)
- GROUP BY
- ORDER BY
- Date Functions (`YEAR`, `MONTH`)
- UNION ALL

## Time Complexity
O(n log n)

## Space Complexity
O(n)
