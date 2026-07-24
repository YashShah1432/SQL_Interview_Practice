# LeetCode 2356 - Number of Unique Subjects Taught by Each Teacher

## Problem
Find the number of **unique subjects** taught by each teacher.

Return the teacher ID and the count of distinct subjects they teach.

## Approach
1. Group the records by `teacher_id`.
2. Count the distinct `subject_id` values for each teacher using `COUNT(DISTINCT ...)`.
3. Return the teacher ID along with the number of unique subjects taught.

## SQL Concepts Used
- GROUP BY
- Aggregate Function (`COUNT`)
- DISTINCT

## Time Complexity
O(n)

## Space Complexity
O(n)
