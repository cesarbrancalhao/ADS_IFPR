SELECT
    payment.*
    , staff.first_name
    , staff.last_name
FROM 
    payment
INNER JOIN 
    staff USING (staff_id);
----

SELECT
    staff.staff_id
    , UPPER(staff.first_name || ' ' || staff.last_name) AS staff
    , SUM(payment.amount)
FROM 
    payment
INNER JOIN 
    staff USING (staff_id)
GROUP BY
    staff_id;
----

SELECT
    title,
    COUNT(title) AS title_count
FROM
    (
        SELECT
            film_id,
            title,
            release_year,
            first_name || ' ' || last_name AS actor
        FROM
            film
        INNER JOIN
            film_actor USING (film_id)
        INNER JOIN 
            actor USING (actor_id)
        WHERE
            title LIKE 'AM%'
    ) AS subquery
GROUP BY
    title
ORDER BY
    title;
----

SELECT *
FROM
    film
WHERE
    film_id IN
    (
        SELECT DISTINCT
            film_id
        FROM
            (
                SELECT
                    film_id,
                    title,
                    release_year,
                    first_name || ' ' || last_name AS actor
                FROM
                    film
                INNER JOIN
                    film_actor USING (film_id)
                INNER JOIN 
                    actor USING (actor_id)
                WHERE 
                    title LIKE 'AM%'
            ) AS subquery
    );
----