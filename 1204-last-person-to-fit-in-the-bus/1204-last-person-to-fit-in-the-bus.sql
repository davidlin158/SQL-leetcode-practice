# Write your MySQL query statement below
SELECT q1.person_name
FROM Queue q1 JOIN Queue q2 ON q1.turn >= q2.turn
GROUP BY q1.turn
HAVING SUM(q2.weight) <= 1000
ORDER BY SUM(q2.weight) DESC
LIMIT 1

#The steps:
#(1) Get cumulative sum weight using Join with condition q1.turn >= q2.turn and Group By q1.turn
#(2) Filter the groups with cum sum <=1000
#(3) Order by cum sum with Desc order, select the 1st.