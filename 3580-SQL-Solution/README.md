# LeetCode 3580 - Find Consistently Improving Employees

## Problem
Find employees whose **last three performance reviews show continuous improvement**.

An employee qualifies if:
- They have at least 3 performance reviews.
- We consider their **three most recent reviews**.
- The ratings strictly increase from the oldest of these three reviews to the newest.
- The improvement score is the difference between the highest and lowest rating.

Return:
- `employee_id`
- `name`
- `improvement_score`

Order by improvement score descending, then employee name ascending.

## Approach

### 1. Find the latest three reviews

```sql
ROW_NUMBER() OVER (
    PARTITION BY employee_id
    ORDER BY review_date DESC
)
```

For every employee, the most recent review gets:

```text
rn = 1
```

the second most recent:

```text
rn = 2
```

and the third:

```text
rn = 3
```

Then:

```sql
WHERE rn <= 3
```

keeps only those three reviews.

### 2. Compare consecutive ratings

The `LAG()` function allows us to look at the previous rating:

```sql
LAG(rating) OVER (
    PARTITION BY employee_id
    ORDER BY review_date
)
```

The reviews are ordered from **oldest → newest**.

For example:

```text
Date          Rating    Previous Rating
----------------------------------------
Jan 1            3          NULL
Apr 1            4             3
Jul 1            5             4
```

Therefore:

```text
3 → 4 → 5
```

is continuously improving.

### 3. Detect non-improvement

This condition:

```sql
rating <= previous_rating
```

detects cases where the rating stayed the same or decreased.

For example:

```text
3 → 4 → 4
```

The final `4 <= 4` is true, so the employee is rejected.

Similarly:

```text
3 → 5 → 4
```

is rejected because `4 <= 5`.

### 4. Calculate improvement score

For a valid sequence such as:

```text
3 → 4 → 5
```

we calculate:

```sql
MAX(rating) - MIN(rating)
```

which gives:

```text
5 - 3 = 2
```

## SQL Concepts Used

- CTE (`WITH`)
- Window Functions
- `ROW_NUMBER()`
- `LAG()`
- `MAX()`
- `MIN()`
- `COUNT()`
- `CASE`
- `GROUP BY`
- `HAVING`
- `ORDER BY`

## Time Complexity

**O(n log n)**

The main cost comes from ordering reviews for the window functions.

## Space Complexity

**O(n)**

The CTEs and window functions require storage proportional to the number of reviews.
