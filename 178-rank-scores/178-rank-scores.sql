# Write your MySQL query statement below
select 
    score,
    dense_rank() over (
       # u dont need to write partition 
        order by score desc) as 'rank'
from 
    scores
