DELIMITER &&
CREATE PROCEDURE usp_get_employees_by_salary_level(IN levelOfSalary VARCHAR(50))
BEGIN
    SELECT e.first_name, e.last_name
    FROM employees AS e
    WHERE e.salary < 30000 AND levelOfSalary = 'low'
        OR e.salary >= 30000 AND e.salary <= 50000 AND levelOfSalary = 'average'
        OR e.salary > 50000 AND levelOfSalary = 'high'
    ORDER BY e.first_name DESC, e.last_name DESC;
END &&