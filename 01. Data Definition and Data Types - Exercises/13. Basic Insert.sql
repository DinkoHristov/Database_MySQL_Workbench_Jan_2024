CREATE TABLE towns
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name NVARCHAR(50) NOT NULL
);

CREATE TABLE addresses
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    address_text NVARCHAR(50),
    town_id INT REFERENCES towns(id)
);

CREATE TABLE departments
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name NVARCHAR(50) NOT NULL
);

CREATE TABLE employees
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name NVARCHAR(50) NOT NULL,
    middle_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    job_title NVARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments(id),
    hire_date DATE,
    salary DECIMAL(18, 2),
    address_id INT REFERENCES addresses(id)
);

INSERT INTO towns(name) VALUES
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

INSERT INTO departments(name) VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');

INSERT INTO employees(first_name, middle_name, last_name, job_title, department_id, hire_date, salary) VALUES
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88);