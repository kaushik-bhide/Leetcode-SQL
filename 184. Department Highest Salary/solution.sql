SELECT Department,Employee,Salary
FROM
(SELECT d.name as Department, e.name AS Employee, e.salary AS Salary, RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS rnk
FROM employee e
JOIN department d
ON e.departmentId = d.id)temp
WHERE temp.rnk = 1