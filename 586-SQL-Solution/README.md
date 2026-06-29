# LeetCode 586 - Customer Placing the Largest Number of Orders

## Problem
Find the customer who has placed the highest number of orders.

## Approach
1. Group the records by `customer_number`.
2. Count the number of orders placed by each customer using `COUNT()`.
3. Sort the customers in descending order based on the order count.
4. Return the customer with the highest number of orders using `LIMIT 1`.

## SQL Concepts Used
- GROUP BY
- Aggregate Function (`COUNT`)
- ORDER BY
- LIMIT

## Time Complexity
O(n log n)

## Space Complexity
O(c)
