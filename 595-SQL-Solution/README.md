# LeetCode 595 - Big Countries

## Problem
Find the names, population, and area of countries that are considered **big**.

A country is considered big if:
- Its area is at least **3,000,000**, or
- Its population is at least **25,000,000**.

## Approach
1. Retrieve the `name`, `population`, and `area` columns from the `World` table.
2. Filter countries whose area is at least `3,000,000`.
3. Also include countries whose population is at least `25,000,000`.
4. Return the matching records.

## SQL Concepts Used
- WHERE Clause
- Comparison Operators (`>=`)
- Logical Operator (`OR`)

## Time Complexity
O(n)

## Space Complexity
O(1)
