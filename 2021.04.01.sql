drop table if exists exam;
create table exam(
  id int,
  name varchar(10),
  chinese decimal(4.2),
  math decimal(4.2),
  english decimal(4.2)
  );
  insert into exam values
  (1,'唐三藏',67,68,64),
  (2,'猪八戒',35,78,66),
  (3,'孙悟空',67,78,34),
  (4,'孙权',66,88,89),
  (5,'刘备',67,87,57),
  (6,'唐三藏',45,76,67),
  (7,'孙悟空',65,87,65);
  --去重
  select distinct  math from exam;
  --distinct去重 是去重3个字段重复的math,name,id	
  select distinct  math,name,id from exam;
  --排序默认升序
  select * from exam order by math;
  --降序排序
  select * from exam order by math desc;
   --关键字不能随便用,使用的时候需要加``来包裹
 insert into exam values
 (6,'tang',89, null,98);
 --别名排序
 select math+english+chinese as toatal from exam order by total desc;
 --按照每个字段的不用顺序输出
 按照数学升序,英语降序,语文降序
 select math,english,chinese from exam order by math desc ,english,chinese;
 --条件查询
 --其他条件直接凭借即可
 select id,math from exam where math >80 order by math desc;
 select id ,math from exam where math = 78 order by math desc;
 --特别注意查询NULL的时候必须用<=>来查询
 --<=> 和!= 运算符
 select math,id from exam where math <=> null ;
 select math,id from exam where math != 78 ;
 --查询区间 [70-87]
 select id,math from exam where between 70 and 87;
 --in()只要属于其中某一个就查询
 select id,name,math from exam where math in(78,68,88);
 --查询为null where math isnull;
 select math from exam where math is null;
 select math from exam where math is not null;
--模糊查询 Link 通配符%:随便几个
select * from exam where name = '%三%';
--utf8
ALTER TABLE exam CONVERT TO CHARACTER SET utf8;
--_下划线指表示一个占位
select * from exam where name ='__空';
-- ==============
DROP TABLE IF EXISTS exam;
CREATE TABLE exam(
    id INT,
    name VARCHAR(20),
    chinese DECIMAL(3,1),
    math DECIMAL(3,1),
    english DECIMAL(3,1)
);
INSERT INTO exam (id,name, chinese, math, english) VALUES
(1,'唐三藏', 67, 98, 56),
(2,'孙悟空', 87.5, 78, 77),
(3,'猪悟能', 88, 98, 90),
(4,'曹孟德', 82, 84, 67),
(5,'刘玄德', 55.5, 85, 45),
(6,'孙权', 70, 73, 78.5),
(7,'宋公明', 75, 65, 30);
---- 查询英语不及格的同学及英语成绩 ( < 60 )
-- 查询语文成绩好于英语成绩的同学
-- 查询总分在 200 分以下的同学
-- 查询语文成绩大于80分，且英语成绩大于80分的同学
-- 查询语文成绩在 [80, 90] 分的同学及语文成绩
-- 查询数学成绩是 58 或者 59 或者 98 或者 99 分的同学及数学成绩
-- 查询 qq_mail 已知的同学姓名
select name ,id ,english from exam where english < 60;
select name ,id  from exam where english < chinese;
select  id,name ,math+english+chinese from exam where math+english+chinese < 200;
select id ,name from exam where chinese > 80 and english >80;
select id,name,chinese from exam where chinese between 80 and 90;
select id,name,math from exam where math in(58,59,98,99);
--分页查询:为了优化,加快访问 0,5 从s开始查询N条信息 s默认从0开始
select * from exam limit 0,4;
select * from exam limit 4,6;
select * from exma limit 7;
--update  
update exam  set math = 1 where name = '孙权';
update exam set math = 67 ,chinese  =70 where name ='曹孟德';
select id,name exam order by english+math+chinese limit 0,3;
update exam set math = math- 10 order by english+math+chinese limit 3;
update books set price = 61;

update books set price = price+50 where save > 
select * from user where ID between 1 and 200 or ID between 300 and 500 and account is not null;

select * from books where author is not null or price > 50 and publish_data >2019;

select * from article where title is null or create_date >2019;
select name,age from student where age between 18 and 25 and name ='张%';