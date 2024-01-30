UPDATE employees AS e
    JOIN departments AS d ON e.department_id = d.department_id
    SET e.salary = e.salary + e.salary * 0.12
    WHERE d.name = 'Engineering' OR
    d.name = 'Tool Design' OR
    d.name = 'Marketing' OR
    d.name = 'Information Services';
    
SELECT salary
	FROM employees;