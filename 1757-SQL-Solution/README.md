# LeetCode 1757 - Recyclable and Low Fat Products

## Problem
Find the IDs of products that are both **low fat** and **recyclable**.

## Approach
1. Retrieve the `product_id` from the `Products` table.
2. Filter the records where `low_fats` is `'Y'`.
3. Further filter the records where `recyclable` is `'Y'`.
4. Return the IDs of products satisfying both conditions.

## SQL Concepts Used
- WHERE Clause
- Logical Operator (`AND`)
- Comparison Operator (`=`)

## Time Complexity
O(n)

## Space Complexity
O(1)
