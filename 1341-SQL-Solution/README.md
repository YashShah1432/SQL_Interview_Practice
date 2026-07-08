# LeetCode 1934 - Confirmation Rate

## Problem
Calculate the confirmation rate for each user.

The confirmation rate is defined as:

**Number of confirmed actions ÷ Total confirmation requests**

If a user has no confirmation requests, their confirmation rate should be `0.00`.

## Approach
1. Perform a `LEFT JOIN` between the `Signups` and `Confirmations` tables to include all users.
2. Count only the confirmed actions using a `CASE` expression inside `COUNT()`.
3. Count the total confirmation requests for each user.
4. Divide the confirmed count by the total request count.
5. Round the result to two decimal places and return the confirmation rate for each user.

## SQL Concepts Used
- LEFT JOIN
- Aggregate Function (`COUNT`)
- CASE Expression
- ROUND()
- GROUP BY

## Time Complexity
O(n)

## Space Complexity
O(1)
