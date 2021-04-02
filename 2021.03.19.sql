drop table if exists books;
 create table books(
    name varchar(10),
	author varchar(10),
	price decimal(6.2),
	category varchar(10)
 );
 drop table if exists teachers;
 create table teachers(
    name varchar(10),
    age int,
    height decimal(6.2),
    weight decimal(6.2),
    sex varchar(10),
    educate varchar(10),
	birthday timestamp,
    id  varchar(10)
 );
 create table grades(
    math decimal(4,2),
	english decimal(4,2),
	语文 decimal(4,2)
);
create table null(
name varchar(10)
);
update books set price = price+50 where save > 
select * from user where ID between 1 and 200 or ID between 300 and 500 and account is not null;

select * from books where author is not null or price > 50 and publish_data >2019;
