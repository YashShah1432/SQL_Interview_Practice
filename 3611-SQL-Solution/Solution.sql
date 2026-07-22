# Write your MySQL query statement below
with new_table as (
select
    e.employee_id,
    sum(duration_hours) as total_hours
from employees e
join meetings m
on e.employee_id = m.employee_id
group by m.employee_id, yearweek(m.meeting_date, 1)
having sum(duration_hours) > 20
)
select 
    n.employee_id,
    e.employee_name,
    e.department,
    count(total_hours) as meeting_heavy_weeks
from new_table n
join employees e
on n.employee_id = e.employee_id
group by e.employee_id
having count(total_hours) >= 2
order by meeting_heavy_weeks desc, e.employee_name