# Ron-s-Rentals
Code for a fake car rental company and some SELECT queries 

I created the database to host 4 tables for information that can be used for a car rental company. This includes a customers table with their unique customer ID, their first name, last name and email address. A table that stored the car information including car ID, make, model, fuel type and number of seats. The third table includes the rental plans which contain the rentalplan ID and outline the Gold, Silver and Bronze packages, the car ID and the pricings. The final table is the rental table which contains the rental ID, customer ID foreign key, rental plan foreign key and the car foreign key as well as the rental start date and end date. 

I took the customer names and emails from a random name generator. 

In the select statements I was able to join tables to display who was renting what car and between what dates. I was able to highlight the most popular make and model of car as well as the most popular rental plan. I also selected what car make and model is available in hybrid (H) or Electric (E) and ordered them from cheapest to most expensive. I used LIKE to find specifc car make and models that contain certain letters using wildcards. Using the SUM aggregate function I was able to work out the total profits made from the rentals. 
