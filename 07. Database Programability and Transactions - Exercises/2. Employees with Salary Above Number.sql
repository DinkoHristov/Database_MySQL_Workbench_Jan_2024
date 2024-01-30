DELIMITER &&
CREATE PROCEDURE usp_get_employees_salary_above(IN number DECIMAL(18, 4))
BEGIN
	SELECT first_name, last_name
		FROM employees
        WHERE salary >= number
        ORDER BY first_name ASC, last_name ASC, employee_id ASC;
END &&