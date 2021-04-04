--创建数据库
drop database if exists blog;
create database blog ;
use blog;
drop table if exists userinfo;
create table userinfo(
  id int primary key auto_increment,
  username varchar(100) not null,
  password varchar(100) not null,
  create_time datetime  default now(),
  update_time datetime  default now(),
  `state` int default 1
  );
  ALTER TABLE userinfo CONVERT TO CHARACTER SET utf8;
  
drop table if exists articleinfo;
create table articleinfo(
  id int primary key auto_increment,
  title varchar(100) not null,
  content  text  not null,
  create_time datetime default now(),
  update_time datetime  default now(),
  user_id int not null,
  rcount int not null,
  `state` int default 1
  );
ALTER TABLE articleinfo CONVERT TO CHARACTER SET utf8;