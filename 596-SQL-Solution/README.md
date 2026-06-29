# LeetCode 596 - Classes More Than 5 Students

## Problem
Find all classes that have **at least five students**.

## Approach
1. Group the records by `class`.
2. Count the number of students in each class using `COUNT()`.
3. Filter the groups to keep only those with at least `5` students using the `HAVING` clause.
4. Return the class names.

## SQL Concepts Used
- GROUP BY
- Aggregate Function (`COUNT`)
- HAVING Clause

## Time Complexity
O(n)

## Space Complexity
O(c)
