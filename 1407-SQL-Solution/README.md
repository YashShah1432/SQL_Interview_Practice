# LeetCode 1407 - Top Travellers

## Problem
Calculate the total distance travelled by each user.

If a user has not taken any rides, their travelled distance should be `0`.

Return the user's name and total travelled distance, ordered by travelled distance in descending order and then by name in ascending order.

## Approach
1. Perform a `LEFT JOIN` between the `Users` and `Rides` tables to include users with no rides.
2. Calculate the total distance travelled by each user using the `SUM()` aggregate function.
3. Use `COALESCE()` to replace `NULL` with `0` for users who have not travelled.
4. Group the results by user.
5. Sort the output by travelled distance in descending order and then by user name in ascending order.

## SQL Concepts Used
- LEFT JOIN
- Aggregate Function (`SUM`)
- COALESCE()
- GROUP BY
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
