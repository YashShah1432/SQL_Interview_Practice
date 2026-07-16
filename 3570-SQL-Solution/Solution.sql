# Write your MySQL query statement below
with new_table as (
select
    l.book_id,
    l.title,
    l.author,
    l.genre,
    l.publication_year,
    l.total_copies,
    count(b.record_id) as current_borrowers
from library_books l
join borrowing_records b
on l.book_id = b.book_id
where b.return_date is NULL
group by l.book_id
)
select 
    n.book_id,
    n.title,
    n.author,
    n.genre,
    n.publication_year,
    current_borrowers 
from new_table n
where n.total_copies - n.current_borrowers = 0
order by n.current_borrowers desc, n.title;