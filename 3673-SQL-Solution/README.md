# LeetCode 3673 - Find Zombie Sessions

## Problem

Find sessions that satisfy all of the following conditions:

* The session lasted at least **30 minutes**.
* The ratio of **clicks to scrolls** is less than `0.2`.
* The session contains **no purchases**.
* The session has at least **5 scroll events**.

Return the session ID, user ID, session duration in minutes, and scroll count.

Order the results by:

1. `scroll_count` in descending order.
2. `session_id` in ascending order.

## Approach

First, group all application events by `session_id`:

```sql
GROUP BY session_id
```

For each session, calculate the session duration using the first and last event timestamps:

```sql
TIMESTAMPDIFF(
    MINUTE,
    MIN(event_timestamp),
    MAX(event_timestamp)
)
```

This gives the total session duration in minutes.

Next, count the number of scroll events:

```sql
SUM(event_type = 'scroll')
```

In MySQL, the condition:

```sql
event_type = 'scroll'
```

returns `1` when true and `0` when false, so `SUM()` counts the matching events.

The same technique is used to count clicks and purchases in the `HAVING` clause.

For example, the session must satisfy:

```text
duration >= 30 minutes
clicks / scrolls < 0.2
purchases = 0
scrolls >= 5
```

Only sessions satisfying **all four conditions** are returned.

## SQL Concepts Used

* `GROUP BY`
* `HAVING`
* `MIN()`
* `MAX()`
* `SUM()`
* `TIMESTAMPDIFF()`
* Conditional Aggregation
* Arithmetic Operations
* `ORDER BY`

## Time Complexity

**O(n)**

The query processes the event records once for grouping and aggregation.

## Space Complexity

**O(n)**

Space is required for the grouped session results.

## Key Learning

A useful MySQL pattern demonstrated here is:

```sql
SUM(condition)
```

For example:

```sql
SUM(event_type = 'click')
```

acts like a conditional counter because MySQL evaluates the condition as `1` or `0`.

This allows multiple event types to be counted directly within the same aggregation query.
