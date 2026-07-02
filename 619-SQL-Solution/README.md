# LeetCode 619 - Biggest Single Number

## Problem
Find the largest number that appears **exactly once** in the `MyNumbers` table. If no such number exists, return `NULL`.

## Approach
1. Group the numbers by `num`.
2. Count the occurrences of each number using `COUNT()`.
3. Keep only the numbers that appear exactly once using the `HAVING` clause.
4. Find the largest unique number using the `MAX()` aggregate function.

## SQL Concepts Used
- Common Table Expression (CTE)
- GROUP BY
- Aggregate Functions (`COUNT`, `MAX`)
- HAVING Clause

## Time Complexity
O(n)

## Space Complexity
O(n)
