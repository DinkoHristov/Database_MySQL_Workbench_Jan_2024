CREATE DATABASE colonial_journey_management_system_db;
USE colonial_journey_management_system_db;

CREATE TABLE planets
(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE spaceports
(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    planet_id INT(11),
    FOREIGN KEY (planet_id) REFERENCES planets(id)
);

CREATE TABLE spaceships
(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    light_speed_rate INT(11) DEFAULT 0
);

CREATE TABLE colonists
(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    ucn CHAR(10) UNIQUE NOT NULL,
    birth_date DATE NOT NULL
);

CREATE TABLE journeys
(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    journey_start DATETIME NOT NULL,
    journey_end DATETIME NOT NULL,
    purpose ENUM('Medical', 'Technical', 'Educational', 'Military'),
    destination_spaceport_id INT(11),
    FOREIGN KEY (destination_spaceport_id) REFERENCES spaceports(id),
    spaceship_id INT(11),
    FOREIGN KEY (spaceship_id) REFERENCES spaceships(id)
);

CREATE TABLE travel_cards
(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    card_number CHAR(10) UNIQUE NOT NULL,
    job_during_journey ENUM('Pilot', 'Engineer', 'Trooper', 'Cleaner', 'Cook'),
    colonist_id INT(11),
    FOREIGN KEY (colonist_id) REFERENCES colonists(id),
    journey_id INT(11),
    FOREIGN KEY (journey_id) REFERENCES journeys(id)
);