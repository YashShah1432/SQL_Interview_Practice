# LeetCode 1741 - Find Total Time Spent by Each Employee

## Problem
Calculate the total time each employee spent in the office for every day.

The total time is the sum of `(out_time - in_time)` for all attendance records of an employee on the same day.

Return the day, employee ID, and total time spent.

## Approach
1. Group the attendance records by `emp_id` and `event_day`.
2. Calculate the duration of each attendance record as `out_time - in_time`.
3. Sum the durations for each employee on each day.
4. Return the day, employee ID, and total time spent.

## SQL Concepts Used
- GROUP BY
- Aggregate Function (`SUM`)
- Column Aliasing (`AS`)

## Time Complexity
O(n)

## Space Complexity
O(1)
