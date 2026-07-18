# LeetCode 1527 - Patients With a Condition

## Problem
Find all patients who have a medical condition that starts with the prefix **`DIAB1`**.

The condition may appear:
- At the beginning of the `conditions` string, or
- After a space if multiple conditions are listed.

Return the patient ID, patient name, and conditions.

## Approach
1. Check if the `conditions` string starts with `DIAB1`.
2. Also check if `DIAB1` appears after a space, indicating it is one of multiple conditions.
3. Return the patient details for all matching records.

## SQL Concepts Used
- WHERE Clause
- LIKE Operator
- Wildcards (`%`)
- Logical Operator (`OR`)

## Time Complexity
O(n)

## Space Complexity
O(1)
