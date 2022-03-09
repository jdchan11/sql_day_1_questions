-- Question 1 - Answer is 2
select COUNT(last_name)
from actor
where last_name like 'Wahlberg'

-- Question 2 - Answer is 5563
select COUNT(customer_id)
from payment
where amount between 3.99 and 5.99;

-- Question 3 - Answer is Film 200 with 9
select film_id, COUNT(film_id)
from inventory
group by film_id 
order by COUNT(film_id) desc;

--Question 4 - Answer is 0 -- Not sure which customer version we should use
select COUNT(last_name)    -- so I just picked one.
from customers
where last_name like 'William';

-- Question 5 - Answer is Staff Member 1 with 8,040
select staff_id, COUNT(staff_id)
from rental
group by staff_id 
order by COUNT(staff_id) desc;

-- Question 6 - Answer is 378
select COUNT(distinct district)
from address

-- Question 7 - Answer is Film 508 with 16 actors
select film_id, COUNT(actor_id)
from film_actor
group by film_id
order by COUNT(actor_id) desc;

-- Question 8 - Answer is 13
select COUNT(last_name) 
from customer
where store_id = 1 and last_name like '%es';

-- Question 9 - Answer is 3 payment amounts
select COUNT(amount) from payment     -- I can get this to list the three but cannot seem to 
where customer_id between 380 and 430 -- figure out how to get it to return the number 3
group by amount 
having COUNT(amount) > 250;

--Question 10 - Answer is 5 rating categories with PG-13 having the most films
select rating, COUNT(rating) from film
group by rating
order by COUNT(rating) desc; 

