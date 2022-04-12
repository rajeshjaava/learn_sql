use test;
show tables;
 
 create table books(id int primary key , name varchar(50) not null, price int, category varchar(20), authorId varchar(20));
 desc books;
 create table category ( id int primary key ,name varchar(20));
 create table authors (id int primary key,name varchar(20));
 
 INSERT INTO category 
VALUES (1, 'Cat-A'),
(2, 'Cat-B'),
(3, 'Cat-C'),
(7, 'Cat-D'),
(8, 'Cat-E'),
(4, 'Cat-F'),
(10,'Cat-G'),
(12,'Cat-H');

select * from category;
INSERT INTO authors
VALUES (1, 'Author-A'),
(2, 'Author-B'),
(3, 'Author-C'),
(10, 'Author-D'),
(12, 'Author-E');

select * from authors;
desc books;
INSERT INTO books 
VALUES ( 1,'Book-A', 100, 1, 2),
( 2,'Book-B', 200, 2, 2),
( 3,'Book-C', 150, 3, 2),
( 4,'Book-D', 100, 3,1),
( 5,'Book-E', 200, 3,1),
( 6,'Book-F', 150, 4,1),
( 7,'Book-G', 100, 5,5),
( 8,'Book-H', 200, 5,6),
(9,'Book-I', 150, 7,8);
select * from books;
-- inner join , retrieve the Category id,name and book id , name 

select books.id,books.name, category.id,category.name from books inner join category on category.id=books.id;
-- left join
select books.id,books.name, category.id,category.name from books left join category on category.id=books.id;
-- right join 
select books.id,books.name, category.id,category.name from books right join category on category.id=books.id;

-- full join 
select books.id,books.name, category.id,category.name from books full join category on category.id=books.id;
-- cross join 


select * from books cross join category;


