# Write your MySQL query statement below
select s.id, s.name
from students s
left join departments d on s.department_id=d.id

# since join d, all the id that d doesn't have will be null.
where d.id is null
