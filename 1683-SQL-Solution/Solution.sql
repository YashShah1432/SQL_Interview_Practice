# Write your MySQL query statement below
select
    case
        when length(content) > 15 then tweet_id
    end as tweet_id
from tweets
having tweet_id is not NULL