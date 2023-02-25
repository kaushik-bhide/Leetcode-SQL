SELECT *
FROM
(SELECT DISTINCT u.name,SUM(t.amount) OVER(PARTITION BY t.account) AS BALANCE
FROM transactions t
JOIN users u
ON u.account = t.account)a
WHERE BALANCE > 10000