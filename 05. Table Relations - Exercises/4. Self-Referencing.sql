CREATE TABLE teachers
(
	teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name NVARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES teachers(teacher_id)
) AUTO_INCREMENT = 101;

INSERT INTO teachers (teacher_id, name, manager_id) VALUES
(101, 'John', NULL),
(105, 'Mark', 101),
(106, 'Greta', 101);

INSERT INTO teachers (teacher_id, name, manager_id) VALUES
(102, 'Maya', 106),
(103, 'Silvia', 106),
(104, 'Ted', 105);