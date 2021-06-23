-- Punto 2: Mostrar todos los registros de la tabla de movies.
-- select * from movies;
-- Punto 3: Mostrar el nombre, apellido y rating de todos losactores.
-- select first_name, last_name, rating from actors
-- Punto 4: Mostrar el título de todas las series y usar aliaspara que tanto el nombre de la tablacomo el campo estén en español
-- select title as titulo from series
-- Punto 5: Hacer un select de todas la peliculas con puntaje menor a 5
-- select * from movies where rating < 5;
-- Punto 6
/* select first_name, last_name, rating
from actors
where rating > 7.5; */
-- Punto 7
/* select title, rating, awards
from movies
where rating > 7.5 and awards > 2;
*/
-- Punto 8
/* select title, rating
from movies
order by rating;
*/
-- Punto 9
-- select title from movies limit 3;
-- Punto 10
-- select * from movies order by rating desc limit 5;
-- Punto 11 ????
-- select * from movies order by rating desc limit 5 offset 5;
-- Punto 12
-- select * from actors limit 10;
-- Punto 13
-- select * from actors limit 10 offset 20;
-- Punto 14
-- select * from actors limit 10 offset 40;
-- Punto 15
/* select title, rating
from movies
where title like '%Toy Story%'
*/
-- Punto 16
-- select * from actors where first_name like 'Sam%'
-- Punto 17
-- select title, release_date from movies where release_date between '2004-01-01' and '2008-12-31';
-- Punto 18
/* select title
from movies
where rating > 3
and awards > 1
and year(release_date) between 1988 and 2009
order by rating
*/
-- Punto 19
/* select title
from movies
where rating > 3
and awards > 1
and year(release_date) between 1988 and 2009
order by rating
limit 3
offset 10
*/