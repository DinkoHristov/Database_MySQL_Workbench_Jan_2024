SELECT user_name,
	SUBSTRING(email, POSITION('@' IN email) + 1, LENGTH(email)) AS 'email provider'
	FROM users
    ORDER BY SUBSTRING(email, POSITION('@' IN email) + 1, LENGTH(email)) ASC, user_name ASC