WITH filter AS(SELECT sales_id
FROM Orders o
WHERE com_id = (SELECT com_id FROM Company WHERE name ='RED'))

SELECT s.name
FROM SalesPerson s
WHERE s.sales_id NOT IN (SELECT sales_id FROM filter)