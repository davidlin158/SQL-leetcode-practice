# Write your MySQL query statement below
select distinct Num as ConsecutiveNums
from Logs
where (Id + 1, Num) in (select * from Logs) and (Id + 2, Num) in (select * from Logs)
# id+ 1 and id+2 here is the consecutive means.