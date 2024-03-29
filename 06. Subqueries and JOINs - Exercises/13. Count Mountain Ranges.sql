SELECT c.country_code, COUNT(m.mountain_range) AS mountain_range
	FROM countries AS c
    JOIN mountains_countries AS mc ON c.country_code = mc.country_code
    JOIN mountains AS m ON mc.mountain_id = m.id
    WHERE c.country_code IN ('US', 'RU', 'BG')
    GROUP BY c.country_code
    ORDER BY COUNT(m.mountain_range) DESC;