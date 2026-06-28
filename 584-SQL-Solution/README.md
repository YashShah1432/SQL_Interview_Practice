# LeetCode 584 - Find Customer Referee

## Problem
Find the names of customers who are **not referred by the customer with `id = 2`**.

## Approach
1. Retrieve all customers from the `Customer` table.
2. Include customers whose `referee_id` is `NULL`.
3. Exclude customers whose `referee_id` is `2`.
4. Return the names of the remaining customers.

## SQL Concepts Used
- WHERE Clause
- NULL Handling (`IS NULL`)
- Comparison Operator (`!=`)
- Logical Operator (`OR`)

## Time Complexity
O(n)

## Space Complexity
O(1)
