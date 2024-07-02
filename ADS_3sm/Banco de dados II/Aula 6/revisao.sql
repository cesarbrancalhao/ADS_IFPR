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
    city, count(customer_id) AS quantClientes
FROM
    city
INNER JOIN
    address USING(city_id)
INNER JOIN
    customer USING(address_id)
GROUP BY
    city.city_id
ORDER BY
    quantClientes DESC LIMIT 3;
----