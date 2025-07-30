-- 1. Créer une base
--CREATE DATABASE pizza_db;
--USE pizza_db;

-- quelque amélioration
CREATE DATABASE IF NOT EXISTS pizza_db
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;
USE pizza_db;

-- 2. Créer la table
CREATE TABLE pizza_sales (
    pizza_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    pizza_name_id VARCHAR(40),
    quantity INT,
    order_date DATE,
    order_time TIME,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size VARCHAR(20),
    pizza_category VARCHAR(30),
    pizza_ingredients VARCHAR(255),
    pizza_name VARCHAR(100)
);



-- 3. Insérer 50 lignes variées
INSERT INTO pizza_sales (
    order_id, pizza_name_id, quantity, order_date, order_time,
    unit_price, total_price, pizza_size, pizza_category, pizza_ingredients, pizza_name
) VALUES
(1, 'MARG01', 2, '2025-07-01', '11:30:00', 12.50, 25.00, 'Medium', 'Veg', 'tomato, cheese, basil', 'Margherita'),
(2, 'PEPP01', 1, '2025-07-01', '12:10:00', 15.00, 15.00, 'Large', 'Non-Veg', 'pepperoni, cheese', 'Pepperoni'),
(3, 'BBQ01', 3, '2025-07-02', '14:20:00', 18.00, 54.00, 'XL', 'Non-Veg', 'chicken, BBQ sauce, onion', 'BBQ Chicken'),
(4, 'VEGG01', 1, '2025-07-02', '10:15:00', 10.00, 10.00, 'Small', 'Veg', 'bell pepper, olive, tomato', 'Veggie Delight'),
(5, 'HAWA01', 2, '2025-07-03', '15:00:00', 16.00, 32.00, 'Large', 'Non-Veg', 'ham, pineapple, cheese', 'Hawaiian'),
(6, 'CHEE01', 1, '2025-07-03', '09:30:00', 9.00, 9.00, 'Small', 'Veg', 'cheese, tomato sauce', 'Cheese Lovers'),
(7, 'SUPR01', 4, '2025-07-04', '18:45:00', 20.00, 80.00, 'XL', 'Non-Veg', 'pepperoni, sausage, mushroom', 'Supreme'),
(8, 'SPIN01', 2, '2025-07-04', '13:00:00', 14.00, 28.00, 'Medium', 'Veg', 'spinach, ricotta, garlic', 'Spinach Ricotta'),
(9, 'MEAT01', 3, '2025-07-05', '17:20:00', 19.00, 57.00, 'Large', 'Non-Veg', 'pepperoni, sausage, bacon', 'Meat Lovers'),
(10, 'FUNG01', 1, '2025-07-05', '11:50:00', 13.00, 13.00, 'Medium', 'Veg', 'mushroom, cheese, cream', 'Funghi'),
(11, 'TACO01', 2, '2025-07-06', '12:40:00', 17.00, 34.00, 'Large', 'Non-Veg', 'beef, cheese, jalapeno', 'Taco Fiesta'),
(12, 'BUFF01', 1, '2025-07-06', '19:20:00', 18.00, 18.00, 'Medium', 'Non-Veg', 'chicken, buffalo sauce', 'Buffalo Chicken'),
(13, 'MARG02', 3, '2025-07-07', '14:15:00', 12.50, 37.50, 'Medium', 'Veg', 'tomato, mozzarella, basil', 'Margherita Special'),
(14, 'FOUR01', 2, '2025-07-07', '10:50:00', 16.00, 32.00, 'Large', 'Veg', 'mozzarella, cheddar, parmesan, gorgonzola', 'Four Cheese'),
(15, 'BBQ02', 4, '2025-07-08', '16:05:00', 18.50, 74.00, 'XL', 'Non-Veg', 'BBQ chicken, onion, corn', 'Texas BBQ'),
(16, 'VEGG02', 1, '2025-07-08', '09:25:00', 10.50, 10.50, 'Small', 'Veg', 'zucchini, tomato, olive', 'Veg Garden'),
(17, 'MEAT02', 2, '2025-07-09', '13:35:00', 19.50, 39.00, 'Large', 'Non-Veg', 'beef, bacon, sausage', 'Carnivore'),
(18, 'HAWA02', 3, '2025-07-09', '20:00:00', 16.00, 48.00, 'Large', 'Non-Veg', 'ham, pineapple, mozzarella', 'Hawaiian Deluxe'),
(19, 'SPIN02', 2, '2025-07-10', '11:10:00', 14.00, 28.00, 'Medium', 'Veg', 'spinach, mushroom, feta', 'Spinach Delight'),
(20, 'SUPR02', 1, '2025-07-10', '15:50:00', 21.00, 21.00, 'XL', 'Non-Veg', 'sausage, pepperoni, bacon, olive', 'Mega Supreme'),
(21, 'CHEE02', 2, '2025-07-11', '18:00:00', 9.50, 19.00, 'Small', 'Veg', 'cheddar, mozzarella, tomato', 'Cheesy Fun'),
(22, 'TACO02', 3, '2025-07-11', '20:30:00', 17.50, 52.50, 'Large', 'Non-Veg', 'ground beef, onion, chili', 'Spicy Taco'),
(23, 'BUFF02', 1, '2025-07-12', '13:45:00', 18.00, 18.00, 'Medium', 'Non-Veg', 'buffalo chicken, cheese', 'Buffalo Classic'),
(24, 'FOUR02', 2, '2025-07-12', '09:55:00', 16.50, 33.00, 'Large', 'Veg', 'mozzarella, gouda, parmesan, ricotta', 'Four Cheese Deluxe'),
(25, 'BBQ03', 3, '2025-07-13', '12:20:00', 19.00, 57.00, 'XL', 'Non-Veg', 'BBQ chicken, corn, pepper', 'Smokey BBQ'),
(26, 'VEGG03', 1, '2025-07-13', '16:45:00', 11.00, 11.00, 'Small', 'Veg', 'tomato, capsicum, corn', 'Veggie Fiesta'),
(27, 'MEAT03', 2, '2025-07-14', '10:30:00', 20.00, 40.00, 'Large', 'Non-Veg', 'bacon, pepperoni, ham', 'Meat Feast'),
(28, 'HAWA03', 4, '2025-07-14', '18:20:00', 16.50, 66.00, 'Large', 'Non-Veg', 'pineapple, ham, cheese', 'Hawaiian King'),
(29, 'SPIN03', 1, '2025-07-15', '09:10:00', 14.50, 14.50, 'Medium', 'Veg', 'spinach, garlic, cream', 'Spinach Supreme'),
(30, 'SUPR03', 3, '2025-07-15', '14:55:00', 21.00, 63.00, 'XL', 'Non-Veg', 'pepperoni, sausage, olive', 'Super Supreme');
select * from pizza_db.pizza_sales;

