SELECT *
	FROM property_offers
    WHERE YEAR(offer_datetime) = 2021
    ORDER BY price ASC
    LIMIT 10;