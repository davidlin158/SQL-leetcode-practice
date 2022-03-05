# Write your MySQL query statement below
#select 
#    employee_id, 
#    (case 
#        when count(department_id) = 1 then department_id
#        when primary_flag = 'Y' then department_id
#     end) as department_id
#from 
#    employee
#group by
#    employee_id

#run following query and you will get first row for employee_id = 4 which is for department_id = 2. Both case condition will be false means primary_flag is 'N' and count(employee_Id) is also 3 so default value NULL will be selected.

(SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y')
UNION
(SELECT employee_id, department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(department_id) = 1)