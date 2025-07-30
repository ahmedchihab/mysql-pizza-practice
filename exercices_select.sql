USE pizza_db;


-- Exercice 1 : Afficher toutes les colonnes et toutes les lignes
SELECT * FROM pizza_sales;

-- Exercice 2 : Afficher uniquement order_id, pizza_name, quantity et total_price
SELECT order_id, pizza_name, quantity, total_price FROM pizza_sales;


-- Exercice 3 : Afficher les pizzas vendues dont la quantité est strictement supérieure à 2
SELECT * FROM pizza_sales WHERE quantity > 2;



-- Exercice 4 : Afficher les ventes réalisées le 2025-07-04
SELECT * FROM pizza_sales WHERE order_date = '2025-07-04';


-- Exercice 5 : Afficher les pizzas de taille XL
SELECT * FROM pizza_sales WHERE pizza_size = 'XL';


-- Exercice 6 : Afficher les ventes dont le total_price est supérieur à 50
SELECT * FROM pizza_sales WHERE total_price > 50;


-- Exercice 7 : Afficher le nombre total de pizzas vendues (somme des quantités)
SELECT SUM(quantity) AS total_pizzas_sold FROM pizza_sales;



-- Exercice 8 : Afficher le chiffre d’affaires total (somme des total_price)
SELECT SUM(total_price) AS total_revenue FROM pizza_sales;



-- Exercice 9 : Afficher le chiffre d’affaires total par catégorie de pizza
SELECT pizza_category, SUM(total_price) AS revenue_by_category
FROM pizza_sales
GROUP BY pizza_category;


-- Exercice 10 : Afficher la pizza la plus vendue en quantité (nom + quantité totale)
SELECT pizza_name, SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity DESC
LIMIT 1;


-- Exercice 11 : Afficher le nombre de commandes passées chaque jour
SELECT order_date, COUNT(DISTINCT order_id) AS number_of_orders
FROM pizza_sales
GROUP BY order_date
ORDER BY order_date;


-- Exercice 12 : Afficher les commandes triées par date puis par heure
SELECT * FROM pizza_sales
ORDER BY order_date, order_time;



-- Exercice 13 : Afficher les pizzas dont le prix unitaire est entre 10 et 15 euros
SELECT * FROM pizza_sales
WHERE unit_price BETWEEN 10 AND 15;


-- Exercice 14 : Afficher les pizzas dont le nom contient le mot "Cheese"
SELECT * FROM pizza_sales
WHERE pizza_name_id LIKE '%CHEE01%';

-- Exercice 15 : Afficher la moyenne du prix unitaire des pizzas vendues
SELECT AVG(unit_price) AS average_unit_price FROM pizza_sales;

