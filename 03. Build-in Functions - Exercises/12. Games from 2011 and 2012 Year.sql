SELECT name, DATE_FORMAT(start, '%Y-%m-%d') AS start
	FROM games
    WHERE YEAR(start) IN(2011, 2012)
    ORDER BY start ASC, name ASC
    LIMIT 50;