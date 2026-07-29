# LeetCode 610 - Triangle Judgement

## Problem
Determine whether three side lengths can form a valid triangle.

A triangle is valid if the sum of any two sides is **greater than** the third side.

Return the side lengths along with `"Yes"` if they form a triangle, otherwise `"No"`.

## Approach
1. Read each row containing the three side lengths `x`, `y`, and `z`.
2. Apply the triangle inequality theorem:
   - `x + y > z`
   - `y + z > x`
   - `x + z > y`
3. If all three conditions are true, return `"Yes"`.
4. Otherwise, return `"No"`.

## SQL Concepts Used
- CASE Expression
- WHERE Logic (Conditional Evaluation)
- Comparison Operators
- Logical Operator (`AND`)

## Time Complexity
O(n)

## Space Complexity
O(1)
