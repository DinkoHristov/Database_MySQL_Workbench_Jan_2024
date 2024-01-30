SELECT sp.name, sp.manufacturer
	FROM spaceships AS sp
    JOIN journeys AS j ON sp.id = j.spaceship_id
    JOIN travel_cards AS tc ON j.id = tc.journey_id
    JOIN colonists AS c ON tc.colonist_id = c.id
    WHERE YEAR('2019-01-01') - YEAR(c.birth_date) < 30 AND tc.job_during_journey = 'Pilot'
    ORDER BY sp.name ASC;