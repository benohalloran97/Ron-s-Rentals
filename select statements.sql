-- All customers regardless of them renting a car --
SELECT customers.cfirst, customers.clast, rentals.rid 
FROM customers 
NATURAL LEFT JOIN rentals;

-- Only customers who have rented a car --
SELECT customers.cfirst, customers.clast, rentals.rid 
FROM customers 
NATURAL RIGHT JOIN rentals; 

-- What car did each customer rent --
SELECT customers.cfirst, customers.clast, camake, camodel
FROM customers
RIGHT JOIN rentals USING (cID)
LEFT JOIN cars USING (caID);

-- What car did each customer rent, what plan did they have and how much was it --
SELECT customers.cfirst, customers.clast, camake, camodel, rpplan, rpprice
FROM customers
RIGHT JOIN rentals USING (cID)
LEFT JOIN cars USING (caID)
LEFT JOIN rental_plans USING (rpID);

-- Selecting most popular make and model car --
SELECT cars.camake AS "Make", cars.camodel AS "Model",(SELECT COUNT(*) FROM rentals 
WHERE rentals.caid=cars.caid) AS "# times_rented"
FROM cars
RIGHT JOIN rentals USING (caID)
GROUP BY "# times_rented", cars.camodel, cars.camake
ORDER BY "# times_rented" DESC; 

-- Selecting most popular rental plan --
SELECT rpplan AS "rental_plan"
FROM rentals
NATURAL RIGHT JOIN rental_plans 
GROUP BY rpplan
ORDER BY rpplan; 

-- What car make and model is available in hybrid (H) or Electric (E) from cheapest to most expensive --
SELECT camake, camodel, cafuel, rpplan, rpprice
FROM customers
RIGHT JOIN rentals USING (cID)
LEFT JOIN cars USING (caID)
LEFT JOIN rental_plans USING (rpID)
WHERE cafuel = 'H' OR cafuel = 'E'
ORDER BY rpprice;

-- Select car make from cars starting with letter A --
SELECT camake FROM cars WHERE camake LIKE 'A%';

-- Select car model from cars containing letter e --
SELECT camodel FROM cars WHERE camodel LIKE '%e%';

-- Total profit from rentals --
SELECT SUM(rpprice) FROM rental_plans
RIGHT JOIN rentals USING (rpid); 

