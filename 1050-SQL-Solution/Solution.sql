# Write your MySQL query statement below
with new_table as (
select
    actor_id,
    director_id,
    row_number() over(partition by actor_id, director_id) as rn
from actordirector
)
select 
    actor_id,
    director_id
from new_table
where rn >= 3
group by actor_id, director_id