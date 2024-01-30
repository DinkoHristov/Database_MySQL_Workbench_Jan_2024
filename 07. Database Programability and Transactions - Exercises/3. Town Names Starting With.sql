DELIMITER &&
CREATE PROCEDURE usp_get_towns_starting_with(IN townName VARCHAR(50))
BEGIN
	SELECT name AS town_name
		FROM towns
        WHERE name LIKE CONCAT(townName, '%')
        ORDER BY name ASC;
END &&