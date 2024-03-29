SELECT peak_name, river_name,
	LOWER(CONCAT(LEFT(peak_name, LENGTH(peak_name) - 1), river_name)) AS mix
	FROM peaks, rivers
    WHERE RIGHT(peak_name, 1) = LEFT(river_name, 1)
    ORDER BY mix ASC;