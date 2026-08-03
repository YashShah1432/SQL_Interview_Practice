# LeetCode 1045 - Customers Who Bought All Products

## Problem
Find the customers who have purchased **every product** listed in the `Product` table.

Return the customer IDs of those customers.

## Approach
1. Group the purchase records by `customer_id`.
2. Count the number of **distinct products** purchased by each customer.
3. Calculate the total number of products available using a subquery on the `Product` table.
4. Keep only those customers whose distinct product count matches the total number of products.
5. Return the qualifying customer IDs.

## SQL Concepts Used
- GROUP BY
- HAVING Clause
- Aggregate Function (`COUNT`)
- DISTINCT
- Scalar Subquery

## Time Complexity
O(n)

## Space Complexity
O(1)
