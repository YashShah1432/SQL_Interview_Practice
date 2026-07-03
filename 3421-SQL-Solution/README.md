# LeetCode 3421 - Find Students Who Improved

## Problem
Find the students who have shown improvement in a subject by comparing their latest exam score with their first exam score. Consider only students who have taken at least two exams in the same subject.

## Approach
1. Rank each student's exams within each subject by exam date in ascending and descending order using `ROW_NUMBER()`.
2. Identify the first and latest exam for every student and subject.
3. Join the first and latest exam records together.
4. Compare the latest score with the first score.
5. Return only the students whose latest score is higher than their first score.

## SQL Concepts Used
- Common Table Expression (CTE)
- Window Function (`ROW_NUMBER`)
- PARTITION BY
- INNER JOIN
- ORDER BY
- Filtering with `WHERE`

## Time Complexity
O(n log n)

## Space Complexity
O(n)
