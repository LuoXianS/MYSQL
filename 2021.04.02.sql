--update 只支持更新前几行 ,不支持第几行到第几行
--删除
--删除整个表中数据
delete from exam;
delete from exam where name  = '孙悟空';

-- ======
--字段的约束 
-- unique not null  default 
drop table if exists student;
create table student(
  id int  primary key AUTO_INCREMENT,
  sn int unique,
  name varchar(20)  NOT NULL,
  qq_mail varchar(20) default '111@qq.com'
  );
 ALTER TABLE student CONVERT TO CHARACTER SET utf8;
insert into student values(1,101,'张三','123@qq.com');
insert into student (sn,name,qq_mail) values(103,'李四','12345qq.com');
insert into student (sn,name,qq_mail) values(104,'王五','123456qq.com');
--primary key  + AUTO_INCREMENT (自增长)主键 == not null and unique
--外键 foreign key () references () 
drop table if exists classes;
create table classes(
 id int primary key AUTO_INCREMENT,
 name varchar(20),
 `desc` varchar(30)
 )
 ALTER TABLE classes CONVERT TO CHARACTER SET utf8;
 insert into classes (name,`desc`)values('java17','SQL');
 insert into classes (name,`desc`)values('java18','SQL1');
 insert into classes (name,`desc`)values('java19','SQL2');
 drop table if exists student;
create table student(
  id int  primary key AUTO_INCREMENT,
  sn int unique,
  name varchar(20)  NOT NULL,
  qq_mail varchar(20) default '111@qq.com',
  classes_id int ,
  foreign key (classes_id) references classes(id)
  );
 ALTER TABLE student CONVERT TO CHARACTER SET utf8;
 insert into student (sn,name,qq_mail,classes_id) values(104,'王五','123456qq.com',1);
 insert into student (sn,name,qq_mail,classes_id) values(105,'王六','1234567qq.com',2);
 insert into student (sn,name,qq_mail,classes_id) values(106,'王七','12345678qq.com',3);
 
 --外键  创建先创建主表, 
 --      插入先插入主表
 --外键     
-- 删除先删除子表
 --也可以先删除主表,但是只有当主表当中这要删除的没有被关联时才可以删除
 --check 约束
 check (sex = '男' or sex = '女') 
 --增加的进阶
 insert into classes (id,name) select (id,name) from student;
 
 --进阶查询
 
 -- 聚合函数 只能在select后面  不能加载where后面
 -- select count(*) from exam ;来查询表中有多少数据
  select count(*) from exam ;
  --可以对计数的字段进行去重
  select count(distinct id) from exam;
  --求和 sum()
  select sum(math) from exam;
  --求平均值 avg()
  select avg(math) from exam;
  --求最大值
  select max(math) from exam;
  --求最小值
  select min(math) from exam where math >70;
  --数据完整性的三个完整性约束
  --实体完整性
  --参照完整性
  --用户定义完整性
 --食堂表
 create table restaurants (
   id int primary key AUTO_INCREMENT,
   name varchar(20) not null,
   `desc` varchar(30)
   );
 create table windows(
   id int primary key AUTO_INCREMENT,
   name varchar(20) not null,
   restaurants_id int,
   foreign key (restaurants_id) references restaurants(id)
   );
  create table bill(
   id  int primary key AUTO_INCREMENT,
   charge decimal(6,2),
   window_id int ,
   restaurant_id int,
   foreign key (window_id) references windows(id),
   foreign key (restaurant_id) references references(id)
   );
   --违规信息
   create table users(
     id int primary key AUTO_INCREMENT,
	 name varchar(10),
	 age int not null,
	 sex varchar(1)
	 );
	 create table cars(
	 id int primary key AUTO_INCREMENT,
	 name varchar(10)
	 );
	 create table information(
	 id int primary key AUTO_INCREMENT,
	 name varchar(10),
	 users_id int ,
	 cars_id int ,
	 foreign key (users_id) references users(id),
	 foreign key (cars_id) references cars(id)
	 );
	 --宿舍管理
	 create table dormitorys(
	 id int primary key AUTO_INCREMENT,
	 name int not null,
	 person int default 6
	 );
	 create table students(
	 id int primary key AUTO_INCREMENT,
	 name varchar(10),
	 age int,
	 address varchar(30)
	 dormitorys_id int,
	 foreign key (dormitorys_id) references dormitorys(id)
	 );
	 create table records(
	 id int primary key AUTO_INCREMENT,
	 content varchar(50),
	 records_date timestamp,
	 dormitorys_id int,
	 foreign key (dormitorys_id) references dormitorys(id)
	 );
	 --考勤系统
	 create table employee(
	 id int primary key AUTO_INCREMENT,
	 name varchar(10),
	 age int not null,
	 sex varchar(1)
	 );
	 create table records(
	 id int primary key AUTO_INCREMENT,
	 records_date timestamp,
	 content varchar(10),
     employee_id int ,
     foreign key (employee_id) references employee(id)
     );
	 
	 
	 
	 
   
   
   

  
 
 
 
 
 
 
 
 
 
 
 
 