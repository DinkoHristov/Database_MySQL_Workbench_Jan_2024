CREATE DATABASE online_store;
USE online_store;

CREATE TABLE brands
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE categories
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE reviews
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    content TEXT,
    rating DECIMAL(10, 2) NOT NULL,
    picture_url VARCHAR(80) NOT NULL,
    published_at DATETIME NOT NULL
);

CREATE TABLE products
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    price DECIMAL(19, 2) NOT NULL,
    quantity_in_stock INT,
    description TEXT,
    brand_id INT NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brands(id),
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    review_id INT,
    FOREIGN KEY (review_id) REFERENCES reviews(id)
);

CREATE TABLE customers
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone VARCHAR(30) UNIQUE NOT NULL,
    address VARCHAR(60) NOT NULL,
    discount_card BIT(1) NOT NULL DEFAULT FALSE
);

CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_datetime DATETIME NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE orders_products
(
	order_id INT,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES products(id)
);