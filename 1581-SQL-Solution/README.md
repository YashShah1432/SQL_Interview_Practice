# LeetCode 1581 - Customer Who Visited but Did Not Make Any Transactions

## Problem
Find the number of visits made by each customer where **no transaction** was recorded.

Return the customer ID and the count of such visits.

## Approach
1. Identify visits that do not have a matching transaction using a `NOT IN` subquery.
2. Group the remaining visits by `customer_id`.
3. Count the number of non-transaction visits for each customer.
4. Return the customer ID along with the visit count.

## SQL Concepts Used
- Subquery
- NOT IN
- GROUP BY
- Aggregate Function (`COUNT`)

## Time Complexity
O(n)

## Space Complexity
O(n)
