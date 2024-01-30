CREATE TABLE people
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name NVARCHAR(200) NOT NULL,
    picture BLOB(2),
    height DECIMAL(18, 2),
    weight DECIMAL(18, 2),
    gender ENUM('m', 'f') NOT NULL,
    birthdate DATETIME NOT NULL,
    biography TEXT
);

INSERT INTO people (name, picture, height, weight, gender, birthdate, biography) VALUES
('John Doe', NULL, 1.75, 70.5, 'm', '1990-01-15', 'John Doe is a fictional character.'),
('Jane Smith', NULL, 1.65, 55.2, 'f', '1985-05-22', 'Jane Smith is an imaginary person.'),
('Bob Johnson', NULL, 1.80, 80.0, 'm', '1982-11-30', 'Bob Johnson has a mysterious past.'),
('Alice Brown', NULL, 1.60, 60.8, 'f', '1995-03-10', 'Alice Brown is a talented artist.'),
('Charlie Wilson', NULL, 1.90, 95.3, 'm', '1978-09-05', 'Charlie Wilson is an adventurer.');