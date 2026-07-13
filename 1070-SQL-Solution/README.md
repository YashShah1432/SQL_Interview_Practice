# LeetCode 1070 - Product Sales Analysis III

## Problem
Find the first year each product was sold along with its quantity and price in that year.

Return the product ID, first year, quantity, and price for each product.

## Approach
1. Find the earliest year each product was sold using the `MIN()` aggregate function.
2. Store the first sale year for every product in a derived table.
3. Join the derived table with the `Sales` table on both `product_id` and the first sale year.
4. Retrieve the quantity and price corresponding to the first sale year.

## SQL Concepts Used
- INNER JOIN
- Derived Table (Subquery)
- Aggregate Function (`MIN`)
- GROUP BY

## Time Complexity
O(n)

## Space Complexity
O(n)
