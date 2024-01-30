DELIMITER &&
CREATE PROCEDURE udp_special_offer(first_name VARCHAR(50))
BEGIN
	UPDATE
		agents AS a
        JOIN property_offers AS po ON a.id = po.agent_id
        SET po.price = po.price - po.price * 0.10
        WHERE a.first_name = first_name;
END &&