# LeetCode 1174 - Immediate Food Delivery II

## Problem
Calculate the percentage of customers whose **first order** was delivered on their preferred delivery date.

## Approach
1. Group the records by `customer_id`.
2. Compare the earliest `order_date` with the earliest `customer_pref_delivery_date` for each customer.
3. Keep only the customers whose first order was delivered on their preferred date.
4. Count these customers and divide by the total number of distinct customers.
5. Multiply by `100` and round the result to two decimal places.

## SQL Concepts Used
- Common Table Expression (CTE)
- GROUP BY
- Aggregate Functions (`MIN`, `COUNT`)
- HAVING Clause
- RIGHT JOIN
- ROUND()

## Time Complexity
O(n)

## Space Complexity
O(n)
