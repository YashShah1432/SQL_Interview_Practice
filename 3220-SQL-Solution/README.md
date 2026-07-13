# LeetCode 3220 - Odd and Even Transactions

## Problem
For each transaction date, calculate:
- The total amount of **odd-valued** transactions.
- The total amount of **even-valued** transactions.

Return the results ordered by `transaction_date`.

## Approach
1. Group the transactions by `transaction_date`.
2. Use conditional aggregation to calculate the sum of odd transaction amounts.
3. Use another conditional aggregation to calculate the sum of even transaction amounts.
4. Return the transaction date along with both sums.
5. Sort the result by `transaction_date`.

## SQL Concepts Used
- GROUP BY
- CASE Expression
- Aggregate Function (`SUM`)
- Modulo Operator (`%`)
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(d)
