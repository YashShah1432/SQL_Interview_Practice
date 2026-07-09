# LeetCode 1164 - Product Price at a Given Date

## Problem
Find the price of each product on **2019-08-16**.

- If a product has a price change on or before **2019-08-16**, return its latest price.
- If a product has no price change before that date, its price is **10**.

## Approach
1. Filter all price changes that occurred on or before **2019-08-16**.
2. Use the `ROW_NUMBER()` window function to rank price changes by date in descending order for each product.
3. Keep only the latest price for each product (`rn = 1`).
4. Retrieve all distinct product IDs.
5. Perform a `LEFT JOIN` with the latest prices and assign a default price of `10` using `COALESCE()` for products with no previous price changes.

## SQL Concepts Used
- Common Table Expression (CTE)
- Window Function (`ROW_NUMBER`)
- PARTITION BY
- LEFT JOIN
- COALESCE()
- DISTINCT

## Time Complexity
O(n log n)

## Space Complexity
O(n)
