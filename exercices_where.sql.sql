USE pizza_db;


-- Exercice 1 : Filtrer sur une condition simple avec WHERE
-- Rappel : WHERE permet de sélectionner uniquement les lignes
-- qui respectent une condition (exemple : prix supérieur à 50).
SELECT * FROM pizza_sales
WHERE total_price > 50;


-- Exercice 2 : Combiner plusieurs conditions avec AND
-- Rappel : AND vérifie que toutes les conditions sont vraies.
-- Exemple : Catégorie Veg ET taille Medium.
SELECT * FROM pizza_sales
WHERE pizza_category = 'Veg' AND pizza_size = 'Medium';


-- Exercice 3 : Utiliser OR pour plusieurs conditions possibles
-- Rappel : OR retourne les lignes où au moins une condition est vraie.
-- Exemple : Commandes faites le 2025-07-04 OU le 2025-07-05.
SELECT * FROM pizza_sales
WHERE order_date = '2025-07-04' OR order_date = '2025-07-05';



-- Exercice 4 : Filtrer avec une plage de valeurs (BETWEEN)
-- Rappel : BETWEEN … AND … vérifie qu’une valeur est comprise
-- entre deux bornes inclusives (10 et 15 ici).
SELECT * FROM pizza_sales
WHERE unit_price BETWEEN 10 AND 15;



-- Exercice 5 : Filtrer avec IN (plusieurs valeurs possibles)
-- Rappel : IN permet de vérifier si une valeur se trouve dans une liste.
-- Exemple : Catégories Veg ou Non-Veg.
SELECT * FROM pizza_sales
WHERE pizza_category IN ('Veg', 'Non-Veg');


-- Exercice 6 : Filtrer du texte partiel avec LIKE
-- Rappel : LIKE permet la recherche approximative avec % (joker).
-- Exemple : Nom contenant le mot commence par "M%".
SELECT * FROM pizza_sales
WHERE pizza_name_id LIKE 'M%';




-- Exercice 7 : Vérifier si une colonne est vide (NULL)
-- Rappel : IS NULL détecte les valeurs NULL (non remplies).
SELECT * FROM pizza_sales
WHERE pizza_ingredients IS NULL;




-- Exercice 8 : Combinaison complexe (AND + plusieurs conditions)
-- Rappel : On peut combiner plusieurs filtres avec AND.
-- Exemple : Catégorie Non-Veg, prix > 20 et taille XL.
SELECT * FROM pizza_sales
WHERE pizza_category = 'Non-Veg'
  AND total_price > 20
  AND pizza_size = 'XL';
  
  
  -- Exercice 9 : Filtrer avec une valeur différente (<> ou !=)
-- Rappel : <> signifie "différent de".
-- Exemple : Afficher toutes les pizzas qui NE sont PAS Veg.
SELECT * FROM pizza_sales
WHERE pizza_category <> 'Veg';


-- Exercice 10 : Filtrer avec une date après une certaine valeur
-- Rappel : On peut utiliser >, < sur les dates aussi.
-- Exemple : Afficher les ventes après le 2025-07-05.
SELECT * FROM pizza_sales
WHERE order_date > '2025-07-05';




  