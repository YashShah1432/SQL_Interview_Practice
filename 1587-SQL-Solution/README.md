# LeetCode 1587 - Bank Account Summary II

## Problem
Find the names of users whose account balance is **greater than 10000**.

The account balance is the sum of all transaction amounts for each account.

## Approach
1. Join the `Users` and `Transactions` tables using the `account` column.
2. Group the transactions by account.
3. Calculate the total balance for each account using the `SUM()` aggregate function.
4. Filter accounts with a balance greater than `10000` using the `HAVING` clause.
5. Return the user's name along with their account balance.

## SQL Concepts Used
- INNER JOIN
- Aggregate Function (`SUM`)
- GROUP BY
- HAVING Clause

## Time Complexity
O(n)

## Space Complexity
O(1)
