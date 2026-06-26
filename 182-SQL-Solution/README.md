# LeetCode 182 - Duplicate Emails

## Problem
Write a query to find all duplicate email addresses from the `Person` table.

## Approach
1. Group the records by the `email` column.
2. Count the occurrences of each email using `COUNT()`.
3. Store the grouped result in a Common Table Expression (CTE).
4. Filter the emails whose count is greater than 1.

## SQL Concepts Used
- Common Table Expression (CTE)
- GROUP BY
- COUNT()
- Filtering with WHERE

## Time Complexity
O(n)

## Space Complexity
O(n)
