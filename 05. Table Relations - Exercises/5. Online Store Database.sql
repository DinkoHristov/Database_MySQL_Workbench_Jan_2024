CREATE DATABASE online_store;
USE online_store;

CREATE TABLE cities
(
	city_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE customers
(
	customer_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    birthday DATE,
    city_id INT,
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

CREATE TABLE orders
(
	order_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    customer_id INT(11),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE item_types
(
	item_type_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE items
(
	item_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    item_type_id INT,
    FOREIGN KEY (item_type_id) REFERENCES item_types(item_type_id)
);

CREATE TABLE order_items
(
	order_id INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    item_id INT,
    FOREIGN KEY (item_id) REFERENCES items(item_id),
    CONSTRAINT pk_orders_items
    PRIMARY KEY (order_id, item_id)
);