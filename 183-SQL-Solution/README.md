# LeetCode 183 - Customers Who Never Order

## Problem
Find the names of customers who have never placed an order.

## Approach
1. Retrieve all customers from the `Customers` table.
2. Use a subquery to get the list of customer IDs present in the `Orders` table.
3. Filter customers whose IDs are not in that list using `NOT IN`.

## SQL Concepts Used
- Subquery
- NOT IN
- Filtering
- Primary Key & Foreign Key relationship

## Time Complexity
O(n + m)

## Space Complexity
O(m)
