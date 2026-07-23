# LeetCode 1393 - Capital Gain/Loss

## Problem
Calculate the capital gain or loss for each stock.

The capital gain/loss is calculated as:

**Total Selling Price − Total Buying Price**

Return the stock name and its capital gain or loss.

## Approach
1. Group all transactions by `stock_name`.
2. Calculate the total selling amount using conditional aggregation.
3. Calculate the total buying amount using conditional aggregation.
4. Subtract the total buying amount from the total selling amount to obtain the capital gain or loss.
5. Return the stock name along with the calculated value.

## SQL Concepts Used
- GROUP BY
- Aggregate Function (`SUM`)
- CASE Expression
- Conditional Aggregation

## Time Complexity
O(n)

## Space Complexity
O(1)
