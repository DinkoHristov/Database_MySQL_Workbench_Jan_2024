DELIMITER &&
CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS DECIMAL(19, 2) DETERMINISTIC
BEGIN
	DECLARE average_alumni_grade DECIMAL(19, 2);
	SET average_alumni_grade = (SELECT AVG(sc.grade)
		FROM courses AS c
        JOIN students_courses AS sc ON c.id = sc.course_id
        JOIN students AS s ON sc.student_id = s.id
        WHERE name = course_name AND s.is_graduated = 1);
        
	RETURN average_alumni_grade;
END &&