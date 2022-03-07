# Write your MySQL query statement below
select
    Department,
    Employee,
    Salary
from 
(
    select
        d.Name Department,
        e.Name Employee,
        e.Salary,
    # assign a single rank column here
        rank() over (partition by e.DepartmentId order by e.Salary desc) rn
    from Employee e join Department d on e.DepartmentId = d.Id
) sub
where rn = 1# where rank is 1, which is all the highest salary