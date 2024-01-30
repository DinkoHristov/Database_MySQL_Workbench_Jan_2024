CREATE TABLE directors
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    director_name NVARCHAR(50) NOT NULL,
    notes TEXT
);

CREATE TABLE genres
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name NVARCHAR(50) NOT NULL,
    notes TEXT
);

CREATE TABLE categories
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    category_name NVARCHAR(50) NOT NULL,
    notes TEXT
);

CREATE TABLE movies
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title NVARCHAR(50) NOT NULL,
    director_id INT REFERENCES directors(id),
    copyright_year DATETIME,
    length INT,
    genre_id INT REFERENCES genres(id),
    category_id INT REFERENCES categories(id),
    rating INT,
    notes TEXT
);

INSERT INTO directors (director_name, notes) VALUES
('Director A', 'Note for Director A'),
('Director B', 'Note for Director B'),
('Director C', 'Note for Director C'),
('Director D', 'Note for Director D'),
('Director E', 'Note for Director E');

INSERT INTO genres (genre_name, notes) VALUES
('Action', 'Note for Action'),
('Drama', 'Note for Drama'),
('Comedy', 'Note for Comedy'),
('Science Fiction', 'Note for Sci-Fi'),
('Horror', 'Note for Horror');

INSERT INTO categories (category_name, notes) VALUES
('Adventure', 'Note for Adventure'),
('Romance', 'Note for Romance'),
('Thriller', 'Note for Thriller'),
('Fantasy', 'Note for Fantasy'),
('Mystery', 'Note for Mystery');

INSERT INTO movies (title, director_id, copyright_year, length, genre_id, category_id, rating, notes) VALUES
('Movie 1', 1, '2020-01-01', 120, 1, 1, 8.5, 'Note for Movie 1'),
('Movie 2', 2, '2018-01-01', 110, 2, 2, 7.9, 'Note for Movie 2'),
('Movie 3', 3, '2019-01-01', 95, 3, 3, 6.5, 'Note for Movie 3'),
('Movie 4', 4, '2021-01-01', 130, 4, 4, 9.0, 'Note for Movie 4'),
('Movie 5', 5, '2017-01-01', 105, 5, 5, 8.2, 'Note for Movie 5');