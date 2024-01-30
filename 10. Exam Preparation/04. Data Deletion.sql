DELETE c
	FROM colonists AS c
    LEFT JOIN travel_cards AS tc ON c.id = tc.colonist_id
    LEFT JOIN journeys AS j ON tc.journey_id = j.id
    WHERE j.id IS NULL;