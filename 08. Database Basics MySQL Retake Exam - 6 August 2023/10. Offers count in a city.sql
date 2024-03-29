DELIMITER &&
CREATE FUNCTION udf_offers_from_city_name(cityName VARCHAR(50))
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE offers_count INT;
	SET offers_count = (SELECT COUNT(c.id) AS offers_count
		FROM cities AS c
        JOIN properties AS p ON c.id = p.city_id
        JOIN property_offers AS po ON p.id = po.property_id
        WHERE name = cityName);
	RETURN offers_count;
END &&