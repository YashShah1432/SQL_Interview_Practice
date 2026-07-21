# LeetCode 1251 - Average Selling Price

## Problem
Calculate the average selling price for each product.

The average selling price is calculated as:

**(Total Revenue ÷ Total Units Sold)**

If a product has no sales, its average selling price should be `0`.

Return the product ID and its average selling price rounded to two decimal places.

## Approach
1. Join the `Prices` and `UnitsSold` tables on `product_id`.
2. Match each sale with the correct price by ensuring the purchase date falls within the price's effective date range.
3. Calculate the total revenue using `price × units`.
4. Divide the total revenue by the total units sold to obtain the weighted average selling price.
5. Use `COALESCE()` to return `0` for products with no sales.
6. Round the result to two decimal places.

## SQL Concepts Used
- LEFT JOIN
- Aggregate Functions (`SUM`)
- COALESCE()
- ROUND()
- Date Filtering (`BETWEEN`)
- GROUP BY

## Time Complexity
O(n)

## Space Complexity
O(1)
