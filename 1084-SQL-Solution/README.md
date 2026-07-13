# LeetCode 1084 - Sales Analysis III

## Problem
Find the products that were **sold only during the first quarter of 2019** (January 1, 2019 to March 31, 2019).

Return the product ID and product name.

## Approach
1. Join the `Product` and `Sales` tables using `product_id`.
2. Select products that have at least one sale during the first quarter of 2019.
3. Exclude products that have sales after March 31, 2019 or in any year other than 2019 using a `NOT IN` subquery.
4. Group the results by `product_id` to remove duplicate products.
5. Return the product ID and product name.

## SQL Concepts Used
- INNER JOIN
- Subquery
- NOT IN
- WHERE Clause
- GROUP BY
- Date Filtering (`BETWEEN`, `YEAR`)

## Time Complexity
O(n)

## Space Complexity
O(n)
