# LeetCode 1179 - Reformat Department Table

## Problem
Reformat the `Department` table so that each employee's monthly revenue is displayed in separate columns.

Return one row for each `id` with the revenue for each month from **January** to **December**.

## Approach
1. Group the records by `id`.
2. Use conditional aggregation with `CASE` to create a separate column for each month.
3. Sum the revenue for each month within the corresponding employee group.
4. Return one row per employee with monthly revenue values.

## SQL Concepts Used
- GROUP BY
- CASE Expression
- Aggregate Function (`SUM`)
- Conditional Aggregation

## Time Complexity
O(n)

## Space Complexity
O(1)
