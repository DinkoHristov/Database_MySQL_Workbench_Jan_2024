DELIMITER &&
CREATE FUNCTION udf_count_flights_from_country(country VARCHAR(50))
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE flights_count INT;
    
	SET flights_count = (SELECT COUNT(f.id)
							FROM countries AS c
							JOIN flights AS f ON c.id = f.departure_country
							WHERE c.name = country);
                            
	RETURN flights_count;
END &&