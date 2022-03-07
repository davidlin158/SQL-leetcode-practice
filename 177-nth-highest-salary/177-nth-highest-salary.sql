# create function

CREATE FUNCTION getNthHighestSalary(N INT) 
RETURNS INT
BEGIN
DECLARE M INT;
SET M=N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT distinct Salary FROM Employee ORDER BY Salary DESC LIMIT 1 offset m
  );
END

