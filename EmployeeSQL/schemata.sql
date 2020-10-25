drop table departments;
create table departments (
dept_no varchar primary key,
	dept_name varchar);
select * from departments;


drop table dept_emp;
create table dept_emp (
emp_no int,
	dept_no varchar);
select * from  dept_emp;

drop table dept_manager;
create table dept_manager (
	dept_no varchar,
emp_no int primary key);
select * from  dept_manager;

drop table employees;
create table employees (
emp_no int primary key,
emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,	
	hire_date date);
	
select * from  employees;

drop table salaries;
create table salaries
(emp_no int primary key,
salary int);

select * from  salaries;

drop table titles;
create table titles
(title_id varchar primary key,
title varchar);
select * from  titles;

engine = create_engine(f'postgresql://{user}:{pw}@localhost:5432/homework-test')
connection = engine.connect()

df = pd.read_sql_query('select ts.title,round(avg(s.salary),2) as Avg_Salary from salaries as s left join employees as es on es.emp_no=s.emp_no left join titles as ts on ts.title_id = es.emp_title_id group by ts.title;',connection)

