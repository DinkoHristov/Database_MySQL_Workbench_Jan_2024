DELIMITER &&
CREATE FUNCTION udf_client_bill(full_name VARCHAR(50))
RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
	DECLARE products_total_price DECIMAL(10, 2);
    SET products_total_price = (SELECT SUM(p.price) AS bill
			FROM clients AS c
			JOIN orders_clients AS oc ON c.id = oc.client_id
			JOIN orders AS o ON oc.order_id = o.id
			JOIN orders_products AS op ON o.id = op.order_id
			JOIN products AS p ON op.product_id = p.id
			WHERE CONCAT(c.first_name, ' ', c.last_name) = full_name
            );
	
    RETURN products_total_price;
END &&