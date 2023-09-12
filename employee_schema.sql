CREATE DATABASE Tutorial;
USE Tutorial;

CREATE TABLE customer (
	customer_id INT PRIMARY KEY,
	name VARCHAR (100),
	email VARCHAR (100),
	phone VARCHAR (100)
    );

INSERT INTO customer (customer_id, name, email, phone) VALUES (1, 'Solomon Damilare', 'damilare@gmail.com', 08132989833);
INSERT INTO customer (customer_id, name, email, phone) VALUES (2, 'John Doe', 'johndoe@gmail.com', 08035638363);
INSERT INTO customer (customer_id, name, email, phone) VALUES (3, 'Samson Jonah', 'jnsamson@gmail.com', 07038562099);
INSERT INTO customer (customer_id, name, email, phone) VALUES (4, 'Kieran Simbers', 'simberskie@gmail.com', 09021675429);
INSERT INTO customer (customer_id, name, email, phone) VALUES (5, 'Adeyeri Michael', 'mikeade24@gmail.com', 08132989833);


CREATE TABLE product (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    purchase_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

INSERT INTO product (purchase_id, customer_id, product_name, purchase_date) VALUES (1, 2, 'Milk', '2023-05-01');
INSERT INTO product (purchase_id, customer_id, product_name, purchase_date) VALUES (2, 4, 'Butter', '2023-05-02');
INSERT INTO product (purchase_id, customer_id, product_name, purchase_date) VALUES (3, 1, 'Milk', '2023-05-03');
INSERT INTO product (purchase_id, customer_id, product_name, purchase_date) VALUES (4, 5, 'Mayonaisse', '2023-05-04');
INSERT INTO product (purchase_id, customer_id, product_name, purchase_date) VALUES (5, 3, 'Margarine', '2023-05-05');

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    customer_id INT,
	purchase_id INT,
    product_name VARCHAR(100),
    rating INT,
    comment VARCHAR (100),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (purchase_id) REFERENCES product(purchase_id)
);

INSERT INTO Reviews (review_id, customer_id, purchase_id, product_name, rating, comment) VALUES (1, 2, 5, 'Milk', 4, 'Great product!');
INSERT INTO Reviews (review_id, customer_id, purchase_id, product_name, rating, comment) VALUES (2, 3, 1, 'Butter', 5, 'Excellent quality!');
INSERT INTO Reviews (review_id, customer_id, purchase_id, product_name, rating, comment) VALUES (3, 5, 4, 'Milk', 3, 'Could be better.');
INSERT INTO Reviews (review_id, customer_id, purchase_id, product_name, rating, comment) VALUES (4, 4, 2, 'Mayonaisse', 5, 'Not Good Enough!');
INSERT INTO Reviews (review_id, customer_id, purchase_id, product_name, rating, comment) VALUES (5, 1, 3, 'Margarine', 3, 'Could be better.');

