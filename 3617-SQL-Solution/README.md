# LeetCode 3617 - Find Students with Study Spiral Pattern

## Problem
Find students who follow the **Study Spiral Pattern**.

A student qualifies when:
- They study at least **3 different subjects** in a repeating cycle.
- The cycle repeats for at least **2 complete cycles**.
- There are no gaps of more than **2 days** between consecutive study sessions.
- The cycle length is the number of different subjects in the repeating pattern.
- Calculate the total study hours across all study sessions.

Return the student ID, student name, major, cycle length, and total study hours.

Order the results by:
1. Cycle length in descending order.
2. Total study hours in descending order.

## Approach
1. Use `ROW_NUMBER()` to assign a sequential position to every study session for each student.
2. Use `LEAD()` to find the next study session date.
3. Calculate each student's total sessions and total study hours.
4. Check that the gap between consecutive sessions never exceeds **2 days**.
5. Generate possible cycle lengths starting from `3`.
6. Keep only cycle lengths where at least **2 complete cycles** can fit into the student's sessions.
7. Compare each subject with the subject exactly `period` positions later to verify that the sequence repeats.
8. Count the distinct subjects in the first cycle and ensure that this count equals the cycle length.
9. Select the smallest valid cycle length for each student.
10. Join the result with student information and total study hours.
11. Sort by cycle length and total study hours in descending order.

## SQL Concepts Used
- Common Table Expression (CTE)
- Recursive CTE
- Window Functions (`ROW_NUMBER`, `LEAD`)
- Self JOIN
- LEFT JOIN
- COUNT()
- COUNT(DISTINCT)
- SUM()
- DATEDIFF()
- GROUP BY
- HAVING
- CASE Expression
- UNION ALL
- ORDER BY

## Time Complexity
O(n²) in the worst case because multiple possible cycle lengths are checked against the ordered study sessions.

## Space Complexity
O(n²) in the worst case due to the generated candidate periods and session comparisons.
