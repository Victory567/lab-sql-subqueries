
#How many copies of the film Hunchback Impossible exist in the inventory system?

SELECT title, COUNT(inventory_id)
FROM film f
INNER JOIN inventory i 
ON f.film_id = i.film_id
WHERE title = "Hunchback Impossible";

SELECT f.film_id, f.title, f.length
FROM film f
WHERE f.length > (SELECT AVG(length) FROM film);

#Use subqueries to display all actors who appear in the film Alone Trip.
SELECT last_name, first_name
FROM actor
WHERE actor_id in
	(SELECT actor_id FROM film_actor
	WHERE film_id in 
		(SELECT film_id FROM film
		WHERE title = "Alone Trip"));
        
#Sales have been lagging among young families, and you wish to target all family movies for a promotion. -- categorized as family films.

SELECT title, category
FROM film_list
WHERE category = 'Family';

#You want to run an email marketing campaign in Canada, for which you will need the names and email addresses of all Canadian customers. 

SELECT country, last_name, first_name, email
FROM country c
LEFT JOIN customer cu
ON c.country_id = cu.customer_id
WHERE country = 'Canada';

