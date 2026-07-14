# Write your MySQL query statement below
with new_table as (
select 
    user_id,
    reaction,
    row_number() over(partition by user_id order by count(reaction) desc) as dominant_reaction
from reactions
group by user_id, reaction
)
select 
    n.user_id, 
    n.reaction as dominant_reaction,
    round((count(
        case
            when n.reaction = r.reaction then r.reaction
        end)/count(r.reaction)),2) as reaction_ratio
from new_table n
join reactions r
on n.user_id = r.user_id
where n.dominant_reaction = 1
group by n.user_id
having count(distinct r.content_id) >= 5
and reaction_ratio >= 0.6
order by reaction_ratio desc, n.user_id;