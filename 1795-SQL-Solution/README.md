# LeetCode 1795 - Rearrange Products Table

## Problem
Transform the `Products` table from a **wide format** into a **long format**.

For each product, create one row for each store where the price is not `NULL`.

Return the product ID, store name, and price.

## Approach
1. Select the price for each store separately while assigning the corresponding store name.
2. Combine the three result sets using `UNION ALL`.
3. Filter out rows where the price is `NULL`.
4. Return the product ID, store name, and price.

## SQL Concepts Used
- Common Table Expression (CTE)
- UNION ALL
- NULL Handling (`IS NOT NULL`)
- Column Aliasing (`AS`)

## Time Complexity
O(n)

## Space Complexity
O(n)
