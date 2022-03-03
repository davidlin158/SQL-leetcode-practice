# Write your MySQL query statement below
SELECT employee_id, 
    COUNT(team_id) OVER(PARTITION BY team_id) AS team_size
# window function is a powerful way for groupby no need another
FROM Employee
