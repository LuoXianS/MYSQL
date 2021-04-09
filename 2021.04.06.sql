ALTER TABLE student CONVERT TO CHARACTER SET utf8;
--内连接   求几张表的交际
select   from   table1,table2,table3  where  =  
                                      and 
									  and
								
--查询所有同学的总成绩 ,和个人信息
select stu.id,stu.sn,sum(score) from student stu,score sco 
where stu.id = sco.student_id group by student_id


select stu.name,stu.sn,score from student stu,score sco 
where stu.id = sco.student_id 
and name = '许仙';


select stu.name,stu.sn,score from student stu,score sco,course cou
where stu.id = sco.student_id 
and sco.course_id = cou.id
and stu.name = '许仙';


select stu.id,stu.name,sco.score from student stu,score sco
where stu.id = sco.student_id group by stu.id;


select stu.id,stu.name,sco.score from student stu left join score sco
on stu.id = sco.student_id ;
