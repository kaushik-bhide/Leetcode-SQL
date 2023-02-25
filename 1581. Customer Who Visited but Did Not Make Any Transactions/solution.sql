SELECT customer_id,COUNT(customer_id) AS count_no_trans
FROM visits
WHERE visit_id NOT IN (SELECT visit_id FROM transactions)
GROUP BY 1
ORDER BY 2 DESC