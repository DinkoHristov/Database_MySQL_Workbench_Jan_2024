DELETE f
	FROM flights AS f
    LEFT JOIN flights_passengers AS fp ON f.id = fp.flight_id
    LEFT JOIN passengers AS p ON fp.passenger_id = p.id
    WHERE p.id IS NULL; 