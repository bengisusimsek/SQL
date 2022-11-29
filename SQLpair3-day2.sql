--1

Select * from products p
Inner join categories c
on p.categoryid = c.id

--2

Select p.name as "Ürün Adı", c.name as "Kategori Adı" from products p
Inner join categories c
on p.categoryid = c.id

--3

Select * from products p
Inner join categories c
on p.categoryid = c.id
Inner join category_type ct 
ON ct.id = c.category_typeid

--4

Select * from categories c 
left join category_type ct
on c.category_typeid = ct.id 

--5

Select * from products p 
full outer join  categories c
on p.categoryid = c.id 

--6

Select * from products p 
left join categories c
on p.categoryid = c.id 

--7
Select * from products p 
right join categories c
on p.categoryid = c.id 

--8

Select * from products p 
left join categories c
on p.categoryid = c.id 
full outer join category_type
ON category_type.id = c.category_typeid 

--9

Select p.name, c.name from products p
Inner join categories c
on p.categoryid = c.id

--10

Select p.id, c.name from products p
Inner join categories c
on p.categoryid = c.id

--11

Select ct.id, c.name from categories c
Inner join  category_type ct
on c.category_typeid = ct.id 

--12

Select * from category_type ct
full outer join brands b
on ct.brandsid = b.id

--13


Select ct.name, b.name from category_type ct
full outer join brands b
on ct.brandsid = b.id

--14

Select * from products p 
left join categories c
on p.categoryid = c.id 
full outer join category_type
ON category_type.id = c.category_typeid 
full outer join brands
ON category_type.brandsid = brands.id

--15

Select * from category_type ct
right join brands b
on ct.brandsid = b.id 
