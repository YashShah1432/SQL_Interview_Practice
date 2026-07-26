# LeetCode 1280 - Students and Examinations

## Problem
For every student and every subject, determine how many times the student attended an examination for that subject.

Return the student ID, student name, subject name, and the number of attended exams.

Order the results by `student_id` and `subject_name`.

## Approach
1. Generate every possible student-subject combination using a `CROSS JOIN`.
2. Perform a `LEFT JOIN` with the `Examinations` table to match examination records.
3. Count the number of matching examination records for each student-subject pair.
4. Use `COALESCE()` to ensure a count of `0` is returned when no examination records exist.
5. Return the results ordered by student ID and subject name.

## SQL Concepts Used
- CROSS JOIN
- LEFT JOIN
- Aggregate Function (`COUNT`)
- COALESCE()
- GROUP BY
- ORDER BY

## Time Complexity
O(S × Sub + E)

## Space Complexity
O(S × Sub)
