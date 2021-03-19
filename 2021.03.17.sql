-- 显示数据库:
show  databases;
-- 进入数据库
use  database;
-- 显示这个数据库
show  tables;
-- 创建数据库
create databse +数据库名字;
-- 删除数据库
drop database + 数据库名字;
-- 创建表
 
create table stu_tese(
    id int,
	name varchar(10) comment '姓名',
	password varchar(10),
	age int comment '年龄',
	sex varchar(1),
    birthday timestamp,
	amout decimal(6,2),
	resume TEXT
)
-- 显示表的结构
desc stu_tese;
-- 创建三个表用来记录客户及其购物情况
create database shopping;

use shopping;

create table goods(
      good_id int ,
      good_name varchar(10),
      unitprice decimal(),
      category varchar(10),
      provider varchar(10) 
);
create table customer_id(
      customer_id int,
	  name varchar(10),
	  address varchar(10),
	  email varchar(10),
	  sex varchar(1),
	  card_id int 
);
create table purchase(
      order_id int ,
	  customer_id int,
	  good_id int,
      nums int
);
drop table if exists students;
create table students(
     id int,
	 sn int,
	 name varchar(10),
	 qq_mail varchar(20)
);
-- 全列查询
select * from  students;
-- 插入
-- 单行全列插入
insert into students values(1,100,'bit','2320@qq.com');
insert into students values(2,101,'bit2','23202@qq.com');
-- 指定列多行插入
insert into stud ents (id,sn,name) values
(3,102,'bit3'),
(4,103,'bit4');
 -- 删除数据
 delete from students where id = 1 ;
insert into stu_tese values(5,'bit',123,21,'男','2021-03-18',4.2,'今天过得好快');
-- 指定列查询
select id,name form stu_tese;
-- 指定列查询 起别名
select id, name,math+chinese+english as zongfen form  grades;
-- 起别名
    as bieming;