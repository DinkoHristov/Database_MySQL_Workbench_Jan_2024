DELIMITER &&
CREATE FUNCTION ufn_get_salary_level(salary DECIMAL(18, 2))
RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
	DECLARE salaryLevel VARCHAR(50);
    IF salary < 30000
		THEN SET salaryLevel = 'Low';
	ELSEIF salary <= 50000
		THEN SET salaryLevel = 'Average';
    ELSE 
		SET salaryLevel = 'High';
	END IF;
    
	RETURN salaryLevel;
END &&