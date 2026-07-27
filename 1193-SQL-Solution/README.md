# LeetCode 1193 - Monthly Transactions I

## Problem
For each **month** and **country**, calculate:
- Total number of transactions.
- Number of approved transactions.
- Total transaction amount.
- Total approved transaction amount.

Return the month, country, transaction count, approved transaction count, total transaction amount, and approved transaction amount.

## Approach
1. Extract the transaction month using `DATE_FORMAT()`.
2. Group transactions by month and country.
3. Count the total number of transactions using `COUNT(*)`.
4. Count approved transactions using conditional aggregation.
5. Calculate the total transaction amount using `SUM(amount)`.
6. Calculate the total approved transaction amount using conditional aggregation.
7. Return the aggregated results for each month-country combination.

## SQL Concepts Used
- GROUP BY
- Aggregate Functions (`COUNT`, `SUM`)
- CASE Expression
- Conditional Aggregation
- DATE_FORMAT()

## Time Complexity
O(n)

## Space Complexity
O(n)
