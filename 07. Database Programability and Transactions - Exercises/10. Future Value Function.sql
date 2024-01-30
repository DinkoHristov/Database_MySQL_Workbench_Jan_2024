DELIMITER &&
CREATE FUNCTION ufn_calculate_future_value(sum DECIMAL(18, 4), interest DOUBLE, years INT)
RETURNS DECIMAL(18, 4) DETERMINISTIC
BEGIN
	RETURN sum * (POW(1 + interest, years));
END &&