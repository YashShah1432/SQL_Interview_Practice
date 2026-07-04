# LeetCode 196 - Delete Duplicate Emails

## Problem
Delete all duplicate email records from the `Person` table, keeping only the record with the smallest `id` for each email.

## Approach
1. Perform a self join on the `Person` table using the `email` column.
2. Match rows having the same email address.
3. Identify duplicate records by comparing their `id` values.
4. Delete the record with the larger `id`, keeping the smallest `id` for each email.

## SQL Concepts Used
- DELETE
- Self JOIN
- JOIN Condition (`ON`)
- Comparison Operator (`>`)

## Time Complexity
O(n²)

## Space Complexity
O(1)
