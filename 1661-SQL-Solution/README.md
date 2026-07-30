# LeetCode 1661 - Average Time of Process per Machine

## Problem
Calculate the average processing time for each machine.

The processing time for a process is:

**end timestamp − start timestamp**

Return the machine ID and the average processing time, rounded to three decimal places.

## Approach
1. Self-join the `Activity` table to pair each **start** event with its corresponding **end** event using `machine_id` and `process_id`.
2. Filter one table alias to contain only `start` records and the other to contain only `end` records.
3. Calculate the processing time for each process as `end timestamp - start timestamp`.
4. Compute the average processing time for each machine using `AVG()`.
5. Round the result to three decimal places.

## SQL Concepts Used
- Self JOIN
- WHERE Clause
- Aggregate Function (`AVG`)
- ROUND()
- GROUP BY

## Time Complexity
O(n)

## Space Complexity
O(1)
