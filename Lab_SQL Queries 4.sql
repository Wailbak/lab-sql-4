select * from actor;
select * from film;
select * from customer;

SELECT film.title FROM film;

SELECT DISTINCT language_id AS language FROM language;

SELECT COUNT(*) AS store_count
FROM store;

SELECT COUNT(*) AS employee_count
FROM staff;

SELECT first_name AS employee_first_name
FROM staff;

SELECT *
FROM actor
WHERE first_name = 'Scarlett';

SELECT *
FROM actor
WHERE last_name = 'Johansson';

SELECT COUNT(*) AS available_films_count
FROM inventory;

SELECT COUNT(*) AS rented_films_count
FROM rental;

SELECT MIN(rental_date) AS shortest_rental_period
FROM rental;

SELECT MAX(return_date) AS longest_rental_period
FROM rental;

SELECT MIN(length) AS min_duration
FROM film;

SELECT MAX(length) AS max_duration
FROM film;

SELECT AVG(length) AS average_duration
FROM film;

SELECT CONCAT(
    FLOOR(AVG(length) / 60), ' hours ',
    AVG(length) % 60, ' minutes'
) AS average_duration_formatted
FROM film;

SELECT COUNT(*) AS long_movies_count
FROM film
WHERE length > 180; -- Assuming movie length is in minutes

SELECT CONCAT(first_name, ' ', last_name, ' - ', LOWER(CONCAT(first_name, '.', last_name)), '@sakilacustomer.org') AS formatted_name_and_email
FROM customer;

SELECT MAX(LENGTH(title)) AS longest_title_length
FROM film;

SELECT COUNT(DISTINCT last_name) AS distinct_last_names_count
FROM actor;

SELECT COUNT(DISTINCT language_id) AS distinct_languages_count
FROM film;

SELECT COUNT(*) AS pg_13_movies_count
FROM film
WHERE rating = 'PG-13';

SELECT title, length
FROM film
WHERE release_year = 2006
ORDER BY length DESC
LIMIT 10;

SELECT DATEDIFF(NOW(), MIN(last_update)) AS operating_days
FROM staff;

SELECT rental_id, rental_date, return_date,
       MONTH(rental_date) AS rental_month,
       DAYNAME(rental_date) AS rental_weekday
FROM rental
LIMIT 20;

SELECT rental_id, rental_date, return_date,
       MONTH(rental_date) AS rental_month,
       DAYNAME(rental_date) AS rental_weekday,
       CASE
           WHEN DAYOFWEEK(rental_date) IN (1, 7) THEN 'weekend'
           ELSE 'workday'
       END AS day_type
FROM rental
LIMIT 20;

SELECT COUNT(*) AS last_month_rentals
FROM rental
WHERE MONTH(rental_date) = MONTH(NOW())
AND YEAR(rental_date) = YEAR(NOW());

SELECT DISTINCT rating
FROM film;

SELECT DISTINCT release_year
FROM film;

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%';

SELECT *
FROM film
WHERE title LIKE '%APOLLO%';

SELECT *
FROM film
WHERE title LIKE '%APOLLO';

SELECT *
FROM film
WHERE title LIKE '%DATE%';

SELECT title, LENGTH(title) AS title_length
FROM film
ORDER BY title_length DESC
LIMIT 10;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

SELECT title, release_year
FROM film
ORDER BY release_year, title;


















