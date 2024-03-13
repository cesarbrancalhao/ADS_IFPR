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

/* 1 */
SELECT 
	initcap(first_name || ' ' || last_name) as full_name,
	amount
FROM payment
INNER JOIN customer USING(customer_id)
ORDER BY amount DESC
LIMIT 10;

/* 2 */
SELECT 
	city,
	COUNT(customer.customer_id) as customers_num,
	COUNT(rental.rental_id) as rental_num
FROM city
INNER JOIN address ON address.city_id = city.city_id
INNER JOIN customer USING(address_id)
INNER JOIN rental USING(customer_id)
WHERE city.city_id = address.city_id
GROUP BY city.city_id ORDER BY customers_num DESC;
