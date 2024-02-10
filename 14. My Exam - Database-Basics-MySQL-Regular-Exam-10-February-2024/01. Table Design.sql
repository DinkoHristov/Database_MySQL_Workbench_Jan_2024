CREATE DATABASE preserves_db;
USE preserves_db;

CREATE TABLE continents
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE countries
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) UNIQUE NOT NULL,
    country_code VARCHAR(10) UNIQUE NOT NULL,
    continent_id INT NOT NULL,
    FOREIGN KEY (continent_id) REFERENCES continents(id)
);

CREATE TABLE preserves
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) UNIQUE NOT NULL,
    latitude DECIMAL(9, 6),
    longitude DECIMAL(9, 6),
    area INT,
    type VARCHAR(20),
    established_on DATE
);

CREATE TABLE positions
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) UNIQUE NOT NULL,
    description TEXT,
    is_dangerous TINYINT(1) NOT NULL
);

CREATE TABLE workers
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    age INT,
    personal_number VARCHAR(20) UNIQUE NOT NULL,
    salary DECIMAL(19, 2),
    is_armed TINYINT(1) NOT NULL,
    start_date DATE,
    preserve_id INT,
    FOREIGN KEY (preserve_id) REFERENCES preserves(id),
    position_id INT,
    FOREIGN KEY (position_id) REFERENCES positions(id)
);

CREATE TABLE countries_preserves
(
	country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries(id),
    preserve_id INT,
    FOREIGN KEY (preserve_id) REFERENCES preserves(id)
);