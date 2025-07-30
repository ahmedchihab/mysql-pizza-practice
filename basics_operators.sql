/* =========================================================
   RÉCAPITULATIF DES CARACTÈRES ET OPÉRATEURS EN SQL
   =========================================================

1. Point-virgule `;`
   - Sert à indiquer la fin d’une requête.
   - Obligatoire dans les fichiers avec plusieurs requêtes.

2. Égal `=`
   - Vérifie l’égalité entre deux valeurs.
   - Exemple : WHERE pizza_category = 'Veg';

3. Différent `<>` ou `!=`
   - Vérifie que deux valeurs sont différentes.
   - Exemple : WHERE pizza_category <> 'Veg';

4. Supérieur `>` et Inférieur `<`
   - Comparent des nombres ou des dates.
   - Exemple : WHERE total_price > 50;
   - Exemple : WHERE order_date < '2025-07-05';

5. Supérieur ou égal `>=` et Inférieur ou égal `<=`
   - Vérifient qu’une valeur est au-dessus ou au-dessous d’une limite, inclusivement.
   - Exemple : WHERE quantity >= 3;

6. Opérateur logique `AND`
   - Combine plusieurs conditions qui doivent toutes être vraies.
   - Exemple : WHERE pizza_category = 'Veg' AND total_price > 20;

7. Opérateur logique `OR`
   - Combine plusieurs conditions : au moins une doit être vraie.
   - Exemple : WHERE pizza_size = 'Medium' OR pizza_size = 'Large';

8. Négation `NOT`
   - Inverse une condition.
   - Exemple : WHERE NOT pizza_category = 'Veg';

9. `BETWEEN … AND …`
   - Vérifie si une valeur se trouve dans une plage inclusive.
   - Exemple : WHERE unit_price BETWEEN 10 AND 20;

10. `IN (…)`
    - Vérifie si une valeur appartient à une liste.
    - Exemple : WHERE pizza_category IN ('Veg', 'Non-Veg');

11. `LIKE` et caractère générique `%`
    - `LIKE` permet la recherche partielle de texte.
    - `%` remplace n’importe quelle suite de caractères.
    - Exemple : WHERE pizza_name LIKE '%Cheese%';

12. `IS NULL` et `IS NOT NULL`
    - Vérifie si une colonne est vide (ou non).
    - Exemple : WHERE pizza_ingredients IS NULL;

========================================================= */
