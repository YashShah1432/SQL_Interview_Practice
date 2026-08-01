# LeetCode 550 - Game Play Analysis IV

## Problem
Find the fraction of players who logged in **again on the day immediately after their first login**.

Return the fraction rounded to two decimal places.

## Approach
1. Find each player's first login date using `MIN(event_date)`.
2. Store the first login date for every player in a Common Table Expression (CTE).
3. Join the CTE with the `Activity` table to check whether the player logged in exactly one day after their first login.
4. Count the players who satisfy this condition.
5. Divide this count by the total number of distinct players.
6. Round the result to two decimal places.

## SQL Concepts Used
- Common Table Expression (CTE)
- INNER JOIN
- Aggregate Functions (`MIN`, `COUNT`)
- DATE_ADD()
- Scalar Subquery
- ROUND()

## Time Complexity
O(n)

## Space Complexity
O(n)
