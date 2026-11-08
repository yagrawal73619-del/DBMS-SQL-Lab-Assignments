-- Assignment 2: Updating and Deleting Rows
CREATE TABLE stock (
    item_code INT,
    item_name VARCHAR(30),
    quantity INT
);

INSERT INTO stock (item_code, item_name, quantity) VALUES
(1, 'Notebook', 50),
(2, 'Pen', 120),
(3, 'Bag', 0);

-- Task 1
UPDATE stock SET quantity = 80 WHERE item_code = 1;
SELECT * FROM stock;

-- Task 2
UPDATE stock SET quantity = quantity + 10 WHERE item_code = 2;
SELECT * FROM stock;

-- Task 3
DELETE FROM stock WHERE item_code = 3;
SELECT * FROM stock;
