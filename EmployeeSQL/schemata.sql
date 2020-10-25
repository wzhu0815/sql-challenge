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




