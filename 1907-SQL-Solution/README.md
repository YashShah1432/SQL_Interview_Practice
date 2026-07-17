# LeetCode 1907 - Count Salary Categories

## Problem
Count the number of accounts in each salary category:
- **Low Salary:** Income less than `20000`
- **Average Salary:** Income between `20000` and `50000` (inclusive)
- **High Salary:** Income greater than `50000`

Return the category name and the corresponding account count.

## Approach
1. Count the accounts with income less than `20000` and label them as **Low Salary**.
2. Count the accounts with income between `20000` and `50000` (inclusive) and label them as **Average Salary**.
3. Count the accounts with income greater than `50000` and label them as **High Salary**.
4. Combine the three results using `UNION ALL` to return one row for each salary category.

## SQL Concepts Used
- Aggregate Function (`COUNT`)
- WHERE Clause
- BETWEEN
- UNION ALL
- Aliasing (`AS`)

## Time Complexity
O(n)

## Space Complexity
O(1)
