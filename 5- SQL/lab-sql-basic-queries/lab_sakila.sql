USE sakila;

-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Titles of all films from the film table
SELECT title 
FROM film;

-- List of languages used in films, with the column aliased as language from the language table
SELECT name AS 'languages'
FROM language;

-- List of first names of all employees from the staff table
SELECT first_name
FROM staff;

-- Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;

-- Determine the number of stores that the company has.
SELECT COUNT(store_id) AS 'Number of stores'
FROM store;

-- Determine the number of employees that the company has.
SELECT COUNT(staff_id) AS 'Number of employees'
FROM staff;

-- Determine how many films are available for rent and how many have been rented.
SELECT
(SELECT COUNT(distinct inventory_id) from inventory) AS 'Num of films Available',
(SELECT COUNT(distinct inventory_id) from rental) AS 'Num of films Rented';


-- Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS "Number of actors' last name"
FROM actor;

-- Retrieve the 10 longest films.
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

-- Retrieve all actors with the first name "SCARLETT"
SELECT *
FROM actor
WHERE first_name = "Scarlett";

-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length>100;

-- Determine the number of films that include Behind the Scenes content
SELECT COUNT(film_id) AS 'Films include behind the scenes'
FROM film
WHERE special_features LIKE '%behind the scenes%';
