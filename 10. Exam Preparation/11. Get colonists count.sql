DELIMITER &&
CREATE FUNCTION udf_count_colonists_by_destination_planet (planet_name VARCHAR (30))
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE colonists_count INT;
    SET colonists_count = (SELECT COUNT(c.id)
		FROM planets AS p
        JOIN spaceports AS sp ON p.id = sp.planet_id
        JOIN journeys AS j ON sp.id = j.destination_spaceport_id
        JOIN travel_cards AS tc ON j.id = tc.journey_id
        JOIN colonists AS c ON tc.colonist_id = c.id
        WHERE p.name = planet_name);
        
        RETURN colonists_count;
END &&