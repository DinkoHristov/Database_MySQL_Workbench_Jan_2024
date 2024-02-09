DELETE c
	FROM customers AS c
    LEFT JOIN orders AS o ON c.Id = o.Customer_id
    WHERE o.Id IS NULL