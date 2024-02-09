SELECT id, content, rating, picture_url, published_at
	FROM reviews
    WHERE Content LIKE 'My%' AND LENGTH(Content) > 61
    ORDER BY rating DESC;