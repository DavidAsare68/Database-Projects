
-- Database Text function examples using sakila schema

-- Combine columns and literal strings
select concat(title, " - " , release_year, " - ", rating) as "Title with Year & Rating"
from sakila.film;

-- Format as currency with alias
select title, concat("$", rental_rate) as "Rent Rate" from sakila.film;

-- If comma seperator is needed
select format(1234,0) as "Format Example";

-- Format as percent
select concat (round(rental_rate/ replacement_cost * 100,1), "%") as percent
from sakila.film;

-- Replace string with another (case sensitive)
select replace (description, "And", "or")
from sakila.film;

-- Determine String length 
select length(description)
from sakila.film;

-- Determine word count
select length(description) - length(replace(description, " ", ""))
from sakila.film;

-- Determine avg number of words
select avg(length(description) - length(replace(description, " ", "")))+1
as "word count"
from sakila.film;

-- Find a substring
select "name@mail.com" as email;

select instr("name@mail.com", "@");

-- Extract number of characters from string starting on left
select left("name@mail.com", instr("name@email", "@")-2);




