SELECT AVG(e.salary) AS min_average_salary
	FROM employees AS e
    JOIN departments AS d ON e.department_id = d.department_id
    GROUP BY d.department_id
    ORDER BY AVG(e.salary) ASC
    LIMIT 1;