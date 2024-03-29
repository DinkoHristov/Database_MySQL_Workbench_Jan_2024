DELIMITER &&
CREATE PROCEDURE usp_get_employees_from_town(IN town_name VARCHAR(50))
BEGIN
	SELECT first_name, last_name
		FROM employees AS e
        JOIN addresses AS a ON e.address_id = a.address_id
        JOIN towns AS t ON a.town_id = t.town_id
		WHERE t.name = town_name
        ORDER BY e.first_name ASC, e.last_name ASC, e.employee_id ASC;
END &&