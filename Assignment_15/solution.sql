-- Assignment 15: Indexes and Adding a Row
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    city VARCHAR(20)
);

INSERT INTO customer (customer_id, name, city) VALUES
(1, 'Kiran', 'Kochi'),
(2, 'Deepak', 'Delhi'),
(3, 'Lata', 'Mumbai'),
(4, 'Asha', 'Delhi');

-- Task 1
CREATE INDEX idx_city ON customer(city);

-- Task 2
SELECT name FROM customer
WHERE city = 'Delhi'
ORDER BY name;

-- Task 3
INSERT INTO customer (customer_id, name, city)
VALUES (5, 'Arjun', 'Pune');

SELECT * FROM customer ORDER BY customer_id;
