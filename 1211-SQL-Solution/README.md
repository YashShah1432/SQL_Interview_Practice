# LeetCode 1211 - Queries Quality and Percentage

## Problem
For each query, calculate:
- **Quality**: the average of `rating / position`.
- **Poor Query Percentage**: the percentage of queries with a rating less than `3`.

Return the results for each `query_name`.

## Approach
1. Group the records by `query_name`.
2. Calculate the average query quality using `AVG(rating / position)`.
3. Count the number of queries with a rating less than `3` using conditional aggregation.
4. Calculate the percentage of poor queries by dividing the poor query count by the total query count and multiplying by `100`.
5. Round both values to two decimal places.

## SQL Concepts Used
- GROUP BY
- Aggregate Functions (`AVG`, `COUNT`)
- CASE Expression
- Conditional Aggregation
- ROUND()

## Time Complexity
O(n)

## Space Complexity
O(1)
