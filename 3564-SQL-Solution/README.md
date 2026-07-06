# LeetCode 3564 - Seasonal Sales Analysis

## Problem
For each season, identify the product category with the highest total quantity sold. If multiple categories have the same quantity, choose the one with the higher total revenue. If there is still a tie, select the category that comes first alphabetically.

Return the season, category, total quantity, and total revenue.

## Approach
1. Classify each sale into a season using a `CASE` expression based on the sale month.
2. Calculate the total quantity sold and total revenue for each category within each season.
3. Rank the categories within each season using `ROW_NUMBER()`.
4. Break ties by total revenue and then alphabetically by category.
5. Return the top-ranked category for each season.

## SQL Concepts Used
- Common Table Expression (CTE)
- CASE Expression
- Aggregate Functions (`SUM`)
- INNER JOIN
- Window Function (`ROW_NUMBER`)
- PARTITION BY
- ORDER BY

## Time Complexity
O(n log n)

## Space Complexity
O(n)
