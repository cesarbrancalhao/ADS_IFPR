/* 
In terminal:
  su postgres
  psql -U postgres -h localhost -W pagila < pagila-schema.sql
  psql -U postgres -h localhost -W pagila < pagila-data.sql
*/

SELECT * FROM film;
SELECT * FROM film_actor;
SELECT * FROM actor;
/* Which can be joined like: */
SELECT
	film_id,
	title,
	actor.actor_id,
	first_name,
	last_name
FROM film
INNER JOIN film_actor USING(film_id)
INNER JOIN actor ON actor.actor_id = film_actor.actor_id; 
/* actor.actor_id had to be specified due to ambiguity */

/* on an report query, the query can be exported like this: */
SELECT
	film_id,
	initcap(title) /* AS */ title, /* the title declaration can be implicit */
	actor_id,
	initcap(first_name || ' ' || last_name) AS full_name
FROM film
INNER JOIN film_actor USING(film_id)
INNER JOIN actor USING(actor_id);
/* U can use initcap() to make the first letter capslock in queries */

SELECT
	film_id,
	initcap(title) title,
  left(first_name, 5) || right(last_name, 5) AS nickname,
  length(first_name||last_name)+1 size_name,
	actor_id,
	initcap(first_name || ' ' || last_name) AS full_name
FROM film
INNER JOIN film_actor USING(film_id)
INNER JOIN actor USING(actor_id);

/* convert numbers */

SELECT pi()::numeric; /* pi */
SELECT scale(pi()::numeric); /* 14 */

