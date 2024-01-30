UPDATE 
	airplanes AS a
    JOIN flights AS f ON a.id = f.airplane_id
    JOIN countries AS c ON f.departure_country = c.id
SET f.airplane_id = f.airplane_id + 1
	WHERE c.name = 'Armenia';