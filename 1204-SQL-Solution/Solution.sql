# Write your MySQL query statement below
with new_table as (
SELECT 
    person_name,
    SUM(weight) OVER (ORDER BY turn) AS cumulative_weight
FROM Queue
)
select
    person_name
from new_table
where cumulative_weight <= 1000
order by cumulative_weight desc
limit 1