# LeetCode 1050 - Actors and Directors Who Cooperated At Least Three Times

## Problem
Find all actor-director pairs who have worked together **at least three times**.

Return the actor ID and director ID.

## Approach
1. Partition the records by `actor_id` and `director_id`.
2. Assign a row number to each collaboration using the `ROW_NUMBER()` window function.
3. Keep only the rows where the collaboration count reaches at least `3`.
4. Group the results to return each qualifying actor-director pair only once.

## SQL Concepts Used
- Common Table Expression (CTE)
- Window Function (`ROW_NUMBER`)
- PARTITION BY
- GROUP BY

## Time Complexity
O(n log n)

## Space Complexity
O(n)
