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
