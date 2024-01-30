CREATE TABLE categories
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    category NVARCHAR(50) NOT NULL,
    daily_rate DECIMAL(18, 2) NOT NULL,
    weekly_rate DECIMAL(18, 2) NOT NULL,
    monthly_rate DECIMAL(18, 2) NOT NULL,
    weekend_rate DECIMAL(18, 2) NOT NULL
);

CREATE TABLE cars
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    plate_number NVARCHAR(50) NOT NULL,
    make NVARCHAR(50) NOT NULL,
    model NVARCHAR(50) NOT NULL,
    car_year INT NOT NULL,
    category_id INT REFERENCES categories(id),
    doors INT NOT NULL,
    picture LONGBLOB,
    car_condition NVARCHAR(50) NOT NULL,
    available BOOLEAN NOT NULL
);

CREATE TABLE employees
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    title NVARCHAR(50) NOT NULL,
    notes TEXT
);

CREATE TABLE customers
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    driver_licence_number NVARCHAR(50) NOT NULL,
    full_name NVARCHAR(100) NOT NULL,
    address NVARCHAR(100) NOT NULL,
    city NVARCHAR(50) NOT NULL,
    zip_code NVARCHAR(50) NOT NULL,
    notes TEXT
);

CREATE TABLE rental_orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT REFERENCES employees(id),
    customer_id INT REFERENCES customers(id),
    car_id INT REFERENCES cars(id),
    car_condition VARCHAR(50),
    tank_level DECIMAL(5, 2),
    kilometrage_start INT,
    kilometrage_end INT,
    total_kilometrage INT,
    start_date DATE,
    end_date DATE,
    total_days INT,
    rate_applied DECIMAL(8, 2),
    tax_rate DECIMAL(5, 2),
    order_status VARCHAR(50),
    notes TEXT
);

INSERT INTO categories (category, daily_rate, weekly_rate, monthly_rate, weekend_rate) VALUES
('Economy', 40.00, 250.00, 900.00, 100.00),
('Standard', 50.00, 300.00, 1200.00, 120.00),
('Luxury', 80.00, 500.00, 2000.00, 200.00);

INSERT INTO cars (plate_number, make, model, car_year, category_id, doors, car_condition, available) VALUES
('ABC123', 'Toyota', 'Camry', 2020, 1, 4, 'Excellent', true),
('XYZ789', 'Honda', 'Civic', 2019, 2, 4, 'Good', true),
('DEF456', 'BMW', 'X5', 2021, 3, 5, 'Excellent', true);

INSERT INTO employees (first_name, last_name, title, notes) VALUES
('John', 'Doe', 'Manager', 'Note for Manager'),
('Jane', 'Smith', 'Salesperson', 'Note for Salesperson'),
('Bob', 'Johnson', 'Driver', 'Note for Driver');

INSERT INTO customers (driver_licence_number, full_name, address, city, zip_code, notes) VALUES
('DL123456', 'Alice Brown', '123 Main St', 'CityA', '12345', 'Note for Alice Brown'),
('DL789012', 'Charlie Wilson', '456 Oak St', 'CityB', '56789', 'Note for Charlie Wilson'),
('DL345678', 'Eva Johnson', '789 Pine St', 'CityC', '98765', 'Note for Eva Johnson');

INSERT INTO rental_orders (employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status, notes) VALUES
(1, 1, 1, 'Good', 90.5, 5000, 5500, 500, '2024-01-10', '2024-01-15', 5, 250.00, 0.10, 'Completed', 'Note for Order 1'),
(2, 2, 2, 'Excellent', 95.0, 7000, 7500, 500, '2024-01-12', '2024-01-17', 5, 300.00, 0.12, 'Completed', 'Note for Order 2'),
(3, 3, 3, 'Good', 85.0, 6000, 6500, 500, '2024-01-14', '2024-01-19', 5, 500.00, 0.15, 'Completed', 'Note for Order 3');