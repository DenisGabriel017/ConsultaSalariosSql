SELECT e.id, e.name, AVG(s.value) AS avg_salary 
FROM employee e 
JOIN salary s ON e.id = s.employee_id
WHERE s.payment_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY e.id, e.name
ORDER BY avg_salary DESC
LIMIT 3;