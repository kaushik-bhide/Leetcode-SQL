WITH CTE AS(SELECT id, student, LAG(student,1) OVER (ORDER BY id) AS previous_student, LEAD(student,1) OVER (ORDER BY id) AS later_student FROM Seat)

SELECT id,
CASE
WHEN id%2 != 0 AND later_student IS NULL THEN student
WHEN id%2 != 0 THEN later_student
ELSE previous_student
END AS 'student'
FROM CTE