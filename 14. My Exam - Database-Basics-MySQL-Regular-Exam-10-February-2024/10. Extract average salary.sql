DELIMITER &&
CREATE FUNCTION udf_average_salary_by_position_name (name VARCHAR(40))
RETURNS DECIMAL(19, 2) DETERMINISTIC
BEGIN
	DECLARE average_amount DECIMAL(19, 2);
    
    SET average_amount = (SELECT AVG(w.salary)
							FROM workers AS w
							JOIN positions AS p ON w.position_id = p.id
							WHERE p.name = name);
                            
	RETURN average_amount;
END &&
