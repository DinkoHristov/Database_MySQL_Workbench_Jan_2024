INSERT INTO courses(name, duration_hours, start_date, teacher_name, description, university_id)
	SELECT
		CONCAT(c.teacher_name, ' ', 'course'),
        LENGTH(c.name) / 10,
        ADDDATE(c.start_date, INTERVAL 5 DAY),
        REVERSE(c.teacher_name),
        CONCAT('Course ', c.teacher_name, REVERSE(c.description)),
        DAY(c.start_date)
		FROM courses AS c
		WHERE c.id <= 5;