DELIMITER &&
CREATE PROCEDURE udp_graduate_all_students_by_year(year_started INT)
BEGIN 
	UPDATE students s
		JOIN students_courses AS sc ON s.id = sc.student_id
		JOIN courses AS c ON sc.course_id = c.id
        SET s.is_graduated = 1
        WHERE YEAR(start_date) = year_started;
END &&