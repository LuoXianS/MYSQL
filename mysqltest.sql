
--1、查询男女员工的平均工资
select sex ,avg(salary) from emp group by sex;
--先按照男女分组,然后求平均

--2、查询各部门的总薪水
select  depart sum(salary) from emp group by depart;
--先按照部门分组,然后求总和

--3、查询总薪水排名第二的部门
select  depart sum(salary) from emp group by depart order by desc limit 1,1;
--先按照部门分组,然后求总和,在将结果进行降序排序,输入第二

--4、查询姓名重复的员工信息
select * from emp group by name having count(*)>1;
--先按照男女分组,入如果名字有重复的话,那么出现的次数应该大于1

--查询各部门薪水大于10000的男性员工的平均薪水
select depart ,avg(salary) from emp where salary >100 and sex  ='男'''group by depart;
--先过滤 求出薪资大于1000并且是男性的员工的薪资,在进行分组求平均薪资



--现在有员工表、部门表和薪资表。部门表depart的字段有depart_id， name；员工表 staff 的字段有 staff_id， name， age， depart_id；薪资表salary 的字段有 salary_id，staff_id，salary，month。



--（问题a）：求每个部门'2016-09'月份的部门薪水总额

--（问题b）：求每个部门的部门人数，要求输出部门名称和人数

--（问题c）：求公司每个部门的月支出薪资数，要求输出月份和本月薪资总数

--问题a:
select  de.name sum(sa.salary)from depart de ,staff st,salary sa 
where st.staff_id = sa.salary_id
and st.depart_id = de.depart_id
and year(sa.month) = 2016
and month(sa.month) = 9
and group by st.depart_id

--问题b:
select de.name ,count(st.staff_id) from depart de,staff st
where de.depart_id = st.depart_id
and group by de.depart_id


--问题C:
select sa.`month`,de.name,sum(sa.salary)from depart de,staff st,salary sa
where st.staff_id = sa.salary_id
and st.depart_id = de.depart_id
and group by de.depart_id,sa.`month


--有两个表分别如下：
--表A(varchar(32) name， int grade)
--数据：zhangshan 80， lisi 60， wangwu 84
--表B(varchar(32) name， int age)
--数据：zhangshan 26， lisi 24， wangwu 26， wutian 26
--写SQL语句得到如下查询结果：
--| NAME   | GRADE | AGE |
--| --------- | ----- | ---- |
--| zhangshan | 80  | 26  |
--| lisi   | 60  | 24  |
--| wangwu  | 84  | 26  |
--| wutian  | null | 26  |

select B.name ,grade ,age from A right join B
on A.name = B.name;


--例如上述Employee表，SQL查询应该返回200作为第二高的薪水。如果不存在第二高的薪水，那么查询应该返回null。
--+---------------------+
--| SecondHighestSalary |
--+---------------------+
--|    200     |
--+---------------------+


select(select distinct salary SecondHighestSalary from employee order by desc limit 1,1)
--子查询




