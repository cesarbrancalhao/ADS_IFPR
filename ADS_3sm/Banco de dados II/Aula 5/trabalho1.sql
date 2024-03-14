/*
Faça consultas para os problemas abaixo:
1. Apresente a lista dos 10 clientes que mais gastaram em locações.
2. Descubra qual cidade possui:
  a. Mais clientes na locadora
  b. Maior número de locações
  c. Maior valor de locações
3. Qual loja possui mais filmes e maior número de exemplares.
4. Descubra quantos filmes existem por categoria.
5. Apresente categoria que gerou maior renda
*/

/* 1.  Apresente a lista dos 10 clientes que mais gastaram em locações. */
SELECT 
	initcap(first_name || ' ' || last_name) AS full_name,
	amount
FROM payment
INNER JOIN customer USING(customer_id)
ORDER BY amount DESC
LIMIT 10;

/* 2. Descubra qual cidade possui: */
-- a. Mais clientes na locadora.
SELECT
	city,
	COUNT(customer.customer_id) AS customers_num,
	SUM(rental_count) AS rental_num,
	SUM(rental_amount) AS rental_value
FROM city
INNER JOIN address ON address.city_id = city.city_id
INNER JOIN customer USING(address_id)
LEFT JOIN (
	SELECT
		customer_id,
		COUNT(rental_id) AS rental_count
	FROM rental
	GROUP BY customer_id
) AS rentals ON rentals.customer_id = customer.customer_id
LEFT JOIN (
	SELECT
		customer_id,
		SUM(amount) AS rental_amount
	FROM payment
	GROUP BY customer_id
) AS payments ON payments.customer_id = customer.customer_id
WHERE city.city_id = address.city_id
GROUP BY city.city_id ORDER BY customers_num DESC, rental_num DESC, rental_value DESC
LIMIT 20;

-- b Maior número de locações.
SELECT
	city,
	COUNT(customer.customer_id) AS customers_num,
	SUM(rental_count) AS rental_num,
	SUM(rental_amount) AS rental_value
FROM city
INNER JOIN address ON address.city_id = city.city_id
INNER JOIN customer USING(address_id)
LEFT JOIN (
	SELECT
		customer_id,
		COUNT(rental_id) AS rental_count
	FROM rental
	GROUP BY customer_id
) AS rentals ON rentals.customer_id = customer.customer_id
LEFT JOIN (
	SELECT
		customer_id,
		SUM(amount) AS rental_amount
	FROM payment
	GROUP BY customer_id
) AS payments ON payments.customer_id = customer.customer_id
WHERE city.city_id = address.city_id
GROUP BY city.city_id ORDER BY rental_num DESC, customers_num DESC, rental_value DESC
LIMIT 20;

-- c Maior valor de locações.
SELECT
	city,
	COUNT(customer.customer_id) AS customers_num,
	SUM(rental_count) AS rental_num,
	SUM(rental_amount) AS rental_value
FROM city
INNER JOIN address ON address.city_id = city.city_id
INNER JOIN customer USING(address_id)
LEFT JOIN (
	SELECT
		customer_id,
		COUNT(rental_id) AS rental_count
	FROM rental
	GROUP BY customer_id
) AS rentals ON rentals.customer_id = customer.customer_id
LEFT JOIN (
	SELECT
		customer_id,
		SUM(amount) AS rental_amount
	FROM payment
	GROUP BY customer_id
) AS payments ON payments.customer_id = customer.customer_id
WHERE city.city_id = address.city_id
GROUP BY city.city_id ORDER BY rental_value DESC, rental_num DESC, customers_num DESC
LIMIT 20;

/* 3. Qual loja possui mais filmes e maior número de exemplares. */
SELECT
	store.store_id,
	COUNT(DISTINCT film_id) AS film_num,
	SUM(inventory.inventory_id) AS inventory_num
FROM store
LEFT JOIN inventory ON inventory.store_id = store.store_id
GROUP BY store.store_id
ORDER BY film_num DESC, inventory_num DESC;

/* 4. Descubra quantos filmes existem por categoria. */
SELECT
	name,
	SUM(film_total) AS film_num
FROM category
LEFT JOIN (
	SELECT
		category_id,
		COUNT(film_id) AS film_total
	FROM film_category
	GROUP BY category_id
) AS films ON films.category_id = category.category_id
GROUP BY category.name
ORDER BY film_num DESC;

/* 5. Apresente categoria que gerou maior renda */
SELECT
	cat.name,
	SUM(payment.amount) as category_amount
FROM category AS cat
INNER JOIN film_category AS fc ON cat.category_id = fc.category_id
INNER JOIN inventory AS inv ON fc.film_id = inv.film_id
INNER JOIN rental AS ren ON inv.inventory_id = ren.inventory_id
INNER JOIN payment ON ren.rental_id = payment.rental_id
GROUP BY cat.name
ORDER BY category_amount DESC;
