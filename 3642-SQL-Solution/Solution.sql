# Write your MySQL query statement below
with new_table as (
select
    b.book_id,
    b.title,
    b.author,
    b.genre,
    b.pages,
    (max(session_rating) - min(session_rating)) as rating_spread,
    round((count(
        case
            when session_rating <= 2 or session_rating >= 4 then session_id
        end
    )/count(r.book_id)),2) as polarization_score
from books b
join reading_sessions r
on b.book_id = r.book_id
group by b.book_id
having count(r.book_id) >= 5
and polarization_score >= 0.6 
and max(session_rating) >= 4
and min(session_rating) <= 2
)
select * from new_table
order by polarization_score desc, title desc