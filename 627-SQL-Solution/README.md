# LeetCode 627 - Swap Sex

## Problem
Swap all `'m'` and `'f'` values in the `sex` column without using a temporary table.

## Approach
1. Update every row in the `Salary` table.
2. Use a `CASE` expression to check the current value of the `sex` column.
3. Replace `'m'` with `'f'` and `'f'` with `'m'`.
4. Update the table in a single query without using a temporary table.

## SQL Concepts Used
- UPDATE
- CASE Expression

## Time Complexity
O(n)

## Space Complexity
O(1)
