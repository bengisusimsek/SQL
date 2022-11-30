--1

Select * from countries c 
inner join cities ci
on c.id = ci.countryid
inner join districts d
on ci.id = d.citiesid
inner join streets s
on d.id = s.distcritid

--2

Select * from countries c 
left join cities ci
on c.id = ci.countryid

--3

Select * from cities ci
right join countries c
on ci.countryid = c.id

--4

Select * from products p
Inner join categories c
on p.categoryid = c.id
Inner join category_type ct 
ON ct.id = c.category_typeid

--5

select name from countries 
where lower(name) like '%a'

--6

select * from adresses a
where streetid = 2 or door_no = 5

--7

Select c.name , ci.name from countries c 
inner join cities ci
on c.id = ci.countryid

--8

Select s.name , d.name from streets s
inner join districts d
on s.distcritid = d.id

--9

select name from streets 
where lower(name) like '%a%'

--10

select name from streets 
where lower(name) like '_a%'

--11

select * from adresses
order by id desc

--12

select * from adresses
order by title asc

--13

select * from adresses
where door_no between 2 and 6

--14

select * from adresses
where door_no = 4 or door_no=9

--15

select * from products 
where stock in (10,12,15,20)

--16

select * from cities
where name in ('ankara','istanbul','paris','roma')

--17

Select * from category_type ct
right join brands b
on ct.brandsid = b.id 

--18

Select * from category_type ct
full outer join brands b
on ct.brandsid = b.id

--19

select name from streets 
where upper(name) like 'a%'

--20

Select * from products p 
left join categories c
on p.categoryid = c.id 





