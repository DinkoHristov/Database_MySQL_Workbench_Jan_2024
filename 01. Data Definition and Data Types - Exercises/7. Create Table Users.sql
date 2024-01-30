CREATE TABLE users
(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username NVARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(26) NOT NULL,
    profile_picture LONGBLOB,
    last_login_time DATETIME,
    is_deleted BOOLEAN
);

INSERT INTO users (username, password, profile_picture, last_login_time, is_deleted) VALUES
('user1', 'password1', NULL, '2024-01-20 12:30:00', false),
('user2', 'password2', NULL, '2024-01-19 09:45:00', false),
('user3', 'password3', NULL, '2024-01-18 15:20:00', true),
('user4', 'password4', NULL, '2024-01-17 18:10:00', false),
('user5', 'password5', NULL, '2024-01-16 21:55:00', true);