# Write your MySQL query statement below
SELECT *
FROM Patients
WHERE REGEXP_LIKE(conditions, '(^D| D)IAB1')
# either start with d or start with ' ' then d