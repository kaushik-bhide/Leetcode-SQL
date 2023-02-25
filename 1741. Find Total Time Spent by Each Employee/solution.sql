SELECT day,emp_id,SUM(new_time) AS total_time
FROM
(SELECT event_day AS day,emp_id,out_time - in_time AS new_time
FROM Employees)a
GROUP BY 1,2
ORDER BY 1