# Write your MySQL query statement below
select
    std.student_id,
    std.student_name,
    sub.subject_name,
    coalesce(count(e.student_id), 0) as attended_exams
from students std
cross join subjects sub
left join examinations e
on std.student_id = e.student_id
and sub.subject_name = e.subject_name
group by std.student_id, sub.subject_name
order by std.student_id, sub.subject_name