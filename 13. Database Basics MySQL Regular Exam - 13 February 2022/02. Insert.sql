INSERT INTO reviews (content, picture_url, published_at, rating)
SELECT LEFT(p.description, 15),
	   REVERSE(p.Name),
       '2010-10-10',
       p.Price / 8
	FROM products AS p
    WHERE p.id >= 5;