# LeetCode 1484 - Group Sold Products By The Date

## Problem
For each sell date, find:
- The number of **distinct products sold**.
- A comma-separated list of the distinct products sold in **lexicographical order**.

Return the results ordered by `sell_date`.

## Approach
1. Group the records by `sell_date`.
2. Count the number of distinct products sold on each date using `COUNT(DISTINCT ...)`.
3. Use `GROUP_CONCAT()` to combine the distinct product names into a comma-separated string.
4. Sort the product names alphabetically within `GROUP_CONCAT()`.
5. Return the results ordered by `sell_date`.

## SQL Concepts Used
- GROUP BY
- Aggregate Functions (`COUNT`, `GROUP_CONCAT`)
- DISTINCT
- ORDER BY

## Time Complexity
O(n log n)

## Space Complexity
O(n)
