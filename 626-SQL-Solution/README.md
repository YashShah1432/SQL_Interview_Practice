# LeetCode 626 - Exchange Seats

## Problem
Swap the seat IDs of every two consecutive students.

- If the total number of students is odd, the last student's seat remains unchanged.
- Return the updated seat IDs along with the student names.

## Approach
1. Use a `CASE` expression to determine the new seat ID.
2. If the seat ID is odd and not the last seat, increment it by `1`.
3. If the seat ID is even, decrement it by `1`.
4. If the seat ID is the last odd seat, leave it unchanged.
5. Sort the final result by the updated seat ID.

## SQL Concepts Used
- CASE Expression
- Conditional Logic
- Scalar Subquery (`MAX`)
- ORDER BY
- Modulo Operator (`%`)

## Time Complexity
O(n)

## Space Complexity
O(1)
