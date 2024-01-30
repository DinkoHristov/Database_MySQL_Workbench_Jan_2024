DELIMITER &&
CREATE PROCEDURE udp_delay_flight(code VARCHAR(50))
BEGIN
	UPDATE flights
	SET 
    has_delay = 1,
    departure = ADDDATE(departure, INTERVAL 30 MINUTE)
    WHERE flight_code = code;
END &&