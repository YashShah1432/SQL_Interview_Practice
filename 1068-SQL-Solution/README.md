# LeetCode 1068 - Product Sales Analysis I

## Problem
Find the product name, year, and price for each sale.

## Approach
1. Join the `Sales` and `Product` tables using the `product_id` column.
2. Retrieve the product name from the `Product` table.
3. Retrieve the year and price from the `Sales` table.
4. Return the combined result.

## SQL Concepts Used
- INNER JOIN
- JOIN Condition (`ON`)

## Time Complexity
O(n)

## Space Complexity
O(1)
