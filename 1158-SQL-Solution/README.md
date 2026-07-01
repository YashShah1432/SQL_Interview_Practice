# LeetCode 1158 - Market Analysis I

## Problem
Find each user's join date and the number of orders they placed in **2019**. Include users who did not place any orders in 2019.

## Approach
1. Perform a `LEFT JOIN` between the `Users` and `Orders` tables to include all users.
2. Use a `CASE` expression to count only the orders placed in the year `2019`.
3. Group the results by `user_id` and `join_date`.
4. Return each user's ID, join date, and the number of orders placed in 2019.

## SQL Concepts Used
- LEFT JOIN
- CASE Expression
- Aggregate Function (`COUNT`)
- GROUP BY
- Date Function (`YEAR`)

## Time Complexity
O(n)

## Space Complexity
O(u)
