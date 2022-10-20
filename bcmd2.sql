--SELECT * FROM actors;
--SELECT TOP 2 * FROM actors;
--SELECT TOP 10 * FROM actors;
--select firstname, lastname from actors;
--select firstname, lastname from actors where firstname = 'harrison';
--select distinct firstname, lastname from actors;
--select distinct * from actors;
--select firstname, lastname from actors where firstname = 'harrison' and lastname = 'ford';
--select firstname, lastname from actors where firstname = 'harrison' or firstname = 'tom';
--select firstname, lastname from actors where not firstname = 'harrison';
--select * from actors where firstname = 'harrison' and not id= 5;
--select * from directors where firstname in ('george', 'steven');
--select * from movies where rank between 200 and 500;
--select * from movies where rank in (200, 500, 301);
/*
select
max(rank) as 'max rank',
min(rank) as 'min rank'
from movies;
*/
/*
select
max(rank) as 'max rank',
min(rank) as 'min rank',
avg(rank) as 'average rank'
count(*) as 'all records',
count(rank) as 'all ranked records'
from movies;
*/
--select * from directors_genres;
--select d.firstname, d.lastname, dg.genre from directors d, directors_genres dg; Gives duplicates.
/*
select d.firstname, d.lastname, dg.genre
from directors d
inner join directors_genres dg
on d.id =dg.directorid;
*/
/*
insert into directors (firstname, lastname)
values ('ron', 'howard');
*/
/*
select d.firstname, d.lastname, dg.genre
from directors d
left join directors_genres dg
on d.id =dg.directorid;
*/
/*
select d.firstname, d.lastname, dg.genre
from directors d
right join directors_genres dg
on d.id = dg.directorid;
*/
/*
select d.firstname, d.lastname, dg.genre
from directors d
full outer join directors_genres dg
on d.id = dg.directorid;
*/
/*
select d.firstname, d.lastname, count(dg.genre) as 'number of genres'
from directors d
inner join directors_genres dg
on d.id = dg.directorid
group by firstname, lastname;
*/
/*
select d.firstname, d.lastname, count(dg.genre) as 'number of genres'
from directors d
inner join directors_genres dg
on d.id = dg.directorid
group by firstname, lastname
having count(dg.genre) > 2;
*/
/*
select d.firstname, d.lastname, count(dg.genre) as 'number of genres'
from directors d
inner join directors_genres dg
on d.id = dg.directorid
group by firstname, lastname
order by 3 asc;
*/
/*
select d.firstname, d.lastname, count(dg.genre) as 'number of genres'
from directors d
inner join directors_genres dg
on d.id = dg.directorid
group by firstname, lastname
order by 3 desc;
*/
/*
insert into movies (name, year)
values('A Bug's Life', 1998,);
*/
/*
select m.id, m.name, mg.genre, m.rank
from movies m
inner join movies_genre mg
on m.id = mg.movieid
where m.rank >
	(
		select avg(rank)
		from movies
	)
;
*/









