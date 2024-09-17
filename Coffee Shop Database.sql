CREATE DATABASE CoffeeShopDB;
GO
USE CoffeeShopDB;
CREATE TABLE CoffeeShopSales (
    transaction_id INT,
    transaction_date DATE,
    transaction_time TIME,
    transaction_qty INT,
    store_id INT,
    store_location VARCHAR(255),
    product_id INT,
    unit_price DECIMAL(5,2),
    product_category VARCHAR(255),
    product_type VARCHAR(255),
    product_detail VARCHAR(255)
);
INSERT INTO CoffeeShopSales 
(transaction_id, transaction_date, transaction_time, transaction_qty, store_id, store_location, product_id, unit_price, product_category, product_type, product_detail) 
VALUES
(1, '2023-01-01', '07:06:11', 2, 5, 'Lower Manhattan', 32, 3.00, 'Coffee', 'Gourmet brewed coffee', 'Ethiopia Rg'),
(2, '2023-01-01', '07:08:56', 2, 5, 'Lower Manhattan', 57, 3.10, 'Tea', 'Brewed Chai tea', 'Spicy Eye Opener Chai Lg'),
(3, '2023-01-01', '07:14:04', 2, 5, 'Lower Manhattan', 59, 4.50, 'Drinking Chocolate', 'Hot chocolate', 'Dark chocolate Lg'),
(4, '2023-01-01', '07:20:24', 1, 5, 'Lower Manhattan', 22, 2.00, 'Coffee', 'Drip coffee', 'Our Old Time Diner Blend Sm'),
(5, '2023-01-01', '07:22:41', 2, 5, 'Lower Manhattan', 57, 3.10, 'Tea', 'Brewed Chai tea', 'Spicy Eye Opener Chai Lg'),
(6, '2023-01-01', '07:22:41', 1, 5, 'Lower Manhattan', 77, 3.00, 'Bakery', 'Scone', 'Oatmeal Scone'),
(7, '2023-01-01', '07:25:49', 1, 5, 'Lower Manhattan', 22, 2.00, 'Coffee', 'Drip coffee', 'Our Old Time Diner Blend Sm'),
(8, '2023-01-01', '07:33:34', 2, 5, 'Lower Manhattan', 28, 2.00, 'Coffee', 'Gourmet brewed coffee', 'Columbian Medium Roast Sm'),
(9, '2023-01-01', '07:39:13', 1, 5, 'Lower Manhattan', 39, 4.25, 'Coffee', 'Barista Espresso', 'Latte Rg'),
(10, '2023-01-01', '07:39:34', 2, 5, 'Lower Manhattan', 58, 3.50, 'Drinking Chocolate', 'Hot chocolate', 'Dark chocolate Rg');