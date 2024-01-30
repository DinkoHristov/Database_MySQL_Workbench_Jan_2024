SELECT tc.job_during_journey AS job_name
	FROM journeys AS j
    JOIN travel_cards AS tc ON j.id = tc.journey_id
    JOIN colonists AS c ON tc.colonist_id = c.id
    ORDER BY DATEDIFF(j.journey_end, j.journey_start) DESC
    LIMIT 1;