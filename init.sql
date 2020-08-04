CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INT,
    height INT,
    city TEXT NOT NULL,
    favorite_color TEXT
);

INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES
('Bob', 52, 150, 'San Diego', 'Silver'),
('Gary', 32, 190, 'Portland', 'Purple'),
('Henry', 12, 100, 'Austin', 'Red'),
('Charlie', 22, 180, 'Ft. Lauderdale', 'Blue'),
('Heather', 40, 164, 'New Jersey', 'Pink');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age > 20 AND  age < 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'Red';

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person
WHERE favorite_color IN('Orange', 'Green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN('Purple', 'Yellow');

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name TEXT,
    product_price DECIMAL,
    quantity INT
);

INSERT INTO orders 
(person_id, product_name, product_price, quantity)
VALUES
(101, 'Tacos Al Pastor', 4.99, 2),
(102, 'Frijoles y Arroz', 3.29, 4),
(103, 'Sweet Pork Burrito', 5.59, 1),
(104, 'Platanos Fritos', 4.49, 6),
(105, 'Arroz con Guandules', 8.99, 5);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 105;

INSERT INTO artist 
(name)
VALUES
('Ryan Milne'),
('Austing'),
('Sam Chin');

SELECT * FROM artist 
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist 
ORDER BY name
LIMIT 5;

SELECT * FROM artist 
WHERE name LIKE 'Black%';

SELECT * FROM artist 
WHERE name LIKE '%Black%';

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT birth_date FROM employee
ORDER BY birth_date
LIMIT 1;

SELECT * FROM employee
WHERE reports_to = '2';

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice 
WHERE billing_state IN('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;