# LeetCode 3705 - Find High-Value Customers

## Problem
Identify customers who satisfy all of the following conditions:

- Have placed at least **3 orders**.
- Have an average order rating of at least **4**.
- Have rated more than **50%** of their orders.
- Have placed at least **60%** of their orders during **peak hours** (11:00 AM–2:00 PM or 6:00 PM–9:00 PM).

Return the customer ID, total orders, peak-hour order percentage, and average rating.

## Approach
1. Group all orders by `customer_id`.
2. Calculate the total number of orders and the average order rating.
3. Count the number of orders that received a rating.
4. Calculate the percentage of orders placed during peak hours using conditional aggregation.
5. Filter customers who satisfy the minimum order count, average rating, and rating percentage criteria.
6. Keep only customers whose peak-hour order percentage is at least 60%.
7. Return the required details and sort the results by average rating and customer ID.

## SQL Concepts Used
- Common Table Expression (CTE)
- Aggregate Functions (`COUNT`, `AVG`)
- CASE Expression
- Conditional Aggregation
- HAVING Clause
- TIME()
- ROUND()
- GROUP BY
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
