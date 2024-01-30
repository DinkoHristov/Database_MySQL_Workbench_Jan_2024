DELIMITER &&
CREATE PROCEDURE usp_calculate_future_value_for_account(IN given_id INT, IN interest_rate DECIMAL(18, 4))
BEGIN
	SELECT a.id, ah.first_name, ah.last_name, a.balance AS current_balance,
		ufn_calculate_future_value(a.balance, interest_rate, 5) AS balance_in_5_years
		FROM account_holders AS ah
        JOIN accounts AS a ON ah.id = a.account_holder_id
        WHERE a.id = given_id;
END && 

CALL usp_calculate_future_value_for_account(1, 0.1);