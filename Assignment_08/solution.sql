-- Assignment 8: Grouping Rows and Using HAVING
CREATE TABLE shop_sale (
    salesperson VARCHAR(20),
    region VARCHAR(20),
    amount INT
);

INSERT INTO shop_sale (salesperson, region, amount) VALUES
('Deepak', 'North', 12000),
('Pooja', 'South', 8500),
('Deepak', 'South', 9500),
('Lata', 'North', 11000);

-- Task 1
SELECT region, COUNT(*) AS num_sales
FROM shop_sale
GROUP BY region
ORDER BY region;

-- Task 2
SELECT region, SUM(amount) AS total
FROM shop_sale
GROUP BY region
ORDER BY region;

-- Task 3
SELECT region, SUM(amount) AS total
FROM shop_sale
GROUP BY region
HAVING SUM(amount) > 20000
ORDER BY region;
