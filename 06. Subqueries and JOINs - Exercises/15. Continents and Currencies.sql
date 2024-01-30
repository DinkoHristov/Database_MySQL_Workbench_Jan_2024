SELECT k.continent_code, k.currency_code, k.count
	FROM(SELECT co.continent_code, cr.currency_code, COUNT(cr.currency_code) AS count,
	DENSE_RANK() OVER (PARTITION BY co.continent_code ORDER BY COUNT(cr.currency_code) DESC) AS myRank
	FROM continents AS co
    JOIN countries AS c ON co.continent_code = c.continent_code
    JOIN currencies AS cr ON c.currency_code = cr.currency_code
    GROUP BY co.continent_code, cr.currency_code
    ORDER BY co.continent_code ASC, cr.currency_code ASC
) AS k
WHERE k.count > 1 AND k.myRank = 1;