# LeetCode 3764 - Most Frequent Course Pair

## Problem

Find the most frequently occurring **course transition pairs** among students who meet both of these conditions:

* They completed at least **5 courses**.
* Their average course rating is at least **4**.

For these qualifying students, consider each pair of consecutive courses based on `completion_date`.

Return:

* `first_course`
* `second_course`
* `transition_count`

Order the results by:

1. `transition_count` descending
2. `first_course` ascending
3. `second_course` ascending

## Approach

First, identify students who satisfy the required performance conditions:

```sql
SELECT user_id
FROM course_completions
GROUP BY user_id
HAVING COUNT(1) >= 5
   AND AVG(course_rating) >= 4
```

These students are stored in the `top_students` CTE.

Next, use `LEAD()` to find the course completed immediately after the current course:

```sql
LEAD(course_name) OVER (
    PARTITION BY user_id
    ORDER BY completion_date
)
```

For example, if a student completed:

```text
SQL → Python → Power BI → Excel
```

the `LEAD()` function produces:

```text
first_course    second_course
SQL             Python
Python          Power BI
Power BI        Excel
Excel           NULL
```

The final row is ignored because there is no next course.

Finally, group the consecutive course pairs and count how frequently each transition occurs.

## SQL Concepts Used

* Common Table Expressions (CTEs)
* `GROUP BY`
* `HAVING`
* `COUNT()`
* `AVG()`
* `LEAD()`
* Window Functions
* `PARTITION BY`
* `ORDER BY`
* `JOIN`
* Conditional Filtering

## Time Complexity

**O(n log n)**

The main cost comes from ordering course completions for the `LEAD()` window function.

## Space Complexity

**O(n)**

The CTEs and window function require space proportional to the number of course completion records.

## Key Learning

The most important concept in this problem is the **`LEAD()` window function**.

```sql
LEAD(course_name) OVER (
    PARTITION BY user_id
    ORDER BY completion_date
)
```

It is useful whenever we need to compare the current row with the **next event** in a sequence.

This pattern is commonly useful for analyzing:

* Course progression
* Customer journeys
* Product sequences
* User activity
* Purchase transitions
* Event sequences
