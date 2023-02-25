SELECT num AS ConsecutiveNums
FROM
(SELECT num,LAG(num) OVER(ORDER BY id ASC) AS prev_num, LEAD(num) OVER(ORDER BY id ASC) AS next_num
FROM logs)a
WHERE prev_num = num AND next_num = num
GROUP BY 1