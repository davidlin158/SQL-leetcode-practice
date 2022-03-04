# Write your MySQL query statement below
#substring 1,1 means start 1 extract 1, 2 means extract start 2 and rest.
select user_id,concat(upper(substr(name,1,1)),lower(substr(name,2))) as name
from users order by 1