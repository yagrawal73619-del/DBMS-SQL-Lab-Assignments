-- Assignment 7: Using Aggregate Functions
CREATE TABLE sales (
    salesperson VARCHAR(20),
    region VARCHAR(20),
    amount INT
);

INSERT INTO sales (salesperson, region, amount) VALUES
('Deepak', 'North', 12000),
('Pooja', 'South', 8500),
('Deepak', 'South', 9500),
('Lata', 'North', 11000);

-- Task 1
SELECT COUNT(*) AS num_sales FROM sales;

-- Task 2
SELECT SUM(amount) AS total FROM sales;

-- Task 3
SELECT MAX(amount) AS highest FROM sales;
