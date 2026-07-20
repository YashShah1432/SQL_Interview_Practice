# LeetCode 3642 - Find Polarized Books

## Problem
Identify books that are **highly polarized** based on reader ratings.

A book qualifies if it:
- Has at least **5 reading sessions**.
- Has a **polarization score** of at least **0.60**.
- Has at least one rating of **4 or higher**.
- Has at least one rating of **2 or lower**.

Return the book ID, title, author, genre, pages, rating spread, and polarization score.

## Approach
1. Join the `books` and `reading_sessions` tables using `book_id`.
2. Calculate the rating spread by subtracting the minimum rating from the maximum rating.
3. Compute the polarization score as the proportion of ratings that are either **≤ 2** or **≥ 4**.
4. Filter books with at least five reading sessions, a polarization score of at least `0.60`, and both low and high ratings.
5. Return the qualifying books sorted by polarization score and title.

## SQL Concepts Used
- Common Table Expression (CTE)
- INNER JOIN
- Aggregate Functions (`COUNT`, `MAX`, `MIN`)
- CASE Expression
- Conditional Aggregation
- ROUND()
- GROUP BY
- HAVING Clause
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
