# LeetCode 3570 - Find Books with No Available Copies

## Problem
Find all books for which **all copies are currently borrowed**.

Return the book ID, title, author, genre, publication year, and the number of current borrowers.

Order the results by the number of current borrowers in descending order and then by title in ascending order.

## Approach
1. Join the `library_books` and `borrowing_records` tables using `book_id`.
2. Count the number of active borrowings by considering only records where `return_date` is `NULL`.
3. Store the current borrower count for each book in a CTE.
4. Compare the total number of copies with the current borrower count.
5. Return only the books whose available copies are zero.
6. Sort the results by the number of current borrowers and then by title.

## SQL Concepts Used
- Common Table Expression (CTE)
- INNER JOIN
- Aggregate Function (`COUNT`)
- GROUP BY
- NULL Handling (`IS NULL`)
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
