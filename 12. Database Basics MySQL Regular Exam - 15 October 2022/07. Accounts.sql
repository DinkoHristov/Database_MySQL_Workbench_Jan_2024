SELECT CONCAT(w.last_name, w.first_name, LENGTH(w.first_name), 'Restaurant') AS username,
	   REVERSE(SUBSTRING(w.email, 2, 12)) AS password
	FROM waiters AS w
    WHERE w.salary IS NOT NULL
    ORDER BY password DESC;